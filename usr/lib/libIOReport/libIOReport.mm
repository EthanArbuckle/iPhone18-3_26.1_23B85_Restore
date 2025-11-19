__CFDictionary *IOReportCreateSamples(uint64_t a1, const __CFDictionary *a2, CFErrorRef *a3)
{
  if (a1 && a2)
  {
    if (_updateKernelBuffer(a1, a3) || (v7 = CFDataCreateWithBytesNoCopy(0, *(a1 + 32), *(a1 + 40), *MEMORY[0x29EDB8EE8])) == 0)
    {
      SamplesRaw = 0;
      if (!a3)
      {
        return SamplesRaw;
      }
    }

    else
    {
      v8 = v7;
      SamplesRaw = IOReportCreateSamplesRaw(a2, v7, a3);
      CFRelease(v8);
      if (!a3)
      {
        return SamplesRaw;
      }
    }
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    SamplesRaw = 0;
    *a3 = createCFErr(-536870206, 0);
    if (!a3)
    {
      return SamplesRaw;
    }
  }

  if (!SamplesRaw)
  {
    if (!*a3)
    {
      SamplesRaw = 0;
      *a3 = createCFErr(-536870212, "unknown error");
      return SamplesRaw;
    }

    return 0;
  }

  return SamplesRaw;
}

uint64_t _updateKernelBuffer(uint64_t a1, CFErrorRef *a2)
{
  v3 = IOConnectCallMethod(*(a1 + 16), 3u, (a1 + 24), 1u, 0, 0, 0, 0, 0, 0);
  v4 = v3;
  if (a2 && v3)
  {
    *a2 = createCFErr(v3, "_updateKernelBuffer() failed");
  }

  return v4;
}

__CFDictionary *IOReportCreateSamplesRaw(const __CFDictionary *a1, CFDataRef theData, CFErrorRef *a3)
{
  v5 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x4800000000;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = -536870206;
  if (!a1 || !theData)
  {
LABEL_5:
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  if (CFDataGetLength(theData) < 64)
  {
    v5 = 0;
    v6 = -536870206;
    goto LABEL_5;
  }

  Length = CFDataGetLength(theData);
  if (Length >= 0)
  {
    v9 = Length;
  }

  else
  {
    v9 = Length + 63;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v11 = v16[0];
  *(v16[0] + 24) = BytePtr;
  *(v11 + 32) = &BytePtr[v9 & 0xFFFFFFFFFFFFFFC0];
  *(v11 + 60) = 0;
  *(v11 + 64) = 0;
  v12 = MEMORY[0x29EDCA5F8];
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  v14[0] = v12;
  v14[1] = 0x40000000;
  v14[2] = __IOReportCreateSamplesRaw_block_invoke;
  v14[3] = &unk_29EE82B50;
  v14[4] = &v15;
  v14[5] = a3;
  v5 = cloneAggregate(a1, v14);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
  {
    IOReportIterateSamplesRaw_cold_1(v16);
  }

  v6 = -536870212;
  if (a3)
  {
LABEL_6:
    if (!v5 && !*a3)
    {
      *a3 = createCFErr(v6, "couldn't create samples");
    }
  }

LABEL_15:
  _Block_object_dispose(&v15, 8);
  return v5;
}

__CFDictionary *cloneAggregate(const __CFDictionary *a1, unint64_t a2)
{
  v6 = 0;
  v5 = 0;
  v3[2] = 0u;
  v4 = 0u;
  v3[0] = 0u;
  BYTE12(v4) = 1;
  v3[1] = a2;
  if (_iterate(a1, 0, v3, &v6))
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t _iterate(CFDictionaryRef theDict, const __CFDictionary *a2, void *a3, __CFDictionary **a4)
{
  if (!theDict || !a2 && a3[3])
  {
    goto LABEL_4;
  }

  if (*(a3 + 1) == 0)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!Mutable)
    {
LABEL_4:
      v8 = 0;
      v9 = 273;
      goto LABEL_5;
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"IOReportChannels");
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 != CFArrayGetTypeID())
    {
LABEL_17:
      v8 = 0;
LABEL_93:
      v9 = 273;
      goto LABEL_94;
    }

    if (a2)
    {
      v15 = CFDictionaryGetValue(a2, @"IOReportChannels");
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 != CFArrayGetTypeID())
      {
        goto LABEL_17;
      }
    }

    else
    {
      v16 = 0;
    }

    theArray = v16;
    Count = CFArrayGetCount(v13);
    if (a3[2] || a3[3])
    {
      v21 = CFArrayCreateMutable(0, Count, MEMORY[0x29EDB9000]);
      if (!v21)
      {
        v9 = 273;
        v8 = 273;
        goto LABEL_94;
      }
    }

    else
    {
      v21 = 0;
    }

    if (Count >= 1)
    {
      v39 = 0;
      v40 = v13;
      v22 = 0;
      value = 0;
      v8 = 0;
      v43 = v21;
      while (1)
      {
        v45 = Count;
        ChannelAtIndex = _getChannelAtIndex(v13, v22);
        if (!ChannelAtIndex)
        {
          v8 = 273;
          goto LABEL_85;
        }

        v24 = ChannelAtIndex;
        if (v21)
        {
          value = CFDictionaryCreateMutableCopy(0, 0, ChannelAtIndex);
          if (!value)
          {
            v37 = 0;
            v8 = 273;
            goto LABEL_86;
          }
        }

        v25 = theArray;
        if (theArray)
        {
          if (v22 >= CFArrayGetCount(theArray))
          {
            v25 = 0;
          }

          else
          {
            v47 = 0;
            v48 = 0;
            v26 = _getChannelAtIndex(theArray, v22);
            if (!v26)
            {
              goto LABEL_81;
            }

            v25 = v26;
            if (getChannelType(v24, &v48))
            {
              goto LABEL_81;
            }

            ChannelID = IOReportChannelGetChannelID(v24);
            DriverID = IOReportChannelGetDriverID(v24);
            if (getChannelType(v25, &v47))
            {
              goto LABEL_81;
            }

            v27 = IOReportChannelGetChannelID(v25);
            v28 = IOReportChannelGetDriverID(v25);
            if (v47 != v48 || v27 != ChannelID || v28 != DriverID)
            {
              v38 = v28;
              v29 = v39;
              if (!v39)
              {
                v29 = v22 + 1;
              }

              v30 = theArray;
              v39 = v29;
              if (v29 < CFArrayGetCount(theArray))
              {
                while (1)
                {
                  v31 = _getChannelAtIndex(v30, v29);
                  if (!v31)
                  {
                    break;
                  }

                  v25 = v31;
                  if (getChannelType(v31, &v47))
                  {
                    break;
                  }

                  v32 = IOReportChannelGetChannelID(v25);
                  if (v47 == v48 && v32 == ChannelID && v38 == DriverID)
                  {
                    v39 = v29 + 1;
                    goto LABEL_54;
                  }

                  ++v29;
                  v30 = theArray;
                  if (v29 >= CFArrayGetCount(theArray))
                  {
                    goto LABEL_53;
                  }
                }

LABEL_81:
                v8 = 273;
                v13 = v40;
LABEL_82:
                v21 = v43;
                goto LABEL_85;
              }

LABEL_53:
              v25 = 0;
            }

LABEL_54:
            v13 = v40;
          }
        }

        if (*a3)
        {
          break;
        }

        v35 = a3[1];
        if (!v35)
        {
          v36 = a3[2];
          if (v36)
          {
            v33 = (*(v36 + 16))(v36, v24, value);
          }

          else
          {
            if (!a3[3])
            {
              goto LABEL_98;
            }

            if (!v25)
            {
              v21 = v43;
              if (!v43)
              {
                v34 = 0;
                goto LABEL_67;
              }

LABEL_62:
              CFArrayAppendValue(v21, value);
              v34 = 0;
LABEL_66:
              CFRelease(value);
              value = 0;
              goto LABEL_67;
            }

            if (cloneElements(value, v25, 1))
            {
LABEL_98:
              v8 = 273;
              goto LABEL_82;
            }

            v33 = (*(a3[3] + 16))();
          }

          goto LABEL_58;
        }

        v34 = (*(v35 + 16))(v35, v24);
        if (v34 == 16)
        {
          CFArrayRemoveValueAtIndex(v13, v22--);
          --v45;
          v21 = v43;
          if (v43)
          {
            goto LABEL_66;
          }

          goto LABEL_67;
        }

LABEL_59:
        v21 = v43;
        if (v34)
        {
          v8 = v34;
          goto LABEL_85;
        }

        if (v43)
        {
          if (!v34)
          {
            goto LABEL_62;
          }

          goto LABEL_66;
        }

LABEL_67:
        v8 |= v34;
        ++v22;
        Count = v45;
        if (v22 >= v45)
        {
          goto LABEL_79;
        }
      }

      v33 = (*(*a3 + 16))(*a3, v24);
LABEL_58:
      v34 = v33;
      goto LABEL_59;
    }

    v8 = 0;
    value = 0;
LABEL_79:
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"IOReportChannels", v21);
    }

LABEL_85:
    v37 = value;
    if (v21)
    {
LABEL_86:
      CFRelease(v21);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    if (v8)
    {
      goto LABEL_93;
    }

    if (a3[1] && !CFArrayGetCount(v13))
    {
      CFDictionaryRemoveValue(theDict, @"IOReportChannels");
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = _iterSubDictsForKey(theDict, @"IOReportDrivers", Mutable, a2, a3);
  v8 |= v18;
  if (v18)
  {
    goto LABEL_93;
  }

  v19 = _iterSubDictsForKey(theDict, @"IOReportChannelGroups", Mutable, a2, a3);
  v8 |= v19;
  if (v19)
  {
    goto LABEL_93;
  }

  if (!Mutable)
  {
    v9 = v8;
    goto LABEL_5;
  }

  if (!a4)
  {
    goto LABEL_93;
  }

  *a4 = Mutable;
  v9 = v8;
LABEL_94:
  if (Mutable && (v9 & 1) != 0)
  {
    CFRelease(Mutable);
  }

LABEL_5:
  if (v8)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

const void *_getChannelAtIndex(const __CFArray *a1, CFIndex a2)
{
  if (CFArrayGetCount(a1) <= a2)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v5 = CFGetTypeID(ValueAtIndex);
  if (v5 == CFDictionaryGetTypeID())
  {
    return ValueAtIndex;
  }

  else
  {
    return 0;
  }
}

uint64_t _visitSample(const __CFDictionary *a1, const __CFDictionary *a2, int a3, unint64_t *a4, CFErrorRef *a5)
{
  DriverID = IOReportChannelGetDriverID(a1);
  ChannelID = IOReportChannelGetChannelID(a1);
  v12 = a4[2];
  if (!v12)
  {
    v12 = *a4;
    a4[2] = *a4;
  }

  a4[3] = v12;
  *(a4 + 32) = 0;
  ++*(a4 + 10);
  v13 = a4[1];
  if (v12 >= v13)
  {
    return 16;
  }

  v14 = 0;
  v15 = *(a4 + 9);
  while (1)
  {
    v16 = *(v12 + 20);
    if (*(v12 + 20))
    {
      if (*v12 == DriverID && *(v12 + 8) == ChannelID)
      {
        break;
      }
    }

    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = *(v12 + 20);
    }

    v12 += v17 << 6;
    a4[2] = v12;
    if (v12 == v13)
    {
      v12 = *a4;
      a4[2] = *a4;
      v14 = 1;
      *(a4 + 32) = 1;
LABEL_15:
      v18 = 3;
      goto LABEL_16;
    }

    if (v14)
    {
      goto LABEL_15;
    }

    v18 = 1;
LABEL_16:
    ++v15;
    if (v12 >= a4[v18])
    {
      *(a4 + 9) = v15;
      return 16;
    }
  }

  *(a4 + 9) = v15 + 1;
  if (!IOReportChannelGetFormat(a1))
  {
    setChannelType(a2, (v12 + 16));
  }

  if (v12 + (v16 << 6) <= a4[1])
  {
    if (a3)
    {
      Mutable = CFDataCreateMutable(0, v16 << 6);
      CFDataAppendBytes(Mutable, v12, v16 << 6);
    }

    else
    {
      Mutable = CFDataCreateWithBytesNoCopy(0, v12, v16 << 6, *MEMORY[0x29EDB8EE8]);
    }

    CFDictionarySetValue(a2, @"RawElements", Mutable);
    CFRelease(Mutable);
    v22 = a4[1];
    v21 = a4[2];
    if (*(v21 + 20) <= 1u)
    {
      v23 = 1;
    }

    else
    {
      v23 = *(v21 + 20);
    }

    v24 = v21 + (v23 << 6);
    a4[2] = v24;
    result = 0;
    if (v24 == v22)
    {
      a4[2] = *a4;
      *(a4 + 32) = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
    {
      _visitSample_cold_1(a1);
      if (a5)
      {
        goto LABEL_25;
      }
    }

    else if (a5)
    {
LABEL_25:
      if (!*a5)
      {
        *a5 = createCFErr(-536870212, "absurd element count");
      }
    }

    a4[2] = 0;
    return 273;
  }

  return result;
}

__CFDictionary *compareAggregates(const __CFDictionary *a1, CFDictionaryRef theDict, uint64_t a3)
{
  v10 = 0;
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v4 = 0u;
  v5 = 0;
  v6 = a3;
  if (_iterate(theDict, a1, &v4, &v10))
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t _iterSubDictsForKey(CFDictionaryRef theDict, void *key, __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  v26 = *(a5 + 48);
  v10 = *(a5 + 64);
  v11 = *(a5 + 16);
  v23[0] = *a5;
  v23[1] = v11;
  theArray = 0;
  value = 0;
  v27 = v10;
  *&v26 = 0;
  LODWORD(v27) = *(a5 + 64) + 2;
  if (*(a5 + 60) == 1)
  {
    DWORD2(v26) = 0;
  }

  v12 = CFDictionaryGetValue(theDict, key);
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFDictionaryGetTypeID() && (!a3 || (value = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020])) != 0) && (!a4 || (*&v26 = CFDictionaryGetValue(a4, key), v26)) && (!*(a5 + 8) || (v15 = CFDictionaryGetCount(v13), (theArray = CFArrayCreateMutable(0, v15, MEMORY[0x29EDB9000])) != 0)))
    {
      if (*(a5 + 60))
      {
        v16 = 0;
      }

      else
      {
        v16 = 273;
      }

      DWORD2(v26) = v16;
      CFDictionaryApplyFunction(v13, _iterSubDicts, v23);
      v17 = DWORD2(v26);
      v18 = theArray;
      if ((BYTE8(v26) & 1) == 0)
      {
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v20 = Count + 1;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20 - 2);
              CFDictionaryRemoveValue(v13, ValueAtIndex);
              --v20;
            }

            while (v20 > 1);
          }
        }

        if (a3)
        {
          CFDictionarySetValue(a3, key, value);
        }

        else if (*(a5 + 8) && !CFDictionaryGetCount(v13))
        {
          CFDictionaryRemoveValue(theDict, key);
        }

        v17 = DWORD2(v26);
        v18 = theArray;
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    else
    {
      v17 = 273;
    }
  }

  else
  {
    v17 = 0;
  }

  if (value)
  {
    CFRelease(value);
  }

  return v17;
}

uint64_t getChannelType(const __CFDictionary *a1, unint64_t *a2)
{
  ChDetail = _getChDetail(a1, 1u);
  v4 = _validateInt(ChDetail);
  if (v4 == 0x8000000000000000)
  {
    return 3758097084;
  }

  v6 = v4;
  result = 0;
  *a2 = v6;
  return result;
}

unint64_t IOReportChannelGetChannelID(const __CFDictionary *a1)
{
  ChDetail = _getChDetail(a1, 0);

  return _validateInt(ChDetail);
}

unint64_t IOReportChannelGetDriverID(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"DriverID");

  return _validateInt(Value);
}

unint64_t _validateInt(const void *a1)
{
  if (!a1)
  {
    return 0x8000000000000000;
  }

  v2 = CFGetTypeID(a1);
  v3 = 0x8000000000000000;
  if (v2 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
    {
      return valuePtr;
    }
  }

  return v3;
}

uint64_t IOReportChannelGetFormat(const __CFDictionary *a1)
{
  v4 = 0;
  ChannelType = getChannelType(a1, &v4);
  v2 = v4;
  if (ChannelType)
  {
    return 0;
  }

  return v2;
}

const void *_getChDetail(const __CFDictionary *a1, unsigned int a2)
{
  Value = CFDictionaryGetValue(a1, @"LegendChannel");
  if (!Value)
  {
    return 0;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFArrayGetTypeID() || CFArrayGetCount(v4) <= a2)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v4, a2);
}

__CFDictionary *IOReportCreateSamplesDelta(const __CFDictionary *a1, const __CFDictionary *a2, uint64_t a3)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = __IOReportCreateSamplesDelta_block_invoke;
  v4[3] = &__block_descriptor_tmp_2;
  v4[4] = a3;
  return compareAggregates(a1, a2, v4);
}

uint64_t cloneElements(__CFDictionary *a1, CFDictionaryRef theDict, char a3)
{
  v3 = 3758097084;
  v14 = 0x8000000000000000;
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"RawElements");
      if (Value)
      {
        MutableCopy = CFDataCreateMutableCopy(0, 0, Value);
        if (MutableCopy)
        {
          v8 = MutableCopy;
          v15 = 0;
          CFDictionarySetValue(a1, @"RawElements", MutableCopy);
          if (a3)
          {
            Format = IOReportChannelGetFormat(a1);
            RawElements = getRawElements(a1, &v15, Format);
            if (!RawElements)
            {
LABEL_11:
              CFRelease(v8);
              return v3;
            }

            if (v15)
            {
              v11 = RawElements;
              v12 = &RawElements[64 * v15];
              do
              {
                memset_pattern8(v11 + 32, &v14, 0x20uLL);
                v11 += 64;
              }

              while (v11 < v12);
            }
          }

          v3 = 0;
          goto LABEL_11;
        }
      }
    }
  }

  return v3;
}

UInt8 *getRawElements(const __CFDictionary *a1, _WORD *a2, int a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a1, @"RawElements");
    if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFDataGetTypeID()) && CFDataGetLength(v7) >= 0x40 && (MutableBytePtr = CFDataGetMutableBytePtr(v7), MutableBytePtr[16] == a3))
    {
      v3 = MutableBytePtr;
      *a2 = CFDataGetLength(v7) >> 6;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t _compareSamples(const __CFDictionary *a1, const __CFDictionary *a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  v8 = 3758097084;
  Format = IOReportChannelGetFormat(a1);
  v10 = IOReportChannelGetFormat(a2);
  v11 = 0;
  v12 = 3758097090;
  if (Format && v10)
  {
    if (Format == v10)
    {
      v12 = 3758097126;
      v11 = "unknown report format";
      if (Format > 2)
      {
        if (Format == 3)
        {
          v48 = 0;
          v45 = 0;
          RawElements = getRawElements(a3, &v48, 3);
          if (!RawElements)
          {
            goto LABEL_65;
          }

          v37 = RawElements;
          v38 = v48;
          if (IOReportHistogramGetBucketCount(a3) != v38)
          {
            goto LABEL_65;
          }

          v39 = getRawElements(a2, &v45, 3);
          if (!v39 || v45 != v48)
          {
            goto LABEL_65;
          }

          memcpy(v37, v39, v45 << 6);
          if (v48)
          {
            v40 = 0;
            v41 = v37 + 56;
            while (1)
            {
              v46 = 0u;
              v47 = 0u;
              v12 = 1;
              if (_getHistogramValues(a1, v40, &v46))
              {
                goto LABEL_66;
              }

              v42 = v46;
              if (v46 == 0x8000000000000000)
              {
                goto LABEL_66;
              }

              v46 = 0u;
              v47 = 0u;
              v12 = 1;
              if (_getHistogramValues(a2, v40, &v46) || v46 == 0x8000000000000000)
              {
                goto LABEL_66;
              }

              v43 = v46 - v42;
              *(v41 - 3) = v46 - v42;
              if (v43)
              {
                v46 = 0u;
                v47 = 0u;
                v12 = 1;
                if (_getHistogramValues(a2, v40, &v46) || *(&v47 + 1) == 0x8000000000000000)
                {
                  goto LABEL_66;
                }

                *v41 = *(&v47 + 1);
                if (v42)
                {
                  v46 = 0u;
                  v47 = 0u;
                  v12 = 1;
                  if (_getHistogramValues(a1, v40, &v46) || *(&v47 + 1) == 0x8000000000000000)
                  {
                    goto LABEL_66;
                  }

                  *v41 -= *(&v47 + 1);
                }
              }

              else
              {
                *v41 = 0x8000000000000000;
              }

              v12 = 0;
              ++v40;
              v41 += 8;
              if (v40 >= v48)
              {
                goto LABEL_66;
              }
            }
          }
        }

        else
        {
          if (Format != 4)
          {
            goto LABEL_67;
          }

          LOWORD(v46) = 0;
          v48 = 0;
          v21 = getRawElements(a3, &v46, 4);
          if (!v21)
          {
            goto LABEL_65;
          }

          v22 = v21;
          v23 = getRawElements(a2, &v48, 4);
          if (!v23 || v48 != v46)
          {
            goto LABEL_65;
          }

          memcpy(v22, v23, v48 << 6);
          if (v46)
          {
            v24 = 0;
            v25 = (v22 + 32);
            do
            {
              v26 = 0;
              v27 = 4 * v24;
              do
              {
                ValueAtIndex = IOReportArrayGetValueAtIndex(a1, v27);
                v29 = IOReportArrayGetValueAtIndex(a2, v27);
                v30 = v29 - ValueAtIndex;
                if (v29 == 0x8000000000000000)
                {
                  v30 = ValueAtIndex;
                }

                if (ValueAtIndex == 0x8000000000000000)
                {
                  v30 = v29;
                }

                *&v25[v26] = v30;
                ++v27;
                v26 += 8;
              }

              while (v26 != 32);
              ++v24;
              v25 += 64;
            }

            while (v24 < v46);
          }
        }

LABEL_71:
        v12 = 0;
        goto LABEL_66;
      }

      if (Format == 1)
      {
        IntegerValue = IOReportSimpleGetIntegerValue(a1, 0);
        if (IntegerValue != 0x8000000000000000)
        {
          v32 = IntegerValue;
          v33 = IOReportSimpleGetIntegerValue(a2, 0);
          if (v33 != 0x8000000000000000)
          {
            v34 = v33;
            LOWORD(v46) = 0;
            v35 = getRawElements(a3, &v46, 1);
            if (v35)
            {
              if (v46 == 1)
              {
                v8 = 0;
                *(v35 + 4) = v34 - v32;
              }
            }
          }
        }

        v11 = 0;
        v12 = v8;
      }

      else if (Format == 2)
      {
        v48 = 0;
        v45 = 0;
        v13 = getRawElements(a3, &v48, 2);
        if (v13)
        {
          v14 = v13;
          v15 = v48;
          if (IOReportStateGetCount(a3) == v15)
          {
            v16 = getRawElements(a2, &v45, 2);
            if (v16)
            {
              if (v45 == v48)
              {
                memcpy(v14, v16, v45 << 6);
                if (v48)
                {
                  v17 = 0;
                  v18 = v14 + 48;
                  do
                  {
                    v46 = 0u;
                    v47 = 0u;
                    v12 = 1;
                    if (_getStateValues(a1, v17, &v46))
                    {
                      break;
                    }

                    v19 = *(&v46 + 1);
                    if (*(&v46 + 1) == 0x8000000000000000)
                    {
                      break;
                    }

                    v46 = 0u;
                    v47 = 0u;
                    v12 = 1;
                    if (_getStateValues(a2, v17, &v46))
                    {
                      break;
                    }

                    if (*(&v46 + 1) == 0x8000000000000000)
                    {
                      break;
                    }

                    *(v18 - 1) = *(&v46 + 1) - v19;
                    v46 = 0u;
                    v47 = 0u;
                    v12 = 1;
                    if (_getStateValues(a1, v17, &v46))
                    {
                      break;
                    }

                    v20 = v47;
                    if (v47 == 0x8000000000000000)
                    {
                      break;
                    }

                    v46 = 0u;
                    v47 = 0u;
                    v12 = 1;
                    if (_getStateValues(a2, v17, &v46))
                    {
                      break;
                    }

                    if (v47 == 0x8000000000000000)
                    {
                      break;
                    }

                    v12 = 0;
                    *v18 = v47 - v20;
                    v18 += 8;
                    ++v17;
                  }

                  while (v17 < v48);
                  goto LABEL_66;
                }

                goto LABEL_71;
              }
            }
          }
        }

LABEL_65:
        v12 = 1;
LABEL_66:
        v11 = 0;
      }
    }

    else
    {
      v12 = 3758097090;
      v11 = "mismatched formats";
    }
  }

LABEL_67:
  if (a4 && v12)
  {
    *a4 = createCFErr(v12, v11);
  }

  return v12;
}

unint64_t IOReportSimpleGetIntegerValue(const __CFDictionary *a1, unint64_t *a2)
{
  v7 = 0;
  if (!a1)
  {
    return 0x8000000000000000;
  }

  RawElements = getRawElements(a1, &v7, 1);
  v5 = 0x8000000000000000;
  if (RawElements)
  {
    if (v7 == 1 && RawElements[16] == 1)
    {
      v5 = *(RawElements + 4);
      if (a2)
      {
        *a2 = IOReportChannelGetUnit(a1);
      }
    }
  }

  return v5;
}

uint64_t IOReportIterate(const __CFDictionary *a1, uint64_t a2)
{
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = a2;
  return _iterate(a1, 0, &v3, 0);
}

__CFString *IOReportChannelGetChannelName(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"ChannelName");
  if (!Value)
  {
    ChDetail = _getChDetail(a1, 2u);
    v4 = _validateStr(ChDetail);
    if (v4)
    {
      Value = v4;
      CFDictionarySetValue(a1, @"ChannelName", v4);
    }

    else
    {
      v5 = _getChDetail(a1, 0);
      v6 = _validateInt(v5);
      v7 = copyPrintableIDString(v6);
      v8 = v7;
      Value = @"<unknown>";
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = @"<unknown>";
      }

      CFDictionarySetValue(a1, @"ChannelName", v9);
      if (v8)
      {
        CFRelease(v8);
        return v8;
      }
    }
  }

  return Value;
}

const void *_validateStr(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _iterSubDicts(CFTypeRef cf, const void *a2, __int128 *a3)
{
  if (*(a3 + 60) != 1 || (*(a3 + 56) & 1) == 0)
  {
    if (cf)
    {
      if (a2)
      {
        v6 = CFGetTypeID(cf);
        if (v6 == CFStringGetTypeID())
        {
          v7 = CFGetTypeID(a2);
          if (v7 == CFDictionaryGetTypeID())
          {
            v8 = *(a3 + 6);
            if (v8)
            {
              CFDictionaryGetValue(v8, cf);
            }

            v14 = a3[3];
            v12 = *a3;
            v13 = a3[1];
            v16 = HIDWORD(*(a3 + 8));
            v15 = *(a3 + 16) + 1;
            *(a3 + 60);
            v9 = *(a3 + 5);
            v10 = _iterate(a2);
            if (*(a3 + 60) == 1)
            {
              v10 |= *(a3 + 14);
            }

            *(a3 + 14) = v10;
            if ((v10 & 1) == 0)
            {
              if (v9)
              {
                *(a3 + 14) = 273;
              }

              else
              {
                v11 = *(a3 + 5);
                if (v11)
                {
                  CFDictionarySetValue(v11, cf, 0);
                }

                else if (*(a3 + 4))
                {
                  if (!CFDictionaryGetCount(a2))
                  {
                    CFArrayAppendValue(*(a3 + 4), cf);
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

CFStringRef IOReportCopyCurrentProcessName()
{
  v0 = getprogname();
  v1 = getpid();
  return CFStringCreateWithFormat(0, 0, @"%s <pid %d>", v0, v1);
}

__CFDictionary *IOReportCreateAggregate(int a1)
{
  valuePtr = a1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v2)
    {
      v3 = v2;
      CFDictionarySetValue(Mutable, @"QueryOpts", v2);
    }

    else
    {
      v3 = Mutable;
      Mutable = 0;
    }

    CFRelease(v3);
  }

  return Mutable;
}

uint64_t IOReportAddChannelDescription(const __CFDictionary *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, const void *a6, const void *a7, const void *a8, const void *a9, CFErrorRef *a10)
{
  v15 = 3758097084;
  LegendChannel = _createLegendChannel(a4, a5, a6, a10);
  if (LegendChannel)
  {
    v17 = LegendChannel;
    Channel = _createChannel(a2, a3, LegendChannel, a7, a8, a9, a10);
    if (Channel)
    {
      v19 = Channel;
      AggregateOpts = _getAggregateOpts(a1);
      v15 = _addChannel(a1, v19, AggregateOpts, a10);
      CFRelease(v19);
    }

    CFRelease(v17);
  }

  return v15;
}

__CFArray *_createLegendChannel(uint64_t a1, uint64_t a2, const void *a3, CFErrorRef *a4)
{
  v13 = a2;
  valuePtr = a1;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (v8)
    {
      v9 = v8;
      CFArraySetValueAtIndex(v7, 0, v8);
      CFRelease(v9);
      v10 = CFNumberCreate(0, kCFNumberLongLongType, &v13);
      if (v10)
      {
        v11 = v10;
        CFArraySetValueAtIndex(v7, 1, v10);
        CFRelease(v11);
        if (a3)
        {
          CFArraySetValueAtIndex(v7, 2, a3);
        }

        return v7;
      }
    }

    CFRelease(v7);
  }

  v7 = 0;
  if (a4)
  {
    *a4 = createCFErr(-536870211, "couldn't create channel legend");
  }

  return v7;
}

__CFDictionary *_createChannel(uint64_t a1, const void *a2, CFArrayRef theArray, const void *a4, const void *a5, const void *a6, CFErrorRef *a7)
{
  valuePtr = a1;
  if (CFArrayGetCount(theArray) < 2 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0), v14 = CFArrayGetValueAtIndex(theArray, 1), _validateInt(ValueAtIndex) == 0x8000000000000000) || _validateInt(v14) == 0x8000000000000000)
  {
    v15 = 0;
  }

  else
  {
    v15 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (v15)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v16 = Mutable;
        CFDictionarySetValue(Mutable, @"DriverID", v15);
        CFDictionarySetValue(v16, @"DriverName", a2);
        CFDictionarySetValue(v16, @"LegendChannel", theArray);
        if (a4)
        {
          CFDictionarySetValue(v16, @"IOReportGroupName", a4);
        }

        if (a5)
        {
          CFDictionarySetValue(v16, @"IOReportSubGroupName", a5);
        }

        if (a6)
        {
          CFDictionarySetValue(v16, @"IOReportChannelInfo", a6);
        }

        goto LABEL_8;
      }
    }
  }

  if (a7)
  {
    *a7 = createCFErr(-536870212, "couldn't create channel");
  }

  v16 = 0;
  result = 0;
  if (v15)
  {
LABEL_8:
    CFRelease(v15);
    return v16;
  }

  return result;
}

const __CFNumber *_getAggregateOpts(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"QueryOpts");
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v2, kCFNumberIntType, &valuePtr))
      {
        return valuePtr;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _addChannel(const __CFDictionary *a1, const void *a2, char a3, CFErrorRef *a4)
{
  v5 = 3758097090;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v8 = a1;
  v9 = CFGetTypeID(a1);
  v5 = 3758097090;
  if (v9 != CFDictionaryGetTypeID())
  {
    goto LABEL_19;
  }

  v10 = CFGetTypeID(a2);
  if (v10 != CFDictionaryGetTypeID())
  {
    goto LABEL_19;
  }

  if (a3)
  {
    AddDict = _findAddDict(v8, @"IOReportDrivers");
    if (!AddDict)
    {
      goto LABEL_18;
    }

    v23 = AddDict;
    Value = CFDictionaryGetValue(a2, @"DriverName");
    if (!Value)
    {
      goto LABEL_18;
    }

    v8 = _findAddDict(v23, Value);
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if ((a3 & 2) != 0)
  {
    v11 = CFDictionaryGetValue(a2, @"IOReportGroupName");
    v12 = _validateStr(v11);
    if (v12)
    {
      v13 = v12;
      v14 = _findAddDict(v8, @"IOReportChannelGroups");
      if (!v14)
      {
        goto LABEL_18;
      }

      v8 = _findAddDict(v14, v13);
      v15 = CFDictionaryGetValue(a2, @"IOReportSubGroupName");
      v16 = _validateStr(v15);
      if (v16)
      {
        v17 = v16;
        v18 = _findAddDict(v8, @"IOReportChannelGroups");
        if (v18)
        {
          v8 = _findAddDict(v18, v17);
          goto LABEL_12;
        }

LABEL_18:
        v5 = 3758097084;
        goto LABEL_19;
      }
    }
  }

LABEL_12:
  v19 = CFDictionaryGetValue(v8, @"IOReportChannels");
  if (v19)
  {
    v20 = v19;
    v21 = CFGetTypeID(v19);
    v5 = 3758097084;
    if (v21 != CFArrayGetTypeID())
    {
      goto LABEL_19;
    }

LABEL_24:
    CFArrayAppendValue(v20, a2);
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v5 = 3758097084;
  if (Mutable)
  {
    v20 = Mutable;
    CFDictionarySetValue(v8, @"IOReportChannels", Mutable);
    CFRelease(v20);
    goto LABEL_24;
  }

LABEL_19:
  if (a4)
  {
    *a4 = createCFErr(v5, "_addChannel() failed");
  }

  return v5;
}

unint64_t IOReportArrayGetValueAtIndex(const __CFDictionary *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0x8000000000000000;
  }

  v9 = 0;
  if (!a1)
  {
    return 0x8000000000000000;
  }

  RawElements = getRawElements(a1, &v9, 4);
  if (!RawElements)
  {
    return 0x8000000000000000;
  }

  v4 = a2 >> 2;
  if (v4 >= v9)
  {
    return 0x8000000000000000;
  }

  v5 = &RawElements[64 * v4];
  v6 = *(v5 + 3);
  v8[0] = *(v5 + 2);
  v8[1] = v6;
  return *(v8 + (a2 & 3));
}

uint64_t IOReportStateGetCount(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  ChannelType = getChannelType(a1, &v3);
  result = 0xFFFFFFFFLL;
  if (!ChannelType && v3 == 2)
  {
    return WORD2(v3);
  }

  return result;
}

uint64_t _getStateValues(const __CFDictionary *a1, int a2, _OWORD *a3)
{
  v3 = 3758097084;
  v13 = 0;
  if (a1)
  {
    RawElements = getRawElements(a1, &v13, 2);
    if (RawElements)
    {
      v8 = RawElements;
      v9 = v13;
      v14 = 0;
      if (!getChannelType(a1, &v14) && v14 == 2 && (a2 & 0x80000000) == 0 && WORD2(v14) == v9 && v13 >= a2)
      {
        v3 = 0;
        v10 = &v8[64 * a2];
        v11 = *(v10 + 3);
        *a3 = *(v10 + 2);
        a3[1] = v11;
      }
    }
  }

  return v3;
}

double IOReportStateGetDutyCycle(const __CFDictionary *a1, int a2)
{
  if (!a1)
  {
    return NAN;
  }

  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  if (!getChannelType(a1, &v10) && v10 == 2)
  {
    v4 = WORD2(v10);
    if (WORD2(v10))
    {
      v5 = 0;
      v6 = 0;
      while (!_getStateValues(a1, v6, &v8))
      {
        v5 += v9;
        if (v4 == ++v6)
        {
          if (v5 && !_getStateValues(a1, a2, &v8))
          {
            return v9 / v5;
          }

          return NAN;
        }
      }
    }
  }

  return NAN;
}

unint64_t IOReportStateGetInTransitions(const __CFDictionary *a1, int a2)
{
  memset(v3, 0, sizeof(v3));
  if (_getStateValues(a1, a2, v3))
  {
    return 0x8000000000000000;
  }

  else
  {
    return *(&v3[0] + 1);
  }
}

unint64_t IOReportStateGetIDForIndex(const __CFDictionary *a1, int a2)
{
  memset(v3, 0, sizeof(v3));
  if (_getStateValues(a1, a2, v3))
  {
    return 0x8000000000000000;
  }

  else
  {
    return *&v3[0];
  }
}

unint64_t IOReportStateGetResidency(const __CFDictionary *a1, int a2)
{
  v3 = 0u;
  v4 = 0u;
  if (_getStateValues(a1, a2, &v3))
  {
    return 0x8000000000000000;
  }

  else
  {
    return v4;
  }
}

__CFArray *IOReportStateGetNameForIndex(const __CFDictionary *a1, unsigned int a2)
{
  Value = CFDictionaryGetValue(a1, @"StateNames");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 != CFArrayGetTypeID() || (a2 & 0x80000000) != 0)
    {
      return 0;
    }
  }

  else
  {
    Count = IOReportStateGetCount(a1);
    if ((Count & 0x80000000) != 0)
    {
      return 0;
    }

    v11 = Count;
    result = CFArrayCreateMutable(0, Count, MEMORY[0x29EDB9000]);
    if (!result)
    {
      return result;
    }

    v5 = result;
    if (v11)
    {
      v12 = 0;
      while (1)
      {
        memset(v15, 0, sizeof(v15));
        if (_getStateValues(a1, v12, v15))
        {
          break;
        }

        if (*&v15[0] == 0x8000000000000000)
        {
          break;
        }

        v13 = copyPrintableIDString(*&v15[0]);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        CFArrayAppendValue(v5, v13);
        CFRelease(v14);
        if (v11 == ++v12)
        {
          goto LABEL_17;
        }
      }

      CFRelease(v5);
      return 0;
    }

LABEL_17:
    CFDictionarySetValue(a1, @"StateNames", v5);
    CFRelease(v5);
    if ((a2 & 0x80000000) != 0)
    {
      return 0;
    }
  }

  if (CFArrayGetCount(v5) <= a2)
  {
    return 0;
  }

  result = CFArrayGetValueAtIndex(v5, a2);
  if (result)
  {
    v8 = result;
    v9 = CFGetTypeID(result);
    if (v9 == CFStringGetTypeID())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFStringRef copyPrintableIDString(unint64_t a1)
{
  v2 = 0;
  v13 = *MEMORY[0x29EDCA608];
  v12 = 0;
  *cStr = 0;
  LODWORD(v3) = 8;
  v4 = MEMORY[0x29EDCA600];
LABEL_2:
  v3 = v3;
  v5 = 8 * v3 - 8;
  while (1)
  {
    v6 = v3;
    if (v3 < 1)
    {
      break;
    }

    --v3;
    v7 = a1 >> (v5 & 0xF8);
    v5 -= 8;
    if (v7)
    {
      v8 = v7;
      if (v7 < 0)
      {
        if (!__maskrune(v7, 0x40000uLL))
        {
          break;
        }
      }

      else if ((*(v4 + 4 * v7 + 60) & 0x40000) == 0)
      {
        break;
      }

      cStr[v2++] = v8;
      goto LABEL_2;
    }
  }

  if (v2 && (cStr[v2] = 0, !v6))
  {
    result = CFStringCreateWithCString(0, cStr, 0x8000100u);
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

const void *IOReportChannelGetGroup(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"IOReportGroupName");

  return _validateStr(Value);
}

const void *IOReportChannelGetSubGroup(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"IOReportSubGroupName");

  return _validateStr(Value);
}

unint64_t IOReportChannelGetUnit(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0x8000000000000000;
  }

  ChannelConfigDict = _getChannelConfigDict(a1);
  if (!ChannelConfigDict)
  {
    return 0x8000000000000000;
  }

  Value = CFDictionaryGetValue(ChannelConfigDict, @"IOReportChannelUnit");

  return _validateInt(Value);
}

const void *_getChannelConfigDict(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"IOReportChannelInfo");
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFDictionaryGetTypeID())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *IOReportChannelGetUnitLabel(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"UnitLabel");
  if (!Value)
  {
    Unit = IOReportChannelGetUnit(a1);
    if (Unit == 0x8000000000000000)
    {
      return 0;
    }

    else
    {
      Value = copyUnitLabel(Unit);
      if (Value)
      {
        CFDictionarySetValue(a1, @"UnitLabel", Value);
        CFRelease(Value);
      }
    }
  }

  return Value;
}

CFStringRef copyUnitLabel(unint64_t a1)
{
  v6 = 0;
  if (a1 == 0x8000000000000000)
  {
    return 0;
  }

  v3 = a1 & 0xFFFFFFFFFFFFFFLL;
  if ((a1 & 0xFFFFFFFFFFFFFFLL) <= 0x8BFFFFFFFFFFLL)
  {
    if ((a1 & 0xFFFFFFFFFFFFFFLL) > 0x7BFFFFFFFFLL)
    {
      if ((a1 & 0xFFFFFFFFFFFFFFLL) > 0x87FFFFFFFFLL)
      {
        if (v3 == 0x8800000000 || v3 == 0x8B00000000 || v3 == 0x890000000000)
        {
          goto LABEL_50;
        }
      }

      else if (v3 == 0x7C00000000 || v3 == 0x8200000000 || v3 == 0x8500000000)
      {
        goto LABEL_50;
      }

LABEL_51:
      v5 = HIBYTE(a1);
      v4 = "";
      if (HIBYTE(a1) <= 5)
      {
        if (v5 > 2)
        {
          switch(v5)
          {
            case 3:
              v4 = "J";
              return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
            case 4:
              v4 = "A";
              return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
            case 5:
              v4 = "V";
              return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
          }
        }

        else
        {
          switch(v5)
          {
            case 0:
              return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
            case 1:
              v4 = "s";
              return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
            case 2:
              v4 = "W";
              return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
          }
        }
      }

      else if (v5 <= 8)
      {
        switch(v5)
        {
          case 6:
            v4 = "F";
            return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
          case 7:
            v4 = "H";
            return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
          case 8:
            v4 = "Hz";
            return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
        }
      }

      else if (v5 > 99)
      {
        if (v5 == 100)
        {
          v4 = "events";
          return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
        }

        if (v5 == 101)
        {
          v4 = "packets";
          return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
        }
      }

      else
      {
        if (v5 == 9)
        {
          if (!v3)
          {
            v4 = "b";
          }

          if (v3 == 0x820000000000)
          {
            v4 = "B";
          }

          return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
        }

        if (v5 == 10)
        {
          v4 = "C";
          return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
        }
      }

      v4 = "??";
      return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
    }

    if ((a1 & 0xFFFFFFFFFFFFFFLL) <= 0x7600000000)
    {
      if (v3 == 0x7300000000 || v3 == 0x7600000000)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (v3 == 0x7600000001)
    {
      goto LABEL_42;
    }

    if (v3 != 0x7900000000)
    {
      if (v3 != 0x7980000018)
      {
        goto LABEL_51;
      }

LABEL_42:
      __strlcat_chk();
      v4 = "ticks";
      return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
    }

LABEL_50:
    __strlcat_chk();
    goto LABEL_51;
  }

  if ((a1 & 0xFFFFFFFFFFFFFFLL) <= 0x9CFFFFFFFFFFLL)
  {
    if ((a1 & 0xFFFFFFFFFFFFFFLL) <= 0x8C0000000007)
    {
      if (v3 == 0x8C0000000000 || v3 == 0x8C0000000004)
      {
        goto LABEL_50;
      }
    }

    else if (v3 == 0x8C0000000008 || v3 == 0x930000000000 || v3 == 0x960000000000)
    {
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  if ((a1 & 0xFFFFFFFFFFFFFFLL) <= 0xA9FFFFFFFFFFLL)
  {
    if (v3 == 0x9D0000000000 || v3 == 0xA00000000000 || v3 == 0xA70000000000)
    {
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  switch(v3)
  {
    case 0xAA0000000000:
      goto LABEL_50;
    case 0x1000000000000:
      v4 = "hwticks?";
      break;
    case 0x2000000000000:
      v4 = "hwpage?";
      break;
    default:
      goto LABEL_51;
  }

  return CFStringCreateWithFormat(0, 0, @"%s%s", &v6, v4);
}

double IOReportScaleValue(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a3 ^ a2) >> 56)
  {
    return NAN;
  }

  v8 = 0;
  v9 = 0;
  if (getFactorsFromScale(a2 & 0xFFFFFFFFFFFFFFLL, &v9, &v8))
  {
    return NAN;
  }

  v5 = v8;
  v6 = v9;
  if (getFactorsFromScale(a3 & 0xFFFFFFFFFFFFFFLL, &v9, &v8))
  {
    return NAN;
  }

  else
  {
    return a1 * v6 / v5 / v9 * v8;
  }
}

uint64_t getFactorsFromScale(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if ((a1 & 0xFF000000000000) != 0)
  {
    return 3758097090;
  }

  v4 = a1 & 0x7FFFFFFF;
  if ((a1 & 0x80000000) != 0)
  {
    v4 = 1;
  }

  v5 = a1 & 0x7FFFFFFF;
  if ((a1 & 0x7FFFFFFF) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1;
  }

  if ((a1 & 0x80000000) == 0 || v5 == 0)
  {
    v5 = 1;
  }

  if (BYTE4(a1))
  {
    v8 = (BYTE4(a1) - 127);
    if ((a1 >> 8) >> 24 > -2)
    {
      v10 = 1;
      if (BYTE4(a1) != 127)
      {
        do
        {
          v10 *= 10;
        }

        while (!__CFADD__(v8++, 1));
      }

      v5 *= v10;
    }

    else
    {
      v9 = 1;
      do
      {
        v9 *= 10;
        --v8;
      }

      while (v8);
      v6 *= v9;
    }
  }

  v3 = 0;
  v12 = v5 << (127 - BYTE5(a1));
  v13 = v6 << (BYTE5(a1) - 127);
  if ((a1 >> 16) >> 24 <= -2)
  {
    v12 = v5;
  }

  else
  {
    v13 = v6;
  }

  if (BYTE5(a1))
  {
    v6 = v13;
    v5 = v12;
  }

  *a2 = v6;
  *a3 = v5;
  return v3;
}

CFErrorRef createCFErr(CFIndex a1, const char *a2)
{
  userInfoKeys[1] = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDB8F60];
  userInfoValues = 0;
  userInfoKeys[0] = v3;
  if (a2)
  {
    userInfoValues = CFStringCreateWithCString(0, a2, 0x600u);
    if (!userInfoValues)
    {
      v5 = 0;
      goto LABEL_8;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = CFErrorCreateWithUserInfoKeysAndValues(0, *MEMORY[0x29EDB8F40], a1, userInfoKeys, &userInfoValues, v4);
  if (userInfoValues)
  {
    CFRelease(userInfoValues);
  }

LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

void iorErrLog(int a1, __CFString *a2, CFErrorRef err)
{
  if ((a1 & 0x80000000) == 0)
  {
    return;
  }

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = @"<unknown> function";
  }

  if (!err)
  {
    v7 = CFStringCreateWithFormat(0, 0, @"%@: %s", v4, "<unknown> error");
    goto LABEL_12;
  }

  v5 = CFErrorCopyFailureReason(err);
  if (v5)
  {
    v6 = v5;
    v7 = CFStringCreateWithFormat(0, 0, @"%@: %@", v4, v5);
  }

  else
  {
    v6 = CFErrorCopyDescription(err);
    v7 = CFStringCreateWithFormat(0, 0, @"%@: %@", v4, v6);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  CFRelease(v6);
LABEL_12:
  if (v7)
  {
    CFShow(v7);

    CFRelease(v7);
  }
}

uint64_t IOReportGetChannelCount(const __CFDictionary *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = __IOReportGetChannelCount_block_invoke;
  v3[3] = &unk_29EE82AC0;
  v3[4] = &v4;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = v3;
  if (_iterate(a1, 0, &v8, 0))
  {
    v1 = 0xFFFFFFFFLL;
  }

  else
  {
    v1 = *(v5 + 6);
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t IOReportPrune(const __CFDictionary *a1, uint64_t a2)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v3[0] = 0;
  v4 = 0u;
  v3[1] = a2;
  return _iterate(a1, 0, v3, 0);
}

uint64_t updateAggregate(const __CFDictionary *a1, uint64_t a2)
{
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = a2;
  return _iterate(a1, 0, &v3, 0);
}

uint64_t IOReportCreateSubscription(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3, uint64_t a4, CFErrorRef *a5)
{
  LOBYTE(v6) = 0;
  v7 = 0;
  v8 = -536870206;
  outputCnt = 1;
  v9 = "bad arguments";
  if (a2 && a3)
  {
    ChannelCount = IOReportGetChannelCount(a2);
    if ((ChannelCount & 0x80000000) != 0)
    {
      v7 = 0;
      LOBYTE(v6) = 0;
      v9 = "iteration error";
      goto LABEL_20;
    }

    v6 = ChannelCount;
    if (!ChannelCount)
    {
      v7 = 0;
      v9 = "no channels";
      goto LABEL_20;
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2000000000;
    v36 = 0;
    if (ChannelCount <= 0x555554D)
    {
      v13 = 24 * ChannelCount + 8;
      v14 = malloc_type_malloc(v13, 0x2AA60A34uLL);
      if (v14)
      {
        v7 = v14;
        *v14 = v6;
        *connect = MEMORY[0x29EDCA5F8];
        v28 = 0x40000000;
        v29 = ___createInterestList_block_invoke;
        v30 = &unk_29EE82BA0;
        v31 = &v33;
        v32 = v14;
        if (!IOReportIterate(a2, connect) && *(v34 + 6) == v6)
        {
          _Block_object_dispose(&v33, 8);
          if (IOReportCreateSubscription_cfOnce != -1)
          {
            IOReportCreateSubscription_cold_1();
          }

          Instance = _CFRuntimeCreateInstance();
          if (!Instance)
          {
            LOBYTE(v6) = 0;
            v9 = 0;
            v8 = -536870211;
            goto LABEL_20;
          }

          v16 = Instance;
          LODWORD(v8) = -536870211;
          connect[0] = 0;
          v17 = IOServiceMatching("IOReportHub");
          if (v17)
          {
            MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v17);
            v19 = MatchingService;
            if (MatchingService)
            {
              v20 = MEMORY[0x29EDCA6B0];
              LODWORD(v8) = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, connect);
              v21 = connect[0];
              if (v8)
              {
                v22 = "Could not open IOReportHub";
              }

              else
              {
                LODWORD(v8) = IOConnectCallScalarMethod(connect[0], 0, 0, 0, 0, 0);
                v21 = connect[0];
                if (!v8)
                {
                  *(v16 + 16) = connect[0];
                  IOObjectRelease(v19);
                  v24 = IOConnectCallMethod(*(v16 + 16), 2u, 0, 0, v7, v13, (v16 + 24), &outputCnt, 0, 0);
                  if (v24)
                  {
                    LODWORD(v8) = v24;
                    LOBYTE(v6) = 0;
                    v9 = "kIOReportUserClientConfigureInterests failed";
                  }

                  else
                  {
                    v25 = MEMORY[0x29C278900](*(v16 + 16), *(v16 + 24), *v20, v16 + 32, v16 + 40, 1);
                    if (!v25)
                    {
                      *a3 = cloneAggregate(a2, &__block_literal_global_10);
LABEL_24:
                      free(v7);
                      return v16;
                    }

                    LODWORD(v8) = v25;
                    LOBYTE(v6) = 0;
                    v9 = "IOConnectMapMemory() failed";
                  }

                  goto LABEL_38;
                }

                v22 = "kIOReportUserClientOpen failed";
              }

              if (v21)
              {
                IOServiceClose(v21);
              }
            }

            else
            {
              v22 = 0;
              LODWORD(v8) = -536870160;
            }
          }

          else
          {
            v19 = 0;
            v22 = 0;
          }

          if (a5)
          {
            *a5 = createCFErr(v8, v22);
          }

          if (v19)
          {
            IOObjectRelease(v19);
          }

          v9 = 0;
          LOBYTE(v6) = 1;
LABEL_38:
          CFRelease(v16);
          v8 = v8;
          goto LABEL_20;
        }

        free(v7);
      }
    }

    _Block_object_dispose(&v33, 8);
    v7 = 0;
    LOBYTE(v6) = 0;
    v8 = -536870211;
    v9 = "createInterestList() failed";
  }

LABEL_20:
  if (a5)
  {
    if ((v6 & 1) == 0)
    {
      *a5 = createCFErr(v8, v9);
    }
  }

  v16 = 0;
  result = 0;
  if (v7)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t __IOReportCreateSubscription_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __IOReportSubscriptionTypeID = result;
  return result;
}

uint64_t IOReportIterateSamplesRaw(const __CFDictionary *a1, CFDataRef theData, CFErrorRef *a3, uint64_t a4)
{
  v5 = -536870206;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x4800000000;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (!a1 || !theData || CFDataGetLength(theData) < 64)
  {
    goto LABEL_10;
  }

  Length = CFDataGetLength(theData);
  if (Length >= 0)
  {
    v10 = Length;
  }

  else
  {
    v10 = Length + 63;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v12 = v19[0];
  *(v19[0] + 24) = BytePtr;
  *(v12 + 32) = &BytePtr[v10 & 0xFFFFFFFFFFFFFFC0];
  *(v12 + 60) = 0;
  *(v12 + 64) = 0;
  v13 = MEMORY[0x29EDCA5F8];
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  v17[0] = v13;
  v17[1] = 0x40000000;
  v17[2] = __IOReportIterateSamplesRaw_block_invoke;
  v17[3] = &unk_29EE82B28;
  v17[5] = &v18;
  v17[6] = a3;
  v17[4] = a4;
  updated = updateAggregate(a1, v17);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
  {
    IOReportIterateSamplesRaw_cold_1(v19);
    if (updated)
    {
      goto LABEL_9;
    }

LABEL_16:
    v15 = 0;
    goto LABEL_14;
  }

  if (!updated)
  {
    goto LABEL_16;
  }

LABEL_9:
  v5 = -536870212;
LABEL_10:
  if (a3 && !*a3)
  {
    *a3 = createCFErr(v5, "couldn't iterate samples");
  }

  v15 = 1;
LABEL_14:
  _Block_object_dispose(&v18, 8);
  return v15;
}

uint64_t __IOReportIterateSamplesRaw_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  v5 = _visitSample(theDict, MutableCopy, 0, (*(*(a1 + 40) + 8) + 24), *(a1 + 48));
  if (!v5)
  {
    v5 = (*(*(a1 + 32) + 16))();
  }

  CFRelease(MutableCopy);
  return v5;
}

CFDataRef IOReportCreateNewRawSamplesBuffer(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  if (!a1 || !a2)
  {
    if (a3)
    {
      *a3 = createCFErr(-536870206, 0);
    }

    return 0;
  }

  if (_updateKernelBuffer(a1, a3))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return CFDataCreate(0, v4, v5);
}

uint64_t IOReportIterateNewSamples(uint64_t a1, const __CFDictionary *a2, CFErrorRef *a3, uint64_t a4)
{
  if (a1 && a2)
  {
    if (!_updateKernelBuffer(a1, a3))
    {
      v8 = CFDataCreateWithBytesNoCopy(0, *(a1 + 32), *(a1 + 40), *MEMORY[0x29EDB8EE8]);
      if (v8)
      {
        v9 = v8;
        v10 = IOReportIterateSamplesRaw(a2, v8, a3, a4);
        CFRelease(v9);
        return v10;
      }
    }
  }

  else if (a3)
  {
    *a3 = createCFErr(-536870206, 0);
  }

  return 1;
}

BOOL IOReportUpdateSamplesRaw(const __CFDictionary *a1, CFDataRef theData, uint64_t a3)
{
  v3 = &v13;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = -536870212;
  if (!a1 || !theData)
  {
    goto LABEL_5;
  }

  if (CFDataGetLength(theData) <= 63)
  {
    v3 = v14;
LABEL_5:
    v7 = 0;
    *(v3 + 6) = -536870206;
    goto LABEL_9;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = Length + 63;
  if (Length >= 0)
  {
    v10 = Length;
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = __IOReportUpdateSamplesRaw_block_invoke;
  v12[3] = &unk_29EE82B78;
  v12[6] = &BytePtr[v10 & 0xFFFFFFFFFFFFFFC0];
  v12[7] = a3;
  v12[4] = &v13;
  v12[5] = BytePtr;
  v7 = updateAggregate(a1, v12) == 0;
LABEL_9:
  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t __IOReportUpdateSamplesRaw_block_invoke(void *a1, const __CFDictionary *a2)
{
  value = 0;
  DriverID = IOReportChannelGetDriverID(a2);
  ChannelID = IOReportChannelGetChannelID(a2);
  v7 = a1[5];
  v6 = a1[6];
  while (1)
  {
    if (v7 >= v6)
    {
      goto LABEL_22;
    }

    v8 = *(v7 + 20);
    if (!*(v7 + 20))
    {
      break;
    }

    if (*v7 == DriverID && *(v7 + 8) == ChannelID)
    {
      if (v7 + (v8 << 6) > v6)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
        {
          _visitSample_cold_1(a2);
        }

        v11 = a1[7];
        if (v11 && !*v11)
        {
          v12 = *(*(a1[4] + 8) + 24);
          v13 = "absurd element count from provider";
          goto LABEL_46;
        }

        return 1;
      }

      if (CFDictionaryGetValueIfPresent(a2, @"RawElements", &value))
      {
        if (value && (v14 = CFGetTypeID(value), v14 == CFDataGetTypeID()))
        {
          Length = CFDataGetLength(value);
          if (Length == v8 << 6)
          {
            v21.length = Length;
            v21.location = 0;
            CFDataReplaceBytes(value, v21, v7, v21.length);
            v6 = a1[6];
LABEL_22:
            if (v7 != v6)
            {
              return 0;
            }

            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              __IOReportUpdateSamplesRaw_block_invoke_cold_2(a2);
            }

            v16 = a1[7];
            if (v16 && !*v16)
            {
              *a1[7] = createCFErr(*(*(a1[4] + 8) + 24), "Didn't find provider_id channel_id match for samplesDict channel");
            }

            *(*(a1[4] + 8) + 24) = -536870160;
            return 1;
          }

          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            __IOReportUpdateSamplesRaw_block_invoke_cold_1(a2);
          }

          v19 = a1[7];
          if (!v19 || *v19)
          {
            return 1;
          }

          v12 = *(*(a1[4] + 8) + 24);
          v13 = "Stale samplesDict, IOReporter elements count changed";
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
          {
            __IOReportUpdateSamplesRaw_block_invoke_cold_3(a2);
          }

          v17 = a1[7];
          if (!v17 || *v17)
          {
            return 1;
          }

          v12 = *(*(a1[4] + 8) + 24);
          v13 = "samplesDict has bad elemsData error";
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
        {
          __IOReportUpdateSamplesRaw_block_invoke_cold_4(a2);
        }

        v18 = a1[7];
        if (!v18 || *v18)
        {
          return 1;
        }

        v12 = *(*(a1[4] + 8) + 24);
        v13 = "Couldn't find kIOReportRawElementsKey in samplesDict";
      }

LABEL_46:
      *a1[7] = createCFErr(v12, v13);
      return 1;
    }

    v7 += v8 << 6;
  }

  v9 = a1[7];
  if (v9 && !*v9)
  {
    *a1[7] = createCFErr(*(*(a1[4] + 8) + 24), "bad raw data from provider");
  }

  return 16;
}

BOOL IOReportUpdateSamples(const __CFDictionary *a1, uint64_t a2, CFErrorRef *a3)
{
  if (a1 && a2)
  {
    if (_updateKernelBuffer(a2, a3) || (v7 = CFDataCreateWithBytesNoCopy(0, *(a2 + 32), *(a2 + 40), *MEMORY[0x29EDB8EE8])) == 0)
    {
      updated = 0;
      if (!a3)
      {
        return updated;
      }
    }

    else
    {
      v8 = v7;
      updated = IOReportUpdateSamplesRaw(a1, v7, a3);
      CFRelease(v8);
      if (!a3)
      {
        return updated;
      }
    }
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    updated = 0;
    *a3 = createCFErr(-536870206, 0);
    if (!a3)
    {
      return updated;
    }
  }

  if (!updated)
  {
    if (!*a3)
    {
      updated = 0;
      *a3 = createCFErr(-536870212, "unknown error");
      return updated;
    }

    return 0;
  }

  return updated;
}

uint64_t ___createInterestList_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  DriverID = IOReportChannelGetDriverID(a2);
  ChannelID = IOReportChannelGetChannelID(a2);
  result = 1;
  if (DriverID != 0x8000000000000000 && ChannelID != 0x8000000000000000)
  {
    v8 = 0;
    result = getChannelType(a2, &v8);
    if (result)
    {
      return 1;
    }

    else
    {
      v7 = *(a1 + 40) + 8;
      *(v7 + 24 * *(*(*(a1 + 32) + 8) + 24)) = DriverID;
      *(v7 + 24 * *(*(*(a1 + 32) + 8) + 24) + 8) = ChannelID;
      *(v7 + 24 * (*(*(*(a1 + 32) + 8) + 24))++ + 16) = v8;
    }
  }

  return result;
}

uint64_t _deallocSubscription(uint64_t a1)
{
  MEMORY[0x29C278910](*(a1 + 16), *(a1 + 24), *MEMORY[0x29EDCA6B0], *(a1 + 32));
  result = *(a1 + 16);
  if (result)
  {

    return IOServiceClose(result);
  }

  return result;
}

__CFString *OUTLINED_FUNCTION_4()
{

  return IOReportChannelGetChannelName(v0);
}

const void *OUTLINED_FUNCTION_5()
{

  return IOReportChannelGetSubGroup(v0);
}

const void *OUTLINED_FUNCTION_6()
{

  return IOReportChannelGetGroup(v0);
}

__CFDictionary *IOReportCopyChannelsForDrivers(const void *a1, int a2, CFErrorRef *a3)
{
  Aggregate = IOReportCreateAggregate(a2);
  if (Aggregate)
  {
    v6 = Aggregate;
    v7 = a1 == 0;
    if (a1)
    {
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 0x40000000;
      v13[2] = __IOReportCopyChannelsForDrivers_block_invoke;
      v13[3] = &__block_descriptor_tmp_1;
      v13[4] = a3;
      v13[5] = Aggregate;
      v8 = _iterateMatches(a1, v13);
      if (!v8)
      {
        return v6;
      }

      v9 = v8;
      v10 = 0;
    }

    else
    {
      v10 = "no matching dict";
      v9 = -536870206;
    }

    CFRelease(v6);
    v11 = v9;
  }

  else
  {
    v11 = -536870211;
    v7 = 1;
    v10 = "couldn't make dict";
  }

  v6 = 0;
  if (a3 && v7)
  {
    v6 = 0;
    *a3 = createCFErr(v11, v10);
  }

  return v6;
}

uint64_t _iterateMatches(const void *a1, uint64_t a2)
{
  existing = 0;
  CFRetain(a1);
  MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x29EDBB110], a1, &existing);
  if (MatchingServices)
  {
    v5 = MatchingServices;
  }

  else if (IOIteratorIsValid(existing))
  {
    while (IOIteratorIsValid(existing))
    {
      while (1)
      {
        v7 = IOIteratorNext(existing);
        if (!v7)
        {
          break;
        }

        v8 = v7;
        v5 = (*(a2 + 16))(a2, v7);
        IOObjectRelease(v8);
        if (v5)
        {
          goto LABEL_3;
        }
      }

      v5 = 0;
      if (IOIteratorIsValid(existing))
      {
        goto LABEL_3;
      }
    }

    v5 = 3758097131;
  }

  else
  {
    v5 = 0;
  }

LABEL_3:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v5;
}

uint64_t __IOReportCopyChannelsForDrivers_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _IOReportCopyChannelsForDriver(a2, 0, 0, *(a1 + 32));
  if (!v3)
  {
    return 3758097084;
  }

  v4 = v3;
  v5 = IOReportMergeChannels(*(a1 + 40), v3, *(a1 + 32));
  CFRelease(v4);
  return v5;
}

uint64_t IOReportMergeChannels(const __CFDictionary *a1, const __CFDictionary *a2, CFErrorRef *a3)
{
  v4 = 0;
  v5 = 273;
  if (a2 != a1 && a1 && a2)
  {
    AggregateOpts = _getAggregateOpts(a1);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 0x40000000;
    v10[2] = __IOReportMergeChannels_block_invoke;
    v10[3] = &__block_descriptor_tmp_31;
    v11 = AggregateOpts;
    v10[4] = a1;
    v10[5] = a3;
    v5 = IOReportIterate(a2, v10);
    v4 = v5 != 0;
  }

  if (a3 && v5 && !v4)
  {
    *a3 = createCFErr(-536870206, "bad argument");
  }

  return v5;
}

__CFDictionary *IOReportCopyChannelsInCategories(__int16 a1, int a2, CFErrorRef *a3)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = __IOReportCopyChannelsInCategories_block_invoke;
  v4[3] = &__block_descriptor_tmp_4;
  v5 = a1;
  return IOReportCopyFilteredChannels(a2, a3, v4);
}

__CFDictionary *IOReportCopyFilteredChannels(int a1, CFErrorRef *a2, uint64_t a3)
{
  keys = @"IOReportLegendPublic";
  v6 = *MEMORY[0x29EDB8ED8];
  values = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], &keys, MEMORY[0x29EDB8F00], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!values)
  {
    v7 = 0;
    v10 = "prop create failed";
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  keys = @"IOPropertyMatch";
  v7 = CFDictionaryCreate(v6, &keys, &values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v7)
  {
    v10 = "dict create failed";
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  Aggregate = IOReportCreateAggregate(a1);
  if (!Aggregate)
  {
    v10 = "couldn't make dict";
    if (!a2)
    {
LABEL_10:
      v9 = 0;
      v11 = 0;
      if (!v7)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    *a2 = createCFErr(-536870211, v10);
    goto LABEL_10;
  }

  v9 = Aggregate;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v13[2] = __IOReportCopyFilteredChannels_block_invoke;
  v13[3] = &unk_29EE82CE8;
  v14 = a1;
  v13[4] = a3;
  v13[5] = Aggregate;
  v13[6] = a2;
  if (_iterateMatches(v7, v13))
  {
    CFRelease(v9);
    v9 = 0;
  }

LABEL_11:
  CFRelease(v7);
  v11 = v9;
LABEL_12:
  if (values)
  {
    CFRelease(values);
  }

  return v11;
}

uint64_t __IOReportCopyChannelsInCategories_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  v6 = 0;
  ChannelType = getChannelType(a2, &v6);
  v4 = WORD1(v6);
  if (ChannelType)
  {
    v4 = -1;
  }

  return 16 * ((v4 & *(a1 + 32)) == 0);
}

uint64_t IOReportChannelGetCategories(const __CFDictionary *a1)
{
  v4 = 0;
  ChannelType = getChannelType(a1, &v4);
  v2 = WORD1(v4);
  if (ChannelType)
  {
    return -1;
  }

  return v2;
}

__CFDictionary *IOReportCopyChannelsOfFormat(char a1, int a2, CFErrorRef *a3)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = __IOReportCopyChannelsOfFormat_block_invoke;
  v4[3] = &__block_descriptor_tmp_5;
  v5 = a1;
  return IOReportCopyFilteredChannels(a2, a3, v4);
}

uint64_t __IOReportCopyChannelsOfFormat_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  v6 = 0;
  ChannelType = getChannelType(a2, &v6);
  v4 = v6;
  if (ChannelType)
  {
    v4 = 0;
  }

  return 16 * (*(a1 + 32) != v4);
}

__CFDictionary *IOReportCopyChannelsInGroup(uint64_t a1, uint64_t a2, int a3, CFErrorRef *a4)
{
  if (a1 | a2)
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 0x40000000;
    v7[2] = __IOReportCopyChannelsInGroup_block_invoke;
    v7[3] = &__block_descriptor_tmp_7;
    v7[4] = a1;
    v7[5] = a2;
    return IOReportCopyFilteredChannels(a3, a4, v7);
  }

  else if (a4)
  {
    CFErr = createCFErr(-536870206, "no group or subgroup!");
    result = 0;
    *a4 = CFErr;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t __IOReportCopyChannelsInGroup_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"IOReportGroupName");
  v5 = _validateStr(Value);
  v6 = CFDictionaryGetValue(theDict, @"IOReportSubGroupName");
  v7 = _validateStr(v6);
  v8 = *(a1 + 32);
  if ((!v8 || v5 && CFEqual(v8, v5)) && ((v9 = *(a1 + 40)) == 0 || v7 && CFEqual(v9, v7)))
  {
    return 0;
  }

  else
  {
    return 16;
  }
}

uint64_t IOReportSelectChannelsInGroup(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  if (a2 && !a3)
  {
    v6 = v12;
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 0x40000000;
    v12[2] = __IOReportSelectChannelsInGroup_block_invoke;
    v12[3] = &__block_descriptor_tmp_8_0;
    v12[4] = a2;
    goto LABEL_10;
  }

  if (!a2 && a3)
  {
    v6 = v11;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = __IOReportSelectChannelsInGroup_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_9;
    v11[4] = a3;
    goto LABEL_10;
  }

  if (a2 && a3)
  {
    v6 = v10;
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 0x40000000;
    v10[2] = __IOReportSelectChannelsInGroup_block_invoke_3;
    v10[3] = &__block_descriptor_tmp_10;
    v10[4] = a2;
    v10[5] = a3;
LABEL_10:
    result = IOReportPrune(a1, v6);
    if ((result & 1) == 0)
    {
      return result;
    }

    if (a4)
    {
      v8 = "channel pruning failed";
      v9 = -536870212;
LABEL_15:
      *a4 = createCFErr(v9, v8);
      return 1;
    }

    return 1;
  }

  if (a4)
  {
    v8 = "no group or subgroup!";
    v9 = -536870206;
    goto LABEL_15;
  }

  return 1;
}

uint64_t __IOReportSelectChannelsInGroup_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"IOReportGroupName");
  v4 = _validateStr(Value);
  if (v4 && CFEqual(v4, *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return 16;
  }
}

uint64_t __IOReportSelectChannelsInGroup_block_invoke_2(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"IOReportSubGroupName");
  v4 = _validateStr(Value);
  if (v4 && CFEqual(v4, *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return 16;
  }
}

uint64_t __IOReportSelectChannelsInGroup_block_invoke_3(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"IOReportGroupName");
  v5 = _validateStr(Value);
  v6 = CFDictionaryGetValue(theDict, @"IOReportSubGroupName");
  v7 = _validateStr(v6);
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (v9 = v7, CFEqual(v5, *(a1 + 32))) && CFEqual(v9, *(a1 + 40)))
  {
    return 0;
  }

  else
  {
    return 16;
  }
}

__CFDictionary *IOReportCopyChannelsWithUnit(uint64_t a1, int a2, CFErrorRef *a3)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = __IOReportCopyChannelsWithUnit_block_invoke;
  v4[3] = &__block_descriptor_tmp_12_0;
  v4[4] = a1;
  return IOReportCopyFilteredChannels(a2, a3, v4);
}

__CFDictionary *IOReportCreateUnitInfo(uint64_t a1)
{
  valuePtr = a1;
  Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v2 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (v2)
    {
      v3 = v2;
      CFDictionarySetValue(Mutable, @"IOReportChannelUnit", v2);
    }

    else
    {
      v3 = Mutable;
      Mutable = 0;
    }

    CFRelease(v3);
  }

  return Mutable;
}

CFStringRef IOReportCopyDriverName(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  memset(v5, 0, sizeof(v5));
  entryID = 0;
  if (IORegistryEntryGetRegistryEntryID(a1, &entryID) || MEMORY[0x29C278970](a1, v5))
  {
    result = 0;
  }

  else
  {
    result = CFStringCreateWithFormat(0, 0, @"%s <id %#llx>", v5, entryID);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

__CFDictionary *IOReportCopyChannelsWithID(const void *a1, uint64_t a2, CFErrorRef *a3)
{
  if (!a1)
  {
    return 0;
  }

  Aggregate = IOReportCreateAggregate(0);
  if (Aggregate)
  {
    v7 = Aggregate;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = __IOReportCopyChannelsWithID_block_invoke;
    v9[3] = &__block_descriptor_tmp_20;
    v9[4] = a2;
    v9[5] = a3;
    v9[6] = Aggregate;
    if (_iterateMatches(a1, v9))
    {
      CFRelease(v7);
      return 0;
    }
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v7 = 0;
    *a3 = createCFErr(-536870211, "couldn't make dict");
  }

  return v7;
}

uint64_t __IOReportCopyChannelsWithID_block_invoke(uint64_t a1, uint64_t a2)
{
  LegendChannel = _createLegendChannel(*(a1 + 32), 0, 0, *(a1 + 40));
  if (!LegendChannel)
  {
    return 3758097084;
  }

  v5 = LegendChannel;
  DriverChannel = _createDriverChannel(a2, LegendChannel, 0, 0, 0, 0, *(a1 + 40));
  CFRelease(v5);
  if (!DriverChannel)
  {
    return 3758097084;
  }

  v7 = _addChannel(*(a1 + 48), DriverChannel, 0, *(a1 + 40));
  CFRelease(DriverChannel);
  return v7;
}

__CFDictionary *_createDriverChannel(uint64_t a1, const __CFArray *a2, const void *a3, const void *a4, const void *a5, uint64_t a6, CFErrorRef *a7)
{
  entryID = 0;
  RegistryEntryID = IORegistryEntryGetRegistryEntryID(a1, &entryID);
  if (RegistryEntryID)
  {
    if (a7)
    {
      v15 = 0;
      *a7 = createCFErr(RegistryEntryID, "error extracting driver info");
      return v15;
    }

    return 0;
  }

  v16 = IOReportCopyDriverName(a1);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  Channel = _createChannel(entryID, v16, a2, a3, a4, a5, a7);
  v15 = Channel;
  if (a6)
  {
    if (Channel)
    {
      v19 = (*(a6 + 16))(a6, Channel);
      if (v19)
      {
        if (a7 && v19 != 16)
        {
          *a7 = createCFErr(5, "channel filter returned an error");
        }

        CFRelease(v15);
        v15 = 0;
      }
    }
  }

  CFRelease(v17);
  return v15;
}

__CFDictionary *_IOReportCopyChannelsForDriver(uint64_t a1, int a2, uint64_t a3, CFErrorRef *a4)
{
  v5 = -536870206;
  if (!a1 || !IOObjectGetUserRetainCount(a1))
  {
    v13 = 0;
    v39 = "invalid driver";
    goto LABEL_39;
  }

  Aggregate = IOReportCreateAggregate(a2);
  if (!Aggregate)
  {
    v13 = 0;
    v5 = -536870211;
    v39 = "could not allocate collection";
    goto LABEL_39;
  }

  v10 = Aggregate;
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"IOReportLegendPublic", 0, 0);
  if (!CFProperty)
  {
    return v10;
  }

  CFRelease(CFProperty);
  v12 = IORegistryEntryCreateCFProperty(a1, @"IOReportLegend", *MEMORY[0x29EDB8ED8], 0);
  v13 = v12;
  if (!v12)
  {
    v5 = -536870160;
    v39 = "no legend";
LABEL_51:
    CFRelease(v10);
LABEL_39:
    if (a4 && !*a4)
    {
      v10 = 0;
      *a4 = createCFErr(v5, v39);
      if (!v13)
      {
        return v10;
      }

      goto LABEL_43;
    }

    v10 = 0;
    goto LABEL_42;
  }

  v14 = CFGetTypeID(v12);
  if (v14 != CFArrayGetTypeID())
  {
    CFRelease(v13);
    v13 = 0;
    v5 = -536870199;
    v39 = "bad legend";
    goto LABEL_51;
  }

  v46 = 0;
  if (a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = &v46;
  }

  if (CFArrayGetCount(v13) < 1)
  {
    goto LABEL_43;
  }

  v42 = a2;
  v43 = v15;
  v44 = a3;
  v16 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
    if (!ValueAtIndex)
    {
      break;
    }

    v18 = ValueAtIndex;
    v19 = CFGetTypeID(ValueAtIndex);
    if (v19 != CFDictionaryGetTypeID())
    {
      break;
    }

    Value = CFDictionaryGetValue(v18, @"IOReportGroupName");
    if (!Value || (v21 = Value, v22 = CFGetTypeID(Value), v22 != CFStringGetTypeID()))
    {
      v21 = 0;
    }

    v23 = CFDictionaryGetValue(v18, @"IOReportSubGroupName");
    v24 = v23;
    if (v23)
    {
      v25 = CFGetTypeID(v23);
      if (v25 == CFStringGetTypeID())
      {
        if (!v21)
        {
          break;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    v26 = CFDictionaryGetValue(v18, @"IOReportChannelInfo");
    if (!v26 || (v27 = v26, v28 = CFGetTypeID(v26), v28 != CFDictionaryGetTypeID()))
    {
      v27 = 0;
    }

    v29 = CFDictionaryGetValue(v18, @"IOReportChannels");
    if (!v29)
    {
      break;
    }

    v30 = v29;
    v31 = CFGetTypeID(v29);
    if (v31 != CFArrayGetTypeID())
    {
      break;
    }

    v45 = v21;
    v41 = v16;
    if (CFArrayGetCount(v30) >= 1)
    {
      v32 = 0;
      do
      {
        v33 = CFArrayGetValueAtIndex(v30, v32);
        if (!v33)
        {
          break;
        }

        v34 = v33;
        v35 = CFGetTypeID(v33);
        if (v35 != CFArrayGetTypeID())
        {
          break;
        }

        DriverChannel = _createDriverChannel(a1, v34, v45, v24, v27, v44, v43);
        if (DriverChannel)
        {
          v37 = DriverChannel;
          v38 = _addChannel(v10, DriverChannel, v42, v43);
          CFRelease(v37);
          if (v38)
          {
            goto LABEL_50;
          }
        }

        else if (*v43)
        {
LABEL_50:
          v39 = 0;
          v5 = -536870212;
          goto LABEL_51;
        }
      }

      while (++v32 < CFArrayGetCount(v30));
    }

    v16 = v41 + 1;
  }

  while (v41 + 1 < CFArrayGetCount(v13));
LABEL_42:
  if (v13)
  {
LABEL_43:
    CFRelease(v13);
  }

  return v10;
}

uint64_t __IOReportCopyFilteredChannels_block_invoke(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v4 = _IOReportCopyChannelsForDriver(a2, *(a1 + 56), *(a1 + 32), &cf);
  if (v4)
  {
    v5 = v4;
    v6 = IOReportMergeChannels(*(a1 + 40), v4, *(a1 + 48));
  }

  else
  {
    v5 = IOReportCopyDriverName(a2);
    iorErrLog(*(a1 + 56), v5, cf);
    v6 = 0;
    v7 = 0;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  CFRelease(v5);
  v7 = v6;
LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t setChannelType(const __CFDictionary *a1, const void *a2)
{
  v3 = 3758097084;
  Value = CFDictionaryGetValue(a1, @"LegendChannel");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFArrayGetTypeID())
    {
      v7 = CFNumberCreate(0, kCFNumberLongLongType, a2);
      if (v7)
      {
        v8 = v7;
        CFArraySetValueAtIndex(v5, 1, v7);
        CFRelease(v8);
        return 0;
      }
    }
  }

  return v3;
}

const __CFDictionary *getChannelConfig(const __CFDictionary *result)
{
  if (result)
  {
    result = _getChannelConfigDict(result);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IOReportChannelConfig");
      if (result)
      {
        v1 = result;
        v2 = CFGetTypeID(result);
        if (v2 == CFDataGetTypeID())
        {
          return v1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

const __CFDictionary *IOReportChannelCopyDescription(const __CFDictionary *result, uint64_t a2, const char *a3)
{
  if (result)
  {
    v4 = result;
    v17 = 0;
    Value = CFDictionaryGetValue(result, @"DriverName");
    ChDetail = _getChDetail(v4, 0);
    v7 = _validateInt(ChDetail);
    if (getChannelType(v4, &v17))
    {
      return 0;
    }

    else
    {
      ChannelName = IOReportChannelGetChannelName(v4);
      UnitLabel = IOReportChannelGetUnitLabel(v4);
      v10 = CFDictionaryGetValue(v4, @"IOReportGroupName");
      v11 = _validateStr(v10);
      v12 = CFDictionaryGetValue(v4, @"IOReportSubGroupName");
      v13 = _validateStr(v12);
      v14 = "";
      if (a3)
      {
        v14 = a3;
      }

      v15 = @"(none)";
      if (v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = @"(none)";
      }

      if (v13)
      {
        v15 = v13;
      }

      return CFStringCreateWithFormat(0, 0, @"%s%@ %@ < %#llx (%@) | G/g %@/%@ | cat %#04x | format %#04x | elts %u >\n", v14, Value, ChannelName, v7, UnitLabel, v16, v15, WORD1(v17), v17, WORD2(v17));
    }
  }

  return result;
}

const __CFDictionary *IOReportChannelGetDriverName(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"DriverName");
  }

  return result;
}

CFMutableDictionaryRef _findAddDict(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    Mutable = Value;
    v6 = CFGetTypeID(Value);
    if (v6 != CFDictionaryGetTypeID())
    {
      return 0;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      CFDictionarySetValue(a1, a2, Mutable);
      CFRelease(Mutable);
    }
  }

  return Mutable;
}

uint64_t IOReportHistogramGetBucketCount(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  ChannelType = getChannelType(a1, &v3);
  result = 0xFFFFFFFFLL;
  if (!ChannelType && v3 == 3)
  {
    return WORD2(v3);
  }

  return result;
}

unint64_t IOReportHistogramGetBucketHits(const __CFDictionary *a1, int a2)
{
  memset(v3, 0, sizeof(v3));
  if (_getHistogramValues(a1, a2, v3))
  {
    return 0x8000000000000000;
  }

  else
  {
    return *&v3[0];
  }
}

uint64_t _getHistogramValues(const __CFDictionary *a1, int a2, _OWORD *a3)
{
  v3 = 3758097084;
  v13 = 0;
  if (a1)
  {
    RawElements = getRawElements(a1, &v13, 3);
    if (RawElements)
    {
      v8 = RawElements;
      v9 = v13;
      v14 = 0;
      if (!getChannelType(a1, &v14) && v14 == 3 && WORD2(v14) == v9 && v13 >= a2)
      {
        v3 = 0;
        v10 = &v8[64 * a2];
        v11 = *(v10 + 3);
        *a3 = *(v10 + 2);
        a3[1] = v11;
      }
    }
  }

  return v3;
}

unint64_t IOReportHistogramGetBucketMinValue(const __CFDictionary *a1, int a2)
{
  memset(v3, 0, sizeof(v3));
  if (_getHistogramValues(a1, a2, v3))
  {
    return 0x8000000000000000;
  }

  else
  {
    return *(&v3[0] + 1);
  }
}

unint64_t IOReportHistogramGetBucketMaxValue(const __CFDictionary *a1, int a2)
{
  v3 = 0u;
  v4 = 0u;
  if (_getHistogramValues(a1, a2, &v3))
  {
    return 0x8000000000000000;
  }

  else
  {
    return v4;
  }
}

unint64_t IOReportHistogramGetBucketSum(const __CFDictionary *a1, int a2)
{
  v3 = 0u;
  v4 = 0u;
  if (_getHistogramValues(a1, a2, &v3))
  {
    return 0x8000000000000000;
  }

  else
  {
    return *(&v4 + 1);
  }
}

unint64_t IOReportHistogramGetMinValue(const __CFDictionary *a1)
{
  BucketCount = IOReportHistogramGetBucketCount(a1);
  if (BucketCount < 1)
  {
    return 0x8000000000000000;
  }

  v3 = BucketCount;
  v4 = 0;
  while (1)
  {
    v6 = 0u;
    v7 = 0u;
    if (_getHistogramValues(a1, v4, &v6) || v6)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0x8000000000000000;
    }
  }

  v6 = 0u;
  v7 = 0u;
  if (_getHistogramValues(a1, v4, &v6))
  {
    return 0x8000000000000000;
  }

  else
  {
    return *(&v6 + 1);
  }
}

unint64_t IOReportHistogramGetMaxValue(const __CFDictionary *a1)
{
  BucketCount = IOReportHistogramGetBucketCount(a1);
  do
  {
    if (!BucketCount)
    {
      return 0x8000000000000000;
    }

    --BucketCount;
    v4 = 0u;
    v5 = 0u;
  }

  while (!_getHistogramValues(a1, BucketCount, &v4) && !v4);
  v4 = 0u;
  v5 = 0u;
  if (_getHistogramValues(a1, BucketCount, &v4))
  {
    return 0x8000000000000000;
  }

  else
  {
    return v5;
  }
}

uint64_t IOReportHistogramGetBucketBounds(const __CFDictionary *a1, int a2, void *a3, void *a4)
{
  v4 = 3758097084;
  if (!a1)
  {
    return v4;
  }

  if (!CFDictionaryContainsKey(a1, @"ProcessedChannelConfig"))
  {
    valuePtr = 0;
    capacity = 0;
    if (getChannelType(a1, &capacity))
    {
      return v4;
    }

    if (capacity != 3)
    {
      return v4;
    }

    ChannelConfig = getChannelConfig(a1);
    if (!ChannelConfig)
    {
      return v4;
    }

    v19 = ChannelConfig;
    Length = CFDataGetLength(ChannelConfig);
    v21 = Length >> 4;
    if (!(Length >> 4))
    {
      return v4;
    }

    v22 = Length;
    BytePtr = CFDataGetBytePtr(v19);
    if (!BytePtr)
    {
      return v4;
    }

    v24 = BytePtr;
    theArray = CFArrayCreateMutable(0, WORD2(capacity), MEMORY[0x29EDB9000]);
    if (!theArray)
    {
      return v4;
    }

    v39 = a3;
    if (v21 >= 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      allocator = *MEMORY[0x29EDB8ED8];
      v37 = (v22 >> 4) & 0x7FFFFFFF;
      v38 = v24;
      while (1)
      {
        v40 = v25;
        v28 = &v24[16 * v25];
        if (*(v28 + 3) >= 1)
        {
          break;
        }

        v32 = v26;
LABEL_38:
        v25 = v40 + 1;
        v26 = v32;
        v24 = v38;
        if (v40 + 1 == v37)
        {
          goto LABEL_39;
        }
      }

      v29 = 0;
      v30 = -1;
      while (v27 < WORD2(capacity))
      {
        if (*(v28 + 1))
        {
          v31 = v30;
          v32 = 1;
          do
          {
            v32 *= *v28;
          }

          while (!__CFADD__(v31++, 1));
        }

        else
        {
          v32 = (*v28 + *v28 * v29);
        }

        valuePtr = v32;
        if (v26 >= v32)
        {
          break;
        }

        v34 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
        if (!v34)
        {
          break;
        }

        v35 = v34;
        ++v27;
        CFArrayAppendValue(theArray, v34);
        CFRelease(v35);
        ++v29;
        --v30;
        v26 = v32;
        if (v29 >= *(v28 + 3))
        {
          goto LABEL_38;
        }
      }

      CFRelease(theArray);
      return v4;
    }

LABEL_39:
    CFDictionarySetValue(a1, @"ProcessedChannelConfig", theArray);
    CFRelease(theArray);
    a3 = v39;
  }

  Value = CFDictionaryGetValue(a1, @"ProcessedChannelConfig");
  if (Value)
  {
    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 == CFArrayGetTypeID() && CFArrayGetCount(v10) >= a2)
    {
      if (a4)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, a2);
        if (!ValueAtIndex)
        {
          return v4;
        }

        v13 = ValueAtIndex;
        v14 = CFGetTypeID(ValueAtIndex);
        if (v14 != CFNumberGetTypeID())
        {
          return v4;
        }

        CFNumberGetValue(v13, kCFNumberLongLongType, a4);
      }

      if (!a3)
      {
        return 0;
      }

      if (!a2)
      {
        v4 = 0;
        *a3 = 0;
        return v4;
      }

      v15 = CFArrayGetValueAtIndex(v10, a2 - 1);
      if (v15)
      {
        v16 = v15;
        v17 = CFGetTypeID(v15);
        if (v17 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v16, kCFNumberLongLongType, a3);
          return 0;
        }
      }
    }
  }

  return v4;
}

uint64_t IOReportStateGetIndexForID(const __CFDictionary *a1, uint64_t a2)
{
  Count = IOReportStateGetCount(a1);
  if ((Count & 0x80000000) == 0)
  {
    LODWORD(v5) = Count;
    while (v5)
    {
      v5 = (v5 - 1);
      memset(v9, 0, sizeof(v9));
      StateValues = _getStateValues(a1, v5, v9);
      v7 = *&v9[0];
      if (StateValues)
      {
        v7 = 0x8000000000000000;
      }

      if (v7 == a2)
      {
        return v5;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t IOReportStateGetCurrent(const __CFDictionary *a1)
{
  v12 = 0;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  RawElements = getRawElements(a1, &v12, 2);
  if (!RawElements)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = RawElements;
  v4 = v12;
  v13 = 0;
  if (getChannelType(a1, &v13) || v13 != 2 || WORD2(v13) != v4 || !v12)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = 0;
  v7 = (v3 + 24);
  LODWORD(result) = -1;
  do
  {
    v10 = *v7;
    v7 += 8;
    v9 = v10;
    v11 = v10 > v6;
    if (v10 <= v6)
    {
      result = result;
    }

    else
    {
      result = v5;
    }

    if (v11)
    {
      v6 = v9;
    }

    ++v5;
  }

  while (v12 != v5);
  return result;
}

CFMutableDictionaryRef IOReportSampleCreateDelta(CFDictionaryRef theDict, const __CFDictionary *a2, CFErrorRef *a3)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  if (_compareSamples(theDict, a2, MutableCopy, a3))
  {
    CFRelease(MutableCopy);
    return 0;
  }

  return MutableCopy;
}

__CFString *IOReportSampleCopyDescription(const __CFDictionary *a1, char a2, const char *a3)
{
  v66 = *MEMORY[0x29EDCA608];
  v59 = 0;
  strcpy(__str, "<unknown>");
  v5 = "";
  if (a3)
  {
    v5 = a3;
  }

  v56 = v5;
  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    v13 = 0;
    v14 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_9;
  }

  v7 = Mutable;
  Format = IOReportChannelGetFormat(a1);
  RawElements = getRawElements(a1, &v59, Format);
  ChannelName = IOReportChannelGetChannelName(a1);
  if (ChannelName)
  {
    v11 = ChannelName;
    CStringPtr = CFStringGetCStringPtr(ChannelName, 0x8000100u);
    if (CStringPtr)
    {
      v13 = CStringPtr;
      v14 = 0;
      if (!RawElements)
      {
        goto LABEL_67;
      }

      goto LABEL_17;
    }

    v13 = _copyUTF8Chars(v11);
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0;
  }

  if (!RawElements)
  {
LABEL_16:
    v14 = v13;
    if (!RawElements)
    {
      goto LABEL_67;
    }

    goto LABEL_17;
  }

  v13 = __str;
  snprintf(__str, 0xAuLL, "%#llx", *(RawElements + 1));
  v14 = 0;
LABEL_17:
  UnitLabel = IOReportChannelGetUnitLabel(a1);
  if (!v59)
  {
    goto LABEL_69;
  }

  theString = v7;
  v53 = a2;
  v16 = 0;
  v17 = 0;
  v18 = RawElements + 32;
  while (1)
  {
    v57 = 0;
    v58 = 0;
    *buffer = 0;
    v63 = 0;
    v64 = 0;
    v19 = IOReportChannelGetFormat(a1);
    if (v19 <= 2)
    {
      if (v19 == 1)
      {
        IntegerValue = IOReportSimpleGetIntegerValue(a1, 0);
        v29 = CFStringCreateWithFormat(0, 0, @"%s%32s = { %12lld %@ }\n", v56, v13, IntegerValue, UnitLabel, v46, v47, v48, v50, v51);
      }

      else
      {
        if (v19 != 2)
        {
          goto LABEL_66;
        }

        NameForIndex = IOReportStateGetNameForIndex(a1, v17);
        if (!NameForIndex || (v21 = NameForIndex, (v22 = CFStringGetCStringPtr(NameForIndex, 0x8000100u)) == 0) && (v22 = buffer, !CFStringGetCString(v21, buffer, 20, 0x8000100u)))
        {
          v60 = 0u;
          v61 = 0u;
          StateValues = _getStateValues(a1, v17, &v60);
          v24 = v60;
          if (StateValues)
          {
            v24 = 0x8000000000000000;
          }

          v22 = buffer;
          snprintf(buffer, 0x14uLL, "%#llx", v24);
        }

        v60 = 0u;
        v61 = 0u;
        if (_getStateValues(a1, v17, &v60))
        {
          v25 = 0x8000000000000000;
        }

        else
        {
          v25 = *(&v60 + 1);
        }

        v60 = 0u;
        v61 = 0u;
        if (_getStateValues(a1, v17, &v60))
        {
          v26 = 0x8000000000000000;
        }

        else
        {
          v26 = v61;
        }

        Unit = IOReportChannelGetUnit(a1);
        v28 = IOReportScaleValue(v26, Unit, 0x100000000000000);
        v49 = IOReportStateGetDutyCycle(a1, v17) * 100.0;
        v29 = CFStringCreateWithFormat(0, 0, @"%s%20s[%8s] = { # %-8llu %9.3e %s / %4.1f%% }\n", v56, v13, v22, v25, *&v28, "s", *&v49, v50, v51);
      }

      goto LABEL_61;
    }

    if (v19 != 3)
    {
      break;
    }

    if (IOReportHistogramGetBucketBounds(a1, v17, &v58, &v57))
    {
      goto LABEL_66;
    }

    v60 = 0u;
    v61 = 0u;
    if (_getHistogramValues(a1, v17, &v60))
    {
      v36 = 0x8000000000000000;
    }

    else
    {
      v36 = v60;
    }

    if (v36)
    {
      if (v36 == 0x8000000000000000)
      {
        goto LABEL_66;
      }

      v37 = v57;
      v52 = v58;
      v60 = 0u;
      v61 = 0u;
      if (_getHistogramValues(a1, v17, &v60))
      {
        v38 = 0x8000000000000000;
      }

      else
      {
        v38 = *(&v60 + 1);
      }

      v60 = 0u;
      v61 = 0u;
      if (_getHistogramValues(a1, v17, &v60))
      {
        v39 = 0x8000000000000000;
      }

      else
      {
        v39 = v61;
      }

      v60 = 0u;
      v61 = 0u;
      HistogramValues = _getHistogramValues(a1, v17, &v60);
      v41 = *(&v61 + 1);
      if (HistogramValues)
      {
        v41 = 0x8000000000000000;
      }

      v45 = v37;
      v7 = theString;
      v29 = CFStringCreateWithFormat(0, 0, @"%s%20s[%12lld - %12lld %@] = { m %12lld; M %12lld; s %12lld; # %12llu }\n", v56, v13, v52, v45, UnitLabel, v38, v39, v41, v36);
    }

    else
    {
      v29 = CFStringCreateWithFormat(0, 0, @"%s%20s[%12lld - %12lld %@] = { <no hits>; # 0 }\n", v56, v13, v58, v57, UnitLabel, v47, v48, v50, v51);
    }

LABEL_61:
    v31 = v29;
LABEL_62:
    if (!v31)
    {
      goto LABEL_66;
    }

    CFStringAppend(v7, v31);
    CFRelease(v31);
    ++v17;
    v18 += 64;
    v16 = (v16 + 4);
    if (v17 >= v59)
    {
      goto LABEL_69;
    }
  }

  if (v19 == 4)
  {
    v30 = CFStringCreateMutable(0, 0);
    if (v30)
    {
      v31 = v30;
      v32 = 0;
      v33 = v16;
      while (1)
      {
        if (*&v18[v32] != 0x8000000000000000)
        {
          v34 = CFStringCreateWithFormat(0, 0, @"%s%28s[%4d] = { %12lld %@ }\n", v56, v13, v33, *&v18[v32], UnitLabel);
          if (!v34)
          {
            CFRelease(v31);
            a2 = v53;
            v7 = theString;
            goto LABEL_67;
          }

          v35 = v34;
          CFStringAppend(v31, v34);
          CFRelease(v35);
        }

        v32 += 8;
        v33 = (v33 + 1);
        if (v32 == 32)
        {
          v7 = theString;
          goto LABEL_62;
        }
      }
    }
  }

LABEL_66:
  a2 = v53;
LABEL_67:
  CFRelease(v7);
  if ((a2 & 1) == 0)
  {
LABEL_68:
    v7 = 0;
    goto LABEL_69;
  }

LABEL_9:
  v15 = "???";
  if (v13)
  {
    v15 = v13;
  }

  v7 = CFStringCreateWithFormat(0, 0, @"%s%32s =  %s \n", v56, v15, "error");
LABEL_69:
  if (v14)
  {
    free(v14);
  }

  v42 = *MEMORY[0x29EDCA608];
  return v7;
}

void *_copyUTF8Chars(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (!MaximumSizeForEncoding)
  {
    return 0;
  }

  v4 = MaximumSizeForEncoding;
  v5 = malloc_type_malloc(MaximumSizeForEncoding, 0xD13D4C5uLL);
  if (v5 && !CFStringGetCString(a1, v5, v4, 0x8000100u))
  {
    free(v5);
    return 0;
  }

  return v5;
}

uint64_t IOReportWriteStringUTF8(int a1, CFStringRef theString)
{
  if (!theString)
  {
    return 3758097090;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    v6 = 0;
  }

  else
  {
    v5 = _copyUTF8Chars(theString);
    v6 = v5;
    if (!v5)
    {
      return 3758097085;
    }
  }

  v8 = strlen(v5);
  v9 = write(a1, v5, v8);
  v10 = -536870169;
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = -536870212;
  }

  if (v9 >= v8)
  {
    v10 = v11;
  }

  if (v9 >= 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = 3758097098;
  }

  if (v6)
  {
    free(v6);
  }

  return v7;
}

const __CFDictionary *IOReportCreateSamplesProcessed(CFDictionaryRef theDict, CFErrorRef *a2)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  v4 = MutableCopy;
  if (MutableCopy)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 0x40000000;
    v8[2] = ___processSamples_block_invoke;
    v8[3] = &unk_29EE82D50;
    v8[4] = &v9;
    v5 = IOReportIterate(MutableCopy, v8);
    v6 = v5;
    if (a2 && v5)
    {
      *a2 = createCFErr(v5, v10[3]);
      _Block_object_dispose(&v9, 8);
LABEL_6:
      CFRelease(v4);
      return 0;
    }

    _Block_object_dispose(&v9, 8);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  return v4;
}

uint64_t ___processSamples_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  ChannelName = IOReportChannelGetChannelName(a2);
  CFDictionaryAddValue(a2, @"ChannelName", ChannelName);
  Format = IOReportChannelGetFormat(a2);
  if (Format == 3)
  {
    *(*(*(a1 + 32) + 8) + 24) = "error processing histogram report sample";
    BucketCount = IOReportHistogramGetBucketCount(a2);
    v25 = *MEMORY[0x29EDB8ED8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v12 = Mutable;
      v35 = 0;
      v36 = 0;
      CFDictionaryAddValue(a2, @"Format", @"HistogramReport");
      if (BucketCount >= 1)
      {
        v27 = 0;
        do
        {
          v28 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          if (!v28)
          {
            goto LABEL_26;
          }

          v29 = v28;
          _add_uint64_val(v28, @"BucketIndex", v27);
          IOReportHistogramGetBucketBounds(a2, v27, &v36, &v35);
          _add_uint64_val(v29, @"LowBound", v36);
          _add_uint64_val(v29, @"HighBound", v35);
          BucketHits = IOReportHistogramGetBucketHits(a2, v27);
          _add_uint64_val(v29, @"BucketHits", BucketHits);
          BucketMinValue = IOReportHistogramGetBucketMinValue(a2, v27);
          _add_uint64_val(v29, @"BucketMin", BucketMinValue);
          BucketMaxValue = IOReportHistogramGetBucketMaxValue(a2, v27);
          _add_uint64_val(v29, @"BucketMax", BucketMaxValue);
          BucketSum = IOReportHistogramGetBucketSum(a2, v27);
          _add_uint64_val(v29, @"BucketSum", BucketSum);
          CFArrayAppendValue(v12, v29);
          CFRelease(v29);
        }

        while (BucketCount != ++v27);
      }

      if (CFArrayGetCount(v12))
      {
        v23 = @"HistogramReport";
        goto LABEL_22;
      }

LABEL_23:
      _processUnit(a2);
      _cleanup_sample(a2);
      v8 = 0;
LABEL_27:
      CFRelease(v12);
      return v8;
    }

    return 1;
  }

  if (Format == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = "error processing state report sample";
    Count = IOReportStateGetCount(a2);
    v10 = *MEMORY[0x29EDB8ED8];
    v11 = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    if (v11)
    {
      v12 = v11;
      CFDictionaryAddValue(a2, @"Format", @"StateReport");
      if (Count >= 1)
      {
        v13 = 0;
        v14 = MEMORY[0x29EDB9020];
        while (1)
        {
          v15 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x29EDB9010], v14);
          if (!v15)
          {
            break;
          }

          v16 = v15;
          v17 = IOReportStateGetInTransitions(a2, v13);
          _add_uint64_val(v16, @"InTransitions", v17);
          DutyCycle = IOReportStateGetDutyCycle(a2, v13);
          _add_double_val(v16, @"DutyCycle", DutyCycle);
          Residency = IOReportStateGetResidency(a2, v13);
          _add_uint64_val(v16, @"Residency", Residency);
          IDForIndex = IOReportStateGetIDForIndex(a2, v13);
          _add_uint64_val(v16, @"StateID", IDForIndex);
          v21 = copyPrintableIDString(IDForIndex);
          if (v21)
          {
            v22 = v21;
            CFDictionaryAddValue(v16, @"StateName", v21);
            CFRelease(v22);
          }

          CFArrayAppendValue(v12, v16);
          CFRelease(v16);
          if (Count == ++v13)
          {
            goto LABEL_13;
          }
        }

LABEL_26:
        v8 = 1;
        goto LABEL_27;
      }

LABEL_13:
      if (CFArrayGetCount(v12))
      {
        v23 = @"StateReport";
LABEL_22:
        CFDictionaryAddValue(a2, v23, v12);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    return 1;
  }

  if (Format != 1)
  {
    return 16;
  }

  *(*(*(a1 + 32) + 8) + 24) = "error processing simple report sample";
  IntegerValue = IOReportSimpleGetIntegerValue(a2, 0);
  if (IntegerValue == 0x8000000000000000)
  {
    return 1;
  }

  v7 = IntegerValue;
  CFDictionaryAddValue(a2, @"Format", @"SimpleReport");
  _add_uint64_val(a2, @"SimpleReport", v7);
  _processUnit(a2);
  _cleanup_sample(a2);
  return 0;
}

void _processUnit(const __CFDictionary *a1)
{
  Unit = IOReportChannelGetUnit(a1);
  if ((Unit & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = Unit;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v5 = Mutable;
      UnitLabel = IOReportChannelGetUnitLabel(a1);
      if (UnitLabel)
      {
        CFDictionaryAddValue(v5, @"UnitLabel", UnitLabel);
      }

      v9 = 0;
      v10 = 0;
      if (!getFactorsFromScale(v3 & 0xFFFFFFFFFFFFFFLL, &v10, &v9))
      {
        _add_double_val(v5, @"UnitScale", v10 / v9);
      }

      v7 = copyUnitLabel(v3 & 0xFF00000000000000);
      if (v7)
      {
        v8 = v7;
        CFDictionaryAddValue(v5, @"BaseUnitLabel", v7);
        CFRelease(v8);
      }

      CFDictionaryAddValue(a1, @"Unit", v5);
      CFDictionaryAddValue(a1, @"Units", v5);
      CFRelease(v5);
    }
  }
}

void _cleanup_sample(__CFDictionary *a1)
{
  CFDictionaryRemoveValue(a1, @"IOReportChannelInfo");
  CFDictionaryRemoveValue(a1, @"DriverID");
  CFDictionaryRemoveValue(a1, @"LegendChannel");
  CFDictionaryRemoveValue(a1, @"ProcessedChannelConfig");

  CFDictionaryRemoveValue(a1, @"RawElements");
}

void _add_uint64_val(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberLongLongType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void _add_double_val(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberDoubleType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void IOReportIterateSamplesRaw_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(*a1 + 60);
  v2 = *(*a1 + 64);
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_2979AE000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "iterated %d channels with %d iterations", v4, 0xEu);
  v3 = *MEMORY[0x29EDCA608];
}

void _visitSample_cold_1(const __CFDictionary *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  IOReportChannelGetDriverName(a1);
  IOReportChannelGetGroup(a1);
  IOReportChannelGetSubGroup(a1);
  IOReportChannelGetChannelName(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x29EDCA608];
}

void __IOReportUpdateSamplesRaw_block_invoke_cold_1(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  IOReportChannelGetDriverName(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2979AE000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Stale samplesDict, IOReporter elements count changed %@ -- %@ -- %@ -- %@", v2, 0x2Au);
  v1 = *MEMORY[0x29EDCA608];
}

void __IOReportUpdateSamplesRaw_block_invoke_cold_2(const __CFDictionary *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  IOReportChannelGetDriverName(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2979AE000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Didn't find provider_id channel_id match for samplesDict channel %@ -- %@ -- %@ -- %@", v2, 0x2Au);
  v1 = *MEMORY[0x29EDCA608];
}

void __IOReportUpdateSamplesRaw_block_invoke_cold_3(const __CFDictionary *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  IOReportChannelGetDriverName(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x29EDCA608];
}

void __IOReportUpdateSamplesRaw_block_invoke_cold_4(const __CFDictionary *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  IOReportChannelGetDriverName(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x29EDCA608];
}