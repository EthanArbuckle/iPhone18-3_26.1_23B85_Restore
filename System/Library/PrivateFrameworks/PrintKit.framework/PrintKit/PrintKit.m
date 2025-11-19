void sub_25F5FD45C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void PKLogXPCError(objc_selector *a1, NSError *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_25F5FC000, v4, OS_LOG_TYPE_ERROR, "%@ %@", &v8, 0x16u);
  }

  if ([(NSError *)v3 code]== 4099)
  {
    v6 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a1);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25F5FC000, v6, OS_LOG_TYPE_ERROR, "%@ Ensure the com.apple.PrintKit.PrinterTool XPCService is available.", &v8, 0xCu);
    }
  }
}

void sub_25F5FE330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25F5FE3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25F5FE4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_25F5FEEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void PrintdRPC::RemoveKeychainItem(PrintdRPC *this, PKPrinterBonjourEndpoint *a2)
{
  v3 = this;
  v2 = +[PKPrinterTool_Client sharedClient];
  [v2 printerTool_removeKeychainItem:v3];
}

void PrintdRPC::IdentifyPrinter(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = +[PKPrinterTool_Client sharedClient];
  [v7 printerTool_identifyPrinter:v8 message:v5 actions:v6];
}

void sub_25F5FFDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void PrintdRPC::GetPrinterDescription(void *a1, uint64_t a2, void *a3)
{
  v7 = a1;
  v5 = a3;
  v6 = +[PKPrinterTool_Client sharedClient];
  [v6 printerTool_getPrinterDescription:v7 assertReachability:a2 completionHandler:v5];
}

void PrintdRPC::CheckAccessStateAsync(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  v4 = +[PKPrinterTool_Client sharedClient];
  [v4 printerTool_checkAccessState:v5 completionHandler:v3];
}

void PrintdRPC::QueryPrinterWithAttributess(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = +[PKPrinterTool_Client sharedClient];
  [v7 printerTool_queryPrinter:v8 attributes:v5 completionHandler:v6];
}

void sub_25F5FFFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

NSString *internString(NSString *a1)
{
  v1 = a1;
  v2 = [&unk_2871AC638 objectForKeyedSubscript:v1];
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
      v16[0] = v5;
      v16[1] = v6;
      v16[2] = dynamicHash(v5, v6);
      v16[3] = 0;
      if (internEntriesDict(void)::sOnce != -1)
      {
        internString();
      }

      Value = CFDictionaryGetValue(internEntriesDict(void)::sInternEntriesDict, v16);
      if (Value)
      {
        v8 = Value[3];
      }

      else
      {
        v9 = &v5[v6];
        v10 = MEMORY[0x277D85DE0];
        while (v5 < v9)
        {
          v12 = *v5++;
          v11 = v12;
          if ((v12 & 0x80000000) != 0)
          {
            v13 = __maskrune(v11, 0x40000uLL);
          }

          else
          {
            v13 = *(v10 + 4 * v11 + 60) & 0x40000;
          }

          if (!v13)
          {
            v8 = v1;
            goto LABEL_17;
          }
        }

        v8 = forcedAsciiIntern(v1);

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

  v14 = v4;

  return v14;
}

uint64_t dynamicHash(const char *a1, uint64_t a2)
{
  if (a2)
  {
    return 257 * dynamicHash(a1 + 1, a2 - 1) + *a1;
  }

  else
  {
    return 0;
  }
}

NSString *forcedAsciiIntern(NSString *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = forcedAsciiIntern(NSString *)::sForced;
  if (!forcedAsciiIntern(NSString *)::sForced)
  {
    v4 = objc_opt_new();
    v5 = forcedAsciiIntern(NSString *)::sForced;
    forcedAsciiIntern(NSString *)::sForced = v4;

    v3 = forcedAsciiIntern(NSString *)::sForced;
  }

  v6 = [v3 objectForKeyedSubscript:v1];
  v7 = v6;
  if (!v6)
  {
    v8 = [forcedAsciiIntern(NSString *)::sForced count];
    v7 = v1;
    if (v8 <= 0x7F)
    {
      [forcedAsciiIntern(NSString *)::sForced setObject:v1 forKeyedSubscript:v1];
      v7 = v1;
    }
  }

  v9 = v7;

  objc_sync_exit(v2);

  return v9;
}

void sub_25F600294(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

NSString *internUTF8ByteString(const char *a1, uint64_t a2)
{
  v3 = a1;
  v14 = a1;
  v15 = a2;
  v16 = dynamicHash(a1, a2);
  v17 = 0;
  if (internEntriesDict(void)::sOnce != -1)
  {
    internString();
  }

  Value = CFDictionaryGetValue(internEntriesDict(void)::sInternEntriesDict, &v14);
  if (Value)
  {
    v5 = Value[3];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [v7 initWithBytes:v3 length:a2 encoding:{4, v14, v15, v16, v17}];
    if (v5)
    {
      v8 = &v3[a2];
      v9 = MEMORY[0x277D85DE0];
      while (v3 < v8)
      {
        v11 = *v3++;
        v10 = v11;
        if ((v11 & 0x80000000) != 0)
        {
          v12 = __maskrune(v10, 0x40000uLL);
        }

        else
        {
          v12 = *(v9 + 4 * v10 + 60) & 0x40000;
        }

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v13 = forcedAsciiIntern(v5);

      v5 = v13;
    }
  }

LABEL_5:

  return v5;
}

CFDictionaryRef ___ZL17internEntriesDictv_block_invoke()
{
  keyCallBacks.version = 0;
  keyCallBacks.retain = _ZZZL17internEntriesDictvEUb_EN3__08__invokeEPK13__CFAllocatorPKv;
  keyCallBacks.release = _ZZZL17internEntriesDictvEUb_EN3__18__invokeEPK13__CFAllocatorPKv;
  keyCallBacks.copyDescription = _ZZZL17internEntriesDictvEUb_EN3__28__invokeEPKv;
  keyCallBacks.equal = _ZZZL17internEntriesDictvEUb_EN3__38__invokeEPKvS1_;
  keyCallBacks.hash = _ZZZL17internEntriesDictvEUb_EN3__48__invokeEPKv;
  valueCallBacks.version = 0;
  valueCallBacks.retain = _ZZZL17internEntriesDictvEUb_EN3__58__invokeEPK13__CFAllocatorPKv;
  valueCallBacks.release = _ZZZL17internEntriesDictvEUb_EN3__68__invokeEPK13__CFAllocatorPKv;
  valueCallBacks.copyDescription = _ZZZL17internEntriesDictvEUb_EN3__78__invokeEPKv;
  valueCallBacks.equal = _ZZZL17internEntriesDictvEUb_EN3__88__invokeEPKvS1_;
  if (sEntryPtrs != &sEntryValues)
  {
    ___ZL17internEntriesDictv_block_invoke_cold_1();
  }

  if (qword_27FDAA4F8 != &off_279A8FCF0)
  {
    ___ZL17internEntriesDictv_block_invoke_cold_2();
  }

  result = CFDictionaryCreate(*MEMORY[0x277CBECE8], &sEntryPtrs, &sEntryPtrs, 1337, &keyCallBacks, &valueCallBacks);
  internEntriesDict(void)::sInternEntriesDict = result;
  return result;
}

CFStringRef _ZZZL17internEntriesDictvEUb_EN3__28__invokeEPKv(char **a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = entryIndex(a1);
  v4 = entryString(a1);
  v5 = CFStringCreateWithFormat(v2, 0, @"key<%d/%@>", v3, v4);

  return v5;
}

uint64_t entryIndex(char **a1)
{
  v1 = a1 - &sEntryValues;
  if (a1 < &sEntryValues || a1 >= &__block_descriptor_32_e28_B16__0__PK_ipp_attribute_t_8l)
  {
    return 0xFFFFFFFFLL;
  }

  if (&(&sEntryValues)[4 * (v1 >> 5)] != a1)
  {
    entryIndex();
  }

  return v1 >> 5;
}

id entryString(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*a1 length:a1[1] encoding:4];
  }

  return v2;
}

char **_ZZZL17internEntriesDictvEUb_EN3__58__invokeEPK13__CFAllocatorPKv(uint64_t a1, char **a2)
{
  if (entryIndex(a2) == -1)
  {
    _ZZZL17internEntriesDictvEUb_EN3__58__invokeEPK13__CFAllocatorPKv_cold_1();
  }

  return a2;
}

CFStringRef _ZZZL17internEntriesDictvEUb_EN3__78__invokeEPKv(char **a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = entryIndex(a1);
  v4 = entryString(a1);
  v5 = CFStringCreateWithFormat(v2, 0, @"val<%d/%@>", v3, v4);

  return v5;
}

uint64_t ippReadIO(void *a1, uint64_t (*a2)(void *, unsigned __int8 *, unint64_t), PK_ipp_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  v7 = 0xFFFFFFFFLL;
  if (a1 && v5)
  {
    IPPIOReader::IPPIOReader(v11, a2, a1);
    v9 = IPP_STATE_IDLE;
    v10 = IPP_TAG_NOVALUE;
    ippReadWithReader(v11, &v9, &v10, 0, v6);
    v7 = 3;
  }

  return v7;
}

void ippReadWithReader(IPPIOReader *a1, ipp_state_e *a2, ipp_tag_e *a3, int a4, PK_ipp_t *a5)
{
  v115 = *MEMORY[0x277D85DE8];
  v109 = a5;
  v110 = a2;
  v9 = *a2;
  if (*a2 == IPP_STATE_ATTRIBUTE)
  {
LABEL_8:
    v111 = v109;
    while (1)
    {
      v11 = objc_autoreleasePoolPush();
      IPPIOReader::read(a1, &__dst, 1uLL);
      v12 = validate_enum<ipp_tag_e,unsigned char>(__dst);
      v13 = v12;
      if (v12 != 3)
      {
        break;
      }

      v16 = 0;
      v17 = 0;
LABEL_26:
      *v110 = IPP_STATE_DATA;
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
      IPPIOReader::read(a1, &__dst, 4uLL);
      v13 = 0xFFFFFFFFLL;
LABEL_21:
      if (a4)
      {
        v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad tag 0x%02x.", v13];
        IPPIOReader::THROW_FAIL(a1, 662, &cfstr_InvalidGroupTa.isa, v68);
      }

      if (*a3 == v13)
      {
        ippAddSeparator(v111);
      }

      v16 = 0;
      v17 = 0;
      *a3 = v13;
      v18 = 3;
      goto LABEL_101;
    }

    if (!v12)
    {
      v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad tag 0x%02x.", 0];
      IPPIOReader::THROW_FAIL(a1, 651, &cfstr_InvalidGroupTa.isa, v69);
    }

    if (v12 <= 15)
    {
      goto LABEL_21;
    }

    v14 = v111;
    IPPIOReader::read(a1, &__dst, 2uLL);
    v15 = __rev16(__dst);
    if (v15 > 0x8000)
    {
      v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad name length %d.", v15];
      IPPIOReader::THROW_FAIL(a1, 213, &cfstr_IppNameLargerT.isa, v72);
    }

    if (__dst && a4)
    {
      v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad attribute name in collection."];
      IPPIOReader::THROW_FAIL(a1, 220, &cfstr_InvalidNamedIp.isa, v71);
    }

    if (__dst)
    {
      if (v13 != 55)
      {
        if (v13 == 74)
        {
          v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: member name not empty."];
          IPPIOReader::THROW_FAIL(a1, 311, &cfstr_IppMemberNameI.isa, v74);
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v13 == 16)
      {
LABEL_34:
        v23 = IPPIOReader::readString(a1, v15, 1);
        v19 = [(PK_ipp_t *)v14 addNewEmptyAttribute:v23 groupTag:*a3 valueTag:v13];
        v24 = v19;
        if (!v19)
        {
          v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: unable to allocate attribute."];
          IPPIOReader::THROW_FAIL(a1, 338, &cfstr_IppreadioUnabl.isa, v73);
        }

        v21 = [(PK_ipp_attribute_t *)v19 addNewEmptyValue];
        v25 = v21;

        goto LABEL_36;
      }

      if (v13 != 55)
      {
        if (v13 == 74)
        {
          if ((a4 & 1) == 0)
          {
            v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: member attribute outside of collection."];
            IPPIOReader::THROW_FAIL(a1, 315, &cfstr_IppMemberAttri.isa, v76);
          }

          v19 = [(PK_ipp_t *)v14 addNewEmptyAttribute:0 groupTag:*a3 valueTag:0];
          v20 = v19;
          if (!v19)
          {
            v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: unable to allocate attribute."];
            IPPIOReader::THROW_FAIL(a1, 322, &cfstr_IppreadioUnabl.isa, v77);
          }
        }

        else
        {
          v38 = [(PK_ipp_t *)v14 attrs];
          v19 = [v38 lastObject];
          v39 = v19;

          if (!v19)
          {
            v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: Attribute without name and no current."];
            IPPIOReader::THROW_FAIL(a1, 231, &cfstr_IppAttributeHa.isa, v75);
          }

          v40 = [(PK_ipp_attribute_t *)v19 value_tag];
          v41 = v40;
          if (v40)
          {
            if ((v40 - 53) < 2 || (v40 - 65) <= 8)
            {
              if ((v13 - 55) <= 0xFFFFFFFD && v13 != 19 && (v13 - 74) <= 0xFFFFFFF6)
              {
                v100 = MEMORY[0x277CCACA8];
                v101 = ippTagString(v40);
                v102 = [v100 stringWithFormat:@"ippReadIO: 1setOf value tag %x(%s) != %x(%s)", v41, v101, v13, ippTagString(v13)];
                IPPIOReader::THROW_FAIL(a1, 258, &cfstr_Ipp1setofAttri.isa, v102);
              }

              if (v40 != v13 && !ippCoerceAttrToValue(v14, v19, v13))
              {
                v96 = MEMORY[0x277CCACA8];
                v97 = [(PK_ipp_attribute_t *)v19 name];
                v98 = ippTagString(v41);
                v99 = [v96 stringWithFormat:@"ippReadIO: Failed to convert %@ attribute from %s to %s.", v97, v98, ippTagString(v13)];
                IPPIOReader::THROW_FAIL(a1, 267, &cfstr_Ipp1setofAttri.isa, v99);
              }
            }

            else if (v40 == 51 || v40 == 33)
            {
              if (v13 != 33 && v13 != 51)
              {
                v106 = MEMORY[0x277CCACA8];
                v107 = ippTagString(v40);
                v108 = [v106 stringWithFormat:@"ippReadIO: 1setOf value tag %x(%s) != %x(%s)", v41, v107, v13, ippTagString(v13)];
                IPPIOReader::THROW_FAIL(a1, 280, &cfstr_Ipp1setofAttri.isa, v108);
              }

              if (v13 == 51 && v40 == 33)
              {
                ippCoerceAttrToValue(v14, v19, 51);
              }
            }

            else if (v40 != v13)
            {
              v103 = MEMORY[0x277CCACA8];
              v104 = ippTagString(v40);
              v105 = [v103 stringWithFormat:@"ippReadIO: value tag %x(%s) != %x(%s)", v41, v104, v13, ippTagString(v13)];
              IPPIOReader::THROW_FAIL(a1, 295, &cfstr_Ipp1setofAttri.isa, v105);
            }
          }

          else
          {
            [(PK_ipp_attribute_t *)v19 setValueTag:v13];
          }
        }

        v21 = [(PK_ipp_attribute_t *)v19 addNewEmptyValue];
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
    IPPIOReader::read(a1, &__dst, 2uLL);
    v28 = __dst;
    v29 = __rev16(__dst);
    if (v29 > 0x8000)
    {
      v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad value length %d.", v29];
      IPPIOReader::THROW_FAIL(a1, 372, &cfstr_IppValueLarger.isa, v70);
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
        if ([(PK_ipp_attribute_t *)v17 value_tag]!= v13)
        {
          goto LABEL_41;
        }

        if (!v28)
        {
          goto LABEL_46;
        }

        [(PK_ipp_attribute_t *)v17 setValueTag:65];
LABEL_41:
        v30 = [v16 string];
        v32 = v31;
        v33 = IPPIOReader::readString(a1, v29, ((v13 - 67) < 7) & (0x73u >> (v13 - 67)));

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
          v37 = [(PK_ipp_attribute_t *)v17 values];
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
            v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad integer value length %d.", v29];
            IPPIOReader::THROW_FAIL(a1, 382, &cfstr_IppIntegerValu.isa, v84);
          }

          v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad integer value length %d.", v29];
          IPPIOReader::THROW_FAIL(a1, 384, &cfstr_IppEnumValueNo.isa, v86);
        }

        IPPIOReader::read(a1, &__dst, 4uLL);
        v42 = __dst;
        v43 = [(PK_ipp_attribute_t *)v17 value_tag];
        v44 = bswap32(v42);
        if (v43 == 51)
        {
          __dst = v44;
          v114 = v44;
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
          v94 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad BOOLean value length %d.", v29];
          IPPIOReader::THROW_FAIL(a1, 398, &cfstr_IppBooleanValu.isa, v94);
        }

        IPPIOReader::read(a1, &__dst, 1uLL);
        [v16 setBoolean:__dst != 0];
        goto LABEL_99;
      case 49:
        if (__dst != 2816)
        {
          v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad date value length %d.", v29];
          IPPIOReader::THROW_FAIL(a1, 446, &cfstr_IppDateValueNo.isa, v93);
        }

        v58 = IPPIOReader::autoAlloc(a1, 0xCuLL);
        IPPIOReader::read(a1, v58, 0xBuLL);
        goto LABEL_99;
      case 50:
        if (__dst != 2304)
        {
          v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad resolution value length %d.", v29];
          IPPIOReader::THROW_FAIL(a1, 455, &cfstr_IppResolutionV.isa, v92);
        }

        IPPIOReader::read(a1, &__dst, 4uLL);
        v60 = __dst;
        IPPIOReader::read(a1, &__dst, 4uLL);
        v61 = __dst;
        IPPIOReader::read(a1, &__dst, 1uLL);
        [v16 setResolution:{bswap64(v61 | (v60 << 32)), validate_enum<ipp_res_e, unsigned char>(__dst)}];
        goto LABEL_99;
      case 51:
        if (__dst != 2048)
        {
          v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad rangeOfInteger value length %d.", v29];
          IPPIOReader::THROW_FAIL(a1, 470, &cfstr_IppRangeofinte.isa, v91);
        }

        IPPIOReader::read(a1, &__dst, 4uLL);
        v62 = __dst;
        IPPIOReader::read(a1, &__dst, 4uLL);
        v63 = bswap32(__dst);
        __dst = bswap32(v62);
        v114 = v63;
        [v16 setRange:&__dst];
        goto LABEL_99;
      case 52:
        v64 = objc_opt_new();
        [v16 setCollection:v64];

        if (v28)
        {
          v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: begCollection tag with value length > 0."];
          IPPIOReader::THROW_FAIL(a1, 557, &cfstr_IppBegcollecti.isa, v90);
        }

        v112 = IPP_STATE_IDLE;
        __dst = 19;
        v65 = objc_autoreleasePoolPush();
        v66 = [v16 collection];
        ippReadWithReader(a1, &v112, &__dst, 1, v66);

        objc_autoreleasePoolPop(v65);
        goto LABEL_99;
      case 53:
      case 54:
        if (v29 <= 3)
        {
          if (v13 == 53)
          {
            v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad stringWithLanguage value length %d.", v29];
            IPPIOReader::THROW_FAIL(a1, 485, &cfstr_IppTextwithlan.isa, v83);
          }

          v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad stringWithLanguage value length %d.", v29];
          IPPIOReader::THROW_FAIL(a1, 487, &cfstr_IppNamewithlan.isa, v85);
        }

        v45 = IPPIOReader::autoAlloc(a1, v29 + 1);
        IPPIOReader::read(a1, v45, v29);
        v46 = *v45;
        v47 = v45[1] | (v46 << 8);
        if (v46 > 3 || (v48 = &v45[v29], &v45[v47 + 2] > v48))
        {
          v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad language value length %d.", v47];
          IPPIOReader::THROW_FAIL(a1, 510, &cfstr_IppLanguageLen.isa, v82);
        }

        if (v47 >= 0x40)
        {
          v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad language value length %d.", v47];
          IPPIOReader::THROW_FAIL(a1, 514, &cfstr_IppLanguageLen_0.isa, v81);
        }

        memcpy(&__dst, v45 + 2, v47);
        *(&__dst + v47) = 0;
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:&__dst];
        if (!v49)
        {
          v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: language value length %d.", v47];
          IPPIOReader::THROW_FAIL(a1, 522, &cfstr_IppStringLanga.isa, v80);
        }

        v50 = &v45[v47 + 2];
        v51 = __rev16(*v50);
        if (&v50[v51 + 2] > v48)
        {
          v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad string value length %d.", v51];
          IPPIOReader::THROW_FAIL(a1, 530, &cfstr_IppStringLengt.isa, v79);
        }

        v50[v51 + 2] = 0;
        v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        if (!v52)
        {
          v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: string value length %d.", v51];
          IPPIOReader::THROW_FAIL(a1, 537, &cfstr_IppStringTextI.isa, v78);
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
          v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: endCollection tag with value length > 0."];
          IPPIOReader::THROW_FAIL(a1, 572, &cfstr_IppEndcollecti.isa, v89);
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
          v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: Member name without attribute."];
          IPPIOReader::THROW_FAIL(a1, 586, &cfstr_IppMembernameW.isa, v88);
        }

        if (!__dst)
        {
          v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: Empty member name value."];
          IPPIOReader::THROW_FAIL(a1, 591, &cfstr_IppMembernameV.isa, v87);
        }

        v59 = IPPIOReader::readString(a1, v29, 1);
        [(PK_ipp_attribute_t *)v17 setNSName:v59];

        [(PK_ipp_attribute_t *)v17 toss_last_value];
LABEL_99:

        goto LABEL_100;
      default:
        if (v13 == 48 && __dst == 128)
        {
          v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"ippReadIO: bad octetString value length %d.", 0x8000];
          IPPIOReader::THROW_FAIL(a1, 610, &cfstr_IppOctetstring.isa, v95);
        }

        v34 = [MEMORY[0x277CBEB28] dataWithLength:v29];
        v67 = v34;
        IPPIOReader::read(a1, [v34 bytes], v29);
        [v16 setUnknown:v34];
        goto LABEL_45;
    }

    goto LABEL_101;
  }

  if (v9 == IPP_STATE_HEADER)
  {
LABEL_5:
    v10 = v109;
    if ((a4 & 1) == 0)
    {
      IPPIOReader::read(a1, &__dst, 8uLL);
      [(PK_ipp_t *)v10 setOp_or_status:bswap32(HIWORD(__dst)) >> 16];
      [(PK_ipp_t *)v10 setRequest_id:bswap32(v114)];
    }

    *v110 = IPP_STATE_ATTRIBUTE;
    *a3 = IPP_TAG_ZERO;

    goto LABEL_8;
  }

  if (v9 == IPP_STATE_IDLE)
  {
    *a2 = IPP_STATE_HEADER;
    goto LABEL_5;
  }

LABEL_106:
}

void IPPIOReader::IPPIOReader(IPPIOReader *this, uint64_t (*a2)(void *, unsigned __int8 *, unint64_t), void *a3)
{
  *this = a3;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v4 = objc_opt_new();
  v5 = *(this + 3);
  *(this + 3) = v4;
}

uint64_t IPPIOReader::read(IPPIOReader *this, unsigned __int8 *__b, size_t a3)
{
  memset(__b, 120, a3);
  result = (*(this + 1))(*this, __b, a3);
  if (result != a3)
  {
    v7 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_25F5FC000, v7, OS_LOG_TYPE_ERROR, "Failed to read data from ipp record", v9, 2u);
    }

    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:@"IPPInternal" reason:@"failed to read enough" userInfo:0];
    objc_exception_throw(v8);
  }

  *(this + 2) += a3;
  return result;
}

void IPPIOReader::THROW_FAIL(IPPIOReader *this, uint64_t a2, NSString *a3, NSString *a4)
{
  v20 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_25F5FC000, v8, OS_LOG_TYPE_ERROR, "IPPIOReader: Failure on line %d: %{public}@ - %{public}@", buf, 0x1Cu);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{a2, @"line"}];
  v13[0] = v9;
  v13[1] = v6;
  v12[1] = @"msg";
  v12[2] = @"log";
  v13[2] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v11 = [MEMORY[0x277CBEAD8] exceptionWithName:@"IPPInternal" reason:v6 userInfo:v10];
  objc_exception_throw(v11);
}

id IPPIOReader::readString(id *this, unint64_t a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x101)
  {
    p_b = IPPIOReader::autoAlloc(this, a2);
  }

  else
  {
    p_b = &__b;
  }

  IPPIOReader::read(this, p_b, a2);
  if (a3)
  {
    v7 = internUTF8ByteString(p_b, a2);
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:p_b length:a2 encoding:4];
  }

  if (!v7)
  {
    IPPIOReader::THROW_FAIL(this, 91, &cfstr_InvalidUtf8Byt.isa, &cfstr_InvalidUtf8Byt.isa);
  }

  return v7;
}

uint64_t IPPIOReader::autoAlloc(id *this, unint64_t a2)
{
  if ([this[3] count])
  {
    v4 = [this[3] lastObject];
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

  v7 = [MEMORY[0x277CBEB28] dataWithCapacity:v6];

  v5 = v7;
  [this[3] addObject:v7];
LABEL_10:
  v8 = [v5 length];
  [v5 setLength:v8 + a2];
  v9 = [v5 mutableBytes];

  return v9 + v8;
}

uint64_t withNamedAttrGet<BOOL>(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 _findAttribute0:a2 valueTag:0];
  v7 = v6;
  if (v6 && [v6 num_values])
  {
    v8 = v5[2](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t ___Z12getNamedAttrIbET_P8PK_ipp_tP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 values];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 BOOLean];

  return v4;
}

uint64_t withNamedAttrGet<int>(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 _findAttribute0:a2 valueTag:0];
  v7 = v6;
  if (v6 && [v6 num_values])
  {
    v8 = v5[2](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t ___Z12getNamedAttrIiET_P8PK_ipp_tP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 values];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 integer];

  return v4;
}

uint64_t getNamedAttr<ipp_orient_e>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = withNamedAttrGet<int>(v3, v4, &__block_literal_global_3);
  v6 = validate_enum<ipp_orient_e,unsigned char>(v5);

  return v6;
}

void withNamedAttrGet<ipp_value_range_t>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v9 = a3;
  v7 = [a1 _findAttribute0:a2 valueTag:0];
  v8 = v7;
  if (v7 && [v7 num_values])
  {
    v9[2](v9, v8);
  }

  else
  {
    *a4 = 0;
  }
}

void ___Z12getNamedAttrI17ipp_value_range_tET_P8PK_ipp_tP8NSString_block_invoke(void *a1@<X1>, void *a2@<X8>)
{
  v5 = [a1 values];
  v3 = [v5 objectAtIndexedSubscript:0];
  v4 = v3;
  if (v3)
  {
    [v3 range];
  }

  else
  {
    *a2 = 0;
  }
}

id getNamedAttr<PK_ipp_collection_t * {__strong}>(void *a1, uint64_t a2)
{
  v2 = withNamedAttrGet<PK_ipp_collection_t * {__strong}>(a1, a2, &__block_literal_global_16);

  return v2;
}

id withNamedAttrGet<PK_ipp_collection_t * {__strong}>(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 _findAttribute0:a2 valueTag:0];
  v7 = v6;
  if (v6 && [v6 num_values])
  {
    v8 = v5[2](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id ___Z12getNamedAttrIU8__strongP19PK_ipp_collection_tET_P8PK_ipp_tP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 values];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 collection];

  return v4;
}

id getNamedAttr<NSString * {__strong}>(void *a1, uint64_t a2)
{
  v2 = withNamedAttrGet<NSString * {__strong}>(a1, a2, &__block_literal_global_22);

  return v2;
}

id withNamedAttrGet<NSString * {__strong}>(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 _findAttribute0:a2 valueTag:0];
  v7 = v6;
  if (v6 && [v6 num_values])
  {
    v8 = v5[2](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id ___Z12getNamedAttrIU8__strongP8NSStringET_P8PK_ipp_tS1__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 values];
  if ([v3 count] != 1)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 string];
  v7 = v6;

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = _PKLogCategory(PKLogCategoryFramework);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_25F5FC000, v8, OS_LOG_TYPE_ERROR, "attribute value expected to be a string", v10, 2u);
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v7;
}

id getNamedAttr<NSURL * {__strong}>(void *a1, uint64_t a2)
{
  v2 = getNamedAttr<NSString * {__strong}>(a1, a2);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id getNamedAttr<NSArray<NSString *> * {__strong}>(void *a1, uint64_t a2)
{
  v2 = withNamedAttrGet<NSArray<NSString *> * {__strong}>(a1, a2, &__block_literal_global_26);

  return v2;
}

id withNamedAttrGet<NSArray<NSString *> * {__strong}>(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 _findAttribute0:a2 valueTag:0];
  v7 = v6;
  if (v6 && [v6 num_values])
  {
    v8 = v5[2](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id ___Z12getNamedAttrIU8__strongP7NSArrayIP8NSStringEET_P8PK_ipp_tS2__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___Z12getNamedAttrIU8__strongP7NSArrayIP8NSStringEET_P8PK_ipp_tS2__block_invoke_2;
  v6[3] = &unk_279A8FDD8;
  v4 = v3;
  v7 = v4;
  [v2 enumerateValues:v6];

  return v4;
}

void ___Z12getNamedAttrIU8__strongP7NSArrayIP8NSStringEET_P8PK_ipp_tS2__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v9 = v4;
  v6 = [v4 string];
  v8 = v7;
  [v5 addObject:v7];
}

id getNamedAttr<NSArray<NSNumber *> * {__strong}>(void *a1, uint64_t a2)
{
  v2 = withNamedAttrGet<NSArray<NSNumber *> * {__strong}>(a1, a2, &__block_literal_global_30);

  return v2;
}

id withNamedAttrGet<NSArray<NSNumber *> * {__strong}>(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 _findAttribute0:a2 valueTag:0];
  v7 = v6;
  if (v6 && [v6 num_values])
  {
    v8 = v5[2](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id ___Z12getNamedAttrIU8__strongP7NSArrayIP8NSNumberEET_P8PK_ipp_tP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___Z12getNamedAttrIU8__strongP7NSArrayIP8NSNumberEET_P8PK_ipp_tP8NSString_block_invoke_2;
  v6[3] = &unk_279A8FDD8;
  v4 = v3;
  v7 = v4;
  [v2 enumerateValues:v6];

  return v4;
}

void ___Z12getNamedAttrIU8__strongP7NSArrayIP8NSNumberEET_P8PK_ipp_tP8NSString_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v7 = v4;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "integer")}];
  [v5 addObject:v6];
}

id getNamedAttr<NSArray<NSData *> * {__strong}>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z12getNamedAttrIU8__strongP7NSArrayIP6NSDataEET_P8PK_ipp_tP8NSString_block_invoke;
  v9[3] = &unk_279A8FE28;
  v10 = v4;
  v11 = v3;
  v5 = v3;
  v6 = v4;
  v7 = withNamedAttrGet<NSArray<NSData *> * {__strong}>(v5, v6, v9);

  return v7;
}

id withNamedAttrGet<NSArray<NSData *> * {__strong}>(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 _findAttribute0:a2 valueTag:0];
  v7 = v6;
  if (v6 && [v6 num_values])
  {
    v8 = v5[2](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id ___Z12getNamedAttrIU8__strongP7NSArrayIP6NSDataEET_P8PK_ipp_tP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = ___Z12getNamedAttrIU8__strongP7NSArrayIP6NSDataEET_P8PK_ipp_tP8NSString_block_invoke_2;
  v13 = &unk_279A8FE00;
  v15 = &v16;
  v5 = v4;
  v14 = v5;
  [v3 enumerateValues:&v10];
  if (*(v17 + 24) == 1 && [v5 count])
  {
    v6 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_25F5FC000, v6, OS_LOG_TYPE_ERROR, "Expected ipp record with empty data value to be completely empty for %@ (%@)", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v16, 8);

  return v5;
}

void sub_25F60320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___Z12getNamedAttrIU8__strongP7NSArrayIP6NSDataEET_P8PK_ipp_tP8NSString_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 unknown];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 unknown];
    [v5 addObject:v6];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id getNamedAttr<NSArray<PK_ipp_collection_t *> * {__strong}>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z12getNamedAttrIU8__strongP7NSArrayIP19PK_ipp_collection_tEET_P8PK_ipp_tP8NSString_block_invoke;
  v9[3] = &unk_279A8FE28;
  v10 = v4;
  v11 = v3;
  v5 = v3;
  v6 = v4;
  v7 = withNamedAttrGet<NSArray<PK_ipp_collection_t *> * {__strong}>(v5, v6, v9);

  return v7;
}

id withNamedAttrGet<NSArray<PK_ipp_collection_t *> * {__strong}>(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 _findAttribute0:a2 valueTag:0];
  v7 = v6;
  if (v6 && [v6 num_values])
  {
    v8 = v5[2](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id ___Z12getNamedAttrIU8__strongP7NSArrayIP19PK_ipp_collection_tEET_P8PK_ipp_tP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = ___Z12getNamedAttrIU8__strongP7NSArrayIP19PK_ipp_collection_tEET_P8PK_ipp_tP8NSString_block_invoke_2;
  v13 = &unk_279A8FE00;
  v15 = &v16;
  v5 = v4;
  v14 = v5;
  [v3 enumerateValues:&v10];
  if (*(v17 + 24) == 1 && [v5 count])
  {
    v6 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_25F5FC000, v6, OS_LOG_TYPE_ERROR, "Expected ipp record with empty collection value to be completely empty for %@ (%@)", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v16, 8);

  return v5;
}

void sub_25F603650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___Z12getNamedAttrIU8__strongP7NSArrayIP19PK_ipp_collection_tEET_P8PK_ipp_tP8NSString_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 collection];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 collection];
    [v5 addObject:v6];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

PKMediaSize *getNamedAttr<PKMediaSize * {__strong}>(void *a1, uint64_t a2)
{
  v2 = getNamedAttr<PK_ipp_collection_t * {__strong}>(a1, a2);
  if (v2)
  {
    v3 = [(PKCollectionSpecialization *)[PKMediaSize alloc] initWithCollection:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id getNamedMediaAttrArray(PK_ipp_t *a1, NSString *a2, objc_class *a3)
{
  v4 = [(PK_ipp_t *)a1 _findAttribute0:a2 valueTag:52];
  v5 = v4;
  if (v4 && [v4 num_values])
  {
    v6 = objc_opt_new();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZL22getNamedMediaAttrArrayP8PK_ipp_tP8NSStringP10objc_class_block_invoke;
    v9[3] = &unk_279A8FE50;
    v7 = v6;
    v10 = v7;
    v11 = a3;
    [v5 enumerateValues:v9];
  }

  else
  {
    v7 = [MEMORY[0x277CBEA60] array];
  }

  return v7;
}

id getNamedAttr<NSArray<PKMediaCol *> * {__strong}>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_class();
  v6 = getNamedMediaAttrArray(v3, v4, v5);

  return v6;
}

PKMediaSourceProperties *getNamedAttr<PKMediaSourceProperties * {__strong}>(void *a1, uint64_t a2)
{
  v2 = getNamedAttr<PK_ipp_collection_t * {__strong}>(a1, a2);
  if (v2)
  {
    v3 = [(PKCollectionSpecialization *)[PKMediaSourceProperties alloc] initWithCollection:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id Printd_Parameters::_get_JpegFeaturesSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"jpeg-features-supported");

  return v1;
}

id Printd_Parameters::_get_PrintScalingSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"print-scaling-supported");

  return v1;
}

id Printd_Parameters::_get_PrinterMandatoryJobAttributes(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"printer-mandatory-job-attributes");

  return v1;
}

id Printd_Parameters::_get_PrinterStateReasons(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"printer-state-reasons");

  return v1;
}

double __copy_helper_block_ea8_32c23_ZTS17ipp_value_range_t(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void Printd_Parameters::_get_CopiesSupported(void **this@<X0>, void *a2@<X8>)
{
  v3[3] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  withNamedAttrGet<ipp_value_range_t>(*this, @"copies-supported", &__block_literal_global_6, v3);
  *a2 = v3[0];
}

void Printd_Parameters::_get_JpegKOctetsSupported(void **this@<X0>, void *a2@<X8>)
{
  v3[3] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  withNamedAttrGet<ipp_value_range_t>(*this, @"jpeg-k-octets-supported", &__block_literal_global_6, v3);
  *a2 = v3[0];
}

void Printd_Parameters::_get_JpegXDimensionSupported(void **this@<X0>, void *a2@<X8>)
{
  v3[3] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  withNamedAttrGet<ipp_value_range_t>(*this, @"jpeg-x-dimension-supported", &__block_literal_global_6, v3);
  *a2 = v3[0];
}

void Printd_Parameters::_get_JpegYDimensionSupported(void **this@<X0>, void *a2@<X8>)
{
  v3[3] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  withNamedAttrGet<ipp_value_range_t>(*this, @"jpeg-y-dimension-supported", &__block_literal_global_6, v3);
  *a2 = v3[0];
}

void Printd_Parameters::_get_PdfKOctetsSupported(void **this@<X0>, void *a2@<X8>)
{
  v3[3] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  withNamedAttrGet<ipp_value_range_t>(*this, @"pdf-k-octets-supported", &__block_literal_global_6, v3);
  *a2 = v3[0];
}

id Printd_Parameters::_get_PrinterDeviceId(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"printer-device-id");

  return v1;
}

id Printd_Parameters::_get_PrinterChargeInfoUri(void **this)
{
  v1 = getNamedAttr<NSURL * {__strong}>(*this, @"printer-charge-info-uri");

  return v1;
}

id Printd_Parameters::_get_PrinterMoreInfo(void **this)
{
  v1 = getNamedAttr<NSURL * {__strong}>(*this, @"printer-more-info");

  return v1;
}

id Printd_Parameters::_get_PrinterSupplyInfoURI(void **this)
{
  v1 = getNamedAttr<NSURL * {__strong}>(*this, @"printer-supply-info-uri");

  return v1;
}

id Printd_Parameters::_get_JobPresetsSupported(void **this)
{
  v1 = getNamedAttr<NSArray<PK_ipp_collection_t *> * {__strong}>(*this, @"job-presets-supported");

  return v1;
}

id Printd_Parameters::_get_DocumentFormatSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"document-format-supported");

  return v1;
}

id Printd_Parameters::_get_MediaColSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"media-col-supported");

  return v1;
}

id Printd_Parameters::_get_MediaColReady(void **this)
{
  v1 = getNamedAttr<NSArray<PKMediaCol *> * {__strong}>(*this, @"media-col-ready");

  return v1;
}

id Printd_Parameters::_get_MediaColDatabase(void **this)
{
  v1 = getNamedAttr<NSArray<PKMediaCol *> * {__strong}>(*this, @"media-col-database");

  return v1;
}

id Printd_Parameters::_get_PrintColorModeSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"print-color-mode-supported");

  return v1;
}

id Printd_Parameters::_get_PrintQualitySupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSNumber *> * {__strong}>(*this, @"print-quality-supported");

  return v1;
}

id Printd_Parameters::_get_SidesSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"sides-supported");

  return v1;
}

id Printd_Parameters::_get_FinishingsSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSNumber *> * {__strong}>(*this, @"finishings-supported");

  return v1;
}

id Printd_Parameters::_get_FinishingsColDatabase(void **this)
{
  v1 = getNamedAttr<NSArray<PK_ipp_collection_t *> * {__strong}>(*this, @"finishings-col-database");

  return v1;
}

id Printd_Parameters::_get_OutputBinDefault(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"output-bin-default");

  return v1;
}

id Printd_Parameters::_get_IdentifyActionsSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"identify-actions-supported");

  return v1;
}

id Printd_Parameters::_get_MediaTypeSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"media-type-supported");

  return v1;
}

id Printd_Parameters::_get_OutputBinSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"output-bin-supported");

  return v1;
}

id Printd_Parameters::_get_PrinterOutputTray(void **this)
{
  v1 = getNamedAttr<NSArray<NSData *> * {__strong}>(*this, @"printer-output-tray");

  return v1;
}

id Printd_Parameters::_get_MediaSourceSupported(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"media-source-supported");

  return v1;
}

id Printd_Parameters::_get_PrinterInputTray(void **this)
{
  v1 = getNamedAttr<NSArray<NSData *> * {__strong}>(*this, @"printer-input-tray");

  return v1;
}

id Printd_Parameters::_get_MarkerNames(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"marker-names");

  return v1;
}

id Printd_Parameters::_get_MarkerColors(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"marker-colors");

  return v1;
}

id Printd_Parameters::_get_MarkerTypes(void **this)
{
  v1 = getNamedAttr<NSArray<NSString *> * {__strong}>(*this, @"marker-types");

  return v1;
}

id Printd_Parameters::_get_MarkerLevels(void **this)
{
  v1 = getNamedAttr<NSArray<NSNumber *> * {__strong}>(*this, @"marker-levels");

  return v1;
}

id Printd_Parameters::_get_MarkerHighLevels(void **this)
{
  v1 = getNamedAttr<NSArray<NSNumber *> * {__strong}>(*this, @"marker-high-levels");

  return v1;
}

id Printd_Parameters::_get_MarkerLowLevels(void **this)
{
  v1 = getNamedAttr<NSArray<NSNumber *> * {__strong}>(*this, @"marker-low-levels");

  return v1;
}

id Printd_Parameters::_get_MediaSize(void **this)
{
  v1 = getNamedAttr<PKMediaSize * {__strong}>(*this, @"media-size");

  return v1;
}

id Printd_Parameters::_get_MediaSourceProperties(void **this)
{
  v1 = getNamedAttr<PKMediaSourceProperties * {__strong}>(*this, @"media-source-properties");

  return v1;
}

id Printd_Parameters::_get_MediaSource(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"media-source");

  return v1;
}

id Printd_Parameters::_get_MediaType(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"media-type");

  return v1;
}

id Printd_Parameters::_get_MediaKey(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"media-key");

  return v1;
}

id Printd_Parameters::_get_FeedDirection(void **this)
{
  v1 = getNamedAttr<NSString * {__strong}>(*this, @"media-source-feed-direction");

  return v1;
}

void ___ZL22getNamedMediaAttrArrayP8PK_ipp_tP8NSStringP10objc_class_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 collection];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = objc_alloc(*(a1 + 40));
    v7 = [v9 collection];
    v8 = [v6 initWithCollection:v7];
    [v5 addObject:v8];
  }
}

uint64_t ippWriteIO(void *a1, uint64_t (*a2)(void *, unsigned __int8 *, unint64_t), PK_ipp_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  v13 = IPP_STATE_IDLE;
  v14[0] = IPP_TAG_NOVALUE;
  v7 = 0xFFFFFFFFLL;
  if (a1 && v5)
  {
    v9[0] = a1;
    v9[1] = a2;
    v10 = malloc_type_malloc(0x8001uLL, 0x100004077774924uLL);
    v11 = v10;
    v12 = v10 + 32769;
    ippWriteWithWriter(v9, &v13, v14, 0, v6);
    v7 = 3;
    IPPIOWriter::~IPPIOWriter(v9);
  }

  return v7;
}

void ippWriteWithWriter(IPPIOWriter *a1, ipp_state_e *a2, ipp_tag_e *a3, char a4, PK_ipp_t *a5)
{
  v9 = a5;
  v10 = v9;
  v11 = *a2;
  if (*a2 != IPP_STATE_ATTRIBUTE)
  {
    if (v11 != IPP_STATE_HEADER)
    {
      if (v11)
      {
        goto LABEL_12;
      }

      *a2 = IPP_STATE_HEADER;
    }

    v12 = v9;
    if ((a4 & 1) == 0)
    {
      LOBYTE(v27) = 2;
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v21 = &__block_descriptor_40_e8_v16__0_8l;
      v22 = &v27;
      IPPIOWriter::withBufferN(a1, 1uLL, &v18);
      LOBYTE(v27) = 0;
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v21 = &__block_descriptor_40_e8_v16__0_8l;
      v22 = &v27;
      IPPIOWriter::withBufferN(a1, 1uLL, &v18);
      v13 = [(PK_ipp_t *)v12 op_or_status];
      LOBYTE(v27) = HIBYTE(v13);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v21 = &__block_descriptor_40_e8_v16__0_8l;
      v22 = &v27;
      IPPIOWriter::withBufferN(a1, 1uLL, &v18);
      LOBYTE(v27) = v13;
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v21 = &__block_descriptor_40_e8_v16__0_8l;
      v22 = &v27;
      IPPIOWriter::withBufferN(a1, 1uLL, &v18);
      v14 = [(PK_ipp_t *)v12 request_id];
      LOBYTE(v27) = HIBYTE(v14);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v21 = &__block_descriptor_40_e8_v16__0_8l;
      v22 = &v27;
      IPPIOWriter::withBufferN(a1, 1uLL, &v18);
      LOBYTE(v27) = BYTE2(v14);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v21 = &__block_descriptor_40_e8_v16__0_8l;
      v22 = &v27;
      IPPIOWriter::withBufferN(a1, 1uLL, &v18);
      LOBYTE(v27) = BYTE1(v14);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v21 = &__block_descriptor_40_e8_v16__0_8l;
      v22 = &v27;
      IPPIOWriter::withBufferN(a1, 1uLL, &v18);
      LOBYTE(v27) = v14;
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v21 = &__block_descriptor_40_e8_v16__0_8l;
      v22 = &v27;
      IPPIOWriter::withBufferN(a1, 1uLL, &v18);
    }

    IPPIOWriter::flush(a1);
    *a2 = IPP_STATE_ATTRIBUTE;
    *a3 = IPP_TAG_ZERO;

    IPPIOWriter::flush(a1);
  }

  v15 = v10;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = ___ZL25writeAllCurrentAttributesR11IPPIOWriterR11ipp_state_eR9ipp_tag_eP8PK_ipp_tb_block_invoke;
  v21 = &unk_279A8FE98;
  v26 = a4;
  v23 = a3;
  v24 = a1;
  v25 = a2;
  v16 = v15;
  v22 = v16;
  [(PK_ipp_t *)v16 enumerateAttributes:&v18];
  if (a4)
  {
    v17 = 55;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v30 = &__block_descriptor_40_e8_v16__0_8l;
    v31 = &v17;
    IPPIOWriter::withBufferN(a1, 1uLL, &v27);
    v17 = 0;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v30 = &__block_descriptor_40_e8_v16__0_8l;
    v31 = &v17;
    IPPIOWriter::withBufferN(a1, 1uLL, &v27);
    v17 = 0;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v30 = &__block_descriptor_40_e8_v16__0_8l;
    v31 = &v17;
    IPPIOWriter::withBufferN(a1, 1uLL, &v27);
    v17 = 0;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v30 = &__block_descriptor_40_e8_v16__0_8l;
    v31 = &v17;
    IPPIOWriter::withBufferN(a1, 1uLL, &v27);
    v17 = 0;
  }

  else
  {
    v17 = 3;
  }

  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v30 = &__block_descriptor_40_e8_v16__0_8l;
  v31 = &v17;
  IPPIOWriter::withBufferN(a1, 1uLL, &v27);
  IPPIOWriter::flush(a1);
  *a2 = IPP_STATE_DATA;

  IPPIOWriter::flush(a1);
LABEL_12:
}

uint64_t IPPIOWriter::flush(uint64_t this)
{
  if ((*(this + 24) - *(this + 16)) >= 1)
  {
    v1 = this;
    this = (*(this + 8))(*this);
    if (this <= 0)
    {
      v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"IPPInternal" reason:@"ipp stream write failure" userInfo:0];
      objc_exception_throw(v2);
    }

    *(v1 + 24) = *(v1 + 16);
  }

  return this;
}

void IPPIOWriter::withBufferN(uint64_t a1, size_t a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 24);
  if (&v5[a2] >= *(a1 + 32))
  {
    IPPIOWriter::flush(a1);
    v5 = *(a1 + 24);
    if (&v5[a2] >= *(a1 + 32))
    {
      free(*(a1 + 16));
      v5 = malloc_type_malloc(a2, 0x100004077774924uLL);
      *(a1 + 16) = v5;
      *(a1 + 24) = v5;
      *(a1 + 32) = &v5[a2];
    }
  }

  *(a1 + 24) = &v5[a2];
  v6[2]();
}

void ___ZL25writeAllCurrentAttributesR11IPPIOWriterR11ipp_state_eR9ipp_tag_eP8PK_ipp_tb_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 64) & 1) == 0)
  {
    v5 = **(a1 + 40);
    if (v5 == [(PK_ipp_attribute_t *)v3 group_tag])
    {
      if (![(PK_ipp_attribute_t *)v4 group_tag])
      {
        goto LABEL_32;
      }
    }

    else
    {
      **(a1 + 40) = [(PK_ipp_attribute_t *)v4 group_tag];
      if (![(PK_ipp_attribute_t *)v4 group_tag])
      {
        goto LABEL_32;
      }

      v6 = *(a1 + 48);
      v59 = [(PK_ipp_attribute_t *)v4 group_tag];
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v63 = &__block_descriptor_40_e8_v16__0_8l;
      v64 = &v59;
      IPPIOWriter::withBufferN(v6, 1uLL, &v60);
    }
  }

  if (*(a1 + 64))
  {
    v7 = [(PK_ipp_attribute_t *)v4 name];
    v8 = [v7 length];

    if (v8 >= 32758)
    {
      v57 = [MEMORY[0x277CBEAD8] exceptionWithName:@"IPPInternal" reason:@"'attr.name' value length too large" userInfo:0];
      objc_exception_throw(v57);
    }

    v9 = *(a1 + 48);
    v59 = 74;
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v63 = &__block_descriptor_40_e8_v16__0_8l;
    v64 = &v59;
    IPPIOWriter::withBufferN(v9, 1uLL, &v60);
    v10 = *(a1 + 48);
    v59 = 0;
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v63 = &__block_descriptor_40_e8_v16__0_8l;
    v64 = &v59;
    IPPIOWriter::withBufferN(v10, 1uLL, &v60);
    v11 = *(a1 + 48);
    v59 = 0;
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v63 = &__block_descriptor_40_e8_v16__0_8l;
    v64 = &v59;
    IPPIOWriter::withBufferN(v11, 1uLL, &v60);
    v12 = *(a1 + 48);
    v59 = BYTE1(v8);
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v63 = &__block_descriptor_40_e8_v16__0_8l;
    v64 = &v59;
    IPPIOWriter::withBufferN(v12, 1uLL, &v60);
    v13 = *(a1 + 48);
    v59 = v8;
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v63 = &__block_descriptor_40_e8_v16__0_8l;
    v64 = &v59;
    IPPIOWriter::withBufferN(v13, 1uLL, &v60);
    v14 = *(a1 + 48);
    v15 = [(PK_ipp_attribute_t *)v4 name];
    v16 = [v15 UTF8String];
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriter9addOctetsEPKhm_block_invoke;
    v63 = &__block_descriptor_48_e8_v16__0_8l;
    v64 = v16;
    v65 = v8;
    IPPIOWriter::withBufferN(v14, v8, &v60);

    v17 = [(PK_ipp_attribute_t *)v4 value_tag];
    v18 = *(a1 + 48);
    if (v17 >= 128)
    {
      v59 = 127;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v63 = &__block_descriptor_40_e8_v16__0_8l;
      v64 = &v59;
      IPPIOWriter::withBufferN(v18, 1uLL, &v60);
      v19 = *(a1 + 48);
      v59 = [(PK_ipp_attribute_t *)v4 value_tag]>> 24;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v63 = &__block_descriptor_40_e8_v16__0_8l;
      v64 = &v59;
      IPPIOWriter::withBufferN(v19, 1uLL, &v60);
      v20 = *(a1 + 48);
      v59 = [(PK_ipp_attribute_t *)v4 value_tag]>> 16;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v63 = &__block_descriptor_40_e8_v16__0_8l;
      v64 = &v59;
      IPPIOWriter::withBufferN(v20, 1uLL, &v60);
      v21 = *(a1 + 48);
      v59 = [(PK_ipp_attribute_t *)v4 value_tag]>> 8;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v63 = &__block_descriptor_40_e8_v16__0_8l;
      v64 = &v59;
      IPPIOWriter::withBufferN(v21, 1uLL, &v60);
      v18 = *(a1 + 48);
    }

    v59 = [(PK_ipp_attribute_t *)v4 value_tag];
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v63 = &__block_descriptor_40_e8_v16__0_8l;
    v64 = &v59;
    IPPIOWriter::withBufferN(v18, 1uLL, &v60);
    v34 = *(a1 + 48);
    v59 = 0;
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v63 = &__block_descriptor_40_e8_v16__0_8l;
    v64 = &v59;
    IPPIOWriter::withBufferN(v34, 1uLL, &v60);
    v35 = *(a1 + 48);
    v59 = 0;
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v63 = &__block_descriptor_40_e8_v16__0_8l;
    v64 = &v59;
    IPPIOWriter::withBufferN(v35, 1uLL, &v60);
    IPPIOWriter::flush(*(a1 + 48));
  }

  else
  {
    v22 = [(PK_ipp_attribute_t *)v4 name];
    v23 = [v22 length];

    if (v23 >= 32762)
    {
      v58 = [MEMORY[0x277CBEAD8] exceptionWithName:@"IPPInternal" reason:@"'attr name' value length too large" userInfo:0];
      objc_exception_throw(v58);
    }

    v24 = [(PK_ipp_attribute_t *)v4 value_tag];
    v25 = *(a1 + 48);
    if (v24 >= 128)
    {
      v59 = 127;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v63 = &__block_descriptor_40_e8_v16__0_8l;
      v64 = &v59;
      IPPIOWriter::withBufferN(v25, 1uLL, &v60);
      v26 = *(a1 + 48);
      v59 = [(PK_ipp_attribute_t *)v4 value_tag]>> 24;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v63 = &__block_descriptor_40_e8_v16__0_8l;
      v64 = &v59;
      IPPIOWriter::withBufferN(v26, 1uLL, &v60);
      v27 = *(a1 + 48);
      v59 = [(PK_ipp_attribute_t *)v4 value_tag]>> 16;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v63 = &__block_descriptor_40_e8_v16__0_8l;
      v64 = &v59;
      IPPIOWriter::withBufferN(v27, 1uLL, &v60);
      v28 = *(a1 + 48);
      v59 = [(PK_ipp_attribute_t *)v4 value_tag]>> 8;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v63 = &__block_descriptor_40_e8_v16__0_8l;
      v64 = &v59;
      IPPIOWriter::withBufferN(v28, 1uLL, &v60);
      v25 = *(a1 + 48);
    }

    v59 = [(PK_ipp_attribute_t *)v4 value_tag];
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v63 = &__block_descriptor_40_e8_v16__0_8l;
    v64 = &v59;
    IPPIOWriter::withBufferN(v25, 1uLL, &v60);
    v29 = *(a1 + 48);
    v59 = BYTE1(v23);
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v63 = &__block_descriptor_40_e8_v16__0_8l;
    v64 = &v59;
    IPPIOWriter::withBufferN(v29, 1uLL, &v60);
    v30 = *(a1 + 48);
    v59 = v23;
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v63 = &__block_descriptor_40_e8_v16__0_8l;
    v64 = &v59;
    IPPIOWriter::withBufferN(v30, 1uLL, &v60);
    v31 = *(a1 + 48);
    v32 = [(PK_ipp_attribute_t *)v4 name];
    v33 = [v32 UTF8String];
    v60 = MEMORY[0x277D85DD0];
    v61 = 3221225472;
    v62 = ___ZN11IPPIOWriter9addOctetsEPKhm_block_invoke;
    v63 = &__block_descriptor_48_e8_v16__0_8l;
    v64 = v33;
    v65 = v23;
    IPPIOWriter::withBufferN(v31, v23, &v60);

    IPPIOWriter::flush(*(a1 + 48));
  }

  v36 = [(PK_ipp_attribute_t *)v4 value_tag]- 16;
  v37 = 1023;
  switch(v36)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
      v38 = *(a1 + 48);
      v59 = 0;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v63 = &__block_descriptor_40_e8_v16__0_8l;
      v64 = &v59;
      IPPIOWriter::withBufferN(v38, 1uLL, &v60);
      v39 = *(a1 + 48);
      v59 = 0;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZN11IPPIOWriterlsERKh_block_invoke;
      v63 = &__block_descriptor_40_e8_v16__0_8l;
      v64 = &v59;
      IPPIOWriter::withBufferN(v39, 1uLL, &v60);
      break;
    case 17:
    case 19:
      v40 = *(a1 + 48);
      v41 = v4;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZL20writeIntegersOrEnumsR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke;
      v63 = &unk_279A8FEE0;
      v65 = v40;
      v42 = v41;
      v64 = v42;
      [v42 enumerateValues:&v60];
      IPPIOWriter::flush(v40);
      goto LABEL_28;
    case 18:
      v53 = *(a1 + 48);
      v54 = v4;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZL13writeBooleansR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke;
      v63 = &unk_279A8FEE0;
      v65 = v53;
      v42 = v54;
      v64 = v42;
      [v42 enumerateValues:&v60];
      IPPIOWriter::flush(v53);
LABEL_28:

      break;
    case 33:
      v47 = *(a1 + 48);
      v48 = v4;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZL10writeDatesR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke;
      v63 = &unk_279A8FEE0;
      v64 = v48;
      v65 = v47;
      [(PK_ipp_attribute_t *)v48 enumerateValues:&v60];
      goto LABEL_30;
    case 34:
      v51 = *(a1 + 48);
      v52 = v4;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZL16writeResolutionsR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke;
      v63 = &unk_279A8FEE0;
      v64 = v52;
      v65 = v51;
      [(PK_ipp_attribute_t *)v52 enumerateValues:&v60];
      goto LABEL_30;
    case 35:
      v49 = *(a1 + 48);
      v50 = v4;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZL11writeRangesR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke;
      v63 = &unk_279A8FEE0;
      v64 = v50;
      v65 = v49;
      [(PK_ipp_attribute_t *)v50 enumerateValues:&v60];
      goto LABEL_30;
    case 36:
      v45 = *(a1 + 48);
      v46 = v4;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZL20writeBeginCollectionR11IPPIOWriterR11ipp_state_eR9ipp_tag_eP18PK_ipp_attribute_tP8PK_ipp_t_block_invoke;
      v63 = &unk_279A8FEE0;
      v64 = v46;
      v65 = v45;
      [(PK_ipp_attribute_t *)v46 enumerateValues:&v60];
      goto LABEL_30;
    case 37:
    case 38:
      v43 = *(a1 + 48);
      v44 = v4;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZL14writeTextLangsR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke;
      v63 = &unk_279A8FEE0;
      v64 = v44;
      v65 = v43;
      [(PK_ipp_attribute_t *)v44 enumerateValues:&v60];
      goto LABEL_30;
    case 49:
    case 51:
    case 53:
      goto LABEL_20;
    case 50:
    case 52:
    case 57:
      v37 = 255;
      goto LABEL_20;
    case 54:
    case 55:
    case 56:
      v37 = 63;
LABEL_20:
      writeStrings(*(a1 + 48), v4, v37);
      break;
    default:
      v55 = *(a1 + 48);
      v56 = v4;
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = ___ZL19writeDefaultUnknownR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke;
      v63 = &unk_279A8FEE0;
      v64 = v56;
      v65 = v55;
      [(PK_ipp_attribute_t *)v56 enumerateValues:&v60];
LABEL_30:

      break;
  }

  IPPIOWriter::flush(*(a1 + 48));
LABEL_32:
}

void writeStrings(IPPIOWriter *a1, PK_ipp_attribute_t *a2, uint64_t a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZL12writeStringsR11IPPIOWriterP18PK_ipp_attribute_tm_block_invoke;
  v7[3] = &unk_279A8FF08;
  v8 = v5;
  v9 = a1;
  v10 = a3;
  v6 = v5;
  [(PK_ipp_attribute_t *)v6 enumerateValues:v7];
}

void ___ZL20writeIntegersOrEnumsR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v15 = [*(a1 + 32) value_tag];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v19 = &__block_descriptor_40_e8_v16__0_8l;
    v20 = &v15;
    IPPIOWriter::withBufferN(v6, 1uLL, &v16);
    v7 = *(a1 + 40);
    v15 = 0;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v19 = &__block_descriptor_40_e8_v16__0_8l;
    v20 = &v15;
    IPPIOWriter::withBufferN(v7, 1uLL, &v16);
    v8 = *(a1 + 40);
    v15 = 0;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v19 = &__block_descriptor_40_e8_v16__0_8l;
    v20 = &v15;
    IPPIOWriter::withBufferN(v8, 1uLL, &v16);
  }

  v9 = *(a1 + 40);
  v15 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v19 = &__block_descriptor_40_e8_v16__0_8l;
  v20 = &v15;
  IPPIOWriter::withBufferN(v9, 1uLL, &v16);
  v10 = *(a1 + 40);
  v15 = 4;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v19 = &__block_descriptor_40_e8_v16__0_8l;
  v20 = &v15;
  IPPIOWriter::withBufferN(v10, 1uLL, &v16);
  v11 = *(a1 + 40);
  v15 = [v5 integer] >> 24;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v19 = &__block_descriptor_40_e8_v16__0_8l;
  v20 = &v15;
  IPPIOWriter::withBufferN(v11, 1uLL, &v16);
  v12 = *(a1 + 40);
  v15 = [v5 integer] >> 16;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v19 = &__block_descriptor_40_e8_v16__0_8l;
  v20 = &v15;
  IPPIOWriter::withBufferN(v12, 1uLL, &v16);
  v13 = *(a1 + 40);
  v15 = [v5 integer] >> 8;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v19 = &__block_descriptor_40_e8_v16__0_8l;
  v20 = &v15;
  IPPIOWriter::withBufferN(v13, 1uLL, &v16);
  v14 = *(a1 + 40);
  v15 = [v5 integer];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v19 = &__block_descriptor_40_e8_v16__0_8l;
  v20 = &v15;
  IPPIOWriter::withBufferN(v14, 1uLL, &v16);
}

void ___ZL13writeBooleansR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v12 = [*(a1 + 32) value_tag];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v16 = &__block_descriptor_40_e8_v16__0_8l;
    v17 = &v12;
    IPPIOWriter::withBufferN(v6, 1uLL, &v13);
    v7 = *(a1 + 40);
    v12 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v16 = &__block_descriptor_40_e8_v16__0_8l;
    v17 = &v12;
    IPPIOWriter::withBufferN(v7, 1uLL, &v13);
    v8 = *(a1 + 40);
    v12 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v16 = &__block_descriptor_40_e8_v16__0_8l;
    v17 = &v12;
    IPPIOWriter::withBufferN(v8, 1uLL, &v13);
  }

  v9 = *(a1 + 40);
  v12 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v16 = &__block_descriptor_40_e8_v16__0_8l;
  v17 = &v12;
  IPPIOWriter::withBufferN(v9, 1uLL, &v13);
  v10 = *(a1 + 40);
  v12 = 1;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v16 = &__block_descriptor_40_e8_v16__0_8l;
  v17 = &v12;
  IPPIOWriter::withBufferN(v10, 1uLL, &v13);
  v11 = *(a1 + 40);
  v12 = [v5 BOOLean];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v16 = &__block_descriptor_40_e8_v16__0_8l;
  v17 = &v12;
  IPPIOWriter::withBufferN(v11, 1uLL, &v13);
}

void ___ZL12writeStringsR11IPPIOWriterP18PK_ipp_attribute_tm_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v29 = [*(a1 + 32) value_tag];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v31 = &__block_descriptor_40_e8_v16__0_8l;
    v32 = &v29;
    IPPIOWriter::withBufferN(v6, 1uLL, buf);
    v7 = *(a1 + 40);
    v29 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v31 = &__block_descriptor_40_e8_v16__0_8l;
    v32 = &v29;
    IPPIOWriter::withBufferN(v7, 1uLL, buf);
    v8 = *(a1 + 40);
    v29 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v31 = &__block_descriptor_40_e8_v16__0_8l;
    v32 = &v29;
    IPPIOWriter::withBufferN(v8, 1uLL, buf);
  }

  v9 = [v5 string];
  v11 = v10 == 0;

  if (v11)
  {
    v15 = 0;
  }

  else
  {
    v12 = [v5 string];
    v14 = v13;
    v15 = strlen([v13 UTF8String]);

    if (v15 >= 0x8000)
    {
      v16 = [MEMORY[0x277CBEAD8] exceptionWithName:@"IPPInternal" reason:@"'text' value length too large" userInfo:0];
      objc_exception_throw(v16);
    }
  }

  v17 = *(a1 + 48);
  if (v17 < v15)
  {
    v18 = _PKLogCategory(PKLogCategoryDefault[0]);
    v15 = v17;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v5 string];
      v21 = v20;
      *buf = 136315650;
      *&buf[4] = "writeStrings_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v20;
      *&buf[22] = 1024;
      LODWORD(v31) = v15;
      _os_log_impl(&dword_25F5FC000, v18, OS_LOG_TYPE_ERROR, "%s: truncating %@ to %u octets", buf, 0x1Cu);
    }
  }

  v22 = *(a1 + 40);
  v29 = BYTE1(v15);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v31 = &__block_descriptor_40_e8_v16__0_8l;
  v32 = &v29;
  IPPIOWriter::withBufferN(v22, 1uLL, buf);
  v23 = *(a1 + 40);
  v29 = v15;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v31 = &__block_descriptor_40_e8_v16__0_8l;
  v32 = &v29;
  IPPIOWriter::withBufferN(v23, 1uLL, buf);
  if (v15 >= 1)
  {
    v24 = *(a1 + 40);
    v25 = [v5 string];
    v27 = v26;
    v28 = [v26 UTF8String];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN11IPPIOWriter9addOctetsEPKhm_block_invoke;
    v31 = &__block_descriptor_48_e8_v16__0_8l;
    v32 = v28;
    v33 = v15;
    IPPIOWriter::withBufferN(v24, v15, buf);
  }

  IPPIOWriter::flush(*(a1 + 40));
}

void ___ZL10writeDatesR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    LOBYTE(v21) = [*(a1 + 32) value_tag];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v18 = &__block_descriptor_40_e8_v16__0_8l;
    v19 = &v21;
    IPPIOWriter::withBufferN(v6, 1uLL, &v15);
    v7 = *(a1 + 40);
    LOBYTE(v21) = 0;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v18 = &__block_descriptor_40_e8_v16__0_8l;
    v19 = &v21;
    IPPIOWriter::withBufferN(v7, 1uLL, &v15);
    v8 = *(a1 + 40);
    LOBYTE(v21) = 0;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v18 = &__block_descriptor_40_e8_v16__0_8l;
    v19 = &v21;
    IPPIOWriter::withBufferN(v8, 1uLL, &v15);
  }

  v9 = *(a1 + 40);
  LOBYTE(v21) = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v18 = &__block_descriptor_40_e8_v16__0_8l;
  v19 = &v21;
  IPPIOWriter::withBufferN(v9, 1uLL, &v15);
  v10 = *(a1 + 40);
  LOBYTE(v21) = 11;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v18 = &__block_descriptor_40_e8_v16__0_8l;
  v19 = &v21;
  IPPIOWriter::withBufferN(v10, 1uLL, &v15);
  v11 = *(a1 + 40);
  v12 = [v5 date];
  v22 = v13;
  v23 = v14;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = ___ZN11IPPIOWriter9addOctetsEPKhm_block_invoke;
  v18 = &__block_descriptor_48_e8_v16__0_8l;
  v19 = &v21;
  v20 = 11;
  v21 = v12;
  IPPIOWriter::withBufferN(v11, 0xBuLL, &v15);
  IPPIOWriter::flush(*(a1 + 40));
}

void ___ZL16writeResolutionsR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v21 = [*(a1 + 32) value_tag];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v25 = &__block_descriptor_40_e8_v16__0_8l;
    v26 = &v21;
    IPPIOWriter::withBufferN(v6, 1uLL, &v22);
    v7 = *(a1 + 40);
    v21 = 0;
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v25 = &__block_descriptor_40_e8_v16__0_8l;
    v26 = &v21;
    IPPIOWriter::withBufferN(v7, 1uLL, &v22);
    v8 = *(a1 + 40);
    v21 = 0;
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v25 = &__block_descriptor_40_e8_v16__0_8l;
    v26 = &v21;
    IPPIOWriter::withBufferN(v8, 1uLL, &v22);
  }

  v9 = *(a1 + 40);
  v21 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v25 = &__block_descriptor_40_e8_v16__0_8l;
  v26 = &v21;
  IPPIOWriter::withBufferN(v9, 1uLL, &v22);
  v10 = *(a1 + 40);
  v21 = 9;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v25 = &__block_descriptor_40_e8_v16__0_8l;
  v26 = &v21;
  IPPIOWriter::withBufferN(v10, 1uLL, &v22);
  v11 = *(a1 + 40);
  v21 = [v5 resolution] >> 24;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v25 = &__block_descriptor_40_e8_v16__0_8l;
  v26 = &v21;
  IPPIOWriter::withBufferN(v11, 1uLL, &v22);
  v12 = *(a1 + 40);
  v21 = [v5 resolution] >> 16;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v25 = &__block_descriptor_40_e8_v16__0_8l;
  v26 = &v21;
  IPPIOWriter::withBufferN(v12, 1uLL, &v22);
  v13 = *(a1 + 40);
  v21 = [v5 resolution] >> 8;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v25 = &__block_descriptor_40_e8_v16__0_8l;
  v26 = &v21;
  IPPIOWriter::withBufferN(v13, 1uLL, &v22);
  v14 = *(a1 + 40);
  v21 = [v5 resolution];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v25 = &__block_descriptor_40_e8_v16__0_8l;
  v26 = &v21;
  IPPIOWriter::withBufferN(v14, 1uLL, &v22);
  v15 = *(a1 + 40);
  v21 = [v5 resolution] >> 56;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v25 = &__block_descriptor_40_e8_v16__0_8l;
  v26 = &v21;
  IPPIOWriter::withBufferN(v15, 1uLL, &v22);
  v16 = *(a1 + 40);
  v21 = [v5 resolution] >> 48;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v25 = &__block_descriptor_40_e8_v16__0_8l;
  v26 = &v21;
  IPPIOWriter::withBufferN(v16, 1uLL, &v22);
  v17 = *(a1 + 40);
  v21 = ([v5 resolution] >> 32) >> 8;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v25 = &__block_descriptor_40_e8_v16__0_8l;
  v26 = &v21;
  IPPIOWriter::withBufferN(v17, 1uLL, &v22);
  v18 = *(a1 + 40);
  v21 = [v5 resolution] >> 32;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v25 = &__block_descriptor_40_e8_v16__0_8l;
  v26 = &v21;
  IPPIOWriter::withBufferN(v18, 1uLL, &v22);
  v19 = *(a1 + 40);
  [v5 resolution];
  v21 = v20;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v25 = &__block_descriptor_40_e8_v16__0_8l;
  v26 = &v21;
  IPPIOWriter::withBufferN(v19, 1uLL, &v22);
  IPPIOWriter::flush(*(a1 + 40));
}

void ___ZL11writeRangesR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    LOBYTE(v27) = [*(a1 + 32) value_tag];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v32 = &__block_descriptor_40_e8_v16__0_8l;
    v33 = &v27;
    IPPIOWriter::withBufferN(v6, 1uLL, &v29);
    v7 = *(a1 + 40);
    LOBYTE(v27) = 0;
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v32 = &__block_descriptor_40_e8_v16__0_8l;
    v33 = &v27;
    IPPIOWriter::withBufferN(v7, 1uLL, &v29);
    v8 = *(a1 + 40);
    LOBYTE(v27) = 0;
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v32 = &__block_descriptor_40_e8_v16__0_8l;
    v33 = &v27;
    IPPIOWriter::withBufferN(v8, 1uLL, &v29);
  }

  v9 = *(a1 + 40);
  LOBYTE(v27) = 0;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v32 = &__block_descriptor_40_e8_v16__0_8l;
  v33 = &v27;
  IPPIOWriter::withBufferN(v9, 1uLL, &v29);
  v10 = *(a1 + 40);
  LOBYTE(v27) = 8;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v32 = &__block_descriptor_40_e8_v16__0_8l;
  v33 = &v27;
  IPPIOWriter::withBufferN(v10, 1uLL, &v29);
  v11 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v12 = BYTE3(v27);
  }

  else
  {
    v12 = 0;
    v27 = 0;
  }

  v28 = v12;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v32 = &__block_descriptor_40_e8_v16__0_8l;
  v33 = &v28;
  IPPIOWriter::withBufferN(v11, 1uLL, &v29);
  v13 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v14 = BYTE2(v27);
  }

  else
  {
    v14 = 0;
    v27 = 0;
  }

  v28 = v14;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v32 = &__block_descriptor_40_e8_v16__0_8l;
  v33 = &v28;
  IPPIOWriter::withBufferN(v13, 1uLL, &v29);
  v15 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v16 = v27 >> 8;
  }

  else
  {
    LOBYTE(v16) = 0;
    v27 = 0;
  }

  v28 = v16;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v32 = &__block_descriptor_40_e8_v16__0_8l;
  v33 = &v28;
  IPPIOWriter::withBufferN(v15, 1uLL, &v29);
  v17 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v18 = v27;
  }

  else
  {
    v18 = 0;
    v27 = 0;
  }

  v28 = v18;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v32 = &__block_descriptor_40_e8_v16__0_8l;
  v33 = &v28;
  IPPIOWriter::withBufferN(v17, 1uLL, &v29);
  v19 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v20 = HIBYTE(v27);
  }

  else
  {
    v20 = 0;
    v27 = 0;
  }

  v28 = v20;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v32 = &__block_descriptor_40_e8_v16__0_8l;
  v33 = &v28;
  IPPIOWriter::withBufferN(v19, 1uLL, &v29);
  v21 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v22 = BYTE6(v27);
  }

  else
  {
    v22 = 0;
    v27 = 0;
  }

  v28 = v22;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v32 = &__block_descriptor_40_e8_v16__0_8l;
  v33 = &v28;
  IPPIOWriter::withBufferN(v21, 1uLL, &v29);
  v23 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v24 = HIDWORD(v27) >> 8;
  }

  else
  {
    LOBYTE(v24) = 0;
    v27 = 0;
  }

  v28 = v24;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v32 = &__block_descriptor_40_e8_v16__0_8l;
  v33 = &v28;
  IPPIOWriter::withBufferN(v23, 1uLL, &v29);
  v25 = *(a1 + 40);
  if (v5)
  {
    [v5 range];
    v26 = BYTE4(v27);
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v28 = v26;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v32 = &__block_descriptor_40_e8_v16__0_8l;
  v33 = &v28;
  IPPIOWriter::withBufferN(v25, 1uLL, &v29);
  IPPIOWriter::flush(*(a1 + 40));
}

void ___ZL14writeTextLangsR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v49 = [*(a1 + 32) value_tag];
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v53 = &__block_descriptor_40_e8_v16__0_8l;
    v54 = &v49;
    IPPIOWriter::withBufferN(v6, 1uLL, &v50);
    v7 = *(a1 + 40);
    v49 = 0;
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v53 = &__block_descriptor_40_e8_v16__0_8l;
    v54 = &v49;
    IPPIOWriter::withBufferN(v7, 1uLL, &v50);
    v8 = *(a1 + 40);
    v49 = 0;
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v53 = &__block_descriptor_40_e8_v16__0_8l;
    v54 = &v49;
    IPPIOWriter::withBufferN(v8, 1uLL, &v50);
  }

  v9 = [v5 string];

  if (v9)
  {
    v11 = [v5 string];
    v13 = v12;
    v14 = strlen([v11 UTF8String]) + 4;
  }

  else
  {
    v14 = 4;
  }

  v15 = [v5 string];
  v17 = v16;

  if (v17)
  {
    v18 = [v5 string];
    v20 = v19;
    v14 += strlen([v19 UTF8String]);
  }

  if (v14 >= 0x8000)
  {
    v48 = [MEMORY[0x277CBEAD8] exceptionWithName:@"IPPInternal" reason:@"'text' value length too large" userInfo:0];
    objc_exception_throw(v48);
  }

  v21 = *(a1 + 40);
  v49 = BYTE1(v14);
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v53 = &__block_descriptor_40_e8_v16__0_8l;
  v54 = &v49;
  IPPIOWriter::withBufferN(v21, 1uLL, &v50);
  v22 = *(a1 + 40);
  v49 = v14;
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v53 = &__block_descriptor_40_e8_v16__0_8l;
  v54 = &v49;
  IPPIOWriter::withBufferN(v22, 1uLL, &v50);
  v23 = [v5 string];

  if (v23)
  {
    v25 = [v5 string];
    v27 = v26;
    LODWORD(v23) = strlen([v25 UTF8String]);
  }

  v28 = *(a1 + 40);
  v49 = BYTE1(v23);
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v53 = &__block_descriptor_40_e8_v16__0_8l;
  v54 = &v49;
  IPPIOWriter::withBufferN(v28, 1uLL, &v50);
  v29 = *(a1 + 40);
  v49 = v23;
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v53 = &__block_descriptor_40_e8_v16__0_8l;
  v54 = &v49;
  IPPIOWriter::withBufferN(v29, 1uLL, &v50);
  if (v23 >= 1)
  {
    v30 = *(a1 + 40);
    v31 = [v5 string];
    v33 = v32;
    v34 = [v31 UTF8String];
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = ___ZN11IPPIOWriter9addOctetsEPKhm_block_invoke;
    v53 = &__block_descriptor_48_e8_v16__0_8l;
    v54 = v34;
    v55 = v23;
    IPPIOWriter::withBufferN(v30, v23, &v50);
  }

  v35 = [v5 string];
  v37 = v36;

  if (v37)
  {
    v38 = [v5 string];
    v40 = v39;
    LODWORD(v37) = strlen([v39 UTF8String]);
  }

  v41 = *(a1 + 40);
  v49 = BYTE1(v37);
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v53 = &__block_descriptor_40_e8_v16__0_8l;
  v54 = &v49;
  IPPIOWriter::withBufferN(v41, 1uLL, &v50);
  v42 = *(a1 + 40);
  v49 = v37;
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v53 = &__block_descriptor_40_e8_v16__0_8l;
  v54 = &v49;
  IPPIOWriter::withBufferN(v42, 1uLL, &v50);
  if (v37 >= 1)
  {
    v43 = *(a1 + 40);
    v44 = [v5 string];
    v46 = v45;
    v47 = [v45 UTF8String];
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = ___ZN11IPPIOWriter9addOctetsEPKhm_block_invoke;
    v53 = &__block_descriptor_48_e8_v16__0_8l;
    v54 = v47;
    v55 = v37;
    IPPIOWriter::withBufferN(v43, v37, &v50);
  }

  IPPIOWriter::flush(*(a1 + 40));
}

void ___ZL20writeBeginCollectionR11IPPIOWriterR11ipp_state_eR9ipp_tag_eP18PK_ipp_attribute_tP8PK_ipp_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    LOBYTE(v15) = [*(a1 + 32) value_tag];
    *v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v19 = &__block_descriptor_40_e8_v16__0_8l;
    v20 = &v15;
    IPPIOWriter::withBufferN(v6, 1uLL, v16);
    v7 = *(a1 + 40);
    LOBYTE(v15) = 0;
    *v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v19 = &__block_descriptor_40_e8_v16__0_8l;
    v20 = &v15;
    IPPIOWriter::withBufferN(v7, 1uLL, v16);
    v8 = *(a1 + 40);
    LOBYTE(v15) = 0;
    *v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v19 = &__block_descriptor_40_e8_v16__0_8l;
    v20 = &v15;
    IPPIOWriter::withBufferN(v8, 1uLL, v16);
  }

  v9 = *(a1 + 40);
  LOBYTE(v15) = 0;
  *v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v19 = &__block_descriptor_40_e8_v16__0_8l;
  v20 = &v15;
  IPPIOWriter::withBufferN(v9, 1uLL, v16);
  v10 = *(a1 + 40);
  LOBYTE(v15) = 0;
  *v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v19 = &__block_descriptor_40_e8_v16__0_8l;
  v20 = &v15;
  IPPIOWriter::withBufferN(v10, 1uLL, v16);
  v11 = [v5 collection];

  if (!v11)
  {
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:@"IPPInternal" reason:@"IPP Value nil" userInfo:0];
    objc_exception_throw(v14);
  }

  v15 = IPP_STATE_IDLE;
  v16[0] = IPP_TAG_NOVALUE;
  v12 = *(a1 + 40);
  v13 = [v5 collection];
  ippWriteWithWriter(v12, &v15, v16, 1, v13);

  IPPIOWriter::flush(*(a1 + 40));
}

void ___ZL19writeDefaultUnknownR11IPPIOWriterP18PK_ipp_attribute_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v17 = [*(a1 + 32) value_tag];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v21 = &__block_descriptor_40_e8_v16__0_8l;
    v22 = &v17;
    IPPIOWriter::withBufferN(v6, 1uLL, &v18);
    v7 = *(a1 + 40);
    v17 = 0;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v21 = &__block_descriptor_40_e8_v16__0_8l;
    v22 = &v17;
    IPPIOWriter::withBufferN(v7, 1uLL, &v18);
    v8 = *(a1 + 40);
    v17 = 0;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
    v21 = &__block_descriptor_40_e8_v16__0_8l;
    v22 = &v17;
    IPPIOWriter::withBufferN(v8, 1uLL, &v18);
  }

  v9 = [v5 unknown];
  v10 = [v9 length];

  if (v10 >= 0x8000)
  {
    v16 = [MEMORY[0x277CBEAD8] exceptionWithName:@"IPPInternal" reason:@"'unknown' value length too large" userInfo:0];
    objc_exception_throw(v16);
  }

  v11 = *(a1 + 40);
  v17 = BYTE1(v10);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v21 = &__block_descriptor_40_e8_v16__0_8l;
  v22 = &v17;
  IPPIOWriter::withBufferN(v11, 1uLL, &v18);
  v12 = *(a1 + 40);
  v17 = v10;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = ___ZN11IPPIOWriterlsERKh_block_invoke;
  v21 = &__block_descriptor_40_e8_v16__0_8l;
  v22 = &v17;
  IPPIOWriter::withBufferN(v12, 1uLL, &v18);
  if (v10 >= 1)
  {
    v13 = *(a1 + 40);
    v14 = [v5 unknown];
    v15 = [v14 bytes];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = ___ZN11IPPIOWriter9addOctetsEPKhm_block_invoke;
    v21 = &__block_descriptor_48_e8_v16__0_8l;
    v22 = v15;
    v23 = v10 & 0x7FFFFFFF;
    IPPIOWriter::withBufferN(v13, v23, &v18);
  }

  IPPIOWriter::flush(*(a1 + 40));
}

uint64_t urfWriteLine(uint64_t a1, void *__src, int a3, int a4, int a5)
{
  result = 0;
  if (a1 && a3 >= 1 && a4 >= 1)
  {
    v8 = *(a1 + 80);
    v9 = *(a1 + 40);
    if (v9 <= v8)
    {
      result = 0;
      *(a1 + 112) = "Too many lines in page image";
      return result;
    }

    v11 = __src;
    if (v8 + a4 <= v9)
    {
      v12 = a4;
    }

    else
    {
      v12 = v9 - v8;
    }

    v13 = *(a1 + 72);
    v14 = v12 + v8;
    *(a1 + 80) = v12 + v8;
    v15 = *(a1 + 84);
    __n = v13 / a3;
    if (v15)
    {
      if (*(a1 + 88) == a3)
      {
        v16 = *(a1 + 64);
        if (!memcmp(__src, v16, __n))
        {
          *(a1 + 84) = v15 + v12;
          if (a5)
          {
            *(a1 + 64) = v11;
          }

          else
          {
            v17 = *(a1 + 56);
            if (v16 != v17)
            {
              memcpy(v17, v11, v13);
              *(a1 + 64) = *(a1 + 56);
              v14 = *(a1 + 80);
              v9 = *(a1 + 40);
            }
          }

          if (v14 >= v9)
          {
            while (*(a1 + 84))
            {
              v18 = urf_compress(a1);
              result = 0;
              if (!v18)
              {
                return result;
              }
            }
          }

          return 1;
        }
      }

      while (*(a1 + 84))
      {
        result = urf_compress(a1);
        if (!result)
        {
          return result;
        }
      }
    }

    *(a1 + 84) = v12;
    *(a1 + 88) = a3;
    if (!a5 && *(a1 + 80) < *(a1 + 40))
    {
      memcpy(*(a1 + 56), v11, __n);
      v11 = *(a1 + 56);
    }

    *(a1 + 64) = v11;
    if (*(a1 + 80) >= *(a1 + 40))
    {
      while (*(a1 + 84))
      {
        result = urf_compress(a1);
        if (!result)
        {
          return result;
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t urf_compress(uint64_t a1)
{
  v1 = *(a1 + 24) - 16;
  v2 = v1 > 0x30;
  v3 = (1 << v1) & 0x1000100000001;
  if (v2 || v3 == 0)
  {
    v37 = *(a1 + 84);
    if (v37 >= 0x100)
    {
      v37 = 256;
    }

    v38 = *(a1 + 96);
    *v38 = v37 - 1;
    v39 = v38 + 1;
    v40 = *(a1 + 88);
    *(a1 + 84) -= v37;
    v41 = *(a1 + 72) / v40;
    if (v41 >= 1)
    {
      v42 = *(a1 + 24) >> 3;
      v43 = *(a1 + 64);
      v44 = (v43 + v41);
      v45 = (v43 + v41 - v42);
      if (*(a1 + 25) == 6)
      {
        v46 = 0;
      }

      else
      {
        v46 = 255;
      }

      v74 = v46;
      v72 = 2 * v42;
      v47 = 0x80 / v40;
      while (v74 != *v43 || memcmp(v43, (v43 + 1), &v44[~v43]))
      {
        v48 = (v43 + v42);
        if ((v43 + v42) == v44)
        {
          *v39 = v40 - 1;
          v65 = v39 + 1;
          memcpy(v65, v43, v42);
          v39 = &v65[v42];
          goto LABEL_105;
        }

        v49 = memcmp(v43, (v43 + v42), v42);
        v50 = v48 < v45;
        if (v49)
        {
          if (v40 > 0x40 || v48 >= v45)
          {
            v52 = 1;
            v53 = v40 < 0x41;
          }

          else
          {
            v51 = (v43 + v72);
            v52 = 1;
            while (memcmp(v48, v51, v42))
            {
              v48 += v42;
              ++v52;
              v50 = v51 < v45;
              v53 = v52 < v47;
              if (v52 < v47)
              {
                v23 = v51 >= v45;
                v51 += v42;
                if (!v23)
                {
                  continue;
                }
              }

              goto LABEL_86;
            }

            v53 = 1;
            v50 = 1;
          }

LABEL_86:
          v58 = v50 || !v53;
          if (v58)
          {
            v59 = 0;
          }

          else
          {
            v59 = v42;
          }

          v57 = &v48[v59];
          v60 = v52 + (v58 ^ 1u);
          *v39++ = 1 - v60 * v40;
          if (v40 == 1)
          {
            v61 = v60 * v42;
            memcpy(v39, v43, v61);
            v39 += v61;
          }

          else
          {
            do
            {
              v62 = v40;
              do
              {
                memcpy(v39, v43, v42);
                v39 += v42;
                --v62;
              }

              while (v62);
              v43 += v42;
              --v60;
            }

            while (v60);
          }
        }

        else
        {
          if (v40 > 0x2A || v48 >= v45)
          {
            LOBYTE(v55) = 2;
          }

          else
          {
            v54 = (v43 + v72);
            v55 = 2;
            do
            {
              if (memcmp(v48, v54, v42))
              {
                break;
              }

              v48 += v42;
              if (++v55 >= v47)
              {
                break;
              }

              v23 = v54 >= v45;
              v54 += v42;
            }

            while (!v23);
          }

          *v39 = v55 * v40 - 1;
          v56 = v39 + 1;
          memcpy(v56, v43, v42);
          v39 = &v56[v42];
          v57 = &v48[v42];
        }

        v43 = v57;
        if (v57 >= v44)
        {
          goto LABEL_105;
        }
      }

      *v39++ = 0x80;
    }

LABEL_105:
    v63 = a1;
    v64 = &v39[-*(a1 + 96)];
  }

  else
  {
    v5 = *(a1 + 84);
    if (v5 >= 0x100)
    {
      v5 = 256;
    }

    v6 = *(a1 + 96);
    *v6 = v5 - 1;
    v7 = v6 + 1;
    v8 = *(a1 + 88);
    *(a1 + 84) -= v5;
    v9 = *(a1 + 72) / v8;
    if (v9 < 1)
    {
LABEL_100:
      v28 = v7;
    }

    else
    {
      v10 = *(a1 + 24);
      v11 = v10 >> 4;
      v12 = *(a1 + 64);
      v13 = &v12[v9];
      v14 = &v12[v9 + -2 * (v10 >> 4)];
      if (*(a1 + 25) == 6)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0xFFFF;
      }

      v71 = v15;
      v16 = 2 * v11;
      v68 = 4 * v11;
      v69 = v13 - 2;
      v73 = 0x80 / v8;
      v70 = v13;
      while (1)
      {
        if (v71 == *v12 && !memcmp(v12, v12 + 2, v69 - v12))
        {
          *v7++ = 0x80;
          goto LABEL_100;
        }

        v17 = &v12[2 * v11];
        if (v17 == v13)
        {
          break;
        }

        v18 = memcmp(v12, &v12[2 * v11], 2 * v11);
        v19 = v17 < v14;
        if (v18)
        {
          if (v8 > 0x40 || v17 >= v14)
          {
            LOBYTE(v21) = 1;
            v22 = v8 < 0x41;
          }

          else
          {
            v20 = &v12[v68];
            v21 = 1;
            while (memcmp(v17, v20, 2 * v11))
            {
              ++v21;
              v19 = v20 < v14;
              v17 += v16;
              v22 = v21 < v73;
              if (v21 < v73)
              {
                v23 = v20 >= v14;
                v20 += v16;
                if (!v23)
                {
                  continue;
                }
              }

              goto LABEL_40;
            }

            v22 = 1;
            v19 = 1;
          }

LABEL_40:
          v30 = v19 || !v22;
          if (v30)
          {
            v31 = 0;
          }

          else
          {
            v31 = v10 >> 4;
          }

          v27 = &v17[2 * v31];
          *v7 = 1 - (v21 + (v30 ^ 1)) * v8;
          v28 = v7 + 1;
          if (v12 >= v27)
          {
            v13 = v70;
          }

          else
          {
            v13 = v70;
            do
            {
              v32 = v8;
              do
              {
                if (v10 >= 0x10)
                {
                  v33 = 0;
                  v34 = v28;
                  do
                  {
                    v35 = &v12[2 * v33];
                    *v34 = v35[1];
                    v36 = *v35;
                    v28 = v34 + 2;
                    v34[1] = v36;
                    ++v33;
                    v34 += 2;
                  }

                  while (v11 != v33);
                }

                --v32;
              }

              while (v32);
              v12 += v16;
            }

            while (v12 < v27);
          }
        }

        else
        {
          if (v8 > 0x2A || v17 >= v14)
          {
            LOBYTE(v25) = 2;
          }

          else
          {
            v24 = &v12[v68];
            v25 = 2;
            do
            {
              if (memcmp(v17, v24, 2 * v11))
              {
                break;
              }

              ++v25;
              v17 += v16;
              if (v25 >= v73)
              {
                break;
              }

              v23 = v24 >= v14;
              v24 += v16;
            }

            while (!v23);
          }

          *v7 = v25 * v8 - 1;
          v26 = v7 + 1;
          if (v10 >= 0x10)
          {
            v29 = v11 + 1;
            do
            {
              *v26 = v17[1];
              v27 = v17 + 2;
              v28 = v26 + 2;
              v26[1] = *v17;
              --v29;
              v26 += 2;
              v17 += 2;
            }

            while (v29 > 1);
          }

          else
          {
            v27 = v17;
            v28 = v26;
          }
        }

        v7 = v28;
        v12 = v27;
        if (v27 >= v13)
        {
          goto LABEL_101;
        }
      }

      *v7++ = v8 - 1;
      if (v10 < 0x10)
      {
        goto LABEL_100;
      }

      do
      {
        *v7 = v12[1];
        v28 = v7 + 2;
        v7[1] = *v12;
        v7 += 2;
        v12 += 2;
      }

      while (v12 < v13);
    }

LABEL_101:
    v63 = a1;
    v64 = &v28[-*(a1 + 96)];
    if (v64 > *(a1 + 104))
    {
      urf_compress();
    }
  }

  if ((*v63)(*(v63 + 8)) == v64)
  {
    return 1;
  }

  result = 0;
  *(v63 + 112) = "Unable to write line";
  return result;
}

uint64_t urfWritePage(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      v4 = *(result + 16);
      if (v4 && *(result + 20) >= v4)
      {
        result = 0;
        v9 = "Done writing all pages";
      }

      else
      {
        result = _urfSetLineSize(result, a2);
        if (!result)
        {
          return result;
        }

        v10 = *a2;
        v11 = *(a2 + 2);
        v12 = vrev32_s8(*(a2 + 12));
        v5 = bswap32(*(a2 + 5));
        v14 = 0;
        v13 = v5;
        if ((*v3)(*(v3 + 8), &v10, 32) == 32)
        {
          ++*(v3 + 20);
          *(v3 + 80) = 0;
          v6 = 2 * *(v3 + 72) + 2;
          if (v6 <= *(v3 + 104))
          {
            return 1;
          }

          v7 = *(v3 + 96);
          if (v7)
          {
            v8 = malloc_type_realloc(v7, 2 * *(v3 + 72) + 2, 0x100004077774924uLL);
            if (v8)
            {
LABEL_10:
              *(v3 + 96) = v8;
              *(v3 + 104) = v6;
              return 1;
            }
          }

          else
          {
            v8 = malloc_type_malloc(2 * *(v3 + 72) + 2, 0x100004077774924uLL);
            if (v8)
            {
              goto LABEL_10;
            }
          }

          free(*(v3 + 96));
          result = 0;
          *(v3 + 96) = 0;
          *(v3 + 104) = 0;
          v9 = "Unable to allocate memory for compression buffer";
        }

        else
        {
          result = 0;
          v9 = "Unable to write page header";
        }
      }
    }

    else
    {
      result = 0;
      v9 = "NULL page header";
    }

    *(v3 + 112) = v9;
  }

  return result;
}

uint64_t urfWriteStart(uint64_t result, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    *(result + 16) = a2;
    v3 = 0x54534152494E55;
    v4 = HIBYTE(a2);
    v5 = BYTE2(a2);
    v6 = BYTE1(a2);
    v7 = a2;
    if ((*result)(*(result + 8), &v3, 12) == 12)
    {
      return 1;
    }

    else
    {
      result = 0;
      *(v2 + 112) = "Unable to write file header";
    }
  }

  return result;
}

id getPrintdRPCProtocolInterface(void)
{
  if (getPrintdRPCProtocolInterface(void)::sOnce != -1)
  {
    getPrintdRPCProtocolInterface();
  }

  v1 = getPrintdRPCProtocolInterface(void)::sInterface;

  return v1;
}

void ___Z29getPrintdRPCProtocolInterfacev_block_invoke()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2871B53F0];
  v15[0] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v2 = [v0 classesForSelector:sel_getRecentJobsReply_ argumentIndex:1 ofReply:1];
  v3 = [v2 setByAddingObjectsFromArray:v1];
  [v0 setClasses:v3 forSelector:sel_getRecentJobsReply_ argumentIndex:1 ofReply:1];

  v14 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v5 = [v0 classesForSelector:sel_getJobUpdateStatus_includeThumbnail_reply_ argumentIndex:0 ofReply:1];
  v6 = [v5 setByAddingObjectsFromArray:v4];
  [v0 setClasses:v6 forSelector:sel_getJobUpdateStatus_includeThumbnail_reply_ argumentIndex:0 ofReply:1];

  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v8 = [v0 classesForSelector:sel_browseInfoForPrinter_timeout_reply_ argumentIndex:0 ofReply:0];
  v9 = [v8 setByAddingObjectsFromArray:v7];
  [v0 setClasses:v9 forSelector:sel_browseInfoForPrinter_timeout_reply_ argumentIndex:0 ofReply:0];

  v10 = [v0 classesForSelector:sel_browseInfoForPrinter_timeout_reply_ argumentIndex:0 ofReply:1];
  v11 = [v10 setByAddingObjectsFromArray:v7];
  [v0 setClasses:v11 forSelector:sel_browseInfoForPrinter_timeout_reply_ argumentIndex:0 ofReply:1];

  v12 = getPrintdRPCProtocolInterface(void)::sInterface;
  getPrintdRPCProtocolInterface(void)::sInterface = v0;
}

id getPrintdRPCBrowseProtocolInterface(void)
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2871B3360];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:3];
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = [v0 classesForSelector:sel_browserAdded_removed_ argumentIndex:v2 ofReply:{0, v8, v9}];
    v6 = [v5 setByAddingObjectsFromArray:v1];
    [v0 setClasses:v6 forSelector:sel_browserAdded_removed_ argumentIndex:v2 ofReply:0];

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);

  return v0;
}

void sub_25F60D718(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

const char *ippTagString(int a1)
{
  if (a1 > 74)
  {
    return "UNKNOWN";
  }

  v2 = ipp_tag_names[a1];

  return [(__CFString *)v2 UTF8String];
}

void sub_25F60E218(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + 16) = v2;
  objc_exception_rethrow();
}

void sub_25F60E228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_25F60E4D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25F60E68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

unint64_t _read_cb(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = [*(a1 + 8) length];
  if (v6 - *a1 < a3)
  {
    a3 = v6 - *a1;
  }

  [*(a1 + 8) getBytes:a2 range:?];
  *a1 += a3;
  return a3;
}

void sub_25F60ECAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFString *ipp_lang_code(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 caseInsensitiveCompare:@"c"])
  {
    v2 = [(NSString *)v1 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  }

  else
  {
    v2 = @"en";
  }

  return v2;
}

id __copy_helper_block_ea8_32c24_ZTS18ipp_value_string_t(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c24_ZTS18ipp_value_string_t(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_25F610528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25F6109A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_25F61108C(_Unwind_Exception *a1)
{
  v8 = v3;

  _Unwind_Resume(a1);
}

void ippAddSeparator(PK_ipp_t *a1)
{
  v2 = a1;
  if (v2)
  {
    v1 = [(PK_ipp_t *)v2 addNewEmptyAttribute:0 groupTag:0 valueTag:0];
  }
}

id ippGetIXCollection(PK_ipp_attribute_t *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v5 = [(PK_ipp_attribute_t *)v3 value_tag];
  v6 = 0;
  if ((a2 & 0x80000000) == 0 && v5 == 52)
  {
    v7 = a2;
    if ([(PK_ipp_attribute_t *)v4 num_values]> a2)
    {
      v8 = [(PK_ipp_attribute_t *)v4 values];
      v9 = [v8 objectAtIndexedSubscript:v7];
      v6 = [v9 collection];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

uint64_t ippGetIXInteger(PK_ipp_attribute_t *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  if ([(PK_ipp_attribute_t *)v3 value_tag]== 33)
  {
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = [(PK_ipp_attribute_t *)v4 value_tag];
    v6 = 0;
    if ((a2 & 0x80000000) != 0 || v5 != 35)
    {
      goto LABEL_10;
    }
  }

  v7 = a2;
  if ([(PK_ipp_attribute_t *)v4 num_values]<= a2)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v8 = [(PK_ipp_attribute_t *)v4 values];
  v9 = [v8 objectAtIndexedSubscript:v7];
  v6 = [v9 integer];

LABEL_10:
  return v6;
}

uint64_t ippGetIXRange(PK_ipp_attribute_t *a1, unsigned int a2, int *a3)
{
  v5 = a1;
  v6 = v5;
  if (v5 && (v7 = [(PK_ipp_attribute_t *)v5 value_tag], (a2 & 0x80000000) == 0) && v7 == 51 && [(PK_ipp_attribute_t *)v6 num_values]> a2)
  {
    if (a3)
    {
      v8 = [(PK_ipp_attribute_t *)v6 values];
      v9 = [v8 objectAtIndexedSubscript:a2];
      v10 = v9;
      if (v9)
      {
        [v9 range];
        v11 = v18;
      }

      else
      {
        v11 = 0;
        v17 = 0;
      }

      *a3 = v11;
    }

    v13 = [(PK_ipp_attribute_t *)v6 values];
    v14 = [v13 objectAtIndexedSubscript:a2];
    v15 = v14;
    if (v14)
    {
      [v14 range];
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  return v12;
}

id ippGetIXString(PK_ipp_attribute_t *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && (a2 & 0x80000000) == 0)
  {
    v6 = a2;
    if ([(PK_ipp_attribute_t *)v3 num_values]> a2 && ((v7 = [(PK_ipp_attribute_t *)v4 value_tag], (v7 - 55) > 0xFFFFFFFD) || (v7 - 74) >= 0xFFFFFFF7))
    {
      v8 = [(PK_ipp_attribute_t *)v4 values];
      v9 = [v8 objectAtIndexedSubscript:v6];
      v10 = [v9 string];
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

BOOL ippCoerceAttrToValue(PK_ipp_t *a1, PK_ipp_attribute_t *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_11;
  }

  if ([(PK_ipp_attribute_t *)v6 value_tag]== a3)
  {
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  v9 = [(PK_ipp_attribute_t *)v7 value_tag];
  v8 = 0;
  if (a3 > 50)
  {
    if (a3 <= 53)
    {
      if (a3 == 51)
      {
        if (v9 == 33)
        {
          v13 = [(PK_ipp_attribute_t *)v7 num_values];
          if (v13)
          {
            v14 = 0;
            do
            {
              v15 = [(PK_ipp_attribute_t *)v7 values];
              v16 = [v15 objectAtIndexedSubscript:v14];
              v17 = [v16 integer];

              v18 = [(PK_ipp_attribute_t *)v7 values];
              v19 = [v18 objectAtIndexedSubscript:v14];
              v52[0] = v17;
              v52[1] = v17;
              [v19 setRange:v52];

              ++v14;
            }

            while (v13 != v14);
          }

          [(PK_ipp_attribute_t *)v7 setValueTag:51];
          goto LABEL_10;
        }

        goto LABEL_41;
      }

      if (a3 != 53)
      {
        goto LABEL_11;
      }

      if (v9 != 65)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (a3 != 54)
      {
        if (a3 != 66)
        {
          if (a3 == 68)
          {
            v8 = v9 == 66 || v9 == 54;
          }

          goto LABEL_11;
        }

        if (v9 == 68)
        {
          a3 = 66;
LABEL_9:
          [(PK_ipp_attribute_t *)v7 setValueTag:a3];
          goto LABEL_10;
        }

LABEL_41:
        v8 = 0;
        goto LABEL_11;
      }

      if (v9 != 66 && v9 != 68)
      {
        goto LABEL_41;
      }
    }

    v20 = [(PK_ipp_t *)v5 attrs];
    if ([v20 count] >= 3)
    {
      v21 = [(PK_ipp_t *)v5 attrs];
      v22 = [v21 objectAtIndexedSubscript:1];
      v23 = [v22 name];
      if ([v23 compare:@"attributes-natural-language"])
      {
        v24 = [(PK_ipp_t *)v5 attrs];
        v25 = v5;
        v26 = [v24 objectAtIndexedSubscript:0];
        if ([v26 value_tag] == 72)
        {
          v27 = [(PK_ipp_t *)v25 attrs];
          v28 = [v27 objectAtIndexedSubscript:0];
          v50 = [v28 num_values];

          v5 = v25;
          if (v50)
          {
            v29 = [(PK_ipp_t *)v25 attrs];
            v30 = [v29 objectAtIndexedSubscript:1];

            if ([v30 num_values])
            {
              v31 = [v30 values];
              v32 = [v31 objectAtIndexedSubscript:0];
              v33 = [v32 string];
              v51 = v34;
            }

            else
            {
              v51 = 0;
            }

            goto LABEL_46;
          }

LABEL_45:
          v35 = [MEMORY[0x277CBEAF8] currentLocale];
          v30 = [v35 objectForKey:*MEMORY[0x277CBE6C8]];

          v51 = ipp_lang_code(v30);
LABEL_46:

          v36 = [(PK_ipp_attribute_t *)v7 num_values];
          if (v36)
          {
            v37 = 0;
            do
            {
              v38 = [(PK_ipp_attribute_t *)v7 values];
              v39 = [v38 objectAtIndexedSubscript:v37];
              v40 = [v39 string];
              v42 = v41;

              v43 = v51;
              v44 = [(PK_ipp_attribute_t *)v7 values];
              v45 = v5;
              v46 = [v44 objectAtIndexedSubscript:v37];
              v47 = v43;
              v48 = v42;
              v49 = v48;
              if (v46)
              {
                [v46 setString:{v51, v42}];
              }

              else
              {
              }

              ++v37;
              v5 = v45;
            }

            while (v36 != v37);
          }

          [(PK_ipp_attribute_t *)v7 setValueTag:54];

          goto LABEL_10;
        }

        v5 = v25;
      }
    }

    goto LABEL_45;
  }

  if ((a3 - 16) < 4 || (a3 - 21) < 3)
  {
    if ([(PK_ipp_attribute_t *)v7 num_values])
    {
      v10 = [(PK_ipp_attribute_t *)v7 values];
      [v10 removeAllObjects];
    }

    goto LABEL_9;
  }

LABEL_11:

  return v8;
}

uint64_t validate_enum<ipp_tag_e,unsigned char>(int a1)
{
  result = 0xFFFFFFFFLL;
  switch(a1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 20:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
      return result;
    case 16:
      result = 16;
      break;
    case 17:
      result = 17;
      break;
    case 18:
      result = 18;
      break;
    case 19:
      result = 19;
      break;
    case 21:
      result = 21;
      break;
    case 22:
      result = 22;
      break;
    case 23:
      result = 23;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    default:
      if (a1 == 127)
      {
        result = 127;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      break;
  }

  return result;
}

uint64_t validate_enum<ipp_res_e,unsigned char>(int a1)
{
  if (a1 == 3)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t validate_enum<ipp_orient_e,unsigned char>(char a1)
{
  if (((a1 - 4) & 0xFC) != 0)
  {
    return 3;
  }

  else
  {
    return (a1 - 4) + 4;
  }
}

void ___ZL17pretty_data_linesP6NSData_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"  %@", a2];
  [v2 addObject:?];
}

id PKLocalizedString(NSString *a1, const char *a2)
{
  v2 = a1;
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.PrintKit"];
  v4 = [v3 localizedStringForKey:v2 value:v2 table:@"Localizable"];

  return v4;
}

void urfDelete(void *a1)
{
  if (a1)
  {
    v2 = a1[7];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[12];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[15];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

uint64_t urfErrorString(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

void *urfNew(uint64_t a1, uint64_t a2)
{
  result = malloc_type_calloc(1uLL, 0x90uLL, 0x10D00403A2F05C1uLL);
  if (result)
  {
    *result = a1;
    result[1] = a2;
  }

  return result;
}

uint64_t _urfSetLineSize(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *(a1 + 40) = *(a2 + 1);
  *(a1 + 24) = v3;
  *(a1 + 72) = 0;
  *(a1 + 112) = 0;
  v4 = a2[1];
  if (v4 <= 3)
  {
    if (a2[1] > 1u)
    {
      if (v4 == 2)
      {
        v5 = *a2;
        if (v5 != 32)
        {
          goto LABEL_28;
        }

        goto LABEL_31;
      }

      if (v4 != 3)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    if (a2[1])
    {
      v5 = *a2;
      if (v5 != 24)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }

LABEL_19:
    v5 = *a2;
    if (v5 != 8 && v5 != 16)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  if (a2[1] <= 5u)
  {
    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_18;
      }

LABEL_14:
      v5 = *a2;
      if (v5 != 24)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (v4 != 6)
  {
    if (v4 != 7)
    {
      if (v4 == 8)
      {
        v5 = *a2;
        if (v5 == 16)
        {
          goto LABEL_31;
        }

LABEL_28:
        result = 0;
        v7 = "Bad bitsPerPixel in page header";
        goto LABEL_48;
      }

LABEL_18:
      result = 0;
      v7 = "Bad colorSpace in page header";
      goto LABEL_48;
    }

    v5 = *a2;
LABEL_30:
    if (v5 == 48)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v5 = *a2;
  if (v5 != 32 && v5 != 64)
  {
    goto LABEL_28;
  }

LABEL_31:
  if (a2[2] < 4u)
  {
    v9 = a2[3];
    if (v9 > 5 || v9 - 1 <= 1)
    {
      result = 0;
      v7 = "Bad printQuality in page header";
    }

    else
    {
      v10 = *(a2 + 3);
      if (v10)
      {
        if (*(a2 + 4))
        {
          if (*(a2 + 5))
          {
            v11 = v5 >> 3;
            v12 = v10 * v11;
            v13 = *(a1 + 56);
            if (v13)
            {
              v14 = malloc_type_realloc(v13, v10 * v11, 0x100004077774924uLL);
            }

            else
            {
              v14 = malloc_type_malloc(v10 * v11, 0x100004077774924uLL);
            }

            if (v14)
            {
              *(a1 + 56) = v14;
              *(a1 + 72) = v12;
              return 1;
            }

            free(*(a1 + 56));
            result = 0;
            *(a1 + 56) = 0;
            *(a1 + 72) = 0;
            v7 = "Unable to allocate memory for line buffer";
          }

          else
          {
            result = 0;
            v7 = "Bad resolution in page header";
          }
        }

        else
        {
          result = 0;
          v7 = "Bad height in page header";
        }
      }

      else
      {
        result = 0;
        v7 = "Bad width in page header";
      }
    }
  }

  else
  {
    result = 0;
    v7 = "Bad duplexMode in page header";
  }

LABEL_48:
  *(a1 + 112) = v7;
  return result;
}

CGFloat _lite_page_transform@<D0>(CGRect a1@<0:D0, 8:D1, 16:D2, 24:D3>, unint64_t a2@<X0>, unint64_t a3@<X1>, int a4@<W2>, int a5@<W3>, int a6@<W4>, uint64_t a7@<X8>)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (a6)
  {
    v16 = a3;
  }

  else
  {
    v16 = a2;
  }

  v17 = v16 * -0.5;
  if (a6)
  {
    v18 = a2;
  }

  else
  {
    v18 = a3;
  }

  CGAffineTransformMakeTranslation(&v38, v17, v18 * -0.5);
  if (a4 <= 4)
  {
    switch(a4)
    {
      case 2:
        v36 = 0uLL;
        v19 = xmmword_25F6493F0;
        break;
      case 3:
        v36 = 0uLL;
        v19 = xmmword_25F649410;
        break;
      case 4:
        v36 = 0uLL;
        v19 = xmmword_25F649410;
        v20 = xmmword_25F6493E0;
        goto LABEL_26;
      default:
        goto LABEL_19;
    }

    v20 = xmmword_25F649400;
    goto LABEL_26;
  }

  if (a4 > 6)
  {
    if (a4 == 7)
    {
      v36 = 0uLL;
      v19 = xmmword_25F6493E0;
      goto LABEL_23;
    }

    if (a4 == 8)
    {
      v36 = 0uLL;
      v19 = xmmword_25F649400;
LABEL_23:
      v20 = xmmword_25F6493F0;
      goto LABEL_26;
    }

LABEL_19:
    v20 = *MEMORY[0x277CBF2C0];
    v19 = *(MEMORY[0x277CBF2C0] + 16);
    v36 = *(MEMORY[0x277CBF2C0] + 32);
    goto LABEL_26;
  }

  v36 = 0uLL;
  if (a4 == 5)
  {
    v19 = xmmword_25F649400;
  }

  else
  {
    v19 = xmmword_25F6493E0;
  }

  v20 = xmmword_25F649410;
LABEL_26:
  v31 = v20;
  v32 = v19;
  if (a5 == 1 || a5 == -1)
  {
    memset(&v39, 0, sizeof(v39));
    CGAffineTransformMakeRotation(&v39, a5 * 3.14159265 * 0.5);
    *&t1.a = v31;
    *&t1.c = v32;
    *&t1.tx = v36;
    t2 = v39;
    CGAffineTransformConcat(&v37, &t1, &t2);
    v31 = *&v37.a;
    v32 = *&v37.c;
    v36 = *&v37.tx;
  }

  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MinY = CGRectGetMinY(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v23 = CGRectGetWidth(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v24 = CGRectGetHeight(v43);
  v25 = v23 / a2;
  if (v25 >= v24 / a3)
  {
    v25 = v24 / a3;
  }

  CGAffineTransformMakeScale(&v39, v25, v25);
  CGAffineTransformMakeTranslation(&v37, MinX + v23 * 0.5, MinY + v24 * 0.5);
  t1 = v38;
  *&t2.a = v31;
  *&t2.c = v32;
  *&t2.tx = v36;
  CGAffineTransformConcat(a7, &t1, &t2);
  v26 = *(a7 + 16);
  *&t2.a = *a7;
  *&t2.c = v26;
  *&t2.tx = *(a7 + 32);
  v33 = v39;
  CGAffineTransformConcat(&t1, &t2, &v33);
  v27 = *&t1.c;
  *a7 = *&t1.a;
  *(a7 + 16) = v27;
  *(a7 + 32) = *&t1.tx;
  v28 = *(a7 + 16);
  *&t2.a = *a7;
  *&t2.c = v28;
  *&t2.tx = *(a7 + 32);
  v33 = v37;
  CGAffineTransformConcat(&t1, &t2, &v33);
  v29 = *&t1.c;
  *a7 = *&t1.a;
  *(a7 + 16) = v29;
  result = t1.tx;
  *(a7 + 32) = *&t1.tx;
  return result;
}

void _liteDrawImageToSheet(CGContext *a1, CGImageRef image, int a3, CGSize a4, CGRect a5)
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.height;
  v10 = a4.width;
  v14 = CGImageGetWidth(image);
  v15 = CGImageGetHeight(image);
  v16 = v15;
  if (x <= v10 - (x + width))
  {
    v17 = v10 - (x + width);
  }

  else
  {
    v17 = x;
  }

  if (v9 - (y + height) <= y)
  {
    v18 = y;
  }

  else
  {
    v18 = v9 - (y + height);
  }

  if (a3 <= 4)
  {
    v19 = v14;
  }

  else
  {
    v19 = v15;
  }

  if (a3 <= 4)
  {
    v20 = v15;
  }

  else
  {
    v20 = v14;
  }

  v21 = v20;
  v22 = v19;
  v23 = v10 > v9 && v22 < v21;
  if (v23 || v10 < v9 && v22 > v21)
  {
    v24 = v17;
    v25 = v10;
  }

  else
  {
    v24 = v18;
    v18 = v17;
    v25 = v9;
    v9 = v10;
  }

  if (v18 == 0.0 && v24 == 0.0 && v20 < 2 * v19 && 2 * v20 > v19 && (v9 >= v22 ? (v26 = v25 < v21) : (v26 = 1), !v26))
  {
    v27 = 1;
    v28 = v9;
    v29 = v25;
  }

  else
  {
    v27 = 0;
    v28 = v9 - v18 - v18;
    v29 = v25 - v24 - v24;
  }

  v30 = v28 / v22;
  v31 = v29 / v21;
  if (v30 <= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  if (v30 >= v31)
  {
    v30 = v31;
  }

  if (v27)
  {
    v30 = v32;
  }

  v33 = (v9 - v22 * v30) * 0.5;
  v34 = (v25 - v21 * v30) * 0.5;
  v35 = v30 * v22;
  v36 = v30 * v21;
  CGContextSaveGState(a1);
  v38.origin.x = v33;
  v38.origin.y = v34;
  v38.size.width = v35;
  v38.size.height = v36;
  _lite_page_transform(v38, v19, v20, a3, 0, a3 > 4, &v37);
  CGContextConcatCTM(a1, &v37);
  v39.size.width = v14;
  v39.size.height = v16;
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  CGContextDrawImage(a1, v39, image);
  CGContextRestoreGState(a1);
}

uint64_t liteFigureOutDriverSetupInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a2 + 2040);
  *(a2 + 2040) = @"application/octet-stream";

  v46 = v5;
  if (!v5)
  {
    v10 = 0;
    v8 = 0;
    v12 = 0;
LABEL_31:
    *(a2 + 120) |= 3u;
    *(a2 + 972) = vdupq_n_s32(0x27Bu);
    *(a2 + 988) = xmmword_25F649420;
    *(a2 + 2020) = 0x2580000012CLL;
    v25 = 1;
    *(a2 + 128) = 1;
    *(a2 + 1988) = xmmword_25F649430;
LABEL_32:
    *a1 |= *(a2 + 120);
    objc_storeStrong((a1 + 32), *(a2 + 2040));
    v26 = objc_opt_new();
    v27 = *(a1 + 8);
    *(a1 + 8) = v26;

    [*(a1 + 8) addObject:@"application/octet-stream"];
    [*(a1 + 8) addObjectsFromArray:*(a1 + 16)];
    if (((v25 | [*(a1 + 8) containsObject:@"application/pdf"] | v8) & 1) == 0)
    {
      [*(a1 + 8) addObject:@"application/pdf"];
    }

    if (((v25 | [*(a1 + 8) containsObject:{@"image/jpeg", v41, v42}] | v10) & 1) == 0)
    {
      [*(a1 + 8) addObject:@"image/jpeg"];
    }

    if (((v25 | [*(a1 + 8) containsObject:@"image/png"] | v12) & 1) == 0)
    {
      [*(a1 + 8) addObject:@"image/png"];
    }

    if (((v25 | [*(a1 + 8) containsObject:@"image/urf"]) & 1) == 0)
    {
      [*(a1 + 8) addObject:@"image/urf"];
    }

    v28 = *(a2 + 1508);
    if (v28 >= 21590)
    {
      v29 = *(a2 + 1512);
      if (v29 < 27940)
      {
LABEL_44:
        if (v29 >= 15240)
        {
          *(a2 + 988) = 5;
        }
      }
    }

    else if (v28 >= 10160)
    {
      v29 = *(a2 + 1512);
      goto LABEL_44;
    }

    if (*(a2 + 140) < 1)
    {
LABEL_68:
      if (*(a2 + 548))
      {
        v35 = objc_opt_new();
        if (*(a2 + 548) >= 1)
        {
          v36 = 0;
          do
          {
            v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:MediaSourceStrings[*(a2 + 752 + 4 * v36)]];
            [v35 addObject:v37];

            ++v36;
          }

          while (v36 < *(a2 + 548));
        }

        v38 = *(a1 + 24);
        *(a1 + 24) = v35;
      }

      else
      {
        v38 = *(a1 + 24);
        *(a1 + 24) = &unk_2871ADA78;
      }

      v39 = 1;
      goto LABEL_75;
    }

    v30 = 0;
    while (1)
    {
      v31 = *(a2 + 144 + 4 * v30);
      if ((v31 & 0xFFFFFFFC) == 0x14 || ((v31 - 28) >= 8 ? (v32 = v31 == 4) : (v32 = 1), v32))
      {
        v33 = 64;
      }

      else if (v31 != 5 && (v31 - 70) >= 0x14)
      {
        if (v31 == 6)
        {
          v33 = 16;
        }

        else
        {
          if (v31 != 7 && (v31 - 50) > 3)
          {
            goto LABEL_56;
          }

          v33 = 8;
        }
      }

      else
      {
        v33 = 32;
      }

      *a1 |= v33;
LABEL_56:
      if (++v30 >= *(a2 + 140))
      {
        goto LABEL_68;
      }
    }
  }

  v7 = [v5 objectForKey:@"TEST-NO-PDF"];
  v8 = v7 != 0;

  v9 = [v5 objectForKey:@"TEST-NO-JPEG"];
  v10 = v9 != 0;

  v11 = [v5 objectForKey:@"TEST-NO-PNG"];
  v12 = v11 != 0;

  v13 = [v5 objectForKeyedSubscript:@"COMMAND SET"];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = [v5 objectForKeyedSubscript:@"CMD"];
    if (!v14)
    {
      v45 = [MEMORY[0x277CBEA60] array];
      v14 = 0;
      v15 = [v45 count];
      goto LABEL_7;
    }
  }

  v45 = [v14 componentsSeparatedByString:{@", "}];

  v15 = [v45 count];
LABEL_7:
  if (!v15)
  {

    goto LABEL_31;
  }

  v16 = objc_opt_new();
  v43 = v8;
  v17 = *(a1 + 16);
  *(a1 + 16) = v16;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = v45;
  v44 = v14;
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v52 count:16];
  v41 = __PAIR64__(v12, v10);
  v42 = a2;
  v20 = 0;
  if (!v19)
  {
    goto LABEL_27;
  }

  v21 = *v49;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v49 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v48 + 1) + 8 * i);
      if (![v23 caseInsensitiveCompare:{@"URF", v41, v42}])
      {
        v20 = liteInitURF;
        [*(a1 + 16) addObject:@"image/urf"];
        continue;
      }

      if (![v23 caseInsensitiveCompare:@"PDF"])
      {
        v24 = @"application/pdf";
LABEL_24:
        [*(a1 + 16) addObject:v24];
        continue;
      }

      if (![v23 caseInsensitiveCompare:@"JPEG"])
      {
        v24 = @"image/jpeg";
        goto LABEL_24;
      }

      if (![v23 caseInsensitiveCompare:@"PNG"])
      {
        v24 = @"image/png";
        goto LABEL_24;
      }

      if ([v23 caseInsensitiveCompare:@"application/octet-stream"] && objc_msgSend(v23, "containsString:", @"/"))
      {
        [*(a1 + 16) addObject:v23];
      }
    }

    v19 = [v18 countByEnumeratingWithState:&v48 objects:v52 count:16];
  }

  while (v19);
LABEL_27:

  a2 = v42;
  v10 = v41;
  v12 = HIDWORD(v41);
  v8 = v43;

  if (!v20)
  {
    goto LABEL_31;
  }

  if ((v20)(v46, v42, 1))
  {
    v25 = 0;
    goto LABEL_32;
  }

  v38 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_25F5FC000, v38, OS_LOG_TYPE_ERROR, "Driver initialization failed.", buf, 2u);
  }

  v39 = 0;
LABEL_75:

  return v39;
}

char **pwgMediaForPWG(void *a1, char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  PWGMedia = 0;
  if (v3)
  {
    if (a2)
    {
      bzero(a2, 0x90uLL);
      PWGMedia = MediaArray::findPWGMedia(v3, v5);
      if (!PWGMedia)
      {
        v6 = [(MediaArray *)v3 UTF8String];
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
        v10 = v8 + 1;
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

        v14 = pwg_scan_measurement(v10, &v20, v13, 1);
        if (v20 && *v20 == 120 && (v15 = v14, v16 = pwg_scan_measurement(v20 + 1, &v20, v13, 1), v20))
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

          *(a2 + 6) = v18;
          *(a2 + 7) = v17;
          strlcpy(a2 + 32, v6, 0x41uLL);
          *a2 = a2 + 32;
          if (v12)
          {
            pwg_format_millimeters(__str, 0x20uLL, v18);
            pwg_format_millimeters(v21, 0x20uLL, v17);
            snprintf(a2 + 97, 0x29uLL, "%sx%smm");
          }

          else
          {
            pwg_format_inches(__str, 0x20uLL, v18);
            pwg_format_inches(v21, 0x20uLL, v17);
            snprintf(a2 + 97, 0x29uLL, "%sx%s");
          }

          *(a2 + 2) = a2 + 97;
          PWGMedia = a2;
        }

        else
        {
LABEL_24:
          PWGMedia = 0;
        }
      }
    }
  }

  return PWGMedia;
}

char **MediaArray::findPWGMedia(MediaArray *this, NSString *a2)
{
  v2 = this;
  Media = MediaArray::findMedia([(MediaArray *)v2 UTF8String], &__block_literal_global_537);

  return Media;
}

uint64_t pwg_scan_measurement(char *a1, char **a2, int a3, int a4)
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

    a1 = (v9 - 1);
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

char *pwg_format_millimeters(char *__str, size_t a2, int a3)
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

char *pwg_format_inches(char *__str, size_t a2, int a3)
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

char *pwgMediaForSize(const char *a1, uint64_t a2, char *a3)
{
  result = 0;
  v23 = *MEMORY[0x277D85DE8];
  if (a1 >= 1 && a2 >= 1 && a3)
  {
    bzero(a3, 0x90uLL);
    result = 0;
    v9 = 999;
    v10 = 177;
    v11 = 999;
    v12 = &cups_pwg_media;
    do
    {
      v13 = *(v12 + 7);
      v14 = *(v12 + 6) - a1;
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13 == a2;
      }

      if (v15)
      {
        return v12;
      }

      v16 = v13 - a2;
      if (v16 < 0)
      {
        v16 = -v16;
      }

      if (v14 < 0)
      {
        v14 = a1 - *(v12 + 6);
      }

      if (v14 <= 0x32 && v16 <= 0x32 && v14 <= v11 && v16 <= v9)
      {
        result = v12;
        v11 = v14;
        v9 = v16;
      }

      v12 += 4;
      --v10;
    }

    while (v10 > 1);
    if (!result)
    {
      pwgFormatSizeName(a3 + 32, "custom", 0, a1, a2, v7, v8);
      *a3 = a3 + 32;
      *(a3 + 6) = a1;
      *(a3 + 7) = a2;
      if ((a2 % 0x27B) | (a1 % 0x27B))
      {
        pwg_format_millimeters(__str, 0x20uLL, a1);
        pwg_format_millimeters(v21, 0x20uLL, a2);
        snprintf(a3 + 97, 0x29uLL, "%sx%smm");
      }

      else
      {
        pwg_format_inches(__str, 0x20uLL, a1);
        pwg_format_inches(v21, 0x20uLL, a2);
        snprintf(a3 + 97, 0x29uLL, "%sx%s");
      }

      *(a3 + 2) = a3 + 97;
      return a3;
    }
  }

  return result;
}

char **MediaArray::findMedia(const char *a1, uint64_t a2)
{
  v4 = 0x1FFFFFFFFFFFFFFCuLL;
  while (1)
  {
    v5 = (*(a2 + 16))(a2, &(&cups_pwg_media)[v4 + 4]);
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

  return &(&cups_pwg_media)[v4 + 4];
}

void pwgFormatSizeName(char *a1, char *__s1, const char *a3, const char *a4, uint64_t a5, int a6, const char *a7)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a1 || (v8 = a4, *a1 = 0, ((a5 | a4) & 0x80000000) != 0))
  {
    v15 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_18:

      return;
    }

    *buf = 136315650;
    v32 = "pwgFormatSizeName";
    v33 = 1024;
    v34 = 1280;
    v35 = 2080;
    v36 = "Invalid media name arguments.";
    v16 = buf;
LABEL_17:
    _os_log_impl(&dword_25F5FC000, v15, OS_LOG_TYPE_ERROR, "%s: setting ipp status %d error message %s", v16, 0x1Cu);
    goto LABEL_18;
  }

  v10 = a3;
  v11 = __s1;
  if (a3)
  {
    v12 = *a3;
    if (*a3)
    {
      v13 = 1;
      while ((v12 - 97) < 0x1A || (v12 - 48) < 0xA || (v12 - 45) < 2)
      {
        v12 = a3[v13++];
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      v15 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v25 = 136315650;
      v26 = "pwgFormatSizeName";
      v27 = 1024;
      v28 = 1280;
      v29 = 2080;
      v30 = "Invalid media name arguments.";
      v16 = &v25;
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
    v10 = buf;
    if (__s1)
    {
LABEL_11:
      if (!strcmp(__s1, "disc"))
      {
        v8 = 4000;
      }

      else
      {
        v8 = v8;
      }

      v14 = v11;
      goto LABEL_21;
    }
  }

  v14 = "oe";
  v11 = "om";
LABEL_21:
  if ((v8 % 0x27B) | (a5 % 0x27B))
  {
    v17 = "mm";
  }

  else
  {
    v17 = "in";
  }

  v18 = *v17;
  v19 = *(v17 + 2);
  v20 = v18 ^ 0x6E69 | v19;
  if (v20)
  {
    v21 = pwg_format_millimeters;
  }

  else
  {
    v21 = pwg_format_inches;
  }

  if (!v20)
  {
    v11 = v14;
  }

  v21(buf, 28, v8);
  v22 = strlen(buf);
  buf[v22] = 120;
  v23 = &buf[v22 + 1];
  v21(v23, 27 - v22, a5);
  v24 = &v23[strlen(v23)];
  *v24 = v18;
  v24[2] = v19;
  snprintf(a1, 0x41uLL, "%s_%s_%s", v11, v10, buf);
}

void sub_25F6148A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

PKNotification *makeNotification<PKNotification>(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [[PKNotification alloc] initWithNotifier:v7 notifyKind:a4];
  [(PKNotification *)v10 setHeaderString:v8];
  [(PKNotification *)v10 setMessageString:v9];

  return v10;
}

void sub_25F614C3C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25F614F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void _notifyCallout(__CFUserNotification *a1, uint64_t a2)
{
  v4 = +[PKNotifier sharedNotifier];
  [v4 notification:a1 completedWithResult:a2];
}

void sub_25F6151FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

uint64_t PKCancelAlert(NSString *a1)
{
  pthread_mutex_lock(&pk_dialog_mutex);
  if (pk_dialog_ref)
  {
    CFUserNotificationCancel(pk_dialog_ref);
    pk_dialog_ref = 0;
    pk_dialog_level = 0;
  }

  return pthread_mutex_unlock(&pk_dialog_mutex);
}

BOOL liteInitURF(void *a1, uint64_t a2, int a3)
{
  v115 = *MEMORY[0x277D85DE8];
  v113 = 0;
  v109 = a1;
  v4 = [v109 objectForKeyedSubscript:@"URF"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 componentsSeparatedByString:{@", "}];
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  v107 = (a2 + 1528);
  v105 = (a2 + 2020);
  v106 = (a2 + 752);
  while ([v6 count] > v7)
  {
    v8 = [v6 objectAtIndexedSubscript:v7];
    v9 = [v8 UTF8String];

    v10 = *v9;
    if (v10 > 0x48)
    {
      if (*v9 > 0x4Eu)
      {
        if (v10 == 79)
        {
          if (v9[1] == 66)
          {
            *(a2 + 1584) = urf_parse_values(v9 + 2, (a2 + 1788), 50);
            goto LABEL_56;
          }
        }

        else if (v10 == 82 && v9[1] == 83)
        {
          *(a2 + 2000) = urf_parse_values(v9 + 2, v105, 4);
          goto LABEL_56;
        }
      }

      else if (v10 == 73)
      {
        if (v9[1] == 83)
        {
          *(a2 + 548) = urf_parse_values(v9 + 2, v106, 50);
          goto LABEL_56;
        }
      }

      else if (v10 == 77 && v9[1] == 84)
      {
        *(a2 + 1524) = urf_parse_values(v9 + 2, v107, 14);
        goto LABEL_56;
      }

      goto LABEL_33;
    }

    if (v10 == 67)
    {
      if (v9[1] == 80)
      {
        *(a2 + 128) = atoi(v9 + 2) > 1;
        goto LABEL_56;
      }

      goto LABEL_33;
    }

    if (v10 != 68)
    {
      if (v10 == 70 && v9[1] == 78)
      {
        *(a2 + 140) = urf_parse_values(v9 + 2, (a2 + 144), 101);
        goto LABEL_56;
      }

LABEL_33:
      if (!strcmp(v9, "SRGB24"))
      {
        *(a2 + 120) |= 2u;
      }

      else if (!strncmp(v9, "ADOBERGB", 8uLL))
      {
        v14 = urf_parse_values(v9 + 8, v114, 4);
        if (v14 < 1)
        {
          v19 = 0;
        }

        else
        {
          v15 = v114;
          v16 = 1;
          do
          {
            v18 = *v15++;
            v17 = v18;
            if (v16 >= v14)
            {
              break;
            }

            ++v16;
          }

          while (v17 != 48);
          v19 = v17 == 48;
        }

        *(a2 + 2008) = v19;
      }

      else if (!strncmp(v9, "P3E48", 5uLL))
      {
        *(a2 + 2012) = 1;
      }

      else if (!strncmp(v9, "WE16", 4uLL))
      {
        *(a2 + 2016) = 1;
      }

      else if (v10 == 86)
      {
        v12 = urf_parse_values(v9 + 1, v114, 2);
        if (v12 >= 1)
        {
          v13 = v12 != 1;
          if (v114[0] != 1)
          {
            v13 = 0;
          }

          if (v114[1] <= 1)
          {
            v13 = 0;
          }

          if (v114[0] > 1 || v13)
          {
            *(a2 + 2004) = 1;
          }
        }
      }

      goto LABEL_56;
    }

    if (v9[1] != 77)
    {
      goto LABEL_33;
    }

    v11 = v9[2];
    if (v11 >= 49)
    {
      *(a2 + 120) |= 1u;
      LOBYTE(v11) = v9[2];
    }

    if (v11 == 51)
    {
      *(a2 + 136) = 2;
    }

    else if (v11 == 50)
    {
      *(a2 + 136) = 1;
    }

LABEL_56:
    ++v7;
  }

  v20 = *(a2 + 548);
  if (v20 >= 2)
  {
    *(a2 + 548) = v20 + 1;
    v106[v20] = 0;
  }

  v21 = *(a2 + 1524);
  if (v21 >= 2)
  {
    *(a2 + 1524) = v21 + 1;
    v107[v21] = 0;
  }

  v22 = *(a2 + 1584);
  if (v22 >= 2)
  {
    *(a2 + 1584) = v22 + 1;
    *(a2 + 1788 + 4 * v22) = 0;
  }

  for (i = 0; [v6 count] > i; ++i)
  {
    v24 = [v6 objectAtIndexedSubscript:i];
    v25 = [v24 UTF8String];

    if (*v25 == 79 && *(v25 + 1) == 70 && *(v25 + 2) == 85)
    {
      v26 = urf_parse_values((v25 + 3), v114, 50);
      if (v26 != 1 || v114[0])
      {
        if (v26 >= 1)
        {
          v28 = v26;
          v29 = v114;
          do
          {
            v31 = *v29++;
            v30 = v31;
            if (v31 <= 49)
            {
              *(a2 + 1588 + 4 * v30) = 1;
            }

            --v28;
          }

          while (v28);
        }
      }

      else
      {
        v27 = *(a2 + 1584);
        if (v27 >= 1)
        {
          memset_pattern16((a2 + 1588), &unk_25F649540, 4 * v27);
        }
      }
    }
  }

  v32 = *(a2 + 2000);
  if (!v32)
  {
    v32 = 1;
    *(a2 + 2000) = 1;
    *(a2 + 2020) = 300;
  }

  *(a2 + 1996) = v105[v32 / 2];
  v33 = *(a2 + 1524);
  if (v33 < 1)
  {
    v34 = 1;
  }

  else if (*v107 == 3)
  {
    v34 = 0;
  }

  else
  {
    v35 = (a2 + 1532);
    v36 = 1;
    do
    {
      v37 = v36;
      if (v33 == v36)
      {
        break;
      }

      v38 = *v35++;
      ++v36;
    }

    while (v38 != 3);
    v34 = v37 >= v33;
  }

  v39 = [v109 objectForKeyedSubscript:@"MAXSIZE"];
  v40 = [v39 UTF8String];

  if (v40 && (LOBYTE(v111) = 0, sscanf(v40, "%fx%f%2s", &v113 + 4, &v113, &v111) == 3))
  {
    if (v111 ^ 0x6E69 | v112)
    {
      if (v111 ^ 0x6D6D | v112)
      {
        goto LABEL_93;
      }

      v100 = *(&v113 + 1);
      v101 = 100.0;
    }

    else
    {
      v100 = *(&v113 + 1);
      v101 = 2540.0;
    }

    v41 = (v100 * v101);
    v42 = (*&v113 * v101);
  }

  else
  {
LABEL_93:
    v41 = 21590;
    v42 = 35560;
  }

  v43 = [v109 objectForKeyedSubscript:@"MINSIZE"];
  v44 = v43;
  v45 = [v43 UTF8String];

  if (v45 && (LOBYTE(v111) = 0, sscanf(v45, "%fx%f%2s", &v113 + 4, &v113, &v111) == 3))
  {
    if (v111 ^ 0x6E69 | v112)
    {
      if (v111 ^ 0x6D6D | v112)
      {
        goto LABEL_98;
      }

      v102 = *(&v113 + 1);
      v103 = 100.0;
    }

    else
    {
      v102 = *(&v113 + 1);
      v103 = 2540.0;
    }

    v46 = (v102 * v103);
    v47 = (*&v113 * v103);
  }

  else
  {
LABEL_98:
    v46 = 21000;
    v47 = 27940;
  }

  v48 = 0;
  v49 = &dword_25F64944C;
  v50 = a2 + 996;
  do
  {
    v51 = *(v49 - 1);
    if (v51 >= v46 && v51 <= v41 && *v49 >= v47 && *v49 <= v42 && ((v48 - 19) >= 5 || !v34))
    {
      v55 = *(a2 + 992);
      *(a2 + 992) = v55 + 1;
      *(v50 + 4 * v55) = v48;
    }

    ++v48;
    v49 += 2;
  }

  while (v48 != 24);
  v56 = *(a2 + 548);
  if (v56 < 1)
  {
    v58 = 0;
  }

  else if ((*v106 - 9) >= 2 && (*v106 - 40) >= 0xA)
  {
    v59 = (a2 + 756);
    v60 = 1;
    do
    {
      v61 = v60;
      if (v56 == v60)
      {
        break;
      }

      v62 = *v59++;
      v63 = v62 - 40;
      ++v60;
    }

    while ((v62 - 9) >= 2 && v63 > 9);
    v58 = v61 < v56;
  }

  else
  {
    v58 = 1;
  }

  if (v46 != v41 || v47 != v42)
  {
    v65 = *(a2 + 992);
    *(a2 + 992) = v65 + 1;
    *(v50 + 4 * v65) = 24;
    *(a2 + 1520) = v47;
    *(a2 + 1512) = v42;
    if (v58)
    {
      for (j = 4u; j != -1; --j)
      {
        v67 = RollWidths[j];
        if (v67 >= v46)
        {
          *(a2 + 1516) = v67;
        }
      }

      for (k = 0; k != 5; ++k)
      {
        v69 = RollWidths[k];
        if (v69 <= v41)
        {
          *(a2 + 1508) = v69;
        }
      }
    }

    else
    {
      *(a2 + 1516) = v46;
      *(a2 + 1508) = v41;
    }
  }

  v70 = [v109 objectForKeyedSubscript:@"TEST-BORDERLESS"];
  v71 = v70;
  v72 = [v70 UTF8String];

  if (v72)
  {
    v73 = atoi(v72);
  }

  else
  {
    v73 = 0;
  }

  *(a2 + 952) = v73;
  v74 = [v109 objectForKeyedSubscript:@"TEST-MARGINS"];
  v75 = v74;
  v76 = [v74 UTF8String];

  if (v76)
  {
    v77 = (a2 + 984);
    if (sscanf(v76, "%d%d%d%d", a2 + 972, a2 + 976, a2 + 980, a2 + 984) != 4)
    {
      *(a2 + 972) = vdup_n_s32(0x27Bu);
      *(a2 + 980) = 635;
      goto LABEL_150;
    }
  }

  else
  {
    *(a2 + 972) = 635;
    *(a2 + 976) = vdup_n_s32(0x27Bu);
    v77 = (a2 + 984);
LABEL_150:
    *v77 = 635;
  }

  v78 = [v109 objectForKeyedSubscript:@"TEST-DUPLEX"];
  v79 = v78;
  v80 = [v78 UTF8String];

  if (v80 && sscanf(v80, "%d%d%d%d", a2 + 956, a2 + 960, a2 + 964, a2 + 968) != 4)
  {
    *(a2 + 956) = 0;
    *(a2 + 964) = 0;
  }

  v81 = [v109 objectForKeyedSubscript:@"TEST-MEDIA-READY"];
  if (v81)
  {
    v108 = v81;
    v82 = [v81 componentsSeparatedByString:{@", "}];
    for (m = 0; [v82 count] > m; ++m)
    {
      v84 = [v82 objectAtIndexedSubscript:m];
      v85 = v84;
      v86 = [v84 UTF8String];

      LOBYTE(v111) = 0;
      v114[0] = 0;
      v110 = 0;
      if (sscanf(v86, "%fx%f%2s IS%d MT%d", &v113 + 4, &v113, &v111, v114, &v110) != 5)
      {
        break;
      }

      v87 = 2540.0;
      if (v111 ^ 0x6E69 | v112)
      {
        if (v111 ^ 0x6D6D | v112)
        {
          break;
        }

        v87 = 100.0;
      }

      v88 = 0;
      v89 = (v87 * *(&v113 + 1));
      v90 = (v87 * *&v113);
      v91 = v89 < v90;
      if (v89 <= v90)
      {
        v92 = (v87 * *&v113);
      }

      else
      {
        v92 = (v87 * *(&v113 + 1));
      }

      if (v89 >= v90)
      {
        v89 = (v87 * *&v113);
      }

      if (v91)
      {
        v93 = 3;
      }

      else
      {
        v93 = 4;
      }

      v94 = &dword_25F64944C;
      do
      {
        if (*(v94 - 1) == v89 && *v94 == v92)
        {
          break;
        }

        ++v88;
        v94 += 2;
      }

      while (v88 != 24);
      v95 = *(a2 + 1096);
      *(a2 + 1100 + 4 * v95) = v88;
      *(a2 + 1300 + 4 * v95) = v114[0];
      *(a2 + 1200 + 4 * v95) = v110;
      *(a2 + 1400 + 4 * v95) = v93;
      *(a2 + 1096) = v95 + 1;
      if (v88 == 24)
      {
        *(a2 + 1500) = v89;
        *(a2 + 1504) = v92;
      }
    }

    v81 = v108;
  }

  *(a2 + 988) = 10;
  v96 = *(a2 + 2040);
  *(a2 + 2040) = @"image/urf";

  if (a3)
  {
    v97 = 1;
  }

  else
  {
    v98 = urfNew(urf_write_cb, a2);
    *(a2 + 2048) = v98;
    *(a2 + 2064) = urf_startjob;
    *(a2 + 2072) = urf_endjob;
    *(a2 + 2080) = urf_startpage;
    *(a2 + 2088) = urf_endpage;
    *(a2 + 2096) = urf_sendpixels;
    v97 = v98 != 0;
  }

  return v97;
}

uint64_t urf_parse_values(const char *a1, int *a2, int a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = MEMORY[0x277D85DE0];
  do
  {
    if ((*(v5 + 4 * v3 + 60) & 0x400) != 0)
    {
      v6 = 0;
      do
      {
        v6 = 10 * v6 + v3 - 48;
        v7 = *++a1;
        v3 = v7;
      }

      while ((*(v5 + 4 * v7 + 60) & 0x400) != 0);
    }

    else
    {
      v6 = 0;
    }

    v8 = v4 + 1;
    a2[v4] = v6;
    if (*a1 - 45 > 1 || v8 >= a3)
    {
      break;
    }

    v10 = *++a1;
    v3 = v10;
    ++v4;
  }

  while (v10);
  return v8;
}

uint64_t urf_endjob(uint64_t a1)
{
  urfDelete(*(a1 + 2048));
  *(a1 + 2048) = 0;
  return 1;
}

uint64_t urf_sendpixels(uint64_t a1, void *a2, int a3)
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 84) & 0xFFFFFFFE;
  v6 = *(a1 + 2048);
  v7 = 1;
  if (v5 == 4)
  {
    v8 = 1;
  }

  else
  {
    a3 = 1;
    v8 = v3;
  }

  if (!urfWriteLine(v6, a2, a3, v8, 0))
  {
    v9 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 2048);
      v11 = *(v10 + 80);
      v12 = *(v10 + 40);
      v14 = 136316162;
      v15 = "urf_sendpixels";
      v16 = 1024;
      v17 = v3;
      v18 = 1024;
      v19 = v11;
      v20 = 1024;
      v21 = v12;
      v22 = 2080;
      v23 = urfErrorString(v10);
      _os_log_impl(&dword_25F5FC000, v9, OS_LOG_TYPE_ERROR, "%s: Failed to send %d lines at %d/%d: %s", &v14, 0x28u);
    }

    return 0;
  }

  return v7;
}

void sub_25F617D30(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_25F617EEC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id withDebuggableSemaphore<NSArray * {__strong}>(void *a1, void *a2, double a3)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z23withDebuggableSemaphoreIU8__strongP7NSArrayET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke;
  v9[3] = &unk_279A91E88;
  v10 = v5;
  v11 = &v12;
  v6 = v5;
  withDebuggableSemaphore(a1, v9, a3);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_25F618610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id withDebuggableSemaphore<NSArray<NSDictionary *> * {__strong}>(void *a1, void *a2, double a3)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z23withDebuggableSemaphoreIU8__strongP7NSArrayIP12NSDictionaryEET_P8NSStringdU13block_pointerFvU13block_pointerFvS6_EE_block_invoke;
  v9[3] = &unk_279A91E88;
  v10 = v5;
  v11 = &v12;
  v6 = v5;
  withDebuggableSemaphore(a1, v9, a3);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_25F6196D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void pk_iCloudPrintersChanged(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"com.apple.printerTool.iCloud-printers-changed" object:0];
}

id withDebuggableSemaphore<NSURL * {__strong}>(void *a1, void *a2, double a3)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z23withDebuggableSemaphoreIU8__strongP5NSURLET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke;
  v9[3] = &unk_279A91E88;
  v10 = v5;
  v11 = &v12;
  v6 = v5;
  withDebuggableSemaphore(a1, v9, a3);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_25F61A760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void unxferSize(NSMutableDictionary *a1, NSDictionary *a2, NSString *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [(NSDictionary *)v6 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:@"width"];
    [v10 doubleValue];
    v12 = v11;
    v13 = [v9 objectForKeyedSubscript:@"height"];
    [v13 doubleValue];
    v16 = v12;
    v17 = v14;

    v15 = [MEMORY[0x277CCAE60] valueWithBytes:&v16 objCType:"{CGSize=dd}"];
    [(NSMutableDictionary *)v5 setObject:v15 forKeyedSubscript:v7, v16, v17];
  }
}

Class initMCProfileConnection(void)
{
  if (LoadManagedConfiguration(void)::loadPredicate != -1)
  {
    initMCProfileConnection();
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection = result;
  getMCProfileConnectionClass = MCProfileConnectionFunction;
  return result;
}

void ___ZL24LoadManagedConfigurationv_block_invoke()
{
  LoadManagedConfiguration(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  if (!LoadManagedConfiguration(void)::frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___Z23withDebuggableSemaphoreIU8__strongP7NSArrayET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___Z23withDebuggableSemaphoreIU8__strongP7NSArrayET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke_2;
  v8[3] = &unk_279A91E60;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void ___Z23withDebuggableSemaphoreIU8__strongP7NSArrayET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void ___Z23withDebuggableSemaphoreIU8__strongP7NSArrayIP12NSDictionaryEET_P8NSStringdU13block_pointerFvU13block_pointerFvS6_EE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___Z23withDebuggableSemaphoreIU8__strongP7NSArrayIP12NSDictionaryEET_P8NSStringdU13block_pointerFvU13block_pointerFvS6_EE_block_invoke_2;
  v8[3] = &unk_279A91E60;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void ___Z23withDebuggableSemaphoreIU8__strongP7NSArrayIP12NSDictionaryEET_P8NSStringdU13block_pointerFvU13block_pointerFvS6_EE_block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void ___Z23withDebuggableSemaphoreIU8__strongP5NSURLET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___Z23withDebuggableSemaphoreIU8__strongP5NSURLET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke_2;
  v8[3] = &unk_279A91EB0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void ___Z23withDebuggableSemaphoreIU8__strongP5NSURLET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

double PKDrawImageToSheet(CGContext *a1, CGImage *a2, unsigned int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a3 > 7)
  {
    v9 = 1;
  }

  else
  {
    v9 = PKDrawImageToSheet::_UIImageOrientationToEXIFOrientationMapping[a3];
  }

  v10 = a5 - (a7 + a9);
  _liteDrawImageToSheet(a1, a2, v9, *&a4, *&a6);
  return result;
}

void sub_25F61B0D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id withDebuggableSemaphore<PKPrinter * {__strong}>(void *a1, void *a2, double a3)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z23withDebuggableSemaphoreIU8__strongP9PKPrinterET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke;
  v9[3] = &unk_279A91E88;
  v10 = v5;
  v11 = &v12;
  v6 = v5;
  withDebuggableSemaphore(a1, v9, a3);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_25F61B4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id withDebuggableSemaphore<PKJob * {__strong}>(void *a1, void *a2, double a3)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z23withDebuggableSemaphoreIU8__strongP5PKJobET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke;
  v9[3] = &unk_279A91E88;
  v10 = v5;
  v11 = &v12;
  v6 = v5;
  withDebuggableSemaphore(a1, v9, a3);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_25F61B740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_25F61C06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t withDebuggableSemaphore<PKStatus>(void *a1, void *a2, double a3)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z23withDebuggableSemaphoreI8PKStatusET_P8NSStringdU13block_pointerFvU13block_pointerFvS1_EE_block_invoke;
  v9[3] = &unk_279A91E88;
  v10 = v5;
  v11 = &v12;
  v6 = v5;
  withDebuggableSemaphore(a1, v9, a3);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void sub_25F61C7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL27_initPrintKitNotificiationsv_block_invoke()
{
  notify_register_check("com.apple.printd.running", &printd_running_token);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _printkitJobListChanged, @"com.apple.printd.job-list", 0, 0);
  v1 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v1, 0, _printkitProgress, @"com.apple.printd.job-progress", 0, 0);
}

void _printkitJobListChanged(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"PKJobListNotification" object:0];
}

void _printkitProgress(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"PKJobProgressNotification" object:0];
}

void ___Z23withDebuggableSemaphoreIU8__strongP9PKPrinterET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___Z23withDebuggableSemaphoreIU8__strongP9PKPrinterET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke_2;
  v8[3] = &unk_279A923A0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void ___Z23withDebuggableSemaphoreIU8__strongP9PKPrinterET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void ___Z23withDebuggableSemaphoreIU8__strongP5PKJobET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___Z23withDebuggableSemaphoreIU8__strongP5PKJobET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke_2;
  v8[3] = &unk_279A923C8;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void ___Z23withDebuggableSemaphoreIU8__strongP5PKJobET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void ___Z23withDebuggableSemaphoreI8PKStatusET_P8NSStringdU13block_pointerFvU13block_pointerFvS1_EE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___Z23withDebuggableSemaphoreI8PKStatusET_P8NSStringdU13block_pointerFvU13block_pointerFvS1_EE_block_invoke_2;
  v8[3] = &unk_279A923F0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void sub_25F61E094(_Unwind_Exception *a1)
{
  v9 = v8;

  _Unwind_Resume(a1);
}

void sub_25F61EADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22)
{
  if (a21)
  {
  }

  _Unwind_Resume(a1);
}

id _PKLogCategory(void *a1)
{
  v1 = a1;
  if (logInit(void)::onceToken != -1)
  {
    _PKLogCategory_cold_1();
  }

  v2 = [pkLogCategories objectForKeyedSubscript:v1];
  if (!v2)
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  return v2;
}

void withDebuggableSemaphore(void *a1, void *a2, double a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  add = atomic_fetch_add(withDebuggableSemaphore(NSString *,double,void({block_pointer})(NSObject  {objcproto21OS_dispatch_semaphore}*))::sSequence, 1u);
  v8 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109378;
    v15 = add;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_25F5FC000, v8, OS_LOG_TYPE_DEFAULT, "[%d] synchronous callout from %{public}@ - begin", &v14, 0x12u);
  }

  v9 = dispatch_semaphore_create(0);
  v6[2](v6, v9);
  v10 = dispatch_time(0, (a3 * 1000000000.0));
  v11 = dispatch_semaphore_wait(v9, v10);
  v12 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "timed out";
    v14 = 67109634;
    v15 = add;
    if (!v11)
    {
      v13 = "completed";
    }

    v16 = 2114;
    v17 = v5;
    v18 = 2082;
    v19 = v13;
    _os_log_impl(&dword_25F5FC000, v12, OS_LOG_TYPE_DEFAULT, "[%d] synchronous callout from %{public}@ - %{public}s", &v14, 0x1Cu);
  }
}

void ___ZL7logInitv_block_invoke()
{
  v8[5] = *MEMORY[0x277D85DE8];
  v7[0] = PKLogCategoryDefault[0];
  v0 = os_log_create("com.apple.printing", [(__CFString *)PKLogCategoryDefault[0] UTF8String]);
  v8[0] = v0;
  v7[1] = PKLogCategoryNetwork[0];
  v1 = os_log_create("com.apple.printing", [(__CFString *)PKLogCategoryNetwork[0] UTF8String]);
  v8[1] = v1;
  v7[2] = PKLogCategoryDiscovery[0];
  v2 = os_log_create("com.apple.printing", [(__CFString *)PKLogCategoryDiscovery[0] UTF8String]);
  v8[2] = v2;
  v7[3] = PKLogCategoryProgress[0];
  v3 = os_log_create("com.apple.printing", [(__CFString *)PKLogCategoryProgress[0] UTF8String]);
  v8[3] = v3;
  v7[4] = PKLogCategoryFramework;
  v4 = os_log_create("com.apple.printing", [PKLogCategoryFramework UTF8String]);
  v8[4] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v6 = pkLogCategories;
  pkLogCategories = v5;
}

void sub_25F61F048(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_25F61F204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PKMediaName;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F6206F8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_25F6207D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25F6208C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

PKPaper *genericSize(NSString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = [[PKPaper alloc] initWithWidth:a2 Height:a3 Left:635 Top:635 Right:635 Bottom:a4 localizedName:0 codeName:v7 mediaInfo:0];

  return v8;
}

void sub_25F62243C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_25F623798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25F624404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

id GetLocalizedNameForOption(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.PrintKit"];
  v6 = [v5 localizedStringForKey:v3 value:v3 table:v4];

  return v6;
}

id _cupsGet1284Values(NSString *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [(NSString *)v1 UTF8String];
  v4 = *v3;
  if (*v3)
  {
LABEL_2:
    while ((v4 - 9) < 5 || v4 == 32)
    {
      v5 = *++v3;
      v4 = v5;
    }

    if (v4)
    {
      v6 = 0;
      v7 = v3 + 1;
      v8 = v3 + 2;
      while (v4 != 58)
      {
        if (v6 <= 254)
        {
          v23[v6++] = v4;
        }

        v9 = *++v3;
        v4 = v9;
        ++v7;
        ++v8;
        if (!v9)
        {
          goto LABEL_36;
        }
      }

      v10 = &v23[v6];
      v11 = &v23[v6];
      if (v6 >= 1)
      {
        while (1)
        {
          v11 = v10 - 1;
          v12 = *(v10 - 1);
          if ((v12 - 9) >= 5 && v12 != 32)
          {
            break;
          }

          --v10;
          if (v11 <= v23)
          {
            goto LABEL_18;
          }
        }

        v11 = v10;
      }

LABEL_18:
      *v11 = 0;
      while (1)
      {
        v13 = *v7;
        if ((v13 - 9) >= 5 && v13 != 32)
        {
          break;
        }

        ++v7;
        ++v8;
      }

      if (*v7)
      {
        v14 = 0;
        v3 = v8;
        while (v13)
        {
          if (v13 == 59)
          {
            v16 = &v22[v14];
            v17 = &v22[v14];
            if (v14 >= 1)
            {
              while (1)
              {
                v17 = v16 - 1;
                v18 = *(v16 - 1);
                if ((v18 - 9) >= 5 && v18 != 32)
                {
                  break;
                }

                --v16;
                if (v17 <= v22)
                {
                  goto LABEL_35;
                }
              }

              v17 = v16;
            }

LABEL_35:
            *v17 = 0;
            v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v22];
            v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
            [v2 setObject:v19 forKey:v20];

            v4 = *v3;
            if (*v3)
            {
              goto LABEL_2;
            }

            break;
          }

          if (v14 <= 254)
          {
            v22[v14++] = v13;
          }

          v15 = *v3++;
          LOBYTE(v13) = v15;
        }
      }
    }
  }

LABEL_36:

  return v2;
}

void sub_25F628D44(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_25F629430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 48; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25F629798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 48; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void ___ZL21convertIPPIntsToArrayP18PK_ipp_attribute_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v7 = v4;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "integer")}];
  [v5 addObject:v6];
}

void ___ZL20ensureLowercasedKeysP12NSDictionaryIP8NSStringS1_E_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 lowercaseString];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

void sub_25F62A1B4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25F62A320(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25F62AD28(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_25F62B4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  for (j = 16; j != -8; j -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25F62D900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void DescVisitor::visitProperties(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  _DescVisitor::_DescVisitor(v6);
  v5 = objc_autoreleasePoolPush();
  [v3 visitProperties:v6];
  objc_autoreleasePoolPop(v5);
  v4[2](v4, v6);
}

void _DescVisitor::~_DescVisitor(id *this)
{
}

{

  JUMPOUT(0x25F8E3FA0);
}

void EncodeVisitor::visitProperties(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = &unk_287199038;
  v7 = v4;
  v5 = objc_autoreleasePoolPush();
  [v3 visitProperties:&v6];
  objc_autoreleasePoolPop(v5);
}

void _EncodeVisitor::~_EncodeVisitor(id *this)
{
}

{

  JUMPOUT(0x25F8E3FA0);
}

void DecodeVisitor::visitProperties(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = &unk_287199140;
  v7 = v4;
  v5 = objc_autoreleasePoolPush();
  [v3 visitProperties:&v6];
  objc_autoreleasePoolPop(v5);
}

void _DecodeVisitor::~_DecodeVisitor(id *this)
{
}

{

  JUMPOUT(0x25F8E3FA0);
}

void CompareVisitor::visitProperties(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v10 = &unk_287199248;
  v12 = v8;
  v11 = 1;
  v9 = objc_autoreleasePoolPush();
  [v5 visitProperties:&v10];
  objc_autoreleasePoolPop(v9);
  v7[2](v7, &v10);
}

void _CompareVisitor::~_CompareVisitor(id *this)
{
}

{

  JUMPOUT(0x25F8E3FA0);
}

void UserCodedSerializationVisitor::visitProperties(void *a1, uint64_t a2)
{
  v3 = a1;
  v5 = &unk_287199358;
  v6 = MEMORY[0x25F8E4580](a2);
  v4 = objc_autoreleasePoolPush();
  [v3 visitProperties:&v5];
  objc_autoreleasePoolPop(v4);
}

void _UserCodedSerializationVisitor::~_UserCodedSerializationVisitor(id *this)
{
}

{

  JUMPOUT(0x25F8E3FA0);
}

void _DescVisitor::_DescVisitor(_DescVisitor *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_287198F20;
  v2 = objc_opt_new();
  v3 = *(this + 2);
  *(this + 2) = v2;

  v4 = objc_opt_new();
  v5 = *(this + 1);
  *(this + 1) = v4;
}

void _DescVisitor::visit(_DescVisitor *this, NSString *a2, BOOL *a3)
{
  if (*a3)
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  _DescVisitor::addNamed(this, a2, &v3->isa);
}

void _DescVisitor::visit(_DescVisitor *this, NSString *a2, unsigned int *a3)
{
  v6 = a2;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *a3];
  _DescVisitor::addNamed(this, v6, v5);
}

void _DescVisitor::visit(_DescVisitor *this, NSString *a2, uint64_t *a3)
{
  v6 = a2;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", *a3];
  _DescVisitor::addNamed(this, v6, v5);
}

void _DescVisitor::visit(_DescVisitor *this, NSString *a2, unint64_t *a3)
{
  v6 = a2;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *a3];
  _DescVisitor::addNamed(this, v6, v5);
}

void _DescVisitor::visit(id *a1, void *a2, NSObject **a3)
{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

{
  v6 = a2;
  _DescVisitor::see(a1, *a3);
  v5 = [*a3 debugDescription];
  _DescVisitor::addNamed(a1, v6, v5);
}

void _DescVisitor::addNamed(_DescVisitor *this, NSString *a2, NSString *a3)
{
  v3 = *(this + 2);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:?];
}

void _DescVisitor::see(id *this, NSObject *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [this[1] addObject:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 allObjects];
      _DescVisitor::see(this, v6);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 3221225472;
          v9[2] = ___ZN12_DescVisitor3seeEP8NSObject_block_invoke;
          v9[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
          v9[4] = this;
          [v3 enumerateObjectsUsingBlock:v9];
        }

        goto LABEL_7;
      }

      v6 = v3;
      v7 = [v6 allKeys];
      _DescVisitor::see(this, v7);

      v8 = [v6 allValues];
      _DescVisitor::see(this, v8);
    }

LABEL_7:
  }
}

uint64_t _EncodeVisitor::visit(uint64_t a1, uint64_t a2, void *a3)
{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

{
  return [*(a1 + 8) encodeObject:*a3 forKey:a2];
}

void _EncodeVisitor::visit(uint64_t a1, void *a2, id *a3)
{
  v7 = a2;
  v5 = *(a1 + 8);
  v6 = [*a3 allObjects];
  [v5 encodeObject:v6 forKey:v7];
}

uint64_t _DecodeVisitor::visit(id *this, NSString *a2, BOOL *a3)
{
  result = [this[1] decodeBoolForKey:a2];
  *a3 = result;
  return result;
}

uint64_t _DecodeVisitor::visit(id *this, NSString *a2, int *a3)
{
  result = [this[1] decodeIntForKey:a2];
  *a3 = result;
  return result;
}

uint64_t _DecodeVisitor::visit(id *this, NSString *a2, uint64_t *a3)
{
  result = [this[1] decodeIntegerForKey:a2];
  *a3 = result;
  return result;
}

unint64_t _DecodeVisitor::visit(id *this, NSString *a2, unint64_t *a3)
{
  result = [this[1] decodeIntegerForKey:a2];
  *a3 = result;
  return result;
}

void _DecodeVisitor::visit(uint64_t a1, void *a2, void **a3)
{
  v7 = a2;
  v5 = [*(a1 + 8) decodeObjectOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeObjectOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeObjectOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeObjectOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeObjectOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v9 = a2;
  v5 = *(a1 + 8);
  v6 = objc_opt_class();
  v7 = [v5 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:v9];
  v8 = *a3;
  *a3 = v7;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeArrayOfObjectsOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeArrayOfObjectsOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeArrayOfObjectsOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v9 = a2;
  v5 = MEMORY[0x277CBEB98];
  v6 = [*(a1 + 8) decodeArrayOfObjectsOfClass:objc_opt_class() forKey:v9];
  v7 = [v5 setWithArray:v6];
  v8 = *a3;
  *a3 = v7;
}

{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:5];
  v8 = [v6 setWithArray:{v7, v11, v12, v13, v14}];

  v9 = [*(a1 + 8) decodeObjectOfClasses:v8 forKey:v5];
  v10 = *a3;
  *a3 = v9;
}

{
  v9 = a2;
  v5 = *(a1 + 8);
  v6 = objc_opt_class();
  v7 = [v5 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:v9];
  v8 = *a3;
  *a3 = v7;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeObjectOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeObjectOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeObjectOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeArrayOfObjectsOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

{
  v7 = a2;
  v5 = [*(a1 + 8) decodeArrayOfObjectsOfClass:objc_opt_class() forKey:v7];
  v6 = *a3;
  *a3 = v5;
}

void _CompareVisitor::visit(_CompareVisitor *this, NSString *a2, BOOL *a3)
{
  v5 = a2;
  if (*(this + 8) == 1)
  {
    v6 = *a3;
    v7 = v5;
    *(this + 8) = v6 == _CompareVisitor::getProp<BOOL>(this, v5);
    v5 = v7;
  }
}

void _CompareVisitor::visit(_CompareVisitor *this, NSString *a2, int *a3)
{
  v5 = a2;
  if (*(this + 8) == 1)
  {
    v6 = *a3;
    v7 = v5;
    *(this + 8) = v6 == _CompareVisitor::getProp<int>(this, v5);
    v5 = v7;
  }
}

void _CompareVisitor::visit(_CompareVisitor *this, NSString *a2, id *a3)
{
  v5 = a2;
  if (*(this + 8) == 1)
  {
    v6 = *a3;
    v7 = v5;
    *(this + 8) = v6 == _CompareVisitor::getProp<long>(this, v5);
    v5 = v7;
  }
}

{
  v5 = a2;
  if (*(this + 8) == 1)
  {
    v6 = *a3;
    v7 = v5;
    *(this + 8) = v6 == _CompareVisitor::getProp<unsigned long>(this, v5);
    v5 = v7;
  }
}

void _CompareVisitor::visit(_CompareVisitor *a1, NSString *a2, NSObject **a3)
{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

{
  _CompareVisitor::equalObj(a1, a2, *a3);
}

id _CompareVisitor::getProp<BOOL>(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 16) NSSelectorFromString(v3)];

  return v4;
}

id _CompareVisitor::getProp<int>(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 16) NSSelectorFromString(v3)];

  return v4;
}

id _CompareVisitor::getProp<long>(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 16) NSSelectorFromString(v3)];

  return v4;
}

id _CompareVisitor::getProp<unsigned long>(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 16) NSSelectorFromString(v3)];

  return v4;
}

void _CompareVisitor::equalObj(_CompareVisitor *this, NSString *a2, NSObject *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(this + 8) == 1)
  {
    v6 = _CompareVisitor::getProp<NSObject * {__strong}>(this, v7);
    if (v6 != v5)
    {
      *(this + 8) = [v5 isEqual:v6];
    }
  }
}

id _CompareVisitor::getProp<NSObject * {__strong}>(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 16) NSSelectorFromString(v3)];

  return v4;
}

void _UserCodedSerializationVisitor::visit(_UserCodedSerializationVisitor *this, NSString *a2, BOOL *a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*a3];
  (*(*(this + 1) + 16))();
  *a3 = [v6 BOOLValue];
}

void _UserCodedSerializationVisitor::visit(_UserCodedSerializationVisitor *this, NSString *a2, unsigned int *a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*a3];
  (*(*(this + 1) + 16))();
  *a3 = [v6 intValue];
}

void _UserCodedSerializationVisitor::visit(_UserCodedSerializationVisitor *this, NSString *a2, uint64_t *a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*a3];
  (*(*(this + 1) + 16))();
  *a3 = [v6 integerValue];
}

void _UserCodedSerializationVisitor::visit(_UserCodedSerializationVisitor *this, NSString *a2, unint64_t *a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*a3];
  (*(*(this + 1) + 16))();
  *a3 = [v6 unsignedIntegerValue];
}

uint64_t _UserCodedSerializationVisitor::visit(uint64_t a1)
{
  return (*(*(a1 + 8) + 16))();
}

{
  return (*(*(a1 + 8) + 16))();
}

{
  return (*(*(a1 + 8) + 16))();
}

{
  return (*(*(a1 + 8) + 16))();
}

{
  return (*(*(a1 + 8) + 16))();
}

{
  return (*(*(a1 + 8) + 16))();
}

{
  return (*(*(a1 + 8) + 16))();
}

{
  return (*(*(a1 + 8) + 16))();
}

{
  return (*(*(a1 + 8) + 16))();
}

{
  return (*(*(a1 + 8) + 16))();
}

void _UserCodedSerializationVisitor::visit(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = *(a1 + 8);
  v6 = XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<NSValue * {__strong}>();
  v7 = XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<NSValue * {__strong}>();
  (*(v5 + 16))(v5, v8, v6, v7, a3);
}

{
  v4 = *(a1 + 8);
  v5 = a2;
  v7 = XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<NSNumber * {__strong}>();
  v6 = XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<NSNumber * {__strong}>();
  (*(v4 + 16))(v4, v5, v7, v6, a3);
}

{
  v4 = *(a1 + 8);
  v5 = a2;
  v7 = XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<NSString * {__strong}>();
  v6 = XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<NSString * {__strong}>();
  (*(v4 + 16))(v4, v5, v7, v6, a3);
}

{
  v8 = a2;
  v5 = *(a1 + 8);
  v6 = XUserCodedSerializationVisitor::makeToUserCoded<NSSet<NSString *> * {__strong}>();
  v7 = XUserCodedSerializationVisitor::makeFromUserCoded<NSSet<NSString *> * {__strong}>();
  (*(v5 + 16))(v5, v8, v6, v7, a3);
}

{
  v4 = *(a1 + 8);
  v5 = a2;
  v7 = XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<NSDictionary * {__strong}>();
  v6 = XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<NSDictionary * {__strong}>();
  (*(v4 + 16))(v4, v5, v7, v6, a3);
}

{
  v8 = a2;
  v5 = *(a1 + 8);
  v6 = XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<PKTray * {__strong}>();
  v7 = XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<PKTray * {__strong}>();
  (*(v5 + 16))(v5, v8, v6, v7, a3);
}

{
  v4 = *(a1 + 8);
  v5 = a2;
  v7 = XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<PKPaper * {__strong}>();
  v6 = XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<PKPaper * {__strong}>();
  (*(v4 + 16))(v4, v5, v7, v6, a3);
}

id ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP8NSNumberEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return a2;
  }

  else
  {
    return &unk_2871AD958;
  }
}

__CFString *___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP8NSStringEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return a2;
  }

  else
  {
    return &stru_28719ACE8;
  }
}

id ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP5NSURLEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 absoluteString];

  return v2;
}

id ___ZN30XUserCodedSerializationVisitor17makeFromUserCodedIU8__strongP5NSURLEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:a2];

  return v2;
}

id ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP6NSDataEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 base64EncodedStringWithOptions:0];

  return v2;
}

id ___ZN30XUserCodedSerializationVisitor17makeFromUserCodedIU8__strongP6NSDataEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v2 options:0];

  return v3;
}

id ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP6NSUUIDEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 UUIDString];

  return v2;
}

id ___ZN30XUserCodedSerializationVisitor17makeFromUserCodedIU8__strongP6NSUUIDEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];

  return v3;
}

id ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP6NSDateEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277CCACA8];
  [v2 timeIntervalSince1970];
  v5 = [v3 stringWithFormat:@"%f", v4];

  return v5;
}

id ___ZN30XUserCodedSerializationVisitor17makeFromUserCodedIU8__strongP6NSDateEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v2 doubleValue];
  v4 = [v3 initWithTimeIntervalSince1970:?];

  return v4;
}

id XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<NSValue * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP7NSValueEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke;
  v2[3] = &unk_279A928E8;
  v3 = &__block_literal_global_365;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP7NSValueEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP7NSValueEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2;
  v9[3] = &unk_279A927B8;
  v11 = *(a1 + 32);
  v5 = v4;
  v10 = v5;
  [v3 enumerateObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP7NSValueEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:?];
}

id ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP7NSValueEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6.location = [v2 rangeValue];
  v3 = NSStringFromRange(v6);

  return v3;
}

id XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<NSValue * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP7NSValueEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke;
  v2[3] = &unk_279A92910;
  v3 = &__block_literal_global_368;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP7NSValueEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = (*(*(a1 + 32) + 16))(*(a1 + 32));
        [v4 addObject:{v10, v12}];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

id ___ZN30XUserCodedSerializationVisitor17makeFromUserCodedIU8__strongP7NSValueEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277CCAE60];
  v4 = NSRangeFromString(v2);
  v5 = [v3 valueWithRange:{v4.location, v4.length}];

  return v5;
}

id XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<NSNumber * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP8NSNumberEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke;
  v2[3] = &unk_279A928E8;
  v3 = &__block_literal_global_331;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP8NSNumberEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP8NSNumberEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2;
  v9[3] = &unk_279A927E0;
  v11 = *(a1 + 32);
  v5 = v4;
  v10 = v5;
  [v3 enumerateObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP8NSNumberEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:?];
}

id XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<NSNumber * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP8NSNumberEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke;
  v2[3] = &unk_279A92910;
  v3 = &__block_literal_global_335;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP8NSNumberEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = (*(*(a1 + 32) + 16))(*(a1 + 32));
        [v4 addObject:{v10, v12}];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

id XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<NSString * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP8NSStringEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke;
  v2[3] = &unk_279A928E8;
  v3 = &__block_literal_global_337;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP8NSStringEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP8NSStringEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2;
  v9[3] = &unk_279A92808;
  v11 = *(a1 + 32);
  v5 = v4;
  v10 = v5;
  [v3 enumerateObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP8NSStringEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:?];
}

id XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<NSString * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP8NSStringEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke;
  v2[3] = &unk_279A92910;
  v3 = &__block_literal_global_342;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP8NSStringEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = (*(*(a1 + 32) + 16))(*(a1 + 32));
        [v4 addObject:{v10, v12}];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

id XUserCodedSerializationVisitor::makeToUserCoded<NSSet<NSString *> * {__strong}>()
{
  v0 = XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<NSString * {__strong}>();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP5NSSetIP8NSStringEEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS7_Ev_block_invoke;
  v4[3] = &unk_279A92958;
  v5 = v0;
  v1 = v0;
  v2 = MEMORY[0x25F8E4580](v4);

  return v2;
}

id XUserCodedSerializationVisitor::makeFromUserCoded<NSSet<NSString *> * {__strong}>()
{
  v0 = XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<NSString * {__strong}>();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___ZN30XUserCodedSerializationVisitor17makeFromUserCodedIU8__strongP5NSSetIP8NSStringEEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS7_Ev_block_invoke;
  v4[3] = &unk_279A92910;
  v5 = v0;
  v1 = v0;
  v2 = MEMORY[0x25F8E4580](v4);

  return v2;
}

id ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP5NSSetIP8NSStringEEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS7_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allObjects];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

id ___ZN30XUserCodedSerializationVisitor17makeFromUserCodedIU8__strongP5NSSetIP8NSStringEEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS7_Ev_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = (*(*(a1 + 32) + 16))();
  v3 = [v1 setWithArray:v2];

  return v3;
}

id XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<NSDictionary * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP12NSDictionaryEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke;
  v2[3] = &unk_279A928E8;
  v3 = &__block_literal_global_360;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP12NSDictionaryEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP12NSDictionaryEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2;
  v9[3] = &unk_279A92830;
  v11 = *(a1 + 32);
  v5 = v4;
  v10 = v5;
  [v3 enumerateObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP12NSDictionaryEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:?];
}

id XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<NSDictionary * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP12NSDictionaryEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke;
  v2[3] = &unk_279A92910;
  v3 = &__block_literal_global_362;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP12NSDictionaryEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = (*(*(a1 + 32) + 16))(*(a1 + 32));
        [v4 addObject:{v10, v12}];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

id ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP7PKPaperEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userCodableDictionary];

  return v2;
}

PKPaper *___ZN30XUserCodedSerializationVisitor17makeFromUserCodedIU8__strongP7PKPaperEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPaper alloc] initWithUserCodableDictionary:v2];

  return v3;
}

id ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP11PKPaperListEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<PKPaper * {__strong}>();
  if (v2)
  {
    v4 = [v2 papers];
    v5 = (v3)[2](v3, v4);
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

id XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<PKPaper * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP7PKPaperEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke;
  v2[3] = &unk_279A928E8;
  v3 = &__block_literal_global_371;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP7PKPaperEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP7PKPaperEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2;
  v9[3] = &unk_279A92858;
  v11 = *(a1 + 32);
  v5 = v4;
  v10 = v5;
  [v3 enumerateObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP7PKPaperEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:?];
}

id ___ZN30XUserCodedSerializationVisitor17makeFromUserCodedIU8__strongP11PKPaperListEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<PKPaper * {__strong}>();
  v4 = (v3)[2](v3, v2);
  v5 = [PKPaperList paperListWithPapers:v4];

  return v5;
}

id XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<PKPaper * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP7PKPaperEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke;
  v2[3] = &unk_279A92910;
  v3 = &__block_literal_global_374;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP7PKPaperEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = (*(*(a1 + 32) + 16))(*(a1 + 32));
        [v4 addObject:{v10, v12}];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

id ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP15PKPrintSettingsEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userCodableDictionary];

  return v2;
}

PKPrintSettings *___ZN30XUserCodedSerializationVisitor17makeFromUserCodedIU8__strongP15PKPrintSettingsEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPrintSettings alloc] initWithUserCodableDictionary:v2];

  return v3;
}

id XUserCodedSerializationVisitor::makeUserCodedFromTypedArray<PKTray * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP6PKTrayEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke;
  v2[3] = &unk_279A928E8;
  v3 = &__block_literal_global_386;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP6PKTrayEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP6PKTrayEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2;
  v9[3] = &unk_279A92880;
  v11 = *(a1 + 32);
  v5 = v4;
  v10 = v5;
  [v3 enumerateObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}