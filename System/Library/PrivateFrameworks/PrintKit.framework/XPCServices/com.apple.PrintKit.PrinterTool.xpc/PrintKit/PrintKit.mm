uint64_t ippReadIO(uint64_t a1, uint64_t (*a2)(void *, unsigned __int8 *, unint64_t), ipp_t *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0xFFFFFFFFLL;
  if (a1 && v5)
  {
    sub_100002CDC(v11, a2, a1);
    v9 = 0;
    v10 = 19;
    sub_100001894(v11, &v9, &v10, 0, v6);
    v7 = 3;
  }

  return v7;
}

void sub_100001894(uint64_t a1, _DWORD *a2, unsigned int *a3, int a4, void *a5)
{
  v105 = a5;
  v106 = a2;
  v9 = *a2;
  if (*a2 == 2)
  {
LABEL_8:
    v107 = v105;
    while (1)
    {
      v11 = objc_autoreleasePoolPush();
      sub_100002D34(a1, &__dst, 1uLL);
      v12 = validate_enum<ipp_tag_e,unsigned char>(__dst);
      v13 = v12;
      if (v12 != 3)
      {
        break;
      }

      v16 = 0;
      v17 = 0;
LABEL_26:
      *v106 = 3;
      v18 = 1;
LABEL_101:

      objc_autoreleasePoolPop(v11);
      if (v18 && v18 != 3)
      {

        goto LABEL_106;
      }
    }

    if (v12 == 127)
    {
      sub_100002D34(a1, &__dst, 4uLL);
      v13 = 0xFFFFFFFFLL;
LABEL_21:
      if (a4)
      {
        v68 = [NSString stringWithFormat:@"ippReadIO: bad tag 0x%02x.", v13];
        sub_100002E18(a1, 662, @"Invalid group tag.", v68);
      }

      if (*a3 == v13)
      {
        ippAddSeparator(v107);
      }

      v16 = 0;
      v17 = 0;
      *a3 = v13;
      v18 = 3;
      goto LABEL_101;
    }

    if (!v12)
    {
      v69 = [NSString stringWithFormat:@"ippReadIO: bad tag 0x%02x.", 0];
      sub_100002E18(a1, 651, @"Invalid group tag.", v69);
    }

    if (v12 <= 15)
    {
      goto LABEL_21;
    }

    v14 = v107;
    sub_100002D34(a1, &__dst, 2uLL);
    v15 = __rev16(__dst);
    if (v15 > 0x8000)
    {
      v72 = [NSString stringWithFormat:@"ippReadIO: bad name length %d.", v15];
      sub_100002E18(a1, 213, @"IPP name larger than 32767 bytes.", v72);
    }

    if (__dst && a4)
    {
      v71 = [NSString stringWithFormat:@"ippReadIO: bad attribute name in collection."];
      sub_100002E18(a1, 220, @"Invalid named IPP attribute in collection.", v71);
    }

    if (__dst)
    {
      if (v13 != 55)
      {
        if (v13 == 74)
        {
          v74 = [NSString stringWithFormat:@"ippReadIO: member name not empty."];
          sub_100002E18(a1, 311, @"IPP member name is not empty.", v74);
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v13 == 16)
      {
LABEL_34:
        v23 = sub_100002F94(a1, v15, 1);
        v19 = [(ipp_t *)v14 addNewEmptyAttribute:v23 groupTag:*a3 valueTag:v13];
        v24 = v19;
        if (!v19)
        {
          v73 = [NSString stringWithFormat:@"ippReadIO: unable to allocate attribute."];
          sub_100002E18(a1, 338, @"ippReadIO: unable to allocate attribute.", v73);
        }

        v21 = [(ipp_attribute_t *)v19 addNewEmptyValue];
        v25 = v21;

        goto LABEL_36;
      }

      if (v13 != 55)
      {
        if (v13 == 74)
        {
          if ((a4 & 1) == 0)
          {
            v76 = [NSString stringWithFormat:@"ippReadIO: member attribute outside of collection."];
            sub_100002E18(a1, 315, @"IPP member attribute outside of collection.", v76);
          }

          v19 = [(ipp_t *)v14 addNewEmptyAttribute:0 groupTag:*a3 valueTag:0];
          v20 = v19;
          if (!v19)
          {
            v77 = [NSString stringWithFormat:@"ippReadIO: unable to allocate attribute."];
            sub_100002E18(a1, 322, @"ippReadIO: unable to allocate attribute.", v77);
          }
        }

        else
        {
          v38 = [(ipp_t *)v14 attrs];
          v19 = [v38 lastObject];
          v39 = v19;

          if (!v19)
          {
            v75 = [NSString stringWithFormat:@"ippReadIO: Attribute without name and no current."];
            sub_100002E18(a1, 231, @"IPP attribute has no name.", v75);
          }

          v40 = [(ipp_attribute_t *)v19 value_tag];
          v41 = v40;
          if (v40)
          {
            if ((v40 - 53) < 2 || (v40 - 65) <= 8)
            {
              if ((v13 - 55) <= 0xFFFFFFFD && v13 != 19 && (v13 - 74) <= 0xFFFFFFF6)
              {
                v99 = ippTagString(v40);
                v100 = [NSString stringWithFormat:@"ippReadIO: 1setOf value tag %x(%s) != %x(%s)", v41, v99, v13, ippTagString(v13)];
                sub_100002E18(a1, 258, @"IPP 1setOf attribute with incompatible value tags.", v100);
              }

              if (v40 != v13 && !ippCoerceAttrToValue(v14, v19, v13))
              {
                v96 = [(ipp_attribute_t *)v19 name];
                v97 = ippTagString(v41);
                v98 = [NSString stringWithFormat:@"ippReadIO: Failed to convert %@ attribute from %s to %s.", v96, v97, ippTagString(v13)];
                sub_100002E18(a1, 267, @"IPP 1setOf attribute with incompatible value tags.", v98);
              }
            }

            else if (v40 == 51 || v40 == 33)
            {
              if (v13 != 33 && v13 != 51)
              {
                v103 = ippTagString(v40);
                v104 = [NSString stringWithFormat:@"ippReadIO: 1setOf value tag %x(%s) != %x(%s)", v41, v103, v13, ippTagString(v13)];
                sub_100002E18(a1, 280, @"IPP 1setOf attribute with incompatible value tags.", v104);
              }

              if (v13 == 51 && v40 == 33)
              {
                ippCoerceAttrToValue(v14, v19, 51);
              }
            }

            else if (v40 != v13)
            {
              v101 = ippTagString(v40);
              v102 = [NSString stringWithFormat:@"ippReadIO: value tag %x(%s) != %x(%s)", v41, v101, v13, ippTagString(v13)];
              sub_100002E18(a1, 295, @"IPP 1setOf attribute with incompatible value tags.", v102);
            }
          }

          else
          {
            [(ipp_attribute_t *)v19 setValueTag:v13];
          }
        }

        v21 = [(ipp_attribute_t *)v19 addNewEmptyValue];
        v22 = v21;
        goto LABEL_36;
      }
    }

    v19 = 0;
    v21 = 0;
LABEL_36:

    v26 = v19;
    v27 = v21;
    v17 = v26;
    v16 = v27;
    sub_100002D34(a1, &__dst, 2uLL);
    v28 = __dst;
    v29 = __rev16(__dst);
    if (v29 > 0x8000)
    {
      v70 = [NSString stringWithFormat:@"ippReadIO: bad value length %d.", v29];
      sub_100002E18(a1, 372, @"IPP value larger than 32767 bytes.", v70);
    }

    switch(v13)
    {
      case 16:
      case 17:
      case 18:
      case 19:
      case 21:
      case 22:
      case 23:
        if ([(ipp_attribute_t *)v17 value_tag]!= v13)
        {
          goto LABEL_41;
        }

        if (!v28)
        {
          goto LABEL_46;
        }

        [(ipp_attribute_t *)v17 setValueTag:65];
LABEL_41:
        v30 = [v16 string];
        v32 = v31;
        v33 = sub_100002F94(a1, v29, ((v13 - 67) < 7) & (0x73u >> (v13 - 67)));

        v34 = v30;
        v35 = v33;
        v36 = v35;
        if (v16)
        {
          [v16 setString:{v30, v35}];
        }

        else
        {
        }

LABEL_45:
LABEL_46:

        if (v13 == 16)
        {
          v37 = [(ipp_attribute_t *)v17 values];
          [v37 removeAllObjects];
        }

LABEL_100:
        v18 = 0;
        break;
      case 33:
      case 35:
        if (__dst != 1024)
        {
          if (v13 == 33)
          {
            v84 = [NSString stringWithFormat:@"ippReadIO: bad integer value length %d.", v29];
            sub_100002E18(a1, 382, @"IPP integer value not 4 bytes.", v84);
          }

          v86 = [NSString stringWithFormat:@"ippReadIO: bad integer value length %d.", v29];
          sub_100002E18(a1, 384, @"IPP enum value not 4 bytes.", v86);
        }

        sub_100002D34(a1, &__dst, 4uLL);
        v42 = __dst;
        v43 = [(ipp_attribute_t *)v17 value_tag];
        v44 = bswap32(v42);
        if (v43 == 51)
        {
          __dst = v44;
          v110 = v44;
          [v16 setRange:&__dst];
        }

        else
        {
          [v16 setInteger:v44];
        }

        goto LABEL_99;
      case 34:
        if (__dst != 256)
        {
          v94 = [NSString stringWithFormat:@"ippReadIO: bad BOOLean value length %d.", v29];
          sub_100002E18(a1, 398, @"IPP BOOLean value not 1 byte.", v94);
        }

        sub_100002D34(a1, &__dst, 1uLL);
        [v16 setBoolean:__dst != 0];
        goto LABEL_99;
      case 49:
        if (__dst != 2816)
        {
          v93 = [NSString stringWithFormat:@"ippReadIO: bad date value length %d.", v29];
          sub_100002E18(a1, 446, @"IPP date value not 11 bytes.", v93);
        }

        v58 = sub_100003098(a1, 0xCuLL);
        sub_100002D34(a1, v58, 0xBuLL);
        goto LABEL_99;
      case 50:
        if (__dst != 2304)
        {
          v92 = [NSString stringWithFormat:@"ippReadIO: bad resolution value length %d.", v29];
          sub_100002E18(a1, 455, @"IPP resolution value not 9 bytes.", v92);
        }

        sub_100002D34(a1, &__dst, 4uLL);
        v60 = __dst;
        sub_100002D34(a1, &__dst, 4uLL);
        v61 = __dst;
        sub_100002D34(a1, &__dst, 1uLL);
        [v16 setResolution:{bswap64(v61 | (v60 << 32)), validate_enum<ipp_res_e, unsigned char>(__dst)}];
        goto LABEL_99;
      case 51:
        if (__dst != 2048)
        {
          v91 = [NSString stringWithFormat:@"ippReadIO: bad rangeOfInteger value length %d.", v29];
          sub_100002E18(a1, 470, @"IPP rangeOfInteger value not 8 bytes.", v91);
        }

        sub_100002D34(a1, &__dst, 4uLL);
        v62 = __dst;
        sub_100002D34(a1, &__dst, 4uLL);
        v63 = bswap32(__dst);
        __dst = bswap32(v62);
        v110 = v63;
        [v16 setRange:&__dst];
        goto LABEL_99;
      case 52:
        v64 = objc_opt_new();
        [v16 setCollection:v64];

        if (v28)
        {
          v90 = [NSString stringWithFormat:@"ippReadIO: begCollection tag with value length > 0."];
          sub_100002E18(a1, 557, @"IPP begCollection value not 0 bytes.", v90);
        }

        v108 = 0;
        __dst = 19;
        v65 = objc_autoreleasePoolPush();
        v66 = [v16 collection];
        sub_100001894(a1, &v108, &__dst, 1, v66);

        objc_autoreleasePoolPop(v65);
        goto LABEL_99;
      case 53:
      case 54:
        if (v29 <= 3)
        {
          if (v13 == 53)
          {
            v83 = [NSString stringWithFormat:@"ippReadIO: bad stringWithLanguage value length %d.", v29];
            sub_100002E18(a1, 485, @"IPP textWithLanguage value less than minimum 4 bytes.", v83);
          }

          v85 = [NSString stringWithFormat:@"ippReadIO: bad stringWithLanguage value length %d.", v29];
          sub_100002E18(a1, 487, @"IPP nameWithLanguage value less than minimum 4 bytes.", v85);
        }

        v45 = sub_100003098(a1, v29 + 1);
        sub_100002D34(a1, v45, v29);
        v46 = *v45;
        v47 = v45[1] | (v46 << 8);
        if (v46 > 3 || (v48 = &v45[v29], &v45[v47 + 2] > v48))
        {
          v82 = [NSString stringWithFormat:@"ippReadIO: bad language value length %d.", v47];
          sub_100002E18(a1, 510, @"IPP language length overflows value.", v82);
        }

        if (v47 >= 0x40)
        {
          v81 = [NSString stringWithFormat:@"ippReadIO: bad language value length %d.", v47];
          sub_100002E18(a1, 514, @"IPP language length too large.", v81);
        }

        memcpy(&__dst, v45 + 2, v47);
        *(&__dst + v47) = 0;
        v49 = [NSString stringWithUTF8String:&__dst];
        if (!v49)
        {
          v80 = [NSString stringWithFormat:@"ippReadIO: language value length %d.", v47];
          sub_100002E18(a1, 522, @"IPP string langauge invalid UTF8.", v80);
        }

        v50 = &v45[v47 + 2];
        v51 = __rev16(*v50);
        if (&v50[v51 + 2] > v48)
        {
          v79 = [NSString stringWithFormat:@"ippReadIO: bad string value length %d.", v51];
          sub_100002E18(a1, 530, @"IPP string length overflows value.", v79);
        }

        v50[v51 + 2] = 0;
        v52 = [NSString stringWithUTF8String:?];
        if (!v52)
        {
          v78 = [NSString stringWithFormat:@"ippReadIO: string value length %d.", v51];
          sub_100002E18(a1, 537, @"IPP string text invalid UTF8.", v78);
        }

        v53 = v49;
        v54 = v52;
        v55 = v53;
        v56 = v54;
        v57 = v56;
        if (v16)
        {
          [v16 setString:{v55, v56}];
        }

        else
        {
        }

        goto LABEL_99;
      case 55:
        if (__dst)
        {
          v89 = [NSString stringWithFormat:@"ippReadIO: endCollection tag with value length > 0."];
          sub_100002E18(a1, 572, @"IPP endCollection value not 0 bytes.", v89);
        }

        goto LABEL_26;
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
        goto LABEL_41;
      case 74:
        if (!v17)
        {
          v88 = [NSString stringWithFormat:@"ippReadIO: Member name without attribute."];
          sub_100002E18(a1, 586, @"IPP memberName with no attribute.", v88);
        }

        if (!__dst)
        {
          v87 = [NSString stringWithFormat:@"ippReadIO: Empty member name value."];
          sub_100002E18(a1, 591, @"IPP memberName value is empty.", v87);
        }

        v59 = sub_100002F94(a1, v29, 1);
        [(ipp_attribute_t *)v17 setNSName:v59];

        [(ipp_attribute_t *)v17 toss_last_value];
LABEL_99:

        goto LABEL_100;
      default:
        if (v13 == 48 && __dst == 128)
        {
          v95 = [NSString stringWithFormat:@"ippReadIO: bad octetString value length %d.", 0x8000];
          sub_100002E18(a1, 610, @"IPP octetString length too large.", v95);
        }

        v34 = [NSMutableData dataWithLength:v29];
        v67 = v34;
        sub_100002D34(a1, [v34 bytes], v29);
        [v16 setUnknown:v34];
        goto LABEL_45;
    }

    goto LABEL_101;
  }

  if (v9 == 1)
  {
LABEL_5:
    v10 = v105;
    if ((a4 & 1) == 0)
    {
      sub_100002D34(a1, &__dst, 8uLL);
      [v10 setOp_or_status:bswap32(HIWORD(__dst)) >> 16];
      [v10 setRequest_id:bswap32(v110)];
    }

    *v106 = 2;
    *a3 = 0;

    goto LABEL_8;
  }

  if (!v9)
  {
    *a2 = 1;
    goto LABEL_5;
  }

LABEL_106:
}

void *sub_100002CDC(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = 0;
  v4 = objc_opt_new();
  v5 = a1[3];
  a1[3] = v4;

  return a1;
}

uint64_t sub_100002D34(uint64_t a1, void *__b, size_t a3)
{
  memset(__b, 120, a3);
  result = (*(a1 + 8))(*a1, __b, a3);
  if (result != a3)
  {
    v7 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to read data from ipp record", v9, 2u);
    }

    v8 = [NSException exceptionWithName:@"IPPInternal" reason:@"failed to read enough" userInfo:0];
    objc_exception_throw(v8);
  }

  *(a1 + 16) += a3;
  return result;
}

void sub_100002E18(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109634;
    v15 = a2;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "IPPIOReader: Failure on line %d: %{public}@ - %{public}@", buf, 0x1Cu);
  }

  v9 = [NSNumber numberWithInt:a2, @"line"];
  v13[0] = v9;
  v13[1] = v6;
  v12[1] = @"msg";
  v12[2] = @"log";
  v13[2] = v7;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  v11 = [NSException exceptionWithName:@"IPPInternal" reason:v6 userInfo:v10];
  objc_exception_throw(v11);
}

id sub_100002F94(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 >= 0x101)
  {
    p_b = sub_100003098(a1, a2);
  }

  else
  {
    p_b = &__b;
  }

  sub_100002D34(a1, p_b, a2);
  if (a3)
  {
    v7 = internUTF8ByteString(p_b, a2);
  }

  else
  {
    v7 = [[NSString alloc] initWithBytes:p_b length:a2 encoding:4];
  }

  if (!v7)
  {
    sub_100002E18(a1, 91, @"Invalid UTF8 bytes", @"Invalid UTF8 bytes");
  }

  return v7;
}

char *sub_100003098(uint64_t a1, unint64_t a2)
{
  if ([*(a1 + 24) count])
  {
    v4 = [*(a1 + 24) lastObject];
    v5 = v4;
    if (v4 && [v4 length] + a2 < 0x400)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
  }

  if (a2 <= 0x400)
  {
    v6 = 1024;
  }

  else
  {
    v6 = a2;
  }

  v7 = [NSMutableData dataWithCapacity:v6];

  v5 = v7;
  [*(a1 + 24) addObject:v7];
LABEL_10:
  v8 = [v5 length];
  [v5 setLength:&v8[a2]];
  v9 = [v5 mutableBytes];

  return &v8[v9];
}

void sub_100003320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = DocumentCompressor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100003DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PKSecTrustWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t copyMatchingCerts(const __CFString *a1, CFTypeRef *a2)
{
  result = sub_100003F0C();
  if (result)
  {
    v5 = result;
    Value = CFDictionaryGetValue(result, a1);
    *a2 = Value;
    if (Value && CFArrayGetCount(Value))
    {
      CFRetain(*a2);
      CFRelease(v5);
      return 1;
    }

    else
    {
      *a2 = 0;
      CFRelease(v5);
      return 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_100003F0C()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = CFPreferencesCopyValue(@"certificates", @"com.apple.PrintKit.PrinterTool", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v0 = v7[3];
  if (!v0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004E80;
    block[3] = &unk_100095220;
    block[4] = &v6;
    if (qword_1000C7B50 != -1)
    {
      dispatch_once(&qword_1000C7B50, block);
    }

    v0 = v7[3];
    if (!v0)
    {
      goto LABEL_7;
    }
  }

  v1 = CFGetTypeID(v0);
  TypeID = CFDictionaryGetTypeID();
  v3 = v7[3];
  if (v1 != TypeID)
  {
    CFRelease(v7[3]);
LABEL_7:
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_100004030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void storeCertificate(__SecCertificate *a1, __CFString *a2)
{
  v4 = sub_100003F0C();
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(v5);
      MutableCopy = CFDictionaryCreateMutableCopy(0, Count + 1, v5);
      CFRelease(v5);
      Value = CFDictionaryGetValue(MutableCopy, a2);
      if (Value && (v10 = Value, v11 = CFArrayGetCount(Value), (v12 = CFArrayCreateMutableCopy(0, v11 + 1, v10)) != 0))
      {
        v13 = v12;
        v14 = SecCertificateCopyData(a1);
        CFArrayAppendValue(v13, v14);
        if (!v14)
        {
LABEL_11:
          CFDictionarySetValue(MutableCopy, a2, v13);
          CFRelease(v13);
          CFPreferencesSetValue(@"certificates", MutableCopy, @"com.apple.PrintKit.PrinterTool", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          v18 = MutableCopy;
          goto LABEL_12;
        }

        v15 = v14;
      }

      else
      {
        values = SecCertificateCopyData(a1);
        v13 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
        v15 = values;
      }

      CFRelease(v15);
      goto LABEL_11;
    }

    CFRelease(v5);
  }

  values = SecCertificateCopyData(a1);
  v16 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  v19 = v16;
  keys = a2;
  v17 = CFDictionaryCreate(0, &keys, &v19, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFPreferencesSetValue(@"certificates", v17, @"com.apple.PrintKit.PrinterTool", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFRelease(v16);
  CFRelease(values);
  v18 = v17;
LABEL_12:
  CFRelease(v18);
}

void deleteCertificate(__SecCertificate *a1, const __CFString *a2)
{
  v4 = sub_100003F0C();
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(v5);
      MutableCopy = CFDictionaryCreateMutableCopy(0, Count, v5);
      CFRelease(v5);
      Value = CFDictionaryGetValue(MutableCopy, a2);
      if (Value)
      {
        v10 = Value;
        v11 = CFGetTypeID(Value);
        if (v11 == CFArrayGetTypeID())
        {
          if (a1)
          {
            v12 = CFArrayGetCount(v10);
            v13 = CFArrayCreateMutableCopy(0, v12, v10);
            if (CFArrayGetCount(v13) >= 1)
            {
              v14 = 0;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v13, v14);
                v16 = SecCertificateCreateWithData(0, ValueAtIndex);
                if (CFEqual(v16, a1))
                {
                  CFArrayRemoveValueAtIndex(v13, v14);
                }

                if (v16)
                {
                  CFRelease(v16);
                }

                ++v14;
              }

              while (v14 < CFArrayGetCount(v13));
            }

            CFDictionarySetValue(MutableCopy, a2, v13);
            CFRelease(v13);
          }

          else
          {
            CFDictionaryRemoveValue(MutableCopy, a2);
          }

          CFPreferencesSetValue(@"certificates", MutableCopy, @"com.apple.PrintKit.PrinterTool", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        }
      }

      v17 = MutableCopy;
    }

    else
    {
      v17 = v5;
    }

    CFRelease(v17);
  }
}

BOOL PKUserAllowsCertTrust(PKSecTrustWrapper *a1, NSString *a2, NSString *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v11;
  if (v9 && v11)
  {
    CertificateAtIndex = SecTrustGetCertificateAtIndex([(PKSecTrustWrapper *)v9 trustRef], 0);
    result = kSecTrustResultInvalid;
    v14 = SecTrustEvaluate([(PKSecTrustWrapper *)v9 trustRef], &result);
    if (v14)
    {
      v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v14 userInfo:0];
      v16 = _PKLogCategory(PKLogCategoryNetwork[0]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "PrintKit trust evaluation failed: %{public}@", &buf, 0xCu);
      }

      v17 = PKLocalizedString(@"The security of the connection could not be verified.", "Print job failed due to security failure.");
      PKDisplayNotice(v12, v17, @"allowCertTrust(2)");
      CFRelease(v17);

      goto LABEL_8;
    }

    if (result == kSecTrustResultUnspecified || result == kSecTrustResultProceed)
    {
      storeCertificate(CertificateAtIndex, v12);
      v19 = 1;
      goto LABEL_9;
    }

    if (qword_1000C7B58 != -1)
    {
      sub_1000602EC();
    }

    if (byte_1000C7B60 == 1)
    {
      v21 = _PKLogCategory(PKLogCategoryNetwork[0]);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "PrintKit trust evaluation failed due to MobileDeviceManagement AirPrintTrustedTLSRequirementForced setting enabled and connection is not a trusted chain.", &buf, 2u);
      }

      v22 = PKLocalizedString(@"The security of the connection could not be verified.", "Print job failed due to security failure.");
      PKDisplayNotice(v12, v22, @"allowCertTrust(3)");
      CFRelease(v22);
      goto LABEL_8;
    }

    objc_sync_enter(@"PKCertUISynchronization");
    theArray = 0;
    v23 = copyMatchingCerts(v12, &theArray);
    v24 = theArray;
    if (theArray)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    if (v25 == 1 && CFArrayGetCount(theArray) >= 1)
    {
      for (i = 0; CFArrayGetCount(v24) > i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v24, i);
        v28 = SecCertificateCreateWithData(0, ValueAtIndex);
        if (CFEqual(v28, CertificateAtIndex))
        {
          CFRelease(v24);
          if (v28)
          {
            CFRelease(v28);
          }

          goto LABEL_32;
        }

        if (v28)
        {
          CFRelease(v28);
        }
      }

      if (CFArrayGetCount(v24) == 1)
      {
        v29 = CFArrayGetValueAtIndex(v24, 0);
        v30 = SecCertificateCreateWithData(0, v29);
        SecCertificateNotValidAfter();
        v32 = v31;
        SecCertificateNotValidAfter();
        v34 = v33;
        if (CFAbsoluteTimeGetCurrent() > v32 && CFAbsoluteTimeGetCurrent() < v34)
        {
          deleteCertificate(v30, v12);
          storeCertificate(CertificateAtIndex, v12);
          if (v30)
          {
            CFRelease(v30);
          }

          goto LABEL_31;
        }

        if (v30)
        {
          CFRelease(v30);
        }
      }

      CFRelease(v24);
      v42 = PKLocalizedString(@"The printer %@ appears to be a different printer than the previously used printer with the same name or the connection may not be trustworthy. If this is expected, tap Continue.", "Printing certificate changed alert message");
      v35 = [NSString stringWithValidatedFormat:"stringWithValidatedFormat:validFormatSpecifiers:error:" validFormatSpecifiers:v12 error:?];
      v46[0] = kCFUserNotificationAlertHeaderKey;
      v36 = PKLocalizedString(@"Security Warning", "Printing certificate changed security alert title");
      *&buf = v36;
      *(&buf + 1) = v35;
      v46[1] = kCFUserNotificationAlertMessageKey;
      v46[2] = kCFUserNotificationDefaultButtonTitleKey;
      v37 = PKLocalizedString(@"Cancel", "Cancel printing");
      v48 = v37;
      v46[3] = kCFUserNotificationAlternateButtonTitleKey;
      v38 = PKLocalizedString(@"Continue", "Continue printing");
      v46[4] = SBUserNotificationDismissOnLock;
      v46[5] = SBUserNotificationDontDismissOnUnlock;
      v46[6] = SBUserNotificationAllowMenuButtonDismissal;
      v49 = v38;
      v50 = kCFBooleanFalse;
      v51 = kCFBooleanTrue;
      v52 = kCFBooleanFalse;
      v39 = [NSDictionary dictionaryWithObjects:&buf forKeys:v46 count:7];

      v40 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 2uLL, 0, v39);
      responseFlags = 0;
      CFUserNotificationReceiveResponse(v40, 0.0, &responseFlags);
      CFRelease(v40);
      v41 = responseFlags & 3;
      if ((responseFlags & 3) != 0)
      {
        storeCertificate(CertificateAtIndex, v12);
      }

      v19 = v41 != 0;

      goto LABEL_33;
    }

    storeCertificate(CertificateAtIndex, v12);
    if (!v24)
    {
LABEL_32:
      v19 = 1;
LABEL_33:
      objc_sync_exit(@"PKCertUISynchronization");
      goto LABEL_9;
    }

LABEL_31:
    CFRelease(v24);
    goto LABEL_32;
  }

  v18 = PKLocalizedString(@"The security of the connection could not be verified.", "Print job failed due to security failure.");
  PKDisplayNotice(@"Unknown Printer Name", v18, @"allowCertTrust(1)");
  CFRelease(v18);
LABEL_8:
  v19 = 0;
LABEL_9:

  objc_autoreleasePoolPop(v8);
  return v19;
}

void sub_100004A28(_Unwind_Exception *a1)
{
  objc_sync_exit(@"PKCertUISynchronization");

  _Unwind_Resume(a1);
}

BOOL PKAllowNonTLSConnection(NSString *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = v1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  theArray = 0;
  v5 = copyMatchingCerts(v3, &theArray);
  v6 = theArray;
  if (theArray)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7 != 1)
  {
    if (!theArray)
    {
LABEL_12:
      v16 = 1;
      goto LABEL_13;
    }

LABEL_11:
    CFRelease(v6);
    goto LABEL_12;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    goto LABEL_11;
  }

  CFRelease(v6);
  v8 = PKLocalizedString(@"The printer %@ appears to be a different printer than the previously used printer with the same name or the connection may not be trustworthy. If this is expected, tap Continue.", "Printing certificate changed alert message");
  v9 = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v4];
  v20[0] = kCFUserNotificationAlertHeaderKey;
  v10 = PKLocalizedString(@"Security Warning", "Printing certificate changed security alert title");
  v21[0] = v10;
  v21[1] = v9;
  v20[1] = kCFUserNotificationAlertMessageKey;
  v20[2] = kCFUserNotificationDefaultButtonTitleKey;
  v11 = PKLocalizedString(@"Cancel", "Cancel printing");
  v21[2] = v11;
  v20[3] = kCFUserNotificationAlternateButtonTitleKey;
  v12 = PKLocalizedString(@"Continue", "Continue printing");
  v20[4] = SBUserNotificationDismissOnLock;
  v20[5] = SBUserNotificationDontDismissOnUnlock;
  v20[6] = SBUserNotificationAllowMenuButtonDismissal;
  v21[3] = v12;
  v21[4] = kCFBooleanFalse;
  v21[5] = kCFBooleanTrue;
  v21[6] = kCFBooleanFalse;
  v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:7];

  v14 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 2uLL, 0, v13);
  responseFlags = 0;
  CFUserNotificationReceiveResponse(v14, 0.0, &responseFlags);
  CFRelease(v14);
  v15 = responseFlags & 3;
  if ((responseFlags & 3) != 0)
  {
    deleteCertificate(0, v4);
  }

  v16 = v15 != 0;

LABEL_13:
  objc_autoreleasePoolPop(v2);

  return v16;
}

id PKStoreCredentialsInKeychainAllowed(void)
{
  v0 = objc_autoreleasePoolPush();
  v1 = [(objc_class *)off_1000C49D0() sharedConnection];
  v2 = [v1 isAirPrintCredentialsStorageAllowed];

  objc_autoreleasePoolPop(v0);
  return v2;
}

void sub_100004E80(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFPreferencesCopyValue(@"certificates", @"com.apple.printd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {

    CFPreferencesSetValue(@"certificates", v2, @"com.apple.PrintKit.PrinterTool", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }
}

void sub_100004F30(id a1)
{
  v1 = [(objc_class *)off_1000C49D0() sharedConnection];
  byte_1000C7B60 = [v1 isAirPrintTrustedTLSRequirementEnforced];
}

Class sub_100004FA0()
{
  if (qword_1000C7B78 != -1)
  {
    sub_100060314();
  }

  result = objc_getClass("MCProfileConnection");
  qword_1000C7B68 = result;
  off_1000C49D0 = sub_100004FF4;
  return result;
}

void sub_100005000(id a1)
{
  qword_1000C7B70 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  if (!qword_1000C7B70)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration");
  }
}

id sub_10000541C(void *a1, void *a2, double a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000070B0;
  v15 = sub_1000070C0;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B5A0;
  v8[3] = &unk_1000956A8;
  v9 = a2;
  v10 = &v11;
  v5 = v9;
  withDebuggableSemaphore(a1, v8, a3);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_100005534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_100005644(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [IPPURL alloc];
    v4 = [*(a1 + 32) session];
    v5 = [(IPPURL *)v3 initWithSession:v4 url:v6];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100005A7C(id a1)
{
  v1 = [[IPPSession alloc] initWithBundleIdentifier:0 clientID:0];
  v2 = qword_1000C7B80;
  qword_1000C7B80 = v1;
}

void sub_100005E40(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_100005F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = IPPSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000063C0(id a1, NSURLSessionConfiguration *a2)
{
  v2 = a2;
  [(NSURLSessionConfiguration *)v2 timeoutIntervalForResource];
  [(NSURLSessionConfiguration *)v2 setTimeoutIntervalForRequest:?];
}

void sub_100006678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = IPPSessionTransaction;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_100006B0C(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000ADA8;
  v13 = sub_10000ADD4;
  v14 = 0;
  v2 = [v1 URL];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B01C;
  v6[3] = &unk_100095628;
  v3 = v1;
  v7 = v3;
  v8 = &v9;
  sub_10000ADDC(v2, v6);

  v4 = objc_retainBlock(v10[5]);
  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_100006C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

BOOL sub_100006E6C(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2 + a3;
  do
  {
    v7 = a2;
    if (a2 >= v6)
    {
      break;
    }

    if ([v5 streamStatus] >= 5)
    {
      v9 = _PKLogCategory(PKLogCategoryNetwork[0]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "writeLiteralToStreamSync";
        v13 = 2114;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: stream %{public}@ can't be written to", &v11, 0x16u);
      }

      break;
    }

    v8 = [v5 write:a2 maxLength:v6 - a2];
    a2 += v8;
  }

  while (v8 > 0);

  return v7 >= v6;
}

uint64_t sub_1000070B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000070C8(uint64_t a1)
{
  v2 = [*(a1 + 32) writeDocumentData0:*(a1 + 48) length:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 56);
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v8 = 136315650;
      v9 = "[IPPSessionTransaction writeDocumentDataBlocking:length:]_block_invoke";
      v10 = 2048;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s: Failed with %zu bytes. err=%@", &v8, 0x20u);
    }
  }
}

void sub_1000077EC(uint64_t a1, void *a2)
{
  v3 = a2;
  error = 0;
  v4 = SecTrustEvaluateWithError([*(a1 + 32) trustRef], &error);
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  if (v4)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    v8 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PrintKit: allowing untrusted printer certificate for unafilliated request (%{public}@)", buf, 0xCu);
    }

LABEL_9:
    v7 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [*(a1 + 32) trustRef]);
    v3[2](v3, v7);
    goto LABEL_10;
  }

  v6 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000079E8;
  v10[3] = &unk_1000953A8;
  v12 = v3;
  v11 = *(a1 + 32);
  (*(v5 + 16))(v5, v6, v10);

  v7 = v12;
LABEL_10:
}

void sub_1000079E8(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [*(a1 + 32) trustRef]);
    (*(v2 + 16))(v2);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 0);
  }
}

void sub_100007AA8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) currentRequest];
  (*(v3 + 16))(v3, v4, v5, v6);
}

void sub_100007B48(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100007C14;
  v3[3] = &unk_100095420;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  objc_copyWeak(&v5, (a1 + 48));
  (*(v2 + 16))(v2, v3);
  objc_destroyWeak(&v5);
}

void sub_100007BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v13 + 40));

  _Unwind_Resume(a1);
}

void sub_100007C14(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = [v8 hasPassword];

      if (v5)
      {
        v6 = objc_loadWeakRetained((a1 + 40));
        v7 = [v8 user];
        [v6 updateInitialPayloadUserName:v7];
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100007D9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000B548(va);

  _Unwind_Resume(a1);
}

void sub_100007DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4;
    Printd_Parameters::_del_RequestingUserName(&v5);
    Printd_Parameters::_set_RequestingUserName(&v5, v3);
  }
}

void sub_1000082A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _send1_sendClearToSendBody:*(a1 + 40)];
}

void sub_100008E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100008E60(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008F34;
  v10[3] = &unk_100095498;
  v10[4] = v6;
  v11 = v5;
  v8 = *(v7 + 16);
  v9 = v5;
  v8(v7, a2, v10);
}

uint64_t sub_100008F34(uint64_t a1, char a2)
{
  *(*(a1 + 32) + 40) = a2 ^ 1;
  v3 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 40);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "auth trust completion - canceled? %d", v6, 8u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100009018(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 96);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000090F4;
  v12[3] = &unk_1000954E8;
  v12[4] = v8;
  v13 = v7;
  v10 = *(v9 + 16);
  v11 = v7;
  v10(v9, a2, a3, v12);
}

void sub_1000090F4(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 40) = v3 == 0;
  v4 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 40);
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "auth cred completion - canceled? %d", v6, 8u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100009200(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_retainBlock(v6);
    v5 = WeakRetained[9];
    WeakRetained[9] = v4;
  }
}

void sub_100009388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) createTransactionResult:a2 response:a3 data:a4];
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 32);
    v8 = [(http_ipp_response_t *)v5 ippResponse];
    [v7 debugLogIPP:"RECV_IPP" ipp:v8];
  }

  else
  {
    v9 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Network timeout waiting to send request", v10, 2u);
    }

    v6 = [[http_ipp_response_t alloc] initWithTransportStatus:5];
  }

  (*(*(a1 + 40) + 16))();
}

id sub_1000095D0(void *a1, void *a2, double a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000070B0;
  v15 = sub_1000070C0;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B6C0;
  v8[3] = &unk_1000956A8;
  v9 = a2;
  v10 = &v11;
  v5 = v9;
  withDebuggableSemaphore(a1, v8, a3);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_1000096E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

__CFString *toString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [NSString stringWithFormat:@"Unknown http status %d", a1];
  }

  else
  {
    v2 = off_1000956F0[a1];
  }

  return v2;
}

intptr_t sub_10000A178(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _streamedTaskCompleted:v9 response:v8 data:v7];

  v11 = *(a1 + 32);

  return dispatch_semaphore_signal(v11);
}

void platformHTTP_GetDataForURL(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [[platform_http_get alloc] initWithSession:v5 url:v6 callback:v7];
  v9 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting fetch %{public}@", &v10, 0xCu);
  }

  [(platform_http_get *)v8 start];
}

id sub_10000ADA8(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10000ADDC(void *a1, void *a2)
{
  v15 = a1;
  v3 = a2;
  if (v15)
  {
    v4 = [NSURLComponents componentsWithURL:v15 resolvingAgainstBaseURL:1];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 host];
      v7 = v6;
      if (v6 && [v6 hasPrefix:@"["] && objc_msgSend(v7, "hasSuffix:", @"]"))
      {
        v8 = [v7 substringWithRange:{1, objc_msgSend(v7, "length") - 2}];
        v9 = [v5 port];
        if (!v9)
        {
          v10 = [v5 scheme];
          v9 = PKDefaultPortForScheme(v10);
        }

        if (v8 && v9)
        {
          v11 = [v8 UTF8String];
          v12 = [v9 stringValue];
          host = nw_endpoint_create_host(v11, [v12 UTF8String]);

          if (host)
          {
            if (nw_endpoint_get_type(host) == nw_endpoint_type_address)
            {
              address = nw_endpoint_get_address(host);
              if (address->sa_family == 30)
              {
                v3[2](v3, v5, v8, v9, address);
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000B01C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = *(a5 + 24);
  if (v12)
  {
    v13 = if_indextoname(v12, v27);
    if (v13)
    {
      v14 = _PKLogCategory(PKLogCategoryNetwork[0]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v24 = v10;
        v25 = 2080;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Forcing IPV6 literal bound for %{public}@ interface to %s", buf, 0x16u);
      }

      v15 = [NSString stringWithUTF8String:v13];
      [*(a1 + 32) setBoundInterfaceIdentifier:v15];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000B21C;
      v19[3] = &unk_100095600;
      v20 = v10;
      v21 = v11;
      v22 = v9;
      v16 = objc_retainBlock(v19);
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }
}

id sub_10000B21C(id *a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000070B0;
  v16 = sub_1000070C0;
  v17 = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B398;
  v7[3] = &unk_1000955D8;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = &v12;
  v4 = v3;
  sub_10000ADDC(v4, v7);
  v5 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v5;
}

void sub_10000B35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_10000B398(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v15 = a2;
  v9 = a3;
  v10 = a4;
  if ([*(a1 + 32) hasPrefix:v9] && objc_msgSend(*(a1 + 40), "isEqualToNumber:", v10) && !*(a5 + 24))
  {
    v11 = [*(a1 + 48) host];
    [v15 setHost:v11];

    v12 = [v15 URL];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void *sub_10000B498(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  a1[1] = v5;
  a1[2] = 0;
  *a1 = off_100095658;
  v7 = v5;
  v8 = a1[2];
  a1[2] = v6;

  return a1;
}

void sub_10000B510(uint64_t a1)
{
  sub_10000B548(a1);

  operator delete();
}

uint64_t sub_10000B548(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = off_100095658;
  *(a1 + 8) = 0;

  return a1;
}

void sub_10000B5A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B660;
  v8[3] = &unk_100095680;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void sub_10000B660(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000B6C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B780;
  v8[3] = &unk_1000956D0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void sub_10000B780(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

BOOL isColorPage(CGPDFPage *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(ColorInfo);
  v4 = CGPDFContentStreamCreateWithPage(a1);
  v5 = v4;
  if (v4)
  {
    sub_10000BD9C(v4, v3);
    CGPDFContentStreamRelease(v5);
  }

  else
  {
    [(ColorInfo *)v3 setColorReason:@"Could not create PDF page stream"];
  }

  v6 = [(ColorInfo *)v3 colorReason];

  objc_autoreleasePoolPop(v2);
  return v6 != 0;
}

void sub_10000B9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ColorInfo;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10000BD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = GState;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10000BD9C(CGPDFContentStream *a1, void *a2)
{
  info = a2;
  v3 = CGPDFOperatorTableCreate();
  v4 = v3;
  if (v3)
  {
    CGPDFOperatorTableSetCallback(v3, "cs", sub_10000C054);
    CGPDFOperatorTableSetCallback(v4, "k", sub_10000C118);
    CGPDFOperatorTableSetCallback(v4, "rg", sub_10000C1A0);
    CGPDFOperatorTableSetCallback(v4, "sc", sub_10000C228);
    CGPDFOperatorTableSetCallback(v4, "scn", sub_10000C2C8);
    CGPDFOperatorTableSetCallback(v4, "CS", sub_10000C368);
    CGPDFOperatorTableSetCallback(v4, "K", sub_10000C42C);
    CGPDFOperatorTableSetCallback(v4, "RG", sub_10000C4B4);
    CGPDFOperatorTableSetCallback(v4, "SC", sub_10000C53C);
    CGPDFOperatorTableSetCallback(v4, "SCN", sub_10000C5DC);
    CGPDFOperatorTableSetCallback(v4, "sh", sub_10000C67C);
    CGPDFOperatorTableSetCallback(v4, "Do", sub_10000C798);
    CGPDFOperatorTableSetCallback(v4, "BI", sub_10000C8F8);
    CGPDFOperatorTableSetCallback(v4, "q", sub_10000C908);
    CGPDFOperatorTableSetCallback(v4, "Q", sub_10000C910);
    v5 = CGPDFScannerCreate(a1, v4, info);
    v6 = v5;
    if (v5)
    {
      if (!CGPDFScannerScan(v5))
      {
        [info setColorReason:@"PDF scanner failed"];
      }

      CGPDFScannerRelease(v6);
    }

    else
    {
      [info setColorReason:@"Unable to create scanner"];
    }

    CGPDFOperatorTableRelease(v4);
  }

  else
  {
    [info setColorReason:@"Unable to create scan table"];
  }
}

void sub_10000C054(CGPDFScanner *a1, void *a2)
{
  v3 = a2;
  value = 0;
  v4 = CGPDFScannerPopName(a1, &value);
  if (value)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [NSString stringWithUTF8String:?];
    [v3 setNonStrokeColorspace:v6];
  }

  else
  {
    [v3 setNonStrokeColorspace:@"unknown"];
    [v3 setColorReason:@"Didn't understand a null non-stroke colorspace"];
  }
}

void sub_10000C118(_BOOL8 a1, void *a2)
{
  v3 = a2;
  [v3 setNonStrokeColorspace:@"DeviceCMKY"];
  if (sub_10000C918(a1, "DeviceCMKY"))
  {
    [v3 setColorReason:@"color CMYK non-stroke"];
  }
}

void sub_10000C1A0(_BOOL8 a1, void *a2)
{
  v3 = a2;
  [v3 setNonStrokeColorspace:@"DeviceRGB"];
  if (sub_10000C918(a1, "DeviceRGB"))
  {
    [v3 setColorReason:@"color RGB non-stroke"];
  }
}

void sub_10000C228(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 nonStrokeColorspace];
  LODWORD(a1) = sub_10000C918(a1, [v3 UTF8String]);

  if (a1)
  {
    [v4 setColorReason:@"color non-stroke"];
  }
}

void sub_10000C2C8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 nonStrokeColorspace];
  LODWORD(a1) = sub_10000C918(a1, [v3 UTF8String]);

  if (a1)
  {
    [v4 setColorReason:@"scn color non-stroke"];
  }
}

void sub_10000C368(CGPDFScanner *a1, void *a2)
{
  v3 = a2;
  value = 0;
  v4 = CGPDFScannerPopName(a1, &value);
  if (value)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [NSString stringWithUTF8String:?];
    [v3 setStrokeColorspace:v6];
  }

  else
  {
    [v3 setStrokeColorspace:@"unknown"];
    [v3 setColorReason:@"Didn't understand a null stroke colorspace"];
  }
}

void sub_10000C42C(_BOOL8 a1, void *a2)
{
  v3 = a2;
  [v3 setStrokeColorspace:@"DeviceCMKY"];
  if (sub_10000C918(a1, "DeviceCMKY"))
  {
    [v3 setColorReason:@"color CMYK stroke"];
  }
}

void sub_10000C4B4(_BOOL8 a1, void *a2)
{
  v3 = a2;
  [v3 setStrokeColorspace:@"DeviceRGB"];
  if (sub_10000C918(a1, "DeviceRGB"))
  {
    [v3 setColorReason:@"color RGB stroke"];
  }
}

void sub_10000C53C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 strokeColorspace];
  LODWORD(a1) = sub_10000C918(a1, [v3 UTF8String]);

  if (a1)
  {
    [v4 setColorReason:@"color stroke"];
  }
}

void sub_10000C5DC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 strokeColorspace];
  LODWORD(a1) = sub_10000C918(a1, [v3 UTF8String]);

  if (a1)
  {
    [v4 setColorReason:@"SCN color stroke"];
  }
}

void sub_10000C67C(CGPDFScanner *a1, void *a2)
{
  v3 = a2;
  value = 0;
  v4 = CGPDFScannerPopName(a1, &value);
  v5 = value;
  if (value)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    value = 0;
    ContentStream = CGPDFScannerGetContentStream(a1);
    if (ContentStream && (Resource = CGPDFContentStreamGetResource(ContentStream, "Shading", v5)) != 0 && CGPDFObjectGetValue(Resource, kCGPDFObjectTypeDictionary, &value) && (v9 = value) != 0)
    {
      value = 0;
      if (!CGPDFDictionaryGetObject(v9, "ColorSpace", &value))
      {
        v10 = @"shading was not a dictionary";
        goto LABEL_16;
      }

      if (sub_10000D0A8(value))
      {
        v10 = @"shading with color colorspace";
LABEL_16:
        [v3 setColorReason:v10];
      }
    }

    else
    {
      [v3 setColorReason:@"shading with unexpected shading type"];
    }
  }

  else
  {
    [v3 setColorReason:@"shading with unexpected parameter"];
  }
}

void sub_10000C798(CGPDFScanner *a1, void *a2)
{
  v3 = a2;
  value = 0;
  v4 = CGPDFScannerPopName(a1, &value);
  v5 = value;
  ContentStream = CGPDFScannerGetContentStream(a1);
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  Resource = CGPDFContentStreamGetResource(ContentStream, "XObject", v7);
  value = 0;
  CGPDFObjectGetValue(Resource, kCGPDFObjectTypeStream, &value);
  Dictionary = CGPDFStreamGetDictionary(value);
  __s1 = 0;
  if (CGPDFDictionaryGetName(Dictionary, "Subtype", &__s1) && !strcmp(__s1, "Image"))
  {
    v14 = 0;
    v13 = 0;
    Boolean = CGPDFDictionaryGetBoolean(Dictionary, "ImageMask", &v13);
    if (v13)
    {
      v11 = Boolean;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      if (CGPDFDictionaryGetObject(Dictionary, "ColorSpace", &v14))
      {
        if (!sub_10000D0A8(v14))
        {
          goto LABEL_7;
        }

        v12 = @"image xobject with color colorspace";
      }

      else
      {
        v12 = @"image xobject without colorspace assumed to be color";
      }

      [v3 setColorReason:v12];
    }
  }

  else
  {
    [v3 setColorReason:@"unrecognized direct object assumed to be color"];
  }

LABEL_7:
}

uint64_t sub_10000C918(_BOOL8 a1, const char *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!strcmp(a2, "DeviceGray"))
  {
    if (a1)
    {
      __s1 = 0;
      CGPDFScannerPopNumber(a1, &__s1);
      return 0;
    }

    return a1;
  }

  if (strcmp(a2, "DeviceRGB"))
  {
    if (!strcmp(a2, "DeviceCMKY"))
    {
      if (a1)
      {
        v10 = 0;
        p_s1 = &__s1;
        do
        {
          v12 = CGPDFScannerPopNumber(a1, p_s1);
          v14 = v10++ < 3;
          ++p_s1;
        }

        while (v14 && v12);
        if (v12)
        {
          return fmax(vabdd_f64(v30, v31), vabdd_f64(v30, v32)) >= 0.01;
        }
      }
    }

    else
    {
      if (strcmp(a2, "Pattern"))
      {
        ContentStream = CGPDFScannerGetContentStream(a1);
        if (ContentStream && (Resource = CGPDFContentStreamGetResource(ContentStream, "ColorSpace", a2)) != 0)
        {
          v6 = Resource;
          Type = CGPDFObjectGetType(Resource);
          if (Type == kCGPDFObjectTypeArray)
          {
            __s1 = 0;
            if (CGPDFObjectGetValue(v6, kCGPDFObjectTypeArray, &__s1))
            {
              return sub_10000CDA4(a1, __s1);
            }
          }

          else if (Type == kCGPDFObjectTypeName)
          {
            __s1 = 0;
            if (CGPDFObjectGetValue(v6, kCGPDFObjectTypeName, &__s1))
            {
              return sub_10000C918(a1, __s1);
            }
          }

          else
          {
            v28 = __stderrp;
            CGPDFObjectGetType(v6);
            fprintf(v28, "DEBUG: %s unexpected type for colorspace reference: %d");
          }
        }

        else
        {
          fprintf(__stderrp, "DEBUG: %s couldn't find colorspace dictionary for %s");
        }

        return 1;
      }

      __s1 = 0;
      v15 = CGPDFScannerPopName(a1, &__s1);
      v16 = __s1;
      __s1 = 0;
      v17 = CGPDFScannerGetContentStream(a1);
      if (v17 && (!v15 ? (v18 = 0) : (v18 = v16), (v19 = CGPDFContentStreamGetResource(v17, "Pattern", v18), (v20 = v19) != 0) && CGPDFObjectGetType(v19) == kCGPDFObjectTypeStream && CGPDFObjectGetValue(v20, kCGPDFObjectTypeStream, &__s1) && (v21 = __s1) != 0 && (Dictionary = CGPDFStreamGetDictionary(__s1), (v23 = Dictionary) != 0)))
      {
        __s1 = 0;
        if (CGPDFDictionaryGetInteger(Dictionary, "PatternType", &__s1))
        {
          if (__s1 == 1)
          {
            v24 = CGPDFScannerGetContentStream(a1);
            v25 = CGPDFContentStreamCreateWithStream(v21, v23, v24);
            if (v25)
            {
              v26 = objc_alloc_init(ColorInfo);
              sub_10000BD9C(v25, v26);
              v27 = [(ColorInfo *)v26 colorReason];

              CGPDFContentStreamRelease(v25);
              a1 = v27 != 0;

              return a1;
            }
          }

          else
          {
            fprintf(__stderrp, "DEBUG: %s unrecognized pattern type %d", "isColorInPattern", __s1);
            CGPDFDictionaryPrint();
          }
        }
      }

      else
      {
        fprintf(__stderrp, "DEBUG: %s pattern stream without a dictionary.");
      }
    }

    return 1;
  }

  return sub_10000CCEC(a1);
}

BOOL sub_10000CCEC(CGPDFScannerRef scanner)
{
  if (!scanner)
  {
    return 1;
  }

  v2 = 0;
  v3 = v6;
  do
  {
    v4 = CGPDFScannerPopNumber(scanner, v3);
    if (v2 > 1)
    {
      break;
    }

    ++v2;
    ++v3;
  }

  while (v4);
  return !v4 || fmax(vabdd_f64(v6[0], v6[1]), vabdd_f64(v6[0], v6[2])) >= 0.01;
}

uint64_t sub_10000CDA4(CGPDFScanner *a1, CGPDFArrayRef array)
{
  if (CGPDFArrayGetCount(array) < 2)
  {
    return 1;
  }

  __s1 = 0;
  if (!CGPDFArrayGetName(array, 0, &__s1))
  {
    return 1;
  }

  v4 = __s1;
  if (!strcmp(__s1, "ICCBased"))
  {
    return sub_10000CEA0(a1, array);
  }

  if (!strcmp(v4, "CalRGB"))
  {
    return sub_10000CCEC(a1);
  }

  if (strcmp(v4, "CalGray"))
  {
    if (!strcmp(v4, "Indexed"))
    {
      return sub_10000D048(a1, array);
    }

    return 1;
  }

  if (a1)
  {
    value = 0.0;
    CGPDFScannerPopNumber(a1, &value);
  }

  return 0;
}

BOOL sub_10000CEA0(CGPDFScanner *a1, CGPDFArrayRef array)
{
  value = 0;
  v3 = 1;
  if (!CGPDFArrayGetStream(array, 1uLL, &value))
  {
    return v3;
  }

  v13 = 0;
  v14 = 0;
  Dictionary = CGPDFStreamGetDictionary(value);
  if (!Dictionary)
  {
    return 1;
  }

  v5 = Dictionary;
  if (!CGPDFDictionaryGetInteger(Dictionary, "N", &v13))
  {
    v13 = 0;
  }

  if (!CGPDFDictionaryGetName(v5, "Alternate", &v14))
  {
    v14 = "Unknown";
  }

  if (v13 == 3)
  {
    if (!strcmp(v14, "DeviceRGB"))
    {
      return sub_10000CCEC(a1);
    }

    return 1;
  }

  if (v13 != 1)
  {
    if (a1)
    {
      __chkstk_darwin();
      v6 = &v12;
      v7 = v13;
      if (v13 >= 10)
      {
        v7 = 10;
      }

      if (v7 >= 1)
      {
        v8 = v7 & 0x7FFFFFFF;
        v9 = 1;
        do
        {
          v10 = CGPDFScannerPopNumber(a1, v6);
          if (v9 >= v8)
          {
            break;
          }

          ++v9;
          ++v6;
        }

        while (v10);
      }
    }

    return 1;
  }

  if (strcmp(v14, "DeviceGray"))
  {
    return 1;
  }

  if (a1)
  {
    v16 = 0.0;
    CGPDFScannerPopNumber(a1, &v16);
  }

  return 0;
}

uint64_t sub_10000D048(CGPDFScanner *a1, CGPDFArrayRef array)
{
  v5 = 0;
  value = 0.0;
  if (a1)
  {
    CGPDFScannerPopNumber(a1, &value);
  }

  v3 = 1;
  if (CGPDFArrayGetObject(array, 1uLL, &v5))
  {
    return sub_10000D0A8(v5);
  }

  return v3;
}

uint64_t sub_10000D0A8(CGPDFObject *a1)
{
  Type = CGPDFObjectGetType(a1);
  if (Type == kCGPDFObjectTypeArray)
  {
    value = 0;
    if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeArray, &value))
    {
      return sub_10000CDA4(0, value);
    }
  }

  else if (Type == kCGPDFObjectTypeName)
  {
    value = 0;
    if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeName, &value))
    {
      return strcmp(value, "DeviceGray") != 0;
    }
  }

  return 1;
}

void sub_10000D694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSString stringWithFormat:@"[%@:%@]", a2, a3];
  [v3 addObject:?];
}

void liteLockPrinters(void)
{
  pthread_mutex_lock(&stru_1000C4B60);
  if (!qword_1000C7B90)
  {
    v0 = objc_opt_new();
    v1 = qword_1000C7B90;
    qword_1000C7B90 = v0;
  }
}

void sub_10000D85C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 logInfo];
  [v3 addObject:?];
}

void sub_10000DC44(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 provenance] == 2)
  {
    v5 = [v3 provenanceIdentifier];

    if (v5)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100010C94;
      v6[3] = &unk_100095AA8;
      v7 = v3;
      [v4 setPerformAuthenticationForDeviceHTTP:v6];
    }
  }
}

void sub_10000E048(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.printing.PrinterResolution", v1);
  v3 = qword_1000C7BA0;
  qword_1000C7BA0 = v2;

  v4 = objc_opt_new();
  v5 = qword_1000C7BA8;
  qword_1000C7BA8 = v4;
}

void sub_10000E0C4(uint64_t a1)
{
  v2 = [lite_printer_t existingPrinterWithEndpoint:*(a1 + 32)];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = [qword_1000C7BA8 objectForKeyedSubscript:*(a1 + 32)];
    if (!v3)
    {
      v3 = objc_opt_new();
      [qword_1000C7BA8 setObject:v3 forKeyedSubscript:*(a1 + 32)];
      v4 = _PKLogCategory(PKLogCategoryDiscovery[0]);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        *buf = 138543362;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting new resolution for %{public}@", buf, 0xCu);
      }

      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = qword_1000C7BA0;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10000E2F0;
      v10[3] = &unk_1000957F0;
      v11 = v6;
      [lite_printer_t _startPrinterResolution:v11 session:v7 queue:v8 completionHandler:v10];
    }

    v9 = objc_retainBlock(*(a1 + 48));
    [v3 addObject:v9];
  }
}

void sub_10000E2F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed resolution for %{public}@, printer %{public}@", buf, 0x16u);
  }

  v6 = [qword_1000C7BA8 objectForKeyedSubscript:*(a1 + 32)];
  [qword_1000C7BA8 removeObjectForKey:*(a1 + 32)];
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000E4A8;
  v10[3] = &unk_1000957C8;
  v11 = v6;
  v12 = v3;
  v8 = v3;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_10000E4A8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000E544;
  v2[3] = &unk_1000957A0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

void sub_10000E8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, ...)
{
  va_start(va, a12);

  sub_100010EF8(va);
  _Unwind_Resume(a1);
}

void sub_10000E93C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ippResponse];

  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = [v3 ippResponse];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000ECBC;
    v11[3] = &unk_1000958B8;
    v12 = v3;
    v13 = *(a1 + 56);
    v14 = *(a1 + 40);
    v16 = *(a1 + 72);
    v15 = *(a1 + 64);
    sub_10000EBD8(v5, v6, v11);

    v7 = &v12;
  }

  else
  {
    v8 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) printerURL];
      *buf = 138543362;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Can't create a printer for %{public}@", buf, 0xCu);
    }

    v10 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EBC4;
    block[3] = &unk_100095840;
    v7 = &v18;
    v18 = *(a1 + 72);
    dispatch_async(v10, block);
  }
}

void sub_10000EBD8(void *a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010F98;
  v7[3] = &unk_100095B68;
  v8 = a1;
  v9 = a3;
  v5 = v8;
  v6 = v9;
  sub_10000EE04(a2, v7);
}

void sub_10000ECBC(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] ippResponse];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000EE88;
  v6[3] = &unk_100095890;
  v7 = a1[5];
  v5 = v3;
  v8 = v5;
  v9 = a1[6];
  v11 = a1[8];
  v10 = a1[7];
  sub_10000EE04(v4, v6);
}

void sub_10000EE04(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2[2];
  v4 = v6;
  v5 = a2;
  v3();
}

void sub_10000EE88(uint64_t a1, uint64_t a2)
{
  v4 = [PKPrinterDescription alloc];
  v5 = [*(a1 + 32) resolvedTXT];
  v6 = [v4 initWithAttributes:a2 txtRecord:v5 translations:*(a1 + 40)];

  if ([v6 wantsComprehensivePaperList])
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000F2C4;
    v10[3] = &unk_100095868;
    v11 = v6;
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = *(a1 + 64);
    sub_10000F19C(v8, v7, v9, v10);
  }

  else
  {
    sub_10000F018(*(a1 + 48), *(a1 + 32), v6, *(a1 + 64));
  }
}

void sub_10000F018(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [[PKPrinterBrowseInfo alloc] initWithResolvedBonjourName:v8];
  v12 = [[lite_printer_t alloc] initWithBrowseInfo:v11 description:v9];
  if (v12)
  {
    liteLockPrinters();
    [qword_1000C7B90 setObject:v12 forKey:v8];
    pthread_mutex_unlock(&stru_1000C4B60);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001119C;
  v15[3] = &unk_100095B90;
  v16 = v12;
  v17 = v10;
  v13 = v12;
  v14 = v10;
  dispatch_async(v7, v15);
}

void sub_10000F19C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000111B0;
  v11[3] = &unk_100095C08;
  v13 = a3;
  v14 = a4;
  v12 = v7;
  v8 = v13;
  v9 = v14;
  v10 = v7;
  [device_http_t deviceHTTPForSessionURL:a2 completionHandler:v11];
}

void sub_10000F2C4(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [a1[4] replacePaperList:v3];
  }

  sub_10000F018(a1[5], a1[6], a1[4], a1[7]);
}

void sub_10000F450(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = [*(a1 + 48) existingPrinterWithEndpoint:v3];
    if (v4)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v5 = [*(a1 + 32) session];
      [lite_printer_t realizePrinterWithResolvedEndpoint:v6 session:v5 completionHandler:*(a1 + 40)];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10000F8C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_100011630(va);
  _Unwind_Resume(a1);
}

void sub_10000F9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak((v19 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_10000FA24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (WeakRetained)
  {
    [*(a1 + 32) _checkAccessWithSession:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_10000FE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  sub_1000117C8(va);
  _Unwind_Resume(a1);
}

void sub_10000FF44(void **a1)
{
  v2 = [NSData dataWithBytes:"abcd" length:4];
  Printd_Parameters::_set_JobPassword(a1, v2);
  Printd_Parameters::_set_JobPasswordEncryption(a1, @"none");
}

void sub_100010374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, id location, uint64_t a20)
{
  objc_destroyWeak((v24 + 64));

  objc_destroyWeak(&location);
  sub_100010EF8(&a20);

  _Unwind_Resume(a1);
}

void sub_1000103E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ![v3 transportStatus] && (WeakRetained = objc_loadWeakRetained((a1 + 64)), WeakRetained, WeakRetained))
  {
    v7 = *(a1 + 40);
    v8 = [v4 ippResponse];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100010588;
    v11[3] = &unk_100095A38;
    v12 = v4;
    objc_copyWeak(&v16, (a1 + 64));
    v15 = *(a1 + 56);
    v13 = *(a1 + 32);
    v10 = *(a1 + 40);
    v9 = v10.i64[0];
    v14 = vextq_s8(v10, v10, 8uLL);
    sub_10000EBD8(v7, v8, v11);

    objc_destroyWeak(&v16);
  }

  else
  {
    v5 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100010544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19)
{
  objc_destroyWeak((v21 + 72));

  _Unwind_Resume(a1);
}

void sub_100010588(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ippResponse];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000106D8;
  v8[3] = &unk_100095A10;
  objc_copyWeak(&v14, (a1 + 72));
  v13 = *(a1 + 64);
  v9 = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  sub_10000EE04(v4, v8);

  objc_destroyWeak(&v14);
}

void sub_100010694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17)
{
  objc_destroyWeak((v19 + 72));

  _Unwind_Resume(a1);
}

void sub_1000106D8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));

  if (WeakRetained)
  {
    v5 = [PKPrinterDescription alloc];
    v6 = objc_loadWeakRetained((a1 + 72));
    v7 = [v6 txtRecord];
    v8 = [v5 initWithAttributes:a2 txtRecord:v7 translations:*(a1 + 40)];

    if ([v8 wantsComprehensivePaperList])
    {
      v9 = objc_loadWeakRetained((a1 + 72));
      v10 = [v9 printerDescription];
      v11 = [v10 wantsComprehensivePaperList];

      if ((v11 & 1) == 0)
      {
        v12 = objc_loadWeakRetained((a1 + 72));
        v13 = [v12 printerDescription];
        v14 = [v13 paperList];
        [v8 replacePaperList:v14];
      }
    }

    if ([v8 wantsComprehensivePaperList])
    {
      v15 = *(a1 + 56);
      v16 = objc_loadWeakRetained((a1 + 72));
      v17 = [v16 device_uri];
      v18 = [v15 ippURL:v17];

      v19 = objc_loadWeakRetained((a1 + 72));
      v20 = [v19 bonjourName];
      v21 = *(a1 + 40);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100010A00;
      v25[3] = &unk_1000959E8;
      v26 = v8;
      objc_copyWeak(&v29, (a1 + 72));
      v28 = *(a1 + 64);
      v27 = *(a1 + 32);
      sub_10000F19C(v20, v18, v21, v25);

      objc_destroyWeak(&v29);
    }

    else
    {
      [*(a1 + 48) _updateDescPrinterDescription:v8];
      v24 = *(a1 + 32);
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(*(a1 + 64) + 16);

    v23();
  }
}

void sub_100010A00(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    [*(a1 + 32) replacePaperList:v6];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updateDescPrinterDescription:*(a1 + 32)];

  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

void sub_100010C2C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.printing.printer", v3);
  v2 = qword_1000C7BB0;
  qword_1000C7BB0 = v1;
}

void sub_100010C94(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [*(a1 + 32) provenanceIdentifier];
  [Browse_Extension withExtensionIdentifier:v10 request:v11 handleChallenge:v8 completionHandler:v9];
}

void sub_100010DE0(void *a1)
{
  sub_100010EF8(a1);

  operator delete();
}

void *sub_100010E18(void *a1, unsigned __int16 a2, void *a3)
{
  v5 = a3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100095658;
  v6 = [[ipp_request_t alloc] initWithOp:a2];
  v7 = a1[1];
  a1[1] = v6;

  v8 = a1[2];
  a1[2] = v5;

  return a1;
}

void sub_100010EC0(void *a1)
{
  sub_100010EF8(a1);

  operator delete();
}

uint64_t sub_100010EF8(void *a1)
{
  *a1 = off_100095B28;
  v1 = a1[3];
  if (v1)
  {

    operator delete();
  }

  v2 = a1[4];
  if (v2)
  {

    operator delete();
  }

  return sub_10000B548(a1);
}

void sub_100010F98(uint64_t a1, void **this)
{
  if (this && Printd_Parameters::_has_PrinterStringsURI(this))
  {
    v4 = Printd_Parameters::_get_PrinterStringsURI(this);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000110A4;
    v7[3] = &unk_100095B40;
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    platformHTTP_GetDataForURL(v5, v4, v7);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void sub_1000110A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:0];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000112FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, ...)
{
  va_start(va, a8);

  sub_100010EF8(va);
  _Unwind_Resume(a1);
}

void sub_100011344(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ippResponse];

  if (v4)
  {
    v5 = [v3 ippResponse];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000114B8;
    v7[3] = &unk_100095BB8;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    sub_10000EE04(v5, v7);
  }

  else
  {
    v6 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Can't fetch media-col attributes", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000114B8(uint64_t a1, uint64_t a2)
{
  v3 = [PKPaperList paperListWithAttrs:a2 translations:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_1000115BC(void *a1)
{
  sub_100011630(a1);

  operator delete();
}

void sub_1000115F8(void *a1)
{
  sub_100011630(a1);

  operator delete();
}

uint64_t sub_100011630(void *a1)
{
  *a1 = off_100095C88;
  v1 = a1[3];
  if (v1)
  {

    operator delete();
  }

  v2 = a1[4];
  if (v2)
  {

    operator delete();
  }

  return sub_10000B548(a1);
}

void sub_100011754(void *a1)
{
  sub_1000117C8(a1);

  operator delete();
}

void sub_100011790(void *a1)
{
  sub_1000117C8(a1);

  operator delete();
}

uint64_t sub_1000117C8(void *a1)
{
  *a1 = &off_100095CF8;
  v1 = a1[3];
  if (v1)
  {

    operator delete();
  }

  v2 = a1[4];
  if (v2)
  {

    operator delete();
  }

  return sub_10000B548(a1);
}

NSString *internString(NSString *a1)
{
  v1 = a1;
  v2 = [&off_1000B9108 objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [(NSString *)v1 UTF8String];
    v6 = strlen(v5);
    if ([(NSString *)v1 length]== v6)
    {
      v15[0] = v5;
      v15[1] = v6;
      v15[2] = sub_1000119E0(v5, v6);
      v15[3] = 0;
      if (qword_1000C7BC0 != -1)
      {
        sub_100060378();
      }

      Value = CFDictionaryGetValue(qword_1000C7BC8, v15);
      if (Value)
      {
        v8 = Value[3];
      }

      else
      {
        v9 = &v6[v5];
        while (v5 < v9)
        {
          v11 = *v5++;
          v10 = v11;
          if (v11 < 0)
          {
            v12 = __maskrune(v10, 0x40000uLL);
          }

          else
          {
            v12 = _DefaultRuneLocale.__runetype[v10] & 0x40000;
          }

          if (!v12)
          {
            v8 = v1;
            goto LABEL_17;
          }
        }

        v8 = sub_100011A28(v1);

        v1 = v8;
      }

LABEL_17:
      v4 = v8;
    }

    else
    {
      v4 = v1;
      v1 = v4;
    }
  }

  v13 = v4;

  return v13;
}

uint64_t sub_1000119E0(char *a1, uint64_t a2)
{
  if (a2)
  {
    return 257 * sub_1000119E0(a1 + 1, a2 - 1) + *a1;
  }

  else
  {
    return 0;
  }
}

id sub_100011A28(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = qword_1000C7BD0;
  if (!qword_1000C7BD0)
  {
    v4 = objc_opt_new();
    v5 = qword_1000C7BD0;
    qword_1000C7BD0 = v4;

    v3 = qword_1000C7BD0;
  }

  v6 = [v3 objectForKeyedSubscript:v1];
  v7 = v6;
  if (!v6)
  {
    v8 = [qword_1000C7BD0 count];
    v7 = v1;
    if (v8 <= 0x7F)
    {
      [qword_1000C7BD0 setObject:v1 forKeyedSubscript:v1];
      v7 = v1;
    }
  }

  v9 = v7;

  objc_sync_exit(v2);

  return v9;
}

void sub_100011B04(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

id internUTF8ByteString(char *a1, uint64_t a2)
{
  v3 = a1;
  v13 = a1;
  v14 = a2;
  v15 = sub_1000119E0(a1, a2);
  v16 = 0;
  if (qword_1000C7BC0 != -1)
  {
    sub_100060378();
  }

  Value = CFDictionaryGetValue(qword_1000C7BC8, &v13);
  if (Value)
  {
    v5 = Value[3];
  }

  else
  {
    v7 = [NSString alloc];
    v5 = [v7 initWithBytes:v3 length:a2 encoding:{4, v13, v14, v15, v16}];
    if (v5)
    {
      v8 = &v3[a2];
      while (v3 < v8)
      {
        v10 = *v3++;
        v9 = v10;
        if (v10 < 0)
        {
          v11 = __maskrune(v9, 0x40000uLL);
        }

        else
        {
          v11 = _DefaultRuneLocale.__runetype[v9] & 0x40000;
        }

        if (!v11)
        {
          goto LABEL_5;
        }
      }

      v12 = sub_100011A28(v5);

      v5 = v12;
    }
  }

LABEL_5:

  return v5;
}

void sub_100011C4C(id a1)
{
  keyCallBacks.version = 0;
  keyCallBacks.retain = sub_100011D60;
  keyCallBacks.release = nullsub_4;
  keyCallBacks.copyDescription = sub_100011D6C;
  keyCallBacks.equal = sub_100011E98;
  keyCallBacks.hash = sub_100011EDC;
  valueCallBacks.version = 0;
  valueCallBacks.retain = sub_100011EE4;
  valueCallBacks.release = nullsub_5;
  valueCallBacks.copyDescription = sub_100011F20;
  valueCallBacks.equal = sub_100011FA8;
  if (off_1000C4BA0[0] != &off_100095D28)
  {
    sub_10006038C();
  }

  if (off_1000C7560 != &off_1000A0428)
  {
    sub_1000603B8();
  }

  qword_1000C7BC8 = CFDictionaryCreate(kCFAllocatorDefault, off_1000C4BA0, off_1000C4BA0, 1337, &keyCallBacks, &valueCallBacks);
}

CFStringRef sub_100011D6C(char **a1)
{
  v2 = sub_100011DF4(a1);
  v3 = sub_100011E40(a1);
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"key<%d/%@>", v2, v3);

  return v4;
}

uint64_t sub_100011DF4(char **a1)
{
  v1 = a1 - &off_100095D28;
  if (a1 < &off_100095D28 || a1 >= &qword_1000A0448)
  {
    return 0xFFFFFFFFLL;
  }

  if (&(&off_100095D28)[4 * (v1 >> 5)] != a1)
  {
    sub_1000603E4();
  }

  return v1 >> 5;
}

id sub_100011E40(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = [[NSString alloc] initWithBytes:*a1 length:a1[1] encoding:4];
  }

  return v2;
}

char **sub_100011EE4(uint64_t a1, char **a2)
{
  if (sub_100011DF4(a2) == -1)
  {
    sub_100060410();
  }

  return a2;
}

CFStringRef sub_100011F20(char **a1)
{
  v2 = sub_100011DF4(a1);
  v3 = sub_100011E40(a1);
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"val<%d/%@>", v2, v3);

  return v4;
}

void sub_1000121F4(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_10001309C(uint64_t a1)
{
  v2 = [*(a1 + 32) URLByDeletingLastPathComponent];
  v48 = [NSString stringWithFormat:@"%@_%d_%d.printSettings", *(a1 + 40), getpid(), *(a1 + 80)];
  v50 = [NSURL fileURLWithPath:"fileURLWithPath:relativeToURL:" relativeToURL:?];
  v47 = [NSString stringWithFormat:@"%@_%d_%d.txt", *(a1 + 40), getpid(), *(a1 + 80)];
  v49 = [NSURL fileURLWithPath:"fileURLWithPath:relativeToURL:" relativeToURL:?];
  v3 = [NSOutputStream outputStreamWithURL:"outputStreamWithURL:append:" append:?];
  v4 = v3;
  if (v3)
  {
    [v3 open];
    if ([v4 hasSpaceAvailable])
    {
      v5 = +[NSDate date];
      v6 = [NSString stringWithFormat:@"Created: %@\n", v5];
      v7 = sub_100013870(v4, v6);

      if (v7)
      {
        v8 = [NSString stringWithFormat:@"ClientID: %@\n", *(a1 + 40)];
        v9 = sub_100013870(v4, v8);

        if (v9)
        {
          v10 = [NSString stringWithFormat:@"JobID: %d\n", *(a1 + 80)];
          v11 = sub_100013870(v4, v10);

          if (v11)
          {
            v12 = [*(a1 + 48) jobName];
            v13 = [NSString stringWithFormat:@"Job Name: %@\n", v12];
            v14 = sub_100013870(v4, v13);

            if (v14)
            {
              v15 = [NSString stringWithFormat:@"Job Type: %@\n", *(a1 + 56)];
              v16 = sub_100013870(v4, v15);

              if (v16)
              {
                v17 = [*(a1 + 64) debugDescription];
                v18 = [NSString stringWithFormat:@"Session: %@\n", v17];
                v19 = sub_100013870(v4, v18);

                if (v19)
                {
                  v20 = [*(a1 + 72) debugDescription];
                  v21 = [NSString stringWithFormat:@"Printer: %@\n", v20];
                  v22 = sub_100013870(v4, v21);

                  if (v22)
                  {
                    v23 = [*(a1 + 72) printerDescription];
                    v24 = [v23 userCodableDictionary];
                    v25 = [NSString stringWithFormat:@"Printer Description: %@\n", v24];
                    v26 = sub_100013870(v4, v25);

                    if (v26)
                    {
                      v27 = [*(a1 + 72) device_uri];
                      v28 = [NSString stringWithFormat:@"Printer Device URI: %@\n", v27];
                      v29 = sub_100013870(v4, v28);

                      if (v29)
                      {
                        v30 = [*(a1 + 72) device_uri];
                        v31 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n/usr/local/bin/grappler --verbose print --printerURL %@ --file %s --printSettingsFile %s --monitor\n", v30, [*(a1 + 32) fileSystemRepresentation], objc_msgSend(v50, "fileSystemRepresentation"));
                        v32 = sub_100013870(v4, v31);

                        if (v32)
                        {
                          sub_100013870(v4, @"\n");
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

    [v4 close];
  }

  v33 = *(a1 + 48);
  v51 = 0;
  v34 = [NSKeyedArchiver archivedDataWithRootObject:v33 requiringSecureCoding:1 error:&v51];
  v35 = v51;
  v36 = v35;
  if (!v34 || v35)
  {
    v37 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v45 = *(a1 + 40);
      *buf = 138412546;
      v53 = v45;
      v54 = 2112;
      v55 = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Unable to serialize print settings for %@ - %@", buf, 0x16u);
    }
  }

  else
  {
    v37 = [v34 base64EncodedDataWithOptions:0];
    if (([v37 writeToURL:v50 atomically:1]& 1) != 0)
    {
      v38 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 40);
        v40 = [v50 lastPathComponent];
        v41 = [*(a1 + 32) lastPathComponent];
        v42 = [v49 lastPathComponent];
        v43 = v2;
        v44 = [v2 fileSystemRepresentation];
        *buf = 138413314;
        v53 = v39;
        v54 = 2112;
        v55 = v40;
        v56 = 2112;
        v57 = v41;
        v58 = 2112;
        v59 = v42;
        v60 = 2080;
        v61 = v44;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "For job from '%@' control '%@', spool '%@', description '%@' in '%s'", buf, 0x34u);
      }
    }

    else
    {
      v38 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v46 = *(a1 + 40);
        *buf = 138412546;
        v53 = v46;
        v54 = 2112;
        v55 = v50;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Unable to write print settings for %@ to %@", buf, 0x16u);
      }
    }
  }
}

BOOL sub_100013870(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 UTF8String];
  v6 = &v5[strlen(v5)];
  do
  {
    v7 = v5;
    if (v5 >= v6)
    {
      break;
    }

    v8 = [v3 write:v5 maxLength:v6 - v5];
    v5 += v8;
  }

  while (v8 > 0);

  return v7 >= v6;
}

uint64_t sub_1000144FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = off_1000A04A0;
  *(a1 + 8) = 0;

  return a1;
}

void sub_1000158A8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100015D84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100015E8C(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = off_1000A04A0;
  *(a1 + 8) = 0;

  operator delete();
}

void sub_100016794()
{
  if (!qword_1000C7BD8)
  {
    v0 = objc_opt_new();
    v1 = qword_1000C7BD8;
    qword_1000C7BD8 = v0;
  }

  if (!qword_1000C7BE0)
  {
    v2 = objc_opt_new();
    v3 = qword_1000C7BE0;
    qword_1000C7BE0 = v2;
  }

  if (!qword_1000C7BE8)
  {
    v4 = objc_opt_new();
    v5 = qword_1000C7BE8;
    qword_1000C7BE8 = v4;
  }

  if (!qword_1000C7BF0)
  {
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v7 = qword_1000C7BF0;
    qword_1000C7BF0 = v6;

    v8 = dword_1000C7BF8++;
    v9 = [NSString stringWithFormat:@"JobTimer<%d> %@", v8, qword_1000C7BF0];
    v10 = qword_1000C7BF0;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001B9E8;
    handler[3] = &unk_100095380;
    v11 = v9;
    v34 = v11;
    dispatch_source_set_event_handler(v10, handler);
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v32 = 0;
    v12 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"com.apple.printd - Printing in progress", &v32);
    if (v12)
    {
      v13 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v12;
        v14 = "Couldn't create power assertion: %d";
        v15 = v13;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 8;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, v17);
      }
    }

    else
    {
      v13 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v14 = "Acquire power assertion";
        v15 = v13;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 2;
        goto LABEL_13;
      }
    }

    *buf = 0;
    v38 = buf;
    v39 = 0x3032000000;
    v40 = sub_10001BAA8;
    v41 = sub_10001BAB8;
    v42 = 0;
    v18 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.printactivityservice"];
    v19 = *(v38 + 5);
    *(v38 + 5) = v18;

    v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PrintActivityServiceProtocol];
    [*(v38 + 5) setRemoteObjectInterface:v20];

    [*(v38 + 5) resume];
    v21 = [*(v38 + 5) remoteObjectProxy];
    [v21 startLiveActivity];

    v22 = qword_1000C7BF0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10001BAC0;
    v27[3] = &unk_1000A08B8;
    v23 = v11;
    v28 = v23;
    v29 = v31;
    v30 = buf;
    dispatch_source_set_cancel_handler(v22, v27);
    v24 = qword_1000C7BF0;
    v25 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
    v26 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138543362;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Resuming", v35, 0xCu);
    }

    dispatch_resume(qword_1000C7BF0);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v31, 8);
  }
}

void sub_100016BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a18, 8);

  _Unwind_Resume(a1);
}

__CFString *usernameFromPreviouslyAuthedPrinterOrJustMobile(lite_printer_t *a1)
{
  v1 = a1;
  v2 = [(lite_printer_t *)v1 defaultCredentialForPrinter];

  if (v2)
  {
    v3 = [(lite_printer_t *)v1 defaultCredentialForPrinter];
    v4 = [v3 user];
  }

  else
  {
    v4 = @"mobile";
  }

  return v4;
}

void sub_100017750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = lite_job_t;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100017FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_10001829C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _workAdded:dispatch_source_get_data(*(a1 + 32))];
}

id sub_10001830C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _isCanceled:*(a1 + 32)];

  return v3;
}

void sub_10001835C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setCancelFlag:*(a1 + 32)];
}

void sub_1000183C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _clearCancelFlag:*(a1 + 32)];
}

uint64_t jobStateString(uint64_t a1)
{
  if ((a1 - 3) >= 8)
  {
    sub_10006043C();
  }

  return *(&off_1000A08D8 + a1 - 3);
}

id sub_10001997C(void *a1, uint64_t a2, id a3)
{
  result = [a1 writeIPPDocumentPayload:a2 length:a3];
  if (result != a3)
  {
    return 0;
  }

  return result;
}

void sub_100019AB0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100019B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100019BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100019C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

uint64_t JobRequestAttributes_FromRequestParams::JobRequestAttributes_FromRequestParams(uint64_t a1, void *a2)
{
  v4 = a2;
  *a1 = off_1000A05A0;
  *(a1 + 16) = 0;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  objc_storeStrong((a1 + 168), a2);
  v5 = objc_opt_new();
  v6 = *(a1 + 176);
  *(a1 + 176) = v5;

  return a1;
}

void JobRequestAttributes_FromRequestParams::~JobRequestAttributes_FromRequestParams(JobRequestAttributes_FromRequestParams *this)
{
  *this = off_1000A05A0;
  v2 = *(this + 21);
  *(this + 21) = 0;

  v3 = *(this + 22);
  *(this + 22) = 0;
}

{
  JobRequestAttributes_FromRequestParams::~JobRequestAttributes_FromRequestParams(this);

  operator delete();
}

id sub_10001A314(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"AppleImagePDFAnnotations"])
  {
    return *(a1 + 8);
  }

  v3 = *(a1 + 168);

  return [v3 AppleImagePDFAnnotations];
}

uint64_t sub_10001A36C(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"AppleImagePDFAnnotations"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasAppleImagePDFAnnotations];
}

id sub_10001A3C4(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 176) addObject:@"AppleImagePDFAnnotations"];
  *(a1 + 8) = *a2;
  return result;
}

id sub_10001A410(id *a1)
{
  if ([a1[22] containsObject:@"AppleThumbnailPosition"])
  {
    v2 = a1[2];
  }

  else
  {
    v2 = [a1[21] AppleThumbnailPosition];
  }

  return v2;
}

uint64_t sub_10001A46C(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"AppleThumbnailPosition"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasAppleThumbnailPosition];
}

void sub_10001A4C4(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"AppleThumbnailPosition"];
  v4 = *a2;

  objc_storeStrong((a1 + 16), v4);
}

id sub_10001A520(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"AttributeFidelity"])
  {
    return *(a1 + 24);
  }

  v3 = *(a1 + 168);

  return [v3 AttributeFidelity];
}

uint64_t sub_10001A578(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"AttributeFidelity"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasAttributeFidelity];
}

id sub_10001A5D0(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 176) addObject:@"AttributeFidelity"];
  *(a1 + 24) = *a2;
  return result;
}

id sub_10001A61C(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"Copies"])
  {
    return *(a1 + 28);
  }

  v3 = *(a1 + 168);

  return [v3 Copies];
}

uint64_t sub_10001A674(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"Copies"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasCopies];
}

id sub_10001A6CC(uint64_t a1, _DWORD *a2)
{
  result = [*(a1 + 176) addObject:@"Copies"];
  *(a1 + 28) = *a2;
  return result;
}

id sub_10001A718(id *a1)
{
  if ([a1[22] containsObject:@"DocumentFormat"])
  {
    v2 = a1[4];
  }

  else
  {
    v2 = [a1[21] DocumentFormat];
  }

  return v2;
}

uint64_t sub_10001A774(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"DocumentFormat"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasDocumentFormat];
}

void sub_10001A7CC(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"DocumentFormat"];
  v4 = *a2;

  objc_storeStrong((a1 + 32), v4);
}

id sub_10001A828(id *a1)
{
  if ([a1[22] containsObject:@"DocumentPassword"])
  {
    v2 = a1[5];
  }

  else
  {
    v2 = [a1[21] DocumentPassword];
  }

  return v2;
}

uint64_t sub_10001A884(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"DocumentPassword"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasDocumentPassword];
}

void sub_10001A8DC(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"DocumentPassword"];
  v4 = *a2;

  objc_storeStrong((a1 + 40), v4);
}

id sub_10001A938(id *a1)
{
  if ([a1[22] containsObject:@"Finishings"])
  {
    v2 = a1[6];
  }

  else
  {
    v2 = [a1[21] Finishings];
  }

  return v2;
}

uint64_t sub_10001A994(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"Finishings"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasFinishings];
}

void sub_10001A9EC(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"Finishings"];
  v4 = *a2;

  objc_storeStrong((a1 + 48), v4);
}

id sub_10001AA48(id *a1)
{
  if ([a1[22] containsObject:@"FinishingsCol"])
  {
    v2 = a1[7];
  }

  else
  {
    v2 = [a1[21] FinishingsCol];
  }

  return v2;
}

uint64_t sub_10001AAA4(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"FinishingsCol"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasFinishingsCol];
}

void sub_10001AAFC(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"FinishingsCol"];
  v4 = *a2;

  objc_storeStrong((a1 + 56), v4);
}

id sub_10001AB58(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"FitToPage"])
  {
    return *(a1 + 64);
  }

  v3 = *(a1 + 168);

  return [v3 FitToPage];
}

uint64_t sub_10001ABB0(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"FitToPage"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasFitToPage];
}

id sub_10001AC08(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 176) addObject:@"FitToPage"];
  *(a1 + 64) = *a2;
  return result;
}

id sub_10001AC54(id *a1)
{
  if ([a1[22] containsObject:@"JobAccountID"])
  {
    v2 = a1[9];
  }

  else
  {
    v2 = [a1[21] JobAccountID];
  }

  return v2;
}

uint64_t sub_10001ACB0(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"JobAccountID"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasJobAccountID];
}

void sub_10001AD08(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"JobAccountID"];
  v4 = *a2;

  objc_storeStrong((a1 + 72), v4);
}

id sub_10001AD64(id *a1)
{
  if ([a1[22] containsObject:@"JobName"])
  {
    v2 = a1[17];
  }

  else
  {
    v2 = [a1[21] JobName];
  }

  return v2;
}

uint64_t sub_10001ADC0(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"JobName"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasJobName];
}

void sub_10001AE18(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"JobName"];
  v4 = *a2;

  objc_storeStrong((a1 + 136), v4);
}

id sub_10001AE74(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"OrientationRequested"])
  {
    return *(a1 + 80);
  }

  v3 = *(a1 + 168);

  return [v3 OrientationRequested];
}

uint64_t sub_10001AECC(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"OrientationRequested"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasOrientationRequested];
}

id sub_10001AF24(uint64_t a1, _DWORD *a2)
{
  result = [*(a1 + 176) addObject:@"OrientationRequested"];
  *(a1 + 80) = *a2;
  return result;
}

id sub_10001AF70(id *a1)
{
  if ([a1[22] containsObject:@"OutputBin"])
  {
    v2 = a1[11];
  }

  else
  {
    v2 = [a1[21] OutputBin];
  }

  return v2;
}

uint64_t sub_10001AFCC(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"OutputBin"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasOutputBin];
}

void sub_10001B024(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"OutputBin"];
  v4 = *a2;

  objc_storeStrong((a1 + 88), v4);
}

id sub_10001B080(id *a1)
{
  if ([a1[22] containsObject:@"OutputMode"])
  {
    v2 = a1[12];
  }

  else
  {
    v2 = [a1[21] OutputMode];
  }

  return v2;
}

uint64_t sub_10001B0DC(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"OutputMode"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasOutputMode];
}

void sub_10001B134(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"OutputMode"];
  v4 = *a2;

  objc_storeStrong((a1 + 96), v4);
}

id sub_10001B190(id *a1)
{
  if ([a1[22] containsObject:@"PageRanges"])
  {
    v2 = a1[13];
  }

  else
  {
    v2 = [a1[21] PageRanges];
  }

  return v2;
}

uint64_t sub_10001B1EC(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"PageRanges"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasPageRanges];
}

void sub_10001B244(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"PageRanges"];
  v4 = *a2;

  objc_storeStrong((a1 + 104), v4);
}

id sub_10001B2A0(id *a1)
{
  if ([a1[22] containsObject:@"PresetName"])
  {
    v2 = a1[14];
  }

  else
  {
    v2 = [a1[21] PresetName];
  }

  return v2;
}

uint64_t sub_10001B2FC(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"PresetName"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasPresetName];
}

void sub_10001B354(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"PresetName"];
  v4 = *a2;

  objc_storeStrong((a1 + 112), v4);
}

id sub_10001B3B0(id *a1)
{
  if ([a1[22] containsObject:@"PrintColorMode"])
  {
    v2 = a1[15];
  }

  else
  {
    v2 = [a1[21] PrintColorMode];
  }

  return v2;
}

uint64_t sub_10001B40C(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"PrintColorMode"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasPrintColorMode];
}

void sub_10001B464(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"PrintColorMode"];
  v4 = *a2;

  objc_storeStrong((a1 + 120), v4);
}

id sub_10001B4C0(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"PrintQuality"])
  {
    return *(a1 + 128);
  }

  v3 = *(a1 + 168);

  return [v3 PrintQuality];
}

uint64_t sub_10001B518(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"PrintQuality"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasPrintQuality];
}

id sub_10001B570(uint64_t a1, _DWORD *a2)
{
  result = [*(a1 + 176) addObject:@"PrintQuality"];
  *(a1 + 128) = *a2;
  return result;
}

id sub_10001B5BC(id *a1)
{
  if ([a1[22] containsObject:@"PrintScaling"])
  {
    v2 = a1[18];
  }

  else
  {
    v2 = [a1[21] PrintScaling];
  }

  return v2;
}

uint64_t sub_10001B618(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"PrintScaling"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasPrintScaling];
}

void sub_10001B670(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"PrintScaling"];
  v4 = *a2;

  objc_storeStrong((a1 + 144), v4);
}

id sub_10001B6CC(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"RasterFeedOrientation"])
  {
    return *(a1 + 132);
  }

  v3 = *(a1 + 168);

  return [v3 RasterFeedOrientation];
}

uint64_t sub_10001B724(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"RasterFeedOrientation"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasRasterFeedOrientation];
}

id sub_10001B77C(uint64_t a1, _DWORD *a2)
{
  result = [*(a1 + 176) addObject:@"RasterFeedOrientation"];
  *(a1 + 132) = *a2;
  return result;
}

id sub_10001B7C8(id *a1)
{
  if ([a1[22] containsObject:@"Sides"])
  {
    v2 = a1[19];
  }

  else
  {
    v2 = [a1[21] Sides];
  }

  return v2;
}

uint64_t sub_10001B824(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"Sides"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasSides];
}

void sub_10001B87C(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"Sides"];
  v4 = *a2;

  objc_storeStrong((a1 + 152), v4);
}

id sub_10001B8D8(id *a1)
{
  if ([a1[22] containsObject:@"Media"])
  {
    v2 = a1[20];
  }

  else
  {
    v2 = [a1[21] Media];
  }

  return v2;
}

uint64_t sub_10001B934(uint64_t a1)
{
  if ([*(a1 + 176) containsObject:@"Media"])
  {
    return 1;
  }

  v3 = *(a1 + 168);

  return [v3 hasMedia];
}

void sub_10001B98C(uint64_t a1, void **a2)
{
  [*(a1 + 176) addObject:@"Media"];
  v4 = *a2;

  objc_storeStrong((a1 + 160), v4);
}

id sub_10001B9E8(uint64_t a1)
{
  v2 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking Jobs", &v5, 0xCu);
  }

  return +[lite_job_t checkJobsOnMainQueue];
}

uint64_t sub_10001BAA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10001BAC0(void *a1)
{
  v2 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Cancel - release system resources", &v7, 0xCu);
  }

  v4 = *(*(a1[5] + 8) + 24);
  if (v4)
  {
    IOPMAssertionRelease(v4);
    *(*(a1[5] + 8) + 24) = 0;
  }

  v5 = [*(*(a1[6] + 8) + 40) remoteObjectProxy];
  [v5 stopLiveActivity];

  return [*(*(a1[6] + 8) + 40) invalidate];
}

id PKOpenURL(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [v3 openURL:a1];

  objc_autoreleasePoolPop(v2);
  return v4;
}

_UNKNOWN **PKDefaultPortForScheme(void *a1)
{
  v1 = a1;
  v2 = [v1 lowercaseString];
  v3 = [&off_1000B9130 objectForKeyedSubscript:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unknown scheme %@ - defaulting to 631", &v7, 0xCu);
    }

    v4 = &off_1000B9230;
  }

  return v4;
}

id PKURLWithString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [NSURLComponents componentsWithString:v1 encodingInvalidCharacters:0];
    if (!v2)
    {
      v2 = [NSURLComponents componentsWithString:v1 encodingInvalidCharacters:1];
    }

    v3 = [v2 port];

    if (!v3)
    {
      v4 = [v2 scheme];
      v5 = PKDefaultPortForScheme(v4);
      [v2 setPort:v5];
    }

    v6 = [v2 URL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id PKURLWithUTF8String(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSString stringWithUTF8String:a1];
    v2 = PKURLWithString(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKURLWithComponents(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(NSURLComponents);
  v12 = [v7 lowercaseString];
  [v11 setScheme:v12];

  [v11 setHost:v8];
  v13 = v9;
  if (!v9)
  {
    v12 = [v11 scheme];
    v13 = PKDefaultPortForScheme(v12);
  }

  [v11 setPort:v13];
  if (!v9)
  {
  }

  if ([v10 length])
  {
    if ([v10 characterAtIndex:0] != 47)
    {
      v14 = [@"/" stringByAppendingString:v10];

      v10 = v14;
    }

    [v11 setPath:v10];
  }

  v15 = [v11 URL];

  return v15;
}

id PKURLByReplacingScheme(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = [NSURLComponents componentsWithURL:v4 resolvingAgainstBaseURL:1];
    v6 = [v3 lowercaseString];
    [v5 setScheme:v6];

    v7 = [v5 port];

    if (!v7)
    {
      v8 = [v5 scheme];
      v9 = PKDefaultPortForScheme(v8);
      [v5 setPort:v9];
    }

    v10 = [v5 URL];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t pwgInitSize(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a3 = 0;
    v7 = (**a2)(a2);
    v8 = v7;
    if (v7)
    {
      v9 = [v7 mediaSize];
      v10 = v9;
      if (!v9)
      {
        v14 = _PKLogCategory(PKLogCategoryDefault[0]);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v19 = 136315650;
          *&v19[4] = "pwgInitSize";
          *&v19[12] = 1024;
          *&v19[14] = 1280;
          *&v19[18] = 2080;
          *&v19[20] = "Missing media-size in media-col.";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: setting ipp status %d error message %s", v19, 0x1Cu);
        }

        v3 = 0;
        v10 = v14;
        goto LABEL_20;
      }

      *a1 = [v9 xDimension];
      *(a1 + 4) = [v10 yDimension];
      memset(v19, 0, 24);
      v11 = [v8 getMargins:v19];
      *a3 = v11;
      if (v11)
      {
        *(a1 + 8) = *&v19[8];
      }

      goto LABEL_12;
    }

    v12 = (*(*a2 + 8))(a2);
    v10 = v12;
    if (v12)
    {
      v13 = pwgMediaForPWG(v12, v20);
      if (v13 || (v13 = sub_10001D390(v10)) != 0)
      {
LABEL_11:
        *a1 = v13[3];
LABEL_12:
        v3 = 1;
LABEL_20:

        return v3;
      }

      v13 = sub_10001CAA8(v10, v20);
      if (v13)
      {
        v17 = [v10 lowercaseString];
        v18 = [v17 hasSuffix:@".FullBleed"];

        if (v18)
        {
          *a3 = 1;
        }

        goto LABEL_11;
      }

      v15 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v19 = 136315650;
        *&v19[4] = "pwgInitSize";
        *&v19[12] = 1024;
        *&v19[14] = 1280;
        *&v19[18] = 2080;
        *&v19[20] = "Unsupported media value.";
        goto LABEL_18;
      }
    }

    else
    {
      v15 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v19 = 136315650;
        *&v19[4] = "pwgInitSize";
        *&v19[12] = 1024;
        *&v19[14] = 1280;
        *&v19[18] = 2080;
        *&v19[20] = "Missing media or media-col.";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: setting ipp status %d error message %s", v19, 0x1Cu);
      }
    }

    v3 = 0;
    goto LABEL_20;
  }

  return v3;
}

char **pwgMediaForPWG(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3)
  {
    if (a2)
    {
      *(a2 + 112) = 0u;
      *(a2 + 128) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v5 = sub_10001CE38(v3);
      if (!v5)
      {
        v6 = [v4 UTF8String];
        v7 = strchr(v6, 95);
        if (!v7)
        {
          goto LABEL_24;
        }

        v8 = strchr(v7 + 1, 95);
        if (!v8)
        {
          goto LABEL_24;
        }

        v9 = v8;
        v10 = (v8 + 1);
        v11 = strchr(v8 + 1, 95);
        if (!v11)
        {
          v11 = &v9[strlen(v9)];
        }

        if ((v20 = v10, v11 - 2 >= v10) && *(v11 - 2) == 105 && (*(v11 - 1) == 110 && !*v11 || *(v11 - 1) == 110 && *v11 == 95))
        {
          v12 = 0;
          v13 = 2540;
        }

        else
        {
          v13 = 100;
          v12 = 1;
        }

        v14 = sub_10001CE8C(v10, &v20, v13, 1);
        if (v20 && *v20 == 120 && (v15 = v14, v16 = sub_10001CE8C(v20 + 1, &v20, v13, 1), v20))
        {
          v17 = v16;
          if (!strncmp(v6, "disc_", 5uLL))
          {
            v18 = v17;
          }

          else
          {
            v18 = v15;
          }

          *(a2 + 24) = v18;
          *(a2 + 28) = v17;
          strlcpy((a2 + 32), v6, 0x41uLL);
          *a2 = a2 + 32;
          if (v12)
          {
            sub_10001CF74(__str, 0x20uLL, v18);
            sub_10001CF74(v21, 0x20uLL, v17);
            snprintf((a2 + 97), 0x29uLL, "%sx%smm");
          }

          else
          {
            sub_10001D020(__str, 0x20uLL, v18);
            sub_10001D020(v21, 0x20uLL, v17);
            snprintf((a2 + 97), 0x29uLL, "%sx%s");
          }

          *(a2 + 16) = a2 + 97;
          v5 = a2;
        }

        else
        {
LABEL_24:
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

char **sub_10001CAA8(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    goto LABEL_45;
  }

  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = sub_10001D474(v3);
  if (v5)
  {
    goto LABEL_46;
  }

  v6 = [v4 UTF8String];
  v7 = strncasecmp(v6, "Custom.", 7uLL);
  v8 = v7;
  v9 = (v6 + 7);
  if (v7)
  {
    v10 = v6;
  }

  else
  {
    v10 = (v6 + 7);
  }

  if (v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = 72;
  }

  v25 = v10;
  v12 = strchr(v10, 46);
  if (v12)
  {
    while ((_DefaultRuneLocale.__runetype[v12[1]] & 0x400) != 0)
    {
      v12 = strchr(v12 + 1, 46);
      if (!v12)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v12 = &v10[strlen(v10)];
  }

  if (v12 - 2 <= v10)
  {
    goto LABEL_32;
  }

  v13 = *(v12 - 2);
  v14 = v13 == 46;
  v15 = (_DefaultRuneLocale.__runetype[v13] >> 10) & 1;
  if (v14)
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = v12 - 1;
  }

  else
  {
    v16 = v12 - 2;
  }

  if (!strncasecmp(v16, "cm", 2uLL))
  {
    v11 = 1;
    v17 = 1000;
    goto LABEL_33;
  }

  if (!strncasecmp(v16, "ft", 2uLL))
  {
    v11 = 1;
    v17 = 30480;
    goto LABEL_33;
  }

  if (!strncasecmp(v16, "in", 2uLL))
  {
    v11 = 1;
LABEL_32:
    v17 = 2540;
    goto LABEL_33;
  }

  if (!strncasecmp(v16, "mm", 2uLL))
  {
    v11 = 1;
    v17 = 100;
    goto LABEL_33;
  }

  if ((*v16 | 0x20) != 0x6D)
  {
    if (!strncasecmp(v16, "pt", 2uLL))
    {
      v11 = 72;
    }

    goto LABEL_32;
  }

  v17 = 100000;
  v11 = 1;
LABEL_33:
  v18 = sub_10001CE8C(v10, &v25, v17, v11);
  v5 = 0;
  if (!v25 || v25 <= v6)
  {
    goto LABEL_46;
  }

  if (*v25 != 120 || (v19 = v18, v20 = sub_10001CE8C(v25 + 1, &v25, v17, v11), !v25))
  {
LABEL_45:
    v5 = 0;
    goto LABEL_46;
  }

  v21 = v20;
  *(a2 + 24) = v19;
  *(a2 + 28) = v20;
  *a2 = a2 + 32;
  if (v8)
  {
    v22 = 0;
  }

  else
  {
    v22 = "custom";
  }

  if (v8)
  {
    v23 = 0;
  }

  else
  {
    v23 = v9;
  }

  sub_10001D4C8((a2 + 32), v22, v23, v19, v20);
  if ((v19 % 635) | (v21 % 635))
  {
    sub_10001CF74(__str, 0x20uLL, v19);
    sub_10001CF74(v26, 0x20uLL, v21);
    snprintf((a2 + 97), 0x29uLL, "%sx%smm");
  }

  else
  {
    sub_10001D020(__str, 0x20uLL, v19);
    sub_10001D020(v26, 0x20uLL, v21);
    snprintf((a2 + 97), 0x29uLL, "%sx%s");
  }

  *(a2 + 16) = a2 + 97;
  v5 = a2;
LABEL_46:

  return v5;
}

char **sub_10001CE38(void *a1)
{
  v1 = a1;
  v2 = sub_10001D3E4([v1 UTF8String], &stru_1000A2178);

  return v2;
}

uint64_t sub_10001CE8C(unsigned __int8 *a1, unsigned __int8 **a2, int a3, int a4)
{
  v4 = *a1;
  if ((v4 - 48) > 9)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *a1;
    do
    {
      v7 = *++a1;
      v4 = v7;
      v5 = v6 + 10 * v5 - 48;
      v6 = v7;
    }

    while ((v7 - 48) < 0xA);
  }

  if (v4 == 46)
  {
    v8 = 10 * a3 * a4;
    v9 = a1 + 1;
    if (v8 < 2)
    {
      v10 = 0;
      i = 1;
    }

    else
    {
      v10 = 0;
      for (i = 1; i < v8; i *= 10)
      {
        v12 = *v9;
        if ((v12 - 48) > 9)
        {
          break;
        }

        v10 = v12 + 10 * v10 - 48;
        ++v9;
      }
    }

    a1 = v9 - 1;
    do
    {
      v13 = *++a1;
    }

    while ((v13 - 48) < 0xA);
  }

  else
  {
    v10 = 0;
    i = 1;
  }

  if (a2)
  {
    *a2 = a1;
  }

  return (v10 * a3 / a4 / i + v5 * a3 / a4);
}

char *sub_10001CF74(char *__str, size_t a2, int a3)
{
  if (a3 % 100)
  {
    if ((a3 % 100) == 10 * ((((103 * (a3 % 100)) & 0x8000) != 0) + ((103 * (a3 % 100)) >> 10)))
    {
      snprintf(__str, a2, "%d.%01d");
    }

    else
    {
      snprintf(__str, a2, "%d.%02d");
    }
  }

  else
  {
    snprintf(__str, a2, "%d");
  }

  return __str;
}

char *sub_10001D020(char *__str, size_t a2, int a3)
{
  v4 = (1000 * a3 + 1270) / 2540 % 1000;
  if (v4)
  {
    if (v4 % 10)
    {
      snprintf(__str, a2, "%d.%03d");
    }

    else if (v4 % 100)
    {
      snprintf(__str, a2, "%d.%02d");
    }

    else
    {
      snprintf(__str, a2, "%d.%01d");
    }
  }

  else
  {
    snprintf(__str, a2, "%d");
  }

  return __str;
}

char **pwgMediaForSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 >= 1)
  {
    v5 = a2;
    if (a2 >= 1)
    {
      if (a3)
      {
        result = 0;
        *(a3 + 112) = 0u;
        *(a3 + 128) = 0u;
        *(a3 + 80) = 0u;
        *(a3 + 96) = 0u;
        *(a3 + 48) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        v7 = &off_1000A0B58;
        v8 = 999;
        v9 = 177;
        v10 = 999;
        *a3 = 0u;
        do
        {
          v11 = *(v7 + 7);
          v12 = *(v7 + 6) - a1;
          if (v12)
          {
            v13 = 0;
          }

          else
          {
            v13 = v11 == a2;
          }

          if (v13)
          {
            return v7;
          }

          v14 = v11 - a2;
          if (v14 < 0)
          {
            v14 = -v14;
          }

          if (v12 < 0)
          {
            v12 = a1 - *(v7 + 6);
          }

          if (v12 <= 0x32 && v14 <= 0x32 && v12 <= v10 && v14 <= v8)
          {
            result = v7;
            v10 = v12;
            v8 = v14;
          }

          v7 += 4;
          --v9;
        }

        while (v9 > 1);
        if (!result)
        {
          sub_10001D4C8((a3 + 32), "custom", 0, a1, a2);
          *a3 = a3 + 32;
          *(a3 + 24) = a1;
          *(a3 + 28) = v5;
          if ((v5 % 0x27B) | (a1 % 0x27B))
          {
            sub_10001CF74(__str, 0x20uLL, a1);
            sub_10001CF74(v19, 0x20uLL, v5);
            snprintf((a3 + 97), 0x29uLL, "%sx%smm");
          }

          else
          {
            sub_10001D020(__str, 0x20uLL, a1);
            sub_10001D020(v19, 0x20uLL, v5);
            snprintf((a3 + 97), 0x29uLL, "%sx%s");
          }

          *(a3 + 16) = a3 + 97;
          return a3;
        }
      }
    }
  }

  return result;
}

id pwgCanonicalName(NSString *a1)
{
  v1 = a1;
  v2 = sub_10001D3E4([(NSString *)v1 UTF8String], &stru_1000A2178);
  if (v2)
  {
    v3 = [NSString stringWithUTF8String:*v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char **sub_10001D390(void *a1)
{
  v1 = a1;
  v2 = sub_10001D3E4([v1 UTF8String], &stru_1000A0B38);

  return v2;
}

char **sub_10001D3E4(const char *a1, uint64_t a2)
{
  v4 = 0x1FFFFFFFFFFFFFFCuLL;
  while (1)
  {
    v5 = (*(a2 + 16))(a2, &(&off_1000A0B58)[v4 + 4]);
    if (v5)
    {
      if (!strcmp(v5, a1))
      {
        break;
      }
    }

    v4 += 4;
    if ((v4 * 8) >> 5 >= 0xAF)
    {
      return 0;
    }
  }

  return &(&off_1000A0B58)[v4 + 4];
}

char **sub_10001D474(void *a1)
{
  v1 = a1;
  v2 = sub_10001D3E4([v1 UTF8String], &stru_1000A2158);

  return v2;
}

void sub_10001D4C8(char *a1, char *__s1, uint8_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || (v6 = a4, *a1 = 0, ((a5 | a4) & 0x80000000) != 0))
  {
    v13 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_18:

      return;
    }

    *buf = 136315650;
    v30 = "pwgFormatSizeName";
    v31 = 1024;
    v32 = 1280;
    v33 = 2080;
    v34 = "Invalid media name arguments.";
    v14 = buf;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: setting ipp status %d error message %s", v14, 0x1Cu);
    goto LABEL_18;
  }

  v8 = a3;
  v9 = __s1;
  if (a3)
  {
    v10 = *a3;
    if (*a3)
    {
      v11 = 1;
      while ((v10 - 97) < 0x1A || (v10 - 48) < 0xA || (v10 - 45) < 2)
      {
        v10 = a3[v11++];
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      v13 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v23 = 136315650;
      v24 = "pwgFormatSizeName";
      v25 = 1024;
      v26 = 1280;
      v27 = 2080;
      v28 = "Invalid media name arguments.";
      v14 = &v23;
      goto LABEL_17;
    }

LABEL_10:
    if (__s1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = buf;
    if (__s1)
    {
LABEL_11:
      if (!strcmp(__s1, "disc"))
      {
        v6 = 4000;
      }

      else
      {
        v6 = v6;
      }

      v12 = v9;
      goto LABEL_21;
    }
  }

  v12 = "oe";
  v9 = "om";
LABEL_21:
  if ((v6 % 0x27B) | (a5 % 0x27B))
  {
    v15 = "mm";
  }

  else
  {
    v15 = "in";
  }

  v16 = *v15;
  v17 = *(v15 + 2);
  v18 = v16 ^ 0x6E69 | v17;
  if (v18)
  {
    v19 = sub_10001CF74;
  }

  else
  {
    v19 = sub_10001D020;
  }

  if (!v18)
  {
    v9 = v12;
  }

  v19(buf, 28, v6);
  v20 = strlen(buf);
  buf[v20] = 120;
  v21 = &buf[v20 + 1];
  v19(v21, 27 - v20, a5);
  v22 = &v21[strlen(v21)];
  *v22 = v16;
  v22[2] = v17;
  snprintf(a1, 0x41uLL, "%s_%s_%s", v9, v8, buf);
}

uint64_t liteUpdateJobAttrs(void *a1)
{
  v1 = a1;
  v2 = [v1 spoolDocumentFormat];
  v3 = [v2 caseInsensitiveCompare:@"application/pdf"];

  if (v3)
  {
    v4 = [v1 spoolDocumentFormat];
    v5 = [v4 caseInsensitiveCompare:@"image/urf"];

    if (!v5)
    {
      v19 = 0;
      goto LABEL_150;
    }

    v6 = 0;
    LODWORD(v7) = 1;
LABEL_14:
    v13 = v1;
    LODWORD(theDict) = 0;
    if (sub_100023B14(v13, v7, &theDict))
    {
      v14 = [v13 request_attrs];
      v15 = (*(*v14 + 672))(v14);
      v16 = v15;
      v17 = theDict;
      if (v15)
      {
        if (theDict == 1 && [v15 compare:@"one-sided"])
        {
          v18 = [v13 request_attrs];
          *&password[0].a = @"one-sided";
          (*(*v18 + 688))(v18, password);

          v19 = 1;
        }

        else
        {
          v19 = 0;
        }

        v23 = [v16 compare:@"one-sided"];
        if ((v17 & 1) != 0 && v23)
        {
          v24 = [v13 request_attrs];
          if ((*(*v24 + 128))(v24) <= 1)
          {
            v17 = v17;
          }

          else
          {
            v17 = (v17 + 1);
          }
        }
      }

      else
      {
        v19 = 0;
      }

      [v13 setNumberOfSheetsPerCopy:v17];
    }

    else
    {
      v19 = 1035;
    }

    if (v19 >= 2)
    {
      if (v6)
      {
        CGPDFDocumentRelease(v6);
      }

      goto LABEL_150;
    }

    context = objc_autoreleasePoolPush();
    v25 = [v13 spoolDocumentFormat];
    v26 = [v25 caseInsensitiveCompare:@"application/pdf"] == 0;

    v27 = v13;
    v95 = v27;
    if (v26)
    {
      NumberOfPages = CGPDFDocumentGetNumberOfPages(v6);
      v42 = v95;
      v43 = [v42 request_attrs];
      v44 = (*(*v43 + 480))(v43);
      if ([v44 count])
      {
        v45 = [v44 firstObject];
        v46 = [v45 rangeValue];

        if (v46 >= NumberOfPages)
        {
          v47 = 0;
        }

        else
        {
          v47 = v46 + 1;
        }
      }

      else
      {
        v47 = 1;
      }

      Page = CGPDFDocumentGetPage(v6, v47);
      v52 = Page;
      if (Page)
      {
        BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
        width = BoxRect.size.width;
        height = BoxRect.size.height;
        v55 = CGPDFPageGetRotationAngle(v52) % 360;
        if (v55 >= 0)
        {
          v56 = v55;
        }

        else
        {
          v56 = v55 + 360;
        }

        v57 = v56 == 90 || v56 == 270;
        if (v57)
        {
          v58 = width;
        }

        else
        {
          v58 = height;
        }

        if (v57)
        {
          v59 = height;
        }

        else
        {
          v59 = width;
        }

        v60 = v58 < v59;
        v61 = v58 / v59 * 108.0;
        v62 = v59 / v58 * 108.0;
        if (v60)
        {
          v63 = v61;
        }

        else
        {
          v63 = 108.0;
        }

        if (v60)
        {
          v64 = 108.0;
        }

        else
        {
          v64 = v62;
        }

        v65 = sub_1000238A4(v64, v63);
        if (v65)
        {
          v99.origin.x = 0.0;
          v99.origin.y = 0.0;
          v99.size.width = v64;
          v99.size.height = v63;
          CGPDFPageGetDrawingTransform(password, v52, kCGPDFCropBox, v99, v56, 1);
          CGContextConcatCTM(v65, password);
          CGContextDrawPDFPage(v65, v52);
        }

LABEL_105:

        objc_autoreleasePoolPop(context);
        if (v65)
        {
          Image = CGBitmapContextCreateImage(v65);
          if (Image)
          {
            Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
            v78 = Mutable;
            if (Mutable)
            {
              v79 = CGImageDestinationCreateWithData(Mutable, @"public.png", 1uLL, 0);
              v80 = v79;
              if (v79)
              {
                CGImageDestinationAddImage(v79, Image, 0);
                if (CGImageDestinationFinalize(v80))
                {
                  if ((CFDataGetLength(v78) - 1) <= 0x7FFE)
                  {
                    [v95 updateThumbnail:v78];
                  }

                  goto LABEL_140;
                }

                v81 = _PKLogCategory(PKLogCategoryProgress[0]);
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  v90 = [v95 printd_job_id];
                  if (v95)
                  {
                    v91 = [v95 destination_job_id];
                  }

                  else
                  {
                    v91 = -1;
                  }

                  LODWORD(password[0].a) = 67109376;
                  HIDWORD(password[0].a) = v90;
                  LOWORD(password[0].b) = 1024;
                  *(&password[0].b + 2) = v91;
                  _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "[Job %d][%d] liteUpdateJobAttrs: Could not create thumbnail.", password, 0xEu);
                }

LABEL_139:

LABEL_140:
                if (v6)
                {
                  CGPDFDocumentRelease(v6);
                }

                if (v78)
                {
                  CFRelease(v78);
                }

                if (v80)
                {
                  CFRelease(v80);
                }

                if (Image)
                {
                  CGImageRelease(Image);
                }

                if (v65)
                {
                  CGContextRelease(v65);
                }

                goto LABEL_150;
              }

              v81 = _PKLogCategory(PKLogCategoryProgress[0]);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                v88 = [v95 printd_job_id];
                if (v95)
                {
                  v89 = [v95 destination_job_id];
                }

                else
                {
                  v89 = -1;
                }

                LODWORD(password[0].a) = 67109376;
                HIDWORD(password[0].a) = v88;
                LOWORD(password[0].b) = 1024;
                *(&password[0].b + 2) = v89;
                _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "[Job %d][%d] liteUpdateJobAttrs: Unable to create thumbnail destination.", password, 0xEu);
              }
            }

            else
            {
              v81 = _PKLogCategory(PKLogCategoryProgress[0]);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                v86 = [v95 printd_job_id];
                if (v95)
                {
                  v87 = [v95 destination_job_id];
                }

                else
                {
                  v87 = -1;
                }

                LODWORD(password[0].a) = 67109376;
                HIDWORD(password[0].a) = v86;
                LOWORD(password[0].b) = 1024;
                *(&password[0].b + 2) = v87;
                _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "[Job %d][%d] liteUpdateJobAttrs: Can't create CFData to hold thumbnail.", password, 0xEu);
              }

              v78 = 0;
            }

            v80 = 0;
            goto LABEL_139;
          }

          v81 = _PKLogCategory(PKLogCategoryProgress[0]);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v84 = [v95 printd_job_id];
            if (v95)
            {
              v85 = [v95 destination_job_id];
            }

            else
            {
              v85 = -1;
            }

            LODWORD(password[0].a) = 67109376;
            HIDWORD(password[0].a) = v84;
            LOWORD(password[0].b) = 1024;
            *(&password[0].b + 2) = v85;
            v92 = "[Job %d][%d] liteUpdateJobAttrs: Unable to create thumbnail from bitmap context.";
LABEL_131:
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, v92, password, 0xEu);
          }
        }

        else
        {
          v81 = _PKLogCategory(PKLogCategoryProgress[0]);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v82 = [v95 printd_job_id];
            if (v95)
            {
              v83 = [v95 destination_job_id];
            }

            else
            {
              v83 = -1;
            }

            LODWORD(password[0].a) = 67109376;
            HIDWORD(password[0].a) = v82;
            LOWORD(password[0].b) = 1024;
            *(&password[0].b + 2) = v83;
            v92 = "[Job %d][%d] liteUpdateJobAttrs: Unable to create bitmap context.";
            goto LABEL_131;
          }
        }

        v78 = 0;
        v80 = 0;
        Image = 0;
        goto LABEL_139;
      }

LABEL_104:
      v65 = 0;
      goto LABEL_105;
    }

    theDict = 0;
    v28 = [v27 spoolDocumentFilename];
    v30 = lite_create_image(v28, 1, v29, &theDict);

    if (v30)
    {
      v31 = CGImageGetWidth(v30);
      v32 = CGImageGetHeight(v30);
      v33 = v32;
      if (v32 < 2 * v31 && 2 * v32 > v31 || (CGImageRelease(v30), [v95 spoolDocumentFilename], v34 = objc_claimAutoreleasedReturnValue(), v30 = lite_create_image(v34, 0, v35, &theDict), v34, v30))
      {
        if (theDict)
        {
          LODWORD(password[0].a) = 0;
          Value = CFDictionaryGetValue(theDict, kCGImagePropertyOrientation);
          if (Value)
          {
            if (CFNumberGetValue(Value, kCFNumberIntType, password))
            {
              a_low = LODWORD(password[0].a);
            }

            else
            {
              a_low = 1;
            }
          }

          else
          {
            a_low = 1;
          }

          CFRelease(theDict);
        }

        else
        {
          a_low = 1;
        }

        if (v33 < v31)
        {
          v70 = 108 * v33 / v31;
        }

        else
        {
          v70 = 108;
        }

        if (v33 < v31)
        {
          v71 = 108;
        }

        else
        {
          v71 = 108 * v31 / v33;
        }

        v65 = sub_1000238A4(v71, v70);
        if (v65)
        {
          v100.size.width = v71;
          v100.size.height = v70;
          v100.origin.x = 0.0;
          v100.origin.y = 0.0;
          _lite_page_transform(v100, v31, v33, a_low, 0, 0, password);
          CGContextConcatCTM(v65, password);
          v101.size.width = v31;
          v101.size.height = v33;
          v101.origin.x = 0.0;
          v101.origin.y = 0.0;
          CGContextDrawImage(v65, v101, v30);
        }

        CFRelease(v30);
        goto LABEL_105;
      }

      v48 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_103;
      }

      v72 = [v95 printd_job_id];
      if (v95)
      {
        v73 = [v95 destination_job_id];
      }

      else
      {
        v73 = -1;
      }

      LODWORD(password[0].a) = 67109376;
      HIDWORD(password[0].a) = v72;
      LOWORD(password[0].b) = 1024;
      *(&password[0].b + 2) = v73;
      v74 = v48;
      v75 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v48 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
LABEL_103:

        goto LABEL_104;
      }

      v49 = [v95 printd_job_id];
      if (v95)
      {
        v50 = [v95 destination_job_id];
      }

      else
      {
        v50 = -1;
      }

      LODWORD(password[0].a) = 67109376;
      HIDWORD(password[0].a) = v49;
      LOWORD(password[0].b) = 1024;
      *(&password[0].b + 2) = v50;
      v74 = v48;
      v75 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v74, v75, "[Job %d][%d] lite_draw_image_bitmap: Unable to open image from job file.", password, 0xEu);
    goto LABEL_103;
  }

  v8 = [v1 spoolDocumentFilename];
  v6 = sub_10001E5F8([v8 UTF8String]);

  if (v6)
  {
    if (CGPDFDocumentIsEncrypted(v6))
    {
      v9 = [v1 request_attrs];
      v10 = (*(*v9 + 192))(v9);
      if ([v10 length])
      {
        v11 = [v10 length];
        if (v11 >= 0x7F)
        {
          v12 = 127;
        }

        else
        {
          v12 = v11;
        }

        [v10 getBytes:password length:v12];
        *(&password[0].a + v12) = 0;
        CGPDFDocumentUnlockWithPassword(v6, password);
      }
    }

    if (CGPDFDocumentAllowsPrinting(v6))
    {
      v7 = CGPDFDocumentGetNumberOfPages(v6);
      [v1 setPdf_pages:v7];
      goto LABEL_14;
    }

    v38 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [v1 printd_job_id];
      if (v1)
      {
        v40 = [v1 destination_job_id];
      }

      else
      {
        v40 = -1;
      }

      v67 = [v1 spoolDocumentFilename];
      v68 = v67;
      v69 = [v67 UTF8String];
      LODWORD(password[0].a) = 67109634;
      HIDWORD(password[0].a) = v39;
      LOWORD(password[0].b) = 1024;
      *(&password[0].b + 2) = v40;
      HIWORD(password[0].b) = 2080;
      *&password[0].c = v69;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "[Job %d][%d] liteUpdateJobAttrs: PDF permissions do not allow printing of %s.", password, 0x18u);
    }

    CGPDFDocumentRelease(v6);
    v19 = 1042;
  }

  else
  {
    v20 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v1 printd_job_id];
      if (v1)
      {
        v22 = [v1 destination_job_id];
      }

      else
      {
        v22 = -1;
      }

      v66 = [v1 spoolDocumentFilename];
      LODWORD(password[0].a) = 67109634;
      HIDWORD(password[0].a) = v21;
      LOWORD(password[0].b) = 1024;
      *(&password[0].b + 2) = v22;
      HIWORD(password[0].b) = 2080;
      *&password[0].c = [v66 UTF8String];
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[Job %d][%d] liteUpdateJobAttrs: Unable to create a CGPDFDocumentRef for %s.", password, 0x18u);
    }

    v19 = 1041;
  }

LABEL_150:

  return v19;
}

const __CFURL *sub_10001E5F8(const char *a1)
{
  v2 = strlen(a1);
  result = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, a1, v2, 0);
  if (result)
  {
    v4 = result;
    v5 = CGPDFDocumentCreateWithURL(result);
    CFRelease(v4);
    return v5;
  }

  return result;
}

CGImageRef lite_create_image(NSString *a1, int a2, int a3, const __CFDictionary **a4)
{
  v6 = a1;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (v6)
  {
    v8 = [(NSString *)v6 UTF8String];
    v9 = strlen(v8);
    v10 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, v8, v9, 0);
    v11 = v10;
    if (v10)
    {
      v12 = CGImageSourceCreateWithURL(v10, 0);
      v13 = v12;
      if (!v12)
      {
        ThumbnailAtIndex = 0;
LABEL_15:
        CFRelease(v11);
        goto LABEL_16;
      }

      if (a2)
      {
        valuePtr = 108;
        v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        keys[0] = kCGImageSourceCreateThumbnailFromImageIfAbsent;
        keys[1] = kCGImageSourceThumbnailMaxPixelSize;
        values[0] = kCFBooleanTrue;
        values[1] = v14;
        v15 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v13, 0, v15);
        CFRelease(v14);
        CFRelease(v15);
        if (!a4)
        {
          goto LABEL_14;
        }
      }

      else
      {
        ThumbnailAtIndex = CGImageSourceCreateImageAtIndex(v12, 0, 0);
        if (!a4)
        {
LABEL_14:
          CFRelease(v13);
          goto LABEL_15;
        }
      }

      if (ThumbnailAtIndex)
      {
        *a4 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0);
      }

      goto LABEL_14;
    }
  }

  ThumbnailAtIndex = 0;
LABEL_16:

  return ThumbnailAtIndex;
}

uint64_t lite_print_image(void *a1)
{
  v1 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [v1 printd_job_id];
    if (v1)
    {
      v4 = [v1 destination_job_id];
    }

    else
    {
      v4 = -1;
    }

    *buf = 67109634;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    v19 = 2080;
    v20 = "lite_print_image";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] #### %s.", buf, 0x18u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001EA1C;
  v8[3] = &unk_1000A21C8;
  v5 = v1;
  v9 = v5;
  v10 = &v11;
  [v5 _withActivity:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_10001E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001EA1C(uint64_t a1, os_activity_t activity)
{
  v3 = _os_activity_create(&_mh_execute_header, "Thread: Print Image File", activity, OS_ACTIVITY_FLAG_DEFAULT);
  v4 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) printd_job_id];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 destination_job_id];
    }

    else
    {
      v7 = -1;
    }

    *buf = 67109890;
    v21 = v5;
    v22 = 1024;
    v23 = v7;
    v24 = 2048;
    v25 = v3;
    v26 = 2080;
    v27 = "Thread: Print Image File";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) ENTER: %s", buf, 0x22u);
  }

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10001EC94;
  v17 = &unk_1000A21A0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v18 = v8;
  v19 = v9;
  os_activity_apply(v3, &v14);
  v10 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) printd:v14 job:{v15, v16, v17}id];
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = [v12 destination_job_id];
    }

    else
    {
      v13 = -1;
    }

    *buf = 67109890;
    v21 = v11;
    v22 = 1024;
    v23 = v13;
    v24 = 2048;
    v25 = v3;
    v26 = 2080;
    v27 = "Thread: Print Image File";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) EXIT: %s", buf, 0x22u);
  }
}

void sub_10001EC94(uint64_t a1)
{
  if (![*(a1 + 32) numberOfSheetsPerCopy])
  {
    [*(a1 + 32) setNumberOfSheetsPerCopy:1];
  }

  sub_10001ECE8(*(a1 + 32), 1, kCGInterpolationNone);
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_10001ECE8(void *a1, int a2, CGInterpolationQuality a3)
{
  v5 = a1;
  v362 = 0;
  v367 = 0;
  v374 = 0;
  v336 = 0;
  v6 = *&CGAffineTransformIdentity.c;
  v333 = *&CGAffineTransformIdentity.a;
  v7 = *&CGAffineTransformIdentity.tx;
  v334 = v6;
  v335 = v7;
  liteSetThreadPriority(1u);
  v8 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 printd_job_id];
    if (v5)
    {
      v10 = [v5 destination_job_id];
    }

    else
    {
      v10 = -1;
    }

    v11 = [v5 spoolDocumentFilename];
    *buf = 67109634;
    *&buf[4] = v9;
    *&buf[8] = 1024;
    *&buf[10] = v10;
    *&buf[14] = 2080;
    *&buf[16] = [v11 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_pdf_or_image: filename=%s", buf, 0x18u);
  }

  [v5 set_processing];
  v12 = [v5 request_attrs];
  v325 = (*(*v12 + 480))(v12);
  v13 = [v5 request_attrs];
  v324 = (*(*v13 + 608))(v13);
  bzero(&v341, 0x8B0uLL);
  objc_storeStrong(&v367, a1);
  if (a2)
  {
    t2.a = 0.0;
    v14 = [v5 spoolDocumentFilename];
    image = lite_create_image(v14, 0, v15, &t2);

    if (image)
    {
      v323 = 1;
      if (*&t2.a)
      {
        *buf = 0;
        Value = CFDictionaryGetValue(*&t2.a, kCGImagePropertyOrientation);
        if (Value)
        {
          v17 = CFNumberGetValue(Value, kCFNumberIntType, buf);
          v18 = *buf;
          if (!v17)
          {
            v18 = 1;
          }

          v317 = v18;
        }

        else
        {
          v317 = 1;
        }

        v37 = CFDictionaryGetValue(*&t2.a, kCGImagePropertyDPIWidth);
        if (v37)
        {
          if (CFNumberGetValue(v37, kCFNumberIntType, buf))
          {
            v27 = *buf;
          }

          else
          {
            v27 = 300.0;
          }
        }

        else
        {
          v27 = 300.0;
        }

        CFRelease(*&t2.a);
      }

      else
      {
        v27 = 300.0;
        v317 = 1;
      }

      v28 = 0;
      v318 = 0;
      document = 0;
      v336 = 1;
      goto LABEL_41;
    }

    v29 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [v5 printd_job_id];
      if (v5)
      {
        v31 = [v5 destination_job_id];
      }

      else
      {
        v31 = -1;
      }

      *buf = 67109376;
      *&buf[4] = v30;
      *&buf[8] = 1024;
      *&buf[10] = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[Job %d][%d] lite_print_pdf_or_image: Unable to get image from job file.", buf, 0xEu);
    }

LABEL_120:

    image = 0;
    document = 0;
    goto LABEL_124;
  }

  v19 = [v5 spoolDocumentFilename];
  v20 = v19;
  document = sub_10001E5F8([v19 UTF8String]);

  if (!document)
  {
    v29 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v32 = [v5 printd_job_id];
      if (v5)
      {
        v33 = [v5 destination_job_id];
      }

      else
      {
        v33 = -1;
      }

      v79 = [v5 spoolDocumentFilename];
      v80 = v79;
      v81 = [v79 UTF8String];
      *buf = 67109634;
      *&buf[4] = v32;
      *&buf[8] = 1024;
      *&buf[10] = v33;
      *&buf[14] = 2080;
      *&buf[16] = v81;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[Job %d][%d] lite_print_pdf_or_image: Unable to create a CGPDFDocumentRef for %s.", buf, 0x18u);
    }

    goto LABEL_120;
  }

  if (CGPDFDocumentIsEncrypted(document))
  {
    v21 = [v5 request_attrs];
    v22 = (*(*v21 + 192))(v21);
    if ([v22 length])
    {
      v23 = [v22 length];
      if (v23 >= 0x7F)
      {
        v24 = 127;
      }

      else
      {
        v24 = v23;
      }

      [v22 getBytes:buf length:v24];
      buf[v24] = 0;
      CGPDFDocumentUnlockWithPassword(document, buf);
    }
  }

  if (!CGPDFDocumentAllowsPrinting(document))
  {
    v34 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [v5 printd_job_id];
      if (v5)
      {
        v36 = [v5 destination_job_id];
      }

      else
      {
        v36 = -1;
      }

      v82 = [v5 spoolDocumentFilename];
      v83 = v82;
      v84 = [v82 UTF8String];
      *buf = 67109634;
      *&buf[4] = v35;
      *&buf[8] = 1024;
      *&buf[10] = v36;
      *&buf[14] = 2080;
      *&buf[16] = v84;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "[Job %d][%d] lite_print_pdf_or_image: PDF permissions do not allow printing of %s.", buf, 0x18u);
    }

    image = 0;
    goto LABEL_124;
  }

  v25 = [v5 request_attrs];
  v318 = (*(*v25 + 32))(v25);
  NumberOfPages = CGPDFDocumentGetNumberOfPages(document);
  sub_100023B14(v5, NumberOfPages, &v336);
  image = 0;
  v317 = 1;
  v323 = v336;
  v27 = 300.0;
  v28 = 1;
LABEL_41:
  v38 = [v5 printer_driverformat];
  v39 = [v5 openDriver:v348 format:v38 orient:3 num_sheets:v323 passthru:0] == 0;

  if (!v39)
  {
    if (a2)
    {
      v350 = 1;
    }

    LODWORD(v40) = v354;
    v41 = v40;
    v42.i64[0] = v352;
    v42.i64[1] = v353;
    v43 = vcvtq_f64_u64(v42);
    v44 = vdupq_n_s64(0x4052000000000000uLL);
    v45 = v355 & 0xFFFFFFFE;
    v46 = v353;
    v47 = v352;
    if ((v355 & 0xFFFFFFFE) == 4)
    {
      v352 = v353;
      v353 = v47;
      v310 = 1;
      v48 = v47;
      v47 = v46;
    }

    else
    {
      v310 = 0;
      v48 = v353;
    }

    v50 = vmulq_f64(v43, v44);
    v51 = vdupq_lane_s64(*&v41, 0);
    v53 = v358;
    v52 = v359;
    v54 = v358 / v359;
    v346 = v358 / v359;
    v55 = v47;
    v372 = v47;
    v56 = v48;
    v344 = v48;
    if (v358 / v359 != 1)
    {
      if (v45 == 4)
      {
        v55 = (v47 + 1) / v54;
        v372 = v55;
      }

      else
      {
        v56 = (v48 + 1) / v54;
        v344 = v56;
      }
    }

    v319 = vdivq_f64(v50, v51);
    v347 = 0;
    v313 = v357;
    v315 = v44;
    switch(v355)
    {
      case 6:
        v333 = 0xBFF0000000000000;
        *&v334 = 0;
        *(&v334 + 1) = 0xBFF0000000000000;
        v335 = v319;
        break;
      case 5:
        v333 = xmmword_10006B830;
        v335.f64[0] = 0.0;
        v334 = 0x3FF0000000000000uLL;
        v335.f64[1] = v319.f64[0];
        break;
      case 4:
        v333 = xmmword_10006B840;
        v334 = xmmword_10006B850;
        v335 = *&v319.f64[1];
        break;
    }

    *buf = v333;
    *&buf[16] = v334;
    *v381 = v335;
    v57 = *&CGAffineTransformIdentity.c;
    *&t2.a = *&CGAffineTransformIdentity.a;
    *&t2.c = v57;
    *&t2.tx = *&CGAffineTransformIdentity.tx;
    if (!CGAffineTransformEqualToTransform(buf, &t2))
    {
      v347 = &v333;
    }

    if (v45 == 4)
    {
      v58 = v53 / 72.0;
    }

    else
    {
      v58 = v52 / 72.0;
    }

    if (v45 == 4)
    {
      v59 = v52 / 72.0;
    }

    else
    {
      v59 = v53 / 72.0;
    }

    if (HIBYTE(v349) <= 8u)
    {
      if (((1 << SHIBYTE(v349)) & 0xAA) != 0)
      {
        v60 = 3;
LABEL_77:
        v342 = v60;
        v61 = 1;
        v62 = v349 / v60;
        goto LABEL_80;
      }

      if (((1 << SHIBYTE(v349)) & 0x111) != 0)
      {
        v342 = 1;
        v62 = v349;
        v61 = 3;
LABEL_80:
        v63 = (v55 * (v62 >> v61) + 15) & 0x1FFFFFFFFF0;
        v343 = v63;
        if (v63 <= MaxRenderMemory)
        {
          if (MaxRenderMemory / v63 >= v56)
          {
            v64 = v56;
          }

          else
          {
            v64 = MaxRenderMemory / v63;
          }
        }

        else
        {
          v64 = 1;
        }

        v373 = v64;
        v345 = v64 / v58;
        if (!is_mul_ok(v63, v64))
        {
          v65 = _PKLogCategory(PKLogCategoryProgress[0]);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v343;
            *&buf[8] = 1024;
            *&buf[10] = v64;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "lite_create_context: Band buffer (%dx%d) too large.", buf, 0xEu);
          }

LABEL_88:

LABEL_124:
          LODWORD(v85) = 1;
LABEL_125:
          if (v341)
          {
            if (CGBitmapContextGetData(v341))
            {
              v86 = v374;
              if (v374)
              {
                v374 = 0;
              }
            }

            CGContextRelease(v341);
          }

          CGPDFDocumentRelease(document);
          CGImageRelease(image);
          if ([v5 closeDriver:v348])
          {
            v87 = [v5 is_canceled];
            v88 = 8;
            if (!v85)
            {
              v88 = 9;
            }

            if (v87)
            {
              v89 = 7;
            }

            else
            {
              v89 = v88;
            }

            [v5 finishJob:v89];
          }

          else
          {
            [v5 resetJob];
          }

          goto LABEL_138;
        }

        v66 = v63 * v64;
        v67 = mmap(0, v63 * v64, 3, 4097, -1, 0);
        v68 = v67;
        if (v67 == -1)
        {
          v75 = _PKLogCategory(PKLogCategoryProgress[0]);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = *__error();
            *buf = 136315394;
            *&buf[4] = "allocRaster";
            *&buf[12] = 1024;
            *&buf[14] = v76;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%s: mmap failure: %d", buf, 0x12u);
          }
        }

        else
        {
          v69 = dispatch_data_create(v67, v66, 0, _dispatch_data_destructor_munmap);
          v70 = v374;
          v374 = v69;

          if (v374)
          {
            if (v68)
            {
              v71 = _PKLogCategory(PKLogCategoryFramework);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "DEBUG: **** Image processing in effect", buf, 2u);
              }

              if (v342 == 3)
              {
                v72 = 5;
              }

              else
              {
                v72 = 0;
              }

              v73 = v72 | 0x1000;
              if (v62 != 16)
              {
                v73 = v72;
              }

              v74 = HIBYTE(v349);
              if (HIBYTE(v349) > 4u)
              {
                if (HIBYTE(v349) <= 6u)
                {
                  if (HIBYTE(v349) != 5)
                  {
                    if (HIBYTE(v349) == 6)
                    {
                      v90 = v73;
                      DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
                      goto LABEL_156;
                    }

                    goto LABEL_152;
                  }

                  goto LABEL_155;
                }

                if (HIBYTE(v349) == 7)
                {
                  v90 = v73;
                  v92 = &kCGColorSpaceExtendedLinearDisplayP3;
                }

                else
                {
                  if (HIBYTE(v349) != 8)
                  {
                    goto LABEL_152;
                  }

                  v90 = v73;
                  v92 = &kCGColorSpaceExtendedLinearGray;
                }
              }

              else
              {
                if (HIBYTE(v349) <= 2u)
                {
                  if (HIBYTE(v349) - 1 >= 2)
                  {
                    if (HIBYTE(v349))
                    {
                      goto LABEL_152;
                    }

LABEL_148:
                    v90 = v73;
                    DeviceCMYK = CGColorSpaceCreateDeviceGray();
                    goto LABEL_156;
                  }

LABEL_155:
                  v90 = v73;
                  DeviceCMYK = CGColorSpaceCreateDeviceRGB();
LABEL_156:
                  v94 = DeviceCMYK;
                  v95 = v90;
                  v96 = HIBYTE(v349);
                  if (HIBYTE(v349) == 7)
                  {
                    v342 = 3;
                    v343 = 8 * (v372 & 0x3FFFFFFFFFFFFFFLL);
                    v94 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedLinearDisplayP3);
                    if (!v94)
                    {
                      v102 = _PKLogCategory(PKLogCategoryProgress[0]);
                      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Couldn't create P3E colorspace", buf, 2u);
                      }

                      v101 = v374;
                      if (!v374)
                      {
                        goto LABEL_124;
                      }

                      goto LABEL_179;
                    }

                    v96 = HIBYTE(v349);
                    v62 = 16;
                    v95 = 4357;
                  }

                  if (v96 == 8)
                  {
                    v342 = 1;
                    v343 = 2 * (v372 & 0xFFFFFFFFFFFFFFFLL);
                    v94 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedLinearGray);
                    if (!v94)
                    {
                      v103 = _PKLogCategory(PKLogCategoryProgress[0]);
                      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Couldn't create WE colorspace", buf, 2u);
                      }

                      v101 = v374;
                      if (!v374)
                      {
                        goto LABEL_124;
                      }

                      goto LABEL_179;
                    }

                    v62 = 16;
                    v95 = 4357;
                  }

                  v97 = CGBitmapContextCreate(v68, v372, v64, v62, v343, v94, v95);
                  CGColorSpaceRelease(v94);
                  if (v97)
                  {
                    v341 = v97;
                    CGContextSetAllowsAntialiasing(v97, 0);
                    CGContextSetInterpolationQuality(v97, a3);
                    CGContextScaleCTM(v97, v59, v58);
                    CGContextTranslateCTM(v97, 0.0, v345 - v344 / v58);
                    v368 = 0;
                    if (!v361[104] || v342 == 1)
                    {
                      goto LABEL_190;
                    }

                    DeviceGray = CGColorSpaceCreateDeviceGray();
                    if (HIBYTE(v349) == 8)
                    {
                      v99 = v349;
                    }

                    else
                    {
                      if (HIBYTE(v349) != 7)
                      {
                        v105 = 0;
                        v104 = 8;
                        goto LABEL_185;
                      }

                      v99 = v349 / 3;
                    }

                    v104 = v99;
                    if (v99 == 16)
                    {
                      v105 = 4352;
                    }

                    else
                    {
                      v105 = 0;
                    }

LABEL_185:
                    v369 = v372 & 0x1FFFFFFFFFFFFFFFLL;
                    v370 = v66 / (v372 & 0x1FFFFFFFFFFFFFFFLL);
                    v371 = v370 / v58;
                    v106 = CGBitmapContextCreate(v68, v372, v370, v104, v372 & 0x1FFFFFFFFFFFFFFFLL, DeviceGray, v105);
                    CGColorSpaceRelease(DeviceGray);
                    if (v106)
                    {
                      v368 = v106;
                      v385.size.width = v372;
                      v385.size.height = v370;
                      v385.origin.x = 0.0;
                      v385.origin.y = 0.0;
                      CGContextClipToRect(v106, v385);
                      CGContextSetAllowsAntialiasing(v106, 0);
                      CGContextSetInterpolationQuality(v106, a3);
                      CGContextScaleCTM(v106, v59, v58);
                      CGContextTranslateCTM(v106, 0.0, v371 - v344 / v58);
                    }

                    else
                    {
                      v107 = _PKLogCategory(PKLogCategoryProgress[0]);
                      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109888;
                        *&buf[4] = v372;
                        *&buf[8] = 1024;
                        *&buf[10] = v370;
                        *&buf[14] = 1024;
                        *&buf[16] = v104;
                        *&buf[20] = 1024;
                        *&buf[22] = v369;
                        _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "No Monochrome Optimations: unable to create gray bitmap context: raster_width=%d, band_height=%d, bits_per_component=%d, bytes_per_row=%d.", buf, 0x1Au);
                      }
                    }

LABEL_190:
                    v108 = _PKLogCategory(PKLogCategoryProgress[0]);
                    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                    {
                      v109 = [v5 printd_job_id];
                      if (v5)
                      {
                        v110 = [v5 destination_job_id];
                      }

                      else
                      {
                        v110 = -1;
                      }

                      v111 = v336;
                      *buf = 67109632;
                      *&buf[4] = v109;
                      *&buf[8] = 1024;
                      *&buf[10] = v110;
                      *&buf[14] = 1024;
                      *&buf[16] = v336;
                      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_pdf_or_image: numPages=%d", buf, 0x14u);
                    }

                    else
                    {
                      v111 = v336;
                    }

                    if (v111 <= 0)
                    {
                      v117 = _PKLogCategory(PKLogCategoryProgress[0]);
                      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                      {
                        v118 = [v5 printd_job_id];
                        if (v5)
                        {
                          v119 = [v5 destination_job_id];
                        }

                        else
                        {
                          v119 = -1;
                        }

                        v136 = [v5 spoolDocumentFilename];
                        v137 = v136;
                        v138 = [v136 UTF8String];
                        *buf = 67109634;
                        *&buf[4] = v118;
                        *&buf[8] = 1024;
                        *&buf[10] = v119;
                        *&buf[14] = 2080;
                        *&buf[16] = v138;
                        _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "[Job %d][%d] PDF document %s has no pages.", buf, 0x18u);
                      }
                    }

                    else
                    {
                      v112 = v350;
                      v113 = v350 == 2;
                      v308 = v361[v351];
                      v114 = _PKLogCategory(PKLogCategoryProgress[0]);
                      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                      {
                        v115 = [v5 printd_job_id];
                        if (v5)
                        {
                          v116 = [v5 destination_job_id];
                        }

                        else
                        {
                          v116 = -1;
                        }

                        v120 = "F";
                        if (v112 <= 1)
                        {
                          v121 = "F";
                        }

                        else
                        {
                          v121 = "T";
                        }

                        v122 = "Rotated";
                        *buf = 67110658;
                        *&buf[4] = v115;
                        *&buf[8] = 1024;
                        *&buf[10] = v116;
                        if (v360 == 1)
                        {
                          v122 = "Flipped";
                        }

                        *&buf[14] = 2080;
                        *&buf[16] = v121;
                        if (v360)
                        {
                          v123 = v122;
                        }

                        else
                        {
                          v123 = "Normal";
                        }

                        *&buf[24] = 1024;
                        if (v112 == 2)
                        {
                          v124 = "T";
                        }

                        else
                        {
                          v124 = "F";
                        }

                        *&buf[26] = v356;
                        if (v308)
                        {
                          v120 = "T";
                        }

                        *&buf[30] = 2080;
                        *v381 = v123;
                        *&v381[8] = 2080;
                        *&v381[10] = v124;
                        v382 = 2080;
                        v383 = v120;
                        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_pdf_or_image: duplex=%s, copies=%d, backside=%s, tumble=%s, reverse_order=%s", buf, 0x3Cu);
                      }

                      if (document != 0 && v112 > 1)
                      {
                        if (v308)
                        {
                          v125 = 0;
                        }

                        else
                        {
                          v125 = v356 <= 1;
                        }

                        v126 = !v125;
                        LODWORD(v323) = v323 + (v126 & v323);
                      }

                      if (!v363 || v363(v348, (v356 * v323)))
                      {
                        v127 = [v5 request_attrs];
                        v128 = (*(*v127 + 288))(v127);
                        v129.i64[0] = SDWORD2(v313);
                        v129.i64[1] = SHIDWORD(v313);
                        v130 = v129;
                        v129.i64[0] = v313;
                        v129.i64[1] = SDWORD1(v313);
                        v131 = vdupq_n_s64(0x40A3D80000000000uLL);
                        v302 = vdivq_f64(vmulq_f64(vcvtq_f64_s64(v129), v315), v131);
                        qualitya = vdivq_f64(vmulq_f64(vcvtq_f64_s64(v130), v315), v131);
                        if (vaddvq_s32(vbicq_s8(xmmword_10006B860, vuzp1q_s32(vceqzq_f64(v302), vceqzq_f64(qualitya)))))
                        {
                          v132 = 1;
                        }

                        else
                        {
                          v132 = 2;
                        }

                        v305 = v132;
                        if (!v324)
                        {
                          goto LABEL_249;
                        }

                        if ([v324 compare:@"fit"])
                        {
                          if (![v324 compare:@"fill"])
                          {
                            v28 = 0;
                            v133 = 2;
LABEL_246:
                            v305 = v133;
                            if ([v324 compare:@"auto"] && objc_msgSend(v324, "compare:", @"auto-fit"))
                            {
                              goto LABEL_250;
                            }

LABEL_249:
                            v324 = 0;
LABEL_250:
                            v139 = [v5 request_attrs];
                            if ((*(*v139 + 96))(v139))
                            {
                              v140 = 0;
                            }

                            else
                            {
                              v140 = v28;
                            }

                            v303 = v140;
                            v141 = [v5 request_attrs];
                            v304 = (*(*v141 + 392))(v141);
                            if (v304)
                            {
                              v142 = [v5 request_attrs];
                              v143 = (*(*v142 + 384))(v142) - 4;
                              if (v143 > 2)
                              {
                                v144 = 0;
                              }

                              else
                              {
                                v144 = dword_10006B870[v143];
                              }

                              v146 = _PKLogCategory(PKLogCategoryProgress[0]);
                              if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
                              {
                                v147 = [v5 printd_job_id];
                                if (v5)
                                {
                                  v148 = [v5 destination_job_id];
                                }

                                else
                                {
                                  v148 = -1;
                                }

                                *buf = 67109632;
                                *&buf[4] = v147;
                                *&buf[8] = 1024;
                                *&buf[10] = v148;
                                *&buf[14] = 1024;
                                *&buf[16] = v144;
                                _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_pdf_or_image: orientation-requested found in request, rotation=%d", buf, 0x14u);
                              }

                              v145 = v144;
                            }

                            else
                            {
                              v145 = 0;
                            }

                            v301 = v302.f64[1];
                            v149 = qualitya.f64[1];
                            if (v350 >= 2u)
                            {
                              if (v302.f64[0] <= qualitya.f64[0])
                              {
                                if (qualitya.f64[0] > v302.f64[0])
                                {
                                  v302.f64[0] = qualitya.f64[0];
                                }
                              }

                              else
                              {
                                qualitya.f64[0] = v302.f64[0];
                              }

                              if (qualitya.f64[1] <= v302.f64[1])
                              {
                                if (v302.f64[1] > qualitya.f64[1])
                                {
                                  v149 = v302.f64[1];
                                }
                              }

                              else
                              {
                                v301 = qualitya.f64[1];
                              }
                            }

                            v150 = v360 > 0 && document != 0 && v112 > 1;
                            v312 = v145;
                            if (v150)
                            {
                              if (v360 != 3)
                              {
                                if (v360 != 2)
                                {
                                  if (v310 == v113)
                                  {
                                    v337 = 0x3FF0000000000000;
                                    v338 = 0;
                                    v339 = 0;
                                    *v340 = xmmword_10006B850;
                                    *&v340[16] = v319.f64[1];
                                    v300 = &v337;
                                  }

                                  else
                                  {
                                    v337 = 0xBFF0000000000000;
                                    v338 = 0;
                                    v339 = 0;
                                    *v340 = 0x3FF0000000000000;
                                    *&v340[8] = v319.f64[0];
                                    v300 = &v337;
                                    *&v340[16] = 0;
                                  }

                                  goto LABEL_281;
                                }

                                if (v112 == 2)
                                {
                                  goto LABEL_280;
                                }

LABEL_572:
                                v337 = 0xBFF0000000000000;
                                v338 = 0;
                                v339 = 0;
                                *v340 = 0xBFF0000000000000;
                                v300 = &v337;
                                *&v340[8] = v319;
LABEL_281:
                                v282 = time(0);
                                if (document && v368)
                                {
                                  v298 = v341;
                                  v297 = v342;
                                  v295 = v373;
                                  v296 = v343;
                                  v294 = v345;
                                  v292 = HIBYTE(v349);
                                  v293 = v349;
                                }

                                if (!v356)
                                {
LABEL_563:
                                  LODWORD(v85) = 0;
LABEL_564:
                                  v278 = time(0);
                                  v279 = _PKLogCategory(PKLogCategoryProgress[0]);
                                  if (os_log_type_enabled(v279, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v280 = [v5 printd_job_id];
                                    if (v5)
                                    {
                                      v281 = [v5 destination_job_id];
                                    }

                                    else
                                    {
                                      v281 = -1;
                                    }

                                    *buf = 67109888;
                                    *&buf[4] = v280;
                                    *&buf[8] = 1024;
                                    *&buf[10] = v281;
                                    *&buf[14] = 1024;
                                    *&buf[16] = (v278 - v282) / 60;
                                    *&buf[20] = 1024;
                                    *&buf[22] = (v278 - v282) % 60;
                                    _os_log_impl(&_mh_execute_header, v279, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_pdf_or_image: TIME %d:%02d", buf, 0x1Au);
                                  }

                                  if (v364)
                                  {
                                    v364(v348);
                                  }

                                  goto LABEL_125;
                                }

                                *&v291[8] = 0;
                                v151 = v319.f64[0] - v302.f64[0] - qualitya.f64[0];
                                *v291 = v317 > 4;
                                v290 = (72.0 / v27);
                                v152 = "fill";
                                if (v305 == 1)
                                {
                                  v152 = "fit";
                                }

                                if (!v305)
                                {
                                  v152 = "none";
                                }

                                v299 = v152;
                                if (fmax(fmax(fmax(v301, v149), v302.f64[0]), qualitya.f64[0]) > 36.0)
                                {
                                  v153 = v128;
                                }

                                else
                                {
                                  v153 = 0;
                                }

                                v284 = v319.f64[1] - v301 - v149;
                                v285 = v319.f64[0] - qualitya.f64[0] - v302.f64[0];
                                v286 = v285 / v284;
                                v283 = -v151;
                                if (v324)
                                {
                                  v153 = 1;
                                }

                                v288 = v304 | v153;
                                v289 = v153 | v304 ^ 1;
                                v154 = 0.5;
                                v306 = v319.f64[1] - v149 - v301;
                                v307 = v319.f64[0] - v302.f64[0] - qualitya.f64[0];
                                v287 = v151 / v306;
                                while (1)
                                {
                                  if ([v5 is_canceled])
                                  {
                                    goto LABEL_563;
                                  }

                                  if (v323)
                                  {
                                    break;
                                  }

LABEL_557:
                                  LODWORD(v85) = 0;
LABEL_558:
                                  if (++*&v291[4] >= v356 || v85 != 0)
                                  {
                                    goto LABEL_564;
                                  }
                                }

                                v155 = 0;
                                while (1)
                                {
                                  if ([v5 is_canceled])
                                  {
                                    goto LABEL_557;
                                  }

                                  qualityb = objc_autoreleasePoolPush();
                                  v156 = _os_activity_create(&_mh_execute_header, "Render Page", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
                                  os_activity_scope_enter(v156, &state);

                                  if (document)
                                  {
                                    break;
                                  }

                                  if (!v365 || v365(v348, &v349))
                                  {
                                    Width = CGImageGetWidth(image);
                                    Height = CGImageGetHeight(image);
                                    if (v317 <= 4)
                                    {
                                      v171 = Width;
                                    }

                                    else
                                    {
                                      v171 = Height;
                                    }

                                    if (v317 <= 4)
                                    {
                                      v172 = Height;
                                    }

                                    else
                                    {
                                      v172 = Width;
                                    }

                                    v173 = v172;
                                    v174 = v171;
                                    if (v304)
                                    {
                                      if (v312 == -90)
                                      {
                                        v175 = -1;
                                      }

                                      else
                                      {
                                        v175 = 0;
                                      }

                                      if (v312 == 90)
                                      {
                                        v176 = 1;
                                      }

                                      else
                                      {
                                        v176 = v175;
                                      }
                                    }

                                    else
                                    {
                                      v181 = v307 < v306;
                                      if (v174 <= v173)
                                      {
                                        v181 = 0;
                                      }

                                      if ((v174 >= v173 || v307 <= v306) && !v181)
                                      {
                                        v176 = 0;
                                      }

                                      else if ([v5 printer:v307 preferred:?landscape] == 5)
                                      {
                                        v176 = -1;
                                      }

                                      else
                                      {
                                        v176 = 1;
                                      }
                                    }

                                    if (v176)
                                    {
                                      v194 = v173;
                                    }

                                    else
                                    {
                                      v194 = v174;
                                    }

                                    v195 = v307 / v194;
                                    if (v176)
                                    {
                                      v196 = v174;
                                    }

                                    else
                                    {
                                      v196 = v173;
                                    }

                                    v197 = v306 / v196;
                                    if (v305 == 1)
                                    {
                                      if (v195 >= v197)
                                      {
                                        v198 = v197;
                                      }

                                      else
                                      {
                                        v198 = v195;
                                      }
                                    }

                                    else
                                    {
                                      v198 = v290;
                                      if (v305 == 2)
                                      {
                                        if (v195 <= v197)
                                        {
                                          v198 = v197;
                                        }

                                        else
                                        {
                                          v198 = v195;
                                        }
                                      }
                                    }

                                    v386.origin.x = v302.f64[0] + (v307 - v174 * v198) * 0.5;
                                    v154 = 0.5;
                                    v386.origin.y = v301 + (v306 - v173 * v198) * 0.5;
                                    v386.size.width = v198 * v174;
                                    v386.size.height = v198 * v173;
                                    *v381 = 0u;
                                    memset(buf, 0, sizeof(buf));
                                    _lite_page_transform(v386, v174, v173, v317, v176, *v291, buf);
                                    v199 = _PKLogCategory(PKLogCategoryProgress[0]);
                                    if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v200 = [v5 printd_job_id];
                                      if (v5)
                                      {
                                        v201 = [v5 destination_job_id];
                                      }

                                      else
                                      {
                                        v201 = -1;
                                      }

                                      LODWORD(t2.a) = 67110146;
                                      HIDWORD(t2.a) = v200;
                                      LOWORD(t2.b) = 1024;
                                      *(&t2.b + 2) = v201;
                                      HIWORD(t2.b) = 1024;
                                      LODWORD(t2.c) = v312;
                                      WORD2(t2.c) = 2080;
                                      *(&t2.c + 6) = v299;
                                      HIWORD(t2.d) = 1024;
                                      LODWORD(t2.tx) = v303;
                                      _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_pdf_or_image: Drawing image with rotation:%d scale_type:%s scale_down_only:%d", &t2, 0x24u);
                                    }

                                    *&t2.a = *buf;
                                    *&t2.c = *&buf[16];
                                    *&t2.tx = *v381;
                                    v85 = sub_100023C5C(0, image, &t2, 1, &v341, 0, v318);
                                    v206 = v205;
                                    v207 = 1;
                                    if (!v85)
                                    {
                                      goto LABEL_479;
                                    }

LABEL_470:
                                    if ((v85 & 0x100000000) != 0)
                                    {
                                      v255 = _PKLogCategory(PKLogCategoryProgress[0]);
                                      if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v256 = [v5 printd_job_id];
                                        if (v5)
                                        {
                                          v257 = [v5 destination_job_id];
                                        }

                                        else
                                        {
                                          v257 = -1;
                                        }

                                        v258 = "Unknown";
                                        if (v206)
                                        {
                                          v258 = v206;
                                        }

                                        *buf = 67109634;
                                        *&buf[4] = v256;
                                        *&buf[8] = 1024;
                                        *&buf[10] = v257;
                                        *&buf[14] = 2080;
                                        *&buf[16] = v258;
                                        _os_log_impl(&_mh_execute_header, v255, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_pdf_or_image: Setting cancel flag after fatal error: %s.", buf, 0x18u);
                                      }

                                      [v5 set_cancel_flag];
                                    }

LABEL_479:
                                    if (v366)
                                    {
                                      v259 = v366(v348) == 0;
                                      if (!v85)
                                      {
                                        LODWORD(v85) = v259;
                                      }
                                    }

                                    v260 = [v5 sheetsCompleted];
                                    v261 = [v5 sheetsCompleted];
                                    v262 = [NSString stringWithFormat:@"lite_print_pdf_or_image: PAGE %d - %ux%ux%u %udpi", v261, v352, v353, v349, v354];
                                    [v5 updateSheetsAndPostNotification:v260 + 1 logMsg:v262];

                                    if (!v207)
                                    {
                                      v341 = v298;
                                      v342 = v297;
                                      v343 = v296;
                                      v373 = v295;
                                      v345 = v294;
                                      LOBYTE(v349) = v293;
                                      HIBYTE(v349) = v292;
                                    }

                                    os_activity_scope_leave(&state);
                                    v263 = 1;
                                    goto LABEL_531;
                                  }

LABEL_530:
                                  v263 = 0;
                                  LODWORD(v85) = 1;
LABEL_531:
                                  objc_autoreleasePoolPop(qualityb);
                                  if ((v263 & 1) != 0 && ++v155 < v323 && !v85)
                                  {
                                    continue;
                                  }

                                  goto LABEL_558;
                                }

                                if (v325)
                                {
                                  v157 = v336;
                                  v158 = v325;
                                  v159 = v158;
                                  v160 = v155 + 1;
                                  if (v157 == v323 || (v308 || v160 != v323) && (!v308 || (v160 = v155) != 0))
                                  {
                                    v161 = [v158 count];
                                    v162 = v161;
                                    if (v308)
                                    {
                                      v163 = v161 - 1;
                                      while ((v163 & 0x80000000) == 0)
                                      {
                                        v164 = [v159 objectAtIndexedSubscript:v163 & 0x7FFFFFFF];
                                        v165 = [v164 rangeValue];
                                        v167 = v166;

                                        v160 -= v167;
                                        --v163;
                                        if (v160 <= 0)
                                        {
                                          v168 = v165 - v160 + 1;
                                          goto LABEL_356;
                                        }
                                      }
                                    }

                                    else if (v161)
                                    {
                                      v184 = 0;
                                      while (1)
                                      {
                                        v185 = [v159 objectAtIndexedSubscript:v184];
                                        v186 = [v185 rangeValue];
                                        v188 = v187;

                                        if (v160 - v188 <= 0)
                                        {
                                          break;
                                        }

                                        ++v184;
                                        v160 -= v188;
                                        if (v162 == v184)
                                        {
                                          goto LABEL_355;
                                        }
                                      }

                                      v168 = v160 + v186;
LABEL_356:

                                      if (v168)
                                      {
                                        goto LABEL_357;
                                      }

                                      goto LABEL_327;
                                    }
                                  }

LABEL_355:
                                  v168 = 0;
                                  goto LABEL_356;
                                }

                                if (v336 == v323)
                                {
                                  if (v308)
                                  {
                                    v168 = v323 - v155;
                                  }

                                  else
                                  {
                                    v168 = v155 + 1;
                                  }

                                  if (v168)
                                  {
                                    goto LABEL_357;
                                  }

LABEL_327:
                                  v177 = 0;
LABEL_328:
                                  v178 = v368;
                                  if (!v368)
                                  {
                                    v193 = 0.0;
                                    v180 = 0;
                                    goto LABEL_394;
                                  }

                                  v179 = 1;
                                  v180 = 0;
LABEL_384:
                                  v341 = v178;
                                  v342 = 1;
                                  v343 = v369;
                                  v373 = v370;
                                  v345 = v371;
                                  v349 = 8;
                                  v202 = _PKLogCategory(PKLogCategoryProgress[0]);
                                  if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v203 = [v5 printd_job_id];
                                    if (v5)
                                    {
                                      v204 = [v5 destination_job_id];
                                    }

                                    else
                                    {
                                      v204 = -1;
                                    }

                                    *buf = 67109632;
                                    *&buf[4] = v203;
                                    *&buf[8] = 1024;
                                    *&buf[10] = v204;
                                    *&buf[14] = 1024;
                                    *&buf[16] = v168;
                                    _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Optimizing sheet number %d; rendering in monochrome", buf, 0x14u);
                                  }

                                  v193 = 0.0;
                                  v168 = 1;
                                  if ((v179 & 1) == 0)
                                  {
LABEL_418:
                                    BoxRect = CGPDFPageGetBoxRect(v180, kCGPDFCropBox);
                                    v208 = BoxRect.size.width;
                                    v234 = BoxRect.size.height;
                                    v235 = CGPDFPageGetRotationAngle(v180) % 360;
                                    v236 = v235 + (v235 < 0 ? 0x168 : 0);
                                    v237 = v236 == 90 || v236 == 270;
                                    if (v237)
                                    {
                                      v238 = v208;
                                    }

                                    else
                                    {
                                      v238 = v234;
                                    }

                                    if (v237)
                                    {
                                      v208 = v234;
                                    }

                                    if (v305)
                                    {
                                      if (v289)
                                      {
                                        goto LABEL_448;
                                      }

                                      v239 = v312 == 90 || v312 == -90;
                                      v240 = v239;
                                      v241 = v319.f64[0];
                                      if (!v239)
                                      {
                                        v241 = v319.f64[1];
                                      }

                                      if (vabdd_f64(v238, v241) >= 1.0)
                                      {
                                        goto LABEL_448;
                                      }

                                      v242 = v319.f64[0];
                                      if (v240)
                                      {
                                        v242 = v319.f64[1];
                                      }

                                      v193 = 0.0;
                                      if (vabdd_f64(v208, v242) >= 1.0)
                                      {
LABEL_448:
                                        if (v288)
                                        {
                                          goto LABEL_449;
                                        }

                                        v243 = v319.f64[1];
                                        v244 = vabdd_f64(v238, v319.f64[1]);
                                        v193 = 0.0;
                                        if (vabdd_f64(v208, v319.f64[0]) < 1.0 && v244 < 1.0)
                                        {
                                          v312 = 0;
                                          v316 = 0.0;
                                          v314 = v319.f64[0];
                                          goto LABEL_556;
                                        }

                                        v246 = vabdd_f64(v208, v319.f64[1]);
                                        if (vabdd_f64(v238, v319.f64[0]) >= 1.0 || v246 >= 1.0)
                                        {
LABEL_449:
                                          if (v305 == 2)
                                          {
                                            if (v208 == 0.0 || v238 == 0.0)
                                            {
                                              v249 = v287;
                                            }

                                            else
                                            {
                                              v249 = v208 / v238;
                                            }

                                            if (v304)
                                            {
                                              if (v312 == 90)
                                              {
                                                v250 = v301;
                                              }

                                              else
                                              {
                                                v250 = v301;
                                                if (v312 != -90)
                                                {
                                                  goto LABEL_551;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              if (vabdd_f64(v238, v208) <= 1.0)
                                              {
                                                v312 = 0;
                                                v250 = v301;
LABEL_551:
                                                if (v287 > v249)
                                                {
                                                  v275 = (v307 / v249 - v306) * v154;
                                                  v316 = v250 - v275;
                                                  v208 = v306 + v275 * 2.0;
                                                  v193 = v302.f64[0];
                                                  v314 = v307;
                                                  goto LABEL_395;
                                                }

                                                v243 = v306;
                                                v276 = 0.0;
                                                if (v306 * (v249 - v287) > 1.0)
                                                {
                                                  v276 = (v283 + v306 * v249) * v154;
                                                }

                                                v193 = v302.f64[0] - v276;
                                                v314 = v307 + v276 * 2.0;
                                                v316 = v250;
LABEL_556:
                                                v208 = v243;
                                                goto LABEL_395;
                                              }

                                              v269 = v249 > 1.0;
                                              if (v287 >= 1.0)
                                              {
                                                v269 = 0;
                                              }

                                              v271 = (v287 <= 1.0 || v249 >= 1.0) && !v269;
                                              v250 = v301;
                                              if (v271)
                                              {
                                                v312 = 0;
                                                goto LABEL_551;
                                              }

                                              if ([v5 printer:v287 preferred:?landscape] == 5)
                                              {
                                                v272 = -90;
                                              }

                                              else
                                              {
                                                v272 = 90;
                                              }

                                              v312 = v272;
                                            }

                                            v249 = 1.0 / v249;
                                            goto LABEL_551;
                                          }

                                          v264 = v208 / v238;
                                          if (v238 == 0.0)
                                          {
                                            v264 = v285 / v284;
                                          }

                                          if ((v304 & 1) == 0)
                                          {
                                            if (vabdd_f64(v238, v208) > 1.0)
                                            {
                                              v265 = v264 > 1.0;
                                              if (v286 >= 1.0)
                                              {
                                                v265 = 0;
                                              }

                                              if ((v286 <= 1.0 || v264 >= 1.0) && !v265)
                                              {
                                                v312 = 0;
                                              }

                                              else
                                              {
                                                if ([v5 printer_preferred_landscape] == 5)
                                                {
                                                  v268 = -90;
                                                }

                                                else
                                                {
                                                  v268 = 90;
                                                }

                                                v312 = v268;
                                              }

                                              v193 = v302.f64[0];
                                              v316 = v301;
                                              goto LABEL_549;
                                            }

                                            v312 = 0;
                                          }

                                          v193 = v302.f64[0];
                                          v316 = v301;
LABEL_549:
                                          v208 = v284;
                                          v314 = v285;
                                          goto LABEL_395;
                                        }

                                        if ([v5 printer:v246 preferred:?landscape] == 5)
                                        {
                                          v274 = -90;
                                        }

                                        else
                                        {
                                          v274 = 90;
                                        }

                                        v312 = v274;
                                      }

                                      goto LABEL_394;
                                    }

                                    if (v304)
                                    {
                                      if (!v312)
                                      {
LABEL_504:
                                        v312 = 0;
                                        v193 = (v319.f64[0] - v208) * 0.5;
                                        v154 = 0.5;
                                        v316 = (v319.f64[1] - v238) * 0.5;
                                        v314 = v208;
                                        v208 = v238;
                                        goto LABEL_395;
                                      }
                                    }

                                    else
                                    {
                                      if (v319.f64[0] != v319.f64[1] && v208 <= v238)
                                      {
                                        goto LABEL_504;
                                      }

                                      if ([v5 printer:v319.f64[0] preferred:?landscape] == 5)
                                      {
                                        v273 = -90;
                                      }

                                      else
                                      {
                                        v273 = 90;
                                      }

                                      v312 = v273;
                                    }

                                    v193 = (v319.f64[0] - v238) * 0.5;
                                    v154 = 0.5;
                                    v316 = (v319.f64[1] - v208) * 0.5;
                                    v314 = v238;
                                    goto LABEL_395;
                                  }

LABEL_394:
                                  v316 = 0.0;
                                  v208 = v319.f64[1];
                                  v314 = v319.f64[0];
LABEL_395:
                                  if (!v365 || v365(v348, &v349))
                                  {
                                    if ((v305 - 1) > 1)
                                    {
                                      v398.origin.x = v193;
                                      v398.origin.y = v316;
                                      v398.size.width = v314;
                                      v398.size.height = v208;
                                      CGPDFPageGetDrawingTransform(buf, v180, kCGPDFCropBox, v398, -v312, 1);
                                      v329 = *buf;
                                      v330 = *&buf[16];
                                      v233 = *v381;
                                    }

                                    else
                                    {
                                      rect = v208;
                                      v209 = v193;
                                      v387 = CGPDFPageGetBoxRect(v180, kCGPDFCropBox);
                                      x = v387.origin.x;
                                      y = v387.origin.y;
                                      v212 = v387.size.width;
                                      v213 = v387.size.height;
                                      v399 = CGPDFPageGetBoxRect(v180, kCGPDFMediaBox);
                                      v388.origin.x = x;
                                      v388.origin.y = y;
                                      v388.size.width = v212;
                                      v388.size.height = v213;
                                      v389 = CGRectIntersection(v388, v399);
                                      v214 = v389.origin.x;
                                      v215 = v389.origin.y;
                                      v216 = v389.size.width;
                                      v217 = v389.size.height;
                                      MinX = CGRectGetMinX(v389);
                                      v390.origin.x = v214;
                                      v390.origin.y = v215;
                                      v390.size.width = v216;
                                      v390.size.height = v217;
                                      MinY = CGRectGetMinY(v390);
                                      v391.origin.x = v214;
                                      v391.origin.y = v215;
                                      v391.size.width = v216;
                                      v391.size.height = v217;
                                      v220 = CGRectGetWidth(v391);
                                      v392.origin.x = v214;
                                      v392.origin.y = v215;
                                      v392.size.width = v216;
                                      v392.size.height = v217;
                                      v221 = CGRectGetHeight(v392);
                                      CGAffineTransformMakeTranslation(&v379, -(MinX + v220 * 0.5), -(MinY + v221 * 0.5));
                                      v222 = (CGPDFPageGetRotationAngle(v180) - v312) % 360;
                                      if (v222 >= 0)
                                      {
                                        v223 = v222;
                                      }

                                      else
                                      {
                                        v223 = v222 + 360;
                                      }

                                      CGAffineTransformMakeRotation(buf, v223 * -3.14159265 / 180.0);
                                      v224 = v223 == 90 || v223 == 270;
                                      if (v224)
                                      {
                                        v225 = v220;
                                      }

                                      else
                                      {
                                        v225 = v221;
                                      }

                                      if (v224)
                                      {
                                        v226 = v221;
                                      }

                                      else
                                      {
                                        v226 = v220;
                                      }

                                      v393.origin.x = v209;
                                      v393.origin.y = v316;
                                      v393.size.width = v314;
                                      v393.size.height = rect;
                                      v227 = CGRectGetMinX(v393);
                                      v394.origin.x = v209;
                                      v394.origin.y = v316;
                                      v394.size.width = v314;
                                      v394.size.height = rect;
                                      v228 = CGRectGetMinY(v394);
                                      v395.origin.x = v209;
                                      v395.origin.y = v316;
                                      v395.size.width = v314;
                                      v395.size.height = rect;
                                      v229 = CGRectGetWidth(v395);
                                      v396.origin.x = v209;
                                      v396.origin.y = v316;
                                      v396.size.width = v314;
                                      v396.size.height = rect;
                                      v230 = CGRectGetHeight(v396);
                                      v231 = v229 / v226;
                                      v232 = v230 / v225;
                                      if (v303)
                                      {
                                        if (v231 > 1.0)
                                        {
                                          v231 = 1.0;
                                        }

                                        if (v232 > 1.0)
                                        {
                                          v232 = 1.0;
                                        }
                                      }

                                      if (v231 >= v232)
                                      {
                                        v231 = v232;
                                      }

                                      CGAffineTransformMakeScale(&t2, v231, v231);
                                      v154 = 0.5;
                                      CGAffineTransformMakeTranslation(&v378, v227 + v229 * 0.5, v228 + v230 * 0.5);
                                      t1 = v379;
                                      *&v376.a = *buf;
                                      *&v376.c = *&buf[16];
                                      *&v376.tx = *v381;
                                      CGAffineTransformConcat(&v328, &t1, &v376);
                                      v376 = v328;
                                      v375 = t2;
                                      CGAffineTransformConcat(&t1, &v376, &v375);
                                      v328 = t1;
                                      v376 = t1;
                                      v375 = v378;
                                      CGAffineTransformConcat(&t1, &v376, &v375);
                                      v233 = *&t1.tx;
                                      v328 = t1;
                                      v329 = *&t1.a;
                                      v330 = *&t1.c;
                                    }

                                    v331 = v233;
                                    v251 = _PKLogCategory(PKLogCategoryProgress[0]);
                                    if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v252 = [v5 printd_job_id];
                                      if (v5)
                                      {
                                        v253 = [v5 destination_job_id];
                                      }

                                      else
                                      {
                                        v253 = -1;
                                      }

                                      *buf = 67110402;
                                      *&buf[4] = v252;
                                      *&buf[8] = 1024;
                                      *&buf[10] = v253;
                                      *&buf[14] = 2048;
                                      *&buf[16] = v177;
                                      *&buf[24] = 1024;
                                      *&buf[26] = v312;
                                      *&buf[30] = 2080;
                                      *v381 = v299;
                                      *&v381[8] = 1024;
                                      *&v381[10] = v303;
                                      _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_pdf_or_image: Drawing PDF page #%zd rotation:%d scale_type:%s scale_down_only:%d", buf, 0x2Eu);
                                    }

                                    *buf = v329;
                                    *&buf[16] = v330;
                                    *v381 = v331;
                                    v85 = sub_100023C5C(v180, 0, buf, v177, &v341, ((v155 << 63 >> 63) & v300), v318);
                                    v206 = v254;
                                    v207 = v168 == 0;
                                    if (v85)
                                    {
                                      goto LABEL_470;
                                    }

                                    goto LABEL_479;
                                  }

                                  goto LABEL_530;
                                }

                                if (v308)
                                {
                                  if (v155)
                                  {
                                    v168 = v323 - v155;
                                    if (v323 != v155)
                                    {
LABEL_357:
                                      v177 = v168;
                                      Page = CGPDFDocumentGetPage(document, v168);
                                      v180 = Page;
                                      if (!Page)
                                      {
                                        v190 = _PKLogCategory(PKLogCategoryProgress[0]);
                                        if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
                                        {
                                          v191 = [v5 printd_job_id];
                                          if (v5)
                                          {
                                            v192 = [v5 destination_job_id];
                                          }

                                          else
                                          {
                                            v192 = -1;
                                          }

                                          *buf = 67109632;
                                          *&buf[4] = v191;
                                          *&buf[8] = 1024;
                                          *&buf[10] = v192;
                                          *&buf[14] = 1024;
                                          *&buf[16] = v168;
                                          _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_ERROR, "[Job %d][%d] Could not get PDF page %d", buf, 0x14u);
                                        }

                                        [v5 set_cancel_flag];
                                        goto LABEL_530;
                                      }

                                      if (!v368 || isColorPage(Page))
                                      {
                                        v168 = 0;
                                        goto LABEL_418;
                                      }

                                      v179 = 0;
                                      v178 = v368;
                                      goto LABEL_384;
                                    }

                                    goto LABEL_327;
                                  }
                                }

                                else if (v336 != v155)
                                {
                                  v168 = v155 + 1;
                                  if (v155 != -1)
                                  {
                                    goto LABEL_357;
                                  }

                                  goto LABEL_327;
                                }

                                v177 = 0;
                                v168 = 0;
                                goto LABEL_328;
                              }

                              if (v112 == 2)
                              {
                                goto LABEL_572;
                              }
                            }

LABEL_280:
                            v300 = 0;
                            goto LABEL_281;
                          }

                          if ([v324 compare:@"auto-fit"])
                          {
                            if ([v324 compare:@"none"])
                            {
                              v133 = v305;
                            }

                            else
                            {
                              v133 = 0;
                            }

                            goto LABEL_246;
                          }
                        }

                        v28 = 0;
                        v133 = 1;
                        goto LABEL_246;
                      }

                      v117 = _PKLogCategory(PKLogCategoryProgress[0]);
                      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                      {
                        v134 = [v5 printd_job_id];
                        if (v5)
                        {
                          v135 = [v5 destination_job_id];
                        }

                        else
                        {
                          v135 = -1;
                        }

                        *buf = 67109376;
                        *&buf[4] = v134;
                        *&buf[8] = 1024;
                        *&buf[10] = v135;
                        _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "[Job %d][%d] lite_print_pdf_or_image: Unable to start job.", buf, 0xEu);
                      }
                    }

                    LODWORD(v85) = 0;
                    goto LABEL_125;
                  }

                  v100 = _PKLogCategory(PKLogCategoryProgress[0]);
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109888;
                    *&buf[4] = v372;
                    *&buf[8] = 1024;
                    *&buf[10] = v64;
                    *&buf[14] = 1024;
                    *&buf[16] = v62;
                    *&buf[20] = 1024;
                    *&buf[22] = v343;
                    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "lite_create_context: Unable to create bitmap context: raster_width=%d, band_height=%d, bits_per_component=%d, bytes_per_row=%d.", buf, 0x1Au);
                  }

                  v101 = v374;
                  if (!v374)
                  {
                    goto LABEL_124;
                  }

LABEL_179:
                  v374 = 0;

                  goto LABEL_124;
                }

                if (HIBYTE(v349) != 3)
                {
                  if (HIBYTE(v349) == 4)
                  {
                    goto LABEL_148;
                  }

LABEL_152:
                  v311 = v73;
                  v93 = _PKLogCategory(PKLogCategoryProgress[0]);
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *&buf[4] = v74;
                    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "lite_create_colorspace: Unsupported color space requested (%d)", buf, 8u);
                  }

                  v73 = v311;
                  goto LABEL_155;
                }

                v90 = v73;
                v92 = &kCGColorSpaceAdobeRGB1998;
              }

              DeviceCMYK = CGColorSpaceCreateWithName(*v92);
              goto LABEL_156;
            }

LABEL_115:
            v65 = _PKLogCategory(PKLogCategoryProgress[0]);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = v66;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Unable to allocate %lld bytes memory.", buf, 0xCu);
            }

            goto LABEL_88;
          }

          v77 = _PKLogCategory(PKLogCategoryProgress[0]);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            v78 = *__error();
            *buf = 136315394;
            *&buf[4] = "allocRaster";
            *&buf[12] = 1024;
            *&buf[14] = v78;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%s: dispatch_data_create failure: %d", buf, 0x12u);
          }

          v75 = v374;
          if (!v374)
          {
            goto LABEL_115;
          }

          v374 = 0;
        }

        goto LABEL_115;
      }
    }

    v60 = 4;
    goto LABEL_77;
  }

  if (v341)
  {
    if (CGBitmapContextGetData(v341))
    {
      v49 = v374;
      if (v374)
      {
        v374 = 0;
      }
    }

    CGContextRelease(v341);
    CGContextRelease(v368);
  }

  CGPDFDocumentRelease(document);
  CGImageRelease(image);
  if ([v5 closeDriver:v348] && objc_msgSend(v5, "is_canceled"))
  {
    [v5 finishJob:8];
  }

  else
  {
    [v5 resetJob];
  }

LABEL_138:
}

void sub_1000218E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, void *a61)
{
  sub_10002471C(&STACK[0x2A0]);

  _Unwind_Resume(a1);
}

uint64_t lite_print_pdf(void *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021C14;
  v4[3] = &unk_1000A21C8;
  v5 = a1;
  v6 = &v7;
  v1 = v5;
  [v1 _withActivity:v4];

  v2 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v2;
}

void sub_100021BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021C14(uint64_t a1, os_activity_t activity)
{
  v3 = _os_activity_create(&_mh_execute_header, "Thread: Render and Print PDF", activity, OS_ACTIVITY_FLAG_DEFAULT);
  v4 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) printd_job_id];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 destination_job_id];
    }

    else
    {
      v7 = -1;
    }

    *buf = 67109890;
    v21 = v5;
    v22 = 1024;
    v23 = v7;
    v24 = 2048;
    v25 = v3;
    v26 = 2080;
    v27 = "Thread: Render and Print PDF";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) ENTER: %s", buf, 0x22u);
  }

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100021E8C;
  v17 = &unk_1000A21A0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v18 = v8;
  v19 = v9;
  os_activity_apply(v3, &v14);
  v10 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) printd:v14 job:{v15, v16, v17}id];
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = [v12 destination_job_id];
    }

    else
    {
      v13 = -1;
    }

    *buf = 67109890;
    v21 = v11;
    v22 = 1024;
    v23 = v13;
    v24 = 2048;
    v25 = v3;
    v26 = 2080;
    v27 = "Thread: Render and Print PDF";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) EXIT: %s", buf, 0x22u);
  }
}

void sub_100021E8C(uint64_t a1)
{
  v2 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) printd_job_id];
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v4 destination_job_id];
    }

    else
    {
      v5 = -1;
    }

    v6[0] = 67109634;
    v6[1] = v3;
    v7 = 1024;
    v8 = v5;
    v9 = 2080;
    v10 = "lite_print_pdf_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] #### %s.", v6, 0x18u);
  }

  sub_10001ECE8(*(a1 + 32), 0, kCGInterpolationHigh);
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

uint64_t lite_print_redraw_pdf(void *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100022060;
  v3[3] = &unk_1000A21F0;
  v4 = a1;
  v1 = v4;
  [v1 _withActivity:v3];

  return 0;
}

void sub_100022060(uint64_t a1, os_activity_t activity)
{
  v3 = _os_activity_create(&_mh_execute_header, "Thread: Print Redrawn PDF File ", activity, OS_ACTIVITY_FLAG_DEFAULT);
  v4 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) printd_job_id];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 destination_job_id];
    }

    else
    {
      v7 = -1;
    }

    *buf = 67109890;
    v15 = v5;
    v16 = 1024;
    v17 = v7;
    v18 = 2048;
    v19 = v3;
    v20 = 2080;
    v21 = "Thread: Print Redrawn PDF File ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) ENTER: %s", buf, 0x22u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000222D4;
  block[3] = &unk_100095380;
  v13 = *(a1 + 32);
  os_activity_apply(v3, block);
  v8 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) printd_job_id];
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = [v10 destination_job_id];
    }

    else
    {
      v11 = -1;
    }

    *buf = 67109890;
    v15 = v9;
    v16 = 1024;
    v17 = v11;
    v18 = 2048;
    v19 = v3;
    v20 = 2080;
    v21 = "Thread: Print Redrawn PDF File ";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) EXIT: %s", buf, 0x22u);
  }
}

void sub_1000222D4(uint64_t a1)
{
  v2 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) printd_job_id];
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v4 destination_job_id];
    }

    else
    {
      v5 = -1;
    }

    *buf = 67109634;
    v69 = v3;
    v70 = 1024;
    v71 = v5;
    v72 = 2080;
    v73 = "lite_print_redraw_pdf_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] #### %s.", buf, 0x18u);
  }

  v61 = *(a1 + 32);
  v74 = 0;
  liteSetThreadPriority(1u);
  v6 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v61 printd_job_id];
    if (v61)
    {
      v8 = [v61 destination_job_id];
    }

    else
    {
      v8 = -1;
    }

    v9 = [v61 spoolDocumentFilename];
    v10 = v9;
    *v64 = 67109634;
    *&v64[4] = v7;
    LOWORD(v65) = 1024;
    *(&v65 + 2) = v8;
    HIWORD(v65) = 2080;
    *&v66 = [v9 UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_redraw_pdf: filename=%s", v64, 0x18u);
  }

  [v61 set_processing];
  v11 = [v61 spoolDocumentFilename];
  v12 = v11;
  v13 = sub_10001E5F8([v11 UTF8String]);

  if (v13)
  {
    if (CGPDFDocumentIsEncrypted(v13))
    {
      v14 = [v61 request_attrs];
      v15 = (*(*v14 + 192))(v14);
      if ([v15 length])
      {
        v16 = [v15 length];
        if (v16 >= 0x7F)
        {
          v17 = 127;
        }

        else
        {
          v17 = v16;
        }

        [v15 getBytes:v64 length:v17];
        v64[v17] = 0;
        CGPDFDocumentUnlockWithPassword(v13, v64);
      }
    }

    if (!CGPDFDocumentAllowsPrinting(v13))
    {
      v24 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v61 printd_job_id];
        if (v61)
        {
          v26 = [v61 destination_job_id];
        }

        else
        {
          v26 = -1;
        }

        v46 = [v61 spoolDocumentFilename];
        v47 = v46;
        v48 = [v46 UTF8String];
        *v64 = 67109634;
        *&v64[4] = v25;
        LOWORD(v65) = 1024;
        *(&v65 + 2) = v26;
        HIWORD(v65) = 2080;
        *&v66 = v48;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[Job %d][%d] lite_print_redraw_pdf: PDF permissions do not allow printing of %s.", v64, 0x18u);
      }

      v30 = 0;
      v60 = 0;
      goto LABEL_71;
    }

    v18 = [v61 request_attrs];
    v19 = (*(*v18 + 480))(v18);
    if (v19)
    {
      v20 = [v61 request_attrs];
      v60 = v19;
      (*(*v20 + 504))(v20);
    }

    else
    {
      v27 = [NSValue valueWithRange:0, CGPDFDocumentGetNumberOfPages(v13)];
      v63 = v27;
      v60 = [NSArray arrayWithObjects:&v63 count:1];
    }

    if (![v61 openDriver:buf format:@"application/pdf" orient:0 num_sheets:0 passthru:1])
    {
      v30 = 0;
      v43 = 8;
      goto LABEL_73;
    }

    v28 = [v61 createDataConsumer];
    v29 = v28;
    if (v28)
    {
      v30 = CGPDFContextCreate(v28, 0, 0);
      CGDataConsumerRelease(v29);
      if (v30)
      {
        v58 = time(0);
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          for (i = 0; [v60 count] > i; ++i)
          {
            v32 = [v60 objectAtIndexedSubscript:?];
            v33 = [v32 rangeValue];
            v35 = v34;

            v36 = v13;
            v37 = &v33[v35];
            while (++v33 <= v37)
            {
              Page = CGPDFDocumentGetPage(v36, v33);
              *v64 = kCGPDFContextMediaBox;
              v65 = kCGPDFContextCropBox;
              *&v66 = kCGPDFContextBleedBox;
              *(&v66 + 1) = kCGPDFContextTrimBox;
              v67 = kCGPDFContextArtBox;
              size = CGRectZero.size;
              bytes.origin = CGRectZero.origin;
              bytes.size = size;
              if (Page)
              {
                CFDictionaryRemoveAllValues(Mutable);
                for (j = 0; j != 5; ++j)
                {
                  bytes = CGPDFPageGetBoxRect(Page, j);
                  v41 = CFDataCreate(0, &bytes, 32);
                  CFDictionarySetValue(Mutable, *&v64[8 * j], v41);
                  CFRelease(v41);
                }
              }

              CGPDFContextBeginPage(v30, Mutable);
              if (Page)
              {
                v42 = [v61 request_attrs];
                if ((*(*v42 + 32))(v42))
                {
                  CGContextDrawPDFPageWithAnnotations();
                }

                else
                {
                  CGContextDrawPDFPage(v30, Page);
                }
              }

              CGContextEndPage(v30);
            }

            v13 = v36;
          }

          CFRelease(Mutable);
          CGPDFContextClose(v30);
          v51 = time(0);
          v24 = _PKLogCategory(PKLogCategoryProgress[0]);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [v61 printd_job_id];
            if (v61)
            {
              v53 = [v61 destination_job_id];
            }

            else
            {
              v53 = -1;
            }

            *v64 = 67109888;
            *&v64[4] = v52;
            LOWORD(v65) = 1024;
            *(&v65 + 2) = v53;
            HIWORD(v65) = 1024;
            LODWORD(v66) = (v51 - v58) / 60;
            WORD2(v66) = 1024;
            *(&v66 + 6) = (v51 - v58) % 60;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] lite_print_redraw_pdf: TIME %d:%02d", v64, 0x1Au);
          }

          v43 = 9;
          goto LABEL_72;
        }

        v24 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v54 = [v61 printd_job_id];
          if (v61)
          {
            v55 = [v61 destination_job_id];
          }

          else
          {
            v55 = -1;
          }

          *v64 = 67109376;
          *&v64[4] = v54;
          LOWORD(v65) = 1024;
          *(&v65 + 2) = v55;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[Job %d][%d] lite_print_redraw_pdf: Unable to create PDF page dict", v64, 0xEu);
        }

LABEL_71:
        v43 = 8;
LABEL_72:

LABEL_73:
        CGPDFDocumentRelease(v13);
        if (v30)
        {
          CGContextRelease(v30);
        }

        goto LABEL_75;
      }

      v24 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v49 = [v61 printd_job_id];
        if (v61)
        {
          v50 = [v61 destination_job_id];
        }

        else
        {
          v50 = -1;
        }

        *v64 = 67109376;
        *&v64[4] = v49;
        LOWORD(v65) = 1024;
        *(&v65 + 2) = v50;
        v56 = "[Job %d][%d] lite_print_redraw_pdf: Unable to create PDF context";
LABEL_69:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v56, v64, 0xEu);
      }
    }

    else
    {
      v24 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v44 = [v61 printd_job_id];
        if (v61)
        {
          v45 = [v61 destination_job_id];
        }

        else
        {
          v45 = -1;
        }

        *v64 = 67109376;
        *&v64[4] = v44;
        LOWORD(v65) = 1024;
        *(&v65 + 2) = v45;
        v56 = "[Job %d][%d] lite_print_redraw_pdf: Unable to create data consumer.";
        goto LABEL_69;
      }
    }

    v30 = 0;
    goto LABEL_71;
  }

  v21 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = [v61 printd_job_id];
    if (v61)
    {
      v23 = [v61 destination_job_id];
    }

    else
    {
      v23 = -1;
    }

    *v64 = 67109376;
    *&v64[4] = v22;
    LOWORD(v65) = 1024;
    *(&v65 + 2) = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[Job %d][%d] lite_print_redraw_pdf: Unable to open input PDF", v64, 0xEu);
  }

  v60 = 0;
  v43 = 8;
LABEL_75:
  if ([v61 closeDriver:buf])
  {
    if ([v61 is_canceled])
    {
      v57 = 7;
    }

    else
    {
      v57 = v43;
    }

    [v61 finishJob:v57];
  }

  else
  {
    [v61 resetJob];
  }
}