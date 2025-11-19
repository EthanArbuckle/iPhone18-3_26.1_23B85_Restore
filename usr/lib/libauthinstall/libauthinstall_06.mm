CFIndex AMAuthInstallApCreateMeasurementsWithTag(void *cf, const __CFURL *a2, const __CFString *a3, int a4, char a5, int a6, CFTypeRef *a7)
{
  v22 = 0;
  if (!cf)
  {
    Code = 1;
    goto LABEL_16;
  }

  Code = 1;
  if (a7)
  {
    if (a2)
    {
      v10 = cf[2];
      if (v10)
      {
        if (a6 == 2)
        {
          v16 = CFGetAllocator(cf);
          MeasurementsWithTag = AMAuthInstallApFtabCreateMeasurementsWithTag(v16, a2, a3, a4, a7);
        }

        else
        {
          if (a6 == 1)
          {
            v13 = CFGetAllocator(cf);
            v14 = AMAuthInstallSupportCopyTagAndFileURL(v13, a2, 0, &v22);
            if (v14)
            {
              Code = v14;
            }

            else
            {
              v15 = AMAuthInstallApMeasureBinary(v22, 0x100000, a4);
              *a7 = v15;
              if (v15)
              {
                Code = 0;
              }

              else
              {
                Code = CFErrorGetCode(0);
              }
            }

            goto LABEL_16;
          }

          v19 = *(v10 + 112);
          v20 = CFGetAllocator(cf);
          if (v19)
          {
            MeasurementsWithTag = AMAuthInstallApImg4CreateMeasurementsWithTag(v20, a2, a3, a4, a7);
          }

          else
          {
            MeasurementsWithTag = AMAuthInstallApImg3CreateMeasurementsFromURL(v20, a2, a7, a5);
          }
        }

        Code = MeasurementsWithTag;
      }
    }
  }

LABEL_16:
  AMSupportSafeRelease();
  return Code;
}

CFMutableDictionaryRef AMAuthInstallApMeasureBinary(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  Digest = AMAuthInstallApCreateDigest(a1, a2, a3);
  if (!Digest)
  {
    return 0;
  }

  v4 = Digest;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v6 = OUTLINED_FUNCTION_7_0();
    CFDictionarySetValue(v6, v7, v8);
  }

  else
  {
    AMSupportCreateErrorInternal();
  }

  CFRelease(v4);
  return Mutable;
}

uint64_t AMAuthInstallApCreatePersonalizedResponse(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  v6 = CFDictionaryContainsKey(theDict, @"Ap,LocalPolicy");
  v13 = 0;
  v68 = 0;
  v66 = 0;
  value = 0;
  v14 = 1;
  if (a1 && theDict && a3)
  {
    v15 = v6;
    if (AMAuthInstallApSupportsLocalSigning(a1, &v68 + 1, v7, v8, v9, v10, v11, v12))
    {
      goto LABEL_31;
    }

    v22 = AMAuthInstallApSupportsGlobalSigning(a1, &v68, v16, v17, v18, v19, v20, v21);
    if (v22 != 13)
    {
      v14 = v22;
      if (v22)
      {
        goto LABEL_31;
      }
    }

    v28 = *(a1 + 16);
    if (v28)
    {
      v29 = *(v28 + 94) != 0;
      if (HIBYTE(v68) && *(v28 + 94))
      {
        AMAuthInstallLog(6, "_AMAuthInstallApCreatePersonalizedResponseInternal", "Forcing server signing\n", v23, v24, v25, v26, v27, v65);
        LOBYTE(v29) = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v29 = 0;
    }

    if (HIBYTE(v68) && !v29)
    {
      v30 = (a1 + 505);
      if (!*(a1 + 505))
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_16:
    if (!v15 || !*(a1 + 505))
    {
      if (v68 != 0 && !v29)
      {
        v44 = CFRetain(*(a1 + 40));
        value = v44;
        if (v44)
        {
          v45 = v44;
          v46 = CFGetAllocator(a1);
          Mutable = CFDictionaryCreateMutable(v46, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          v13 = Mutable;
          if (Mutable)
          {
            CFDictionaryAddValue(Mutable, *(a1 + 88), v45);
            *a3 = CFRetain(v13);
            AMAuthInstallLog(6, "_AMAuthInstallApCreatePersonalizedResponseInternal", "Using global signing", v48, v49, v50, v51, v52, v65);
            v14 = 0;
            goto LABEL_32;
          }

          goto LABEL_41;
        }

        v58 = "global ticketData is NULL";
LABEL_40:
        AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", v58, v37, v38, v39, v40, v41, v65);
        v13 = 0;
        goto LABEL_41;
      }

      v53 = CFGetAllocator(a1);
      v54 = AMAuthInstallApRemoveInfoDict(v53, theDict, &v66);
      if (!v54)
      {
        v14 = AMAuthInstallRequestSendSync(a1, v66, a3);
        if (v14)
        {
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v14);
          AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "server request error: %@", v60, v61, v62, v63, v64, LocalizedStatusString);
        }

        goto LABEL_31;
      }

      v14 = v54;
      v57 = "could not remove info dicts from request";
      goto LABEL_37;
    }

    v30 = (a1 + 505);
    v28 = *(a1 + 16);
LABEL_19:
    *(v28 + 84) = 1;
    *(v28 + 128) = 384;
LABEL_20:
    v31 = OUTLINED_FUNCTION_3_0();
    SignedManifest = AMAuthInstallApImg4LocalCreateSignedManifest(v31, v32, 0, 0, 0, v33, v34, v35);
    if (!SignedManifest)
    {
      if (value)
      {
        v42 = CFGetAllocator(a1);
        v43 = CFDictionaryCreateMutable(v42, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v13 = v43;
        if (v43)
        {
          CFDictionaryAddValue(v43, *(a1 + 88), value);
          v14 = 0;
          *a3 = CFRetain(v13);
          goto LABEL_32;
        }

LABEL_41:
        v14 = 2;
        goto LABEL_32;
      }

      v58 = "ticketData is NULL";
      goto LABEL_40;
    }

    v14 = SignedManifest;
    if (*v30)
    {
      v56 = "hacktivated";
    }

    else
    {
      v56 = "local";
    }

    v65 = v56;
    v57 = "failed to create a %s Img4 ticket";
LABEL_37:
    AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", v57, v37, v38, v39, v40, v41, v65);
LABEL_31:
    v13 = 0;
  }

LABEL_32:
  SafeRelease(v13);
  SafeRelease(value);
  SafeRelease(v66);
  return v14;
}

uint64_t AMAuthInstallApGetImageType(const __CFAllocator *a1, CFDataRef a2)
{
  theData = 0;
  if (!a2 || (v2 = a1, DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(a1, &theData, a2), a2 = theData, DataFromMappedFileURL))
  {
    v5 = 0;
  }

  else
  {
    v4 = AMAuthInstallApImg4IsImg4Payload(v2, theData);
    a2 = theData;
    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = AMAuthInstallApImg3IsImg3Payload(theData) != 0;
      a2 = theData;
    }
  }

  SafeRelease(a2);
  return v5;
}

CFStringRef AMAuthInstallApCopyImageTag(const __CFAllocator *a1, CFURLRef anURL)
{
  theData = 0;
  v13 = 0;
  v11 = 0;
  if (anURL)
  {
    v13 = 0;
    v3 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
    if (v3)
    {
      if (!AMAuthInstallApImg4CreateRequestTagFromFileURL(a1, v3, @"=", &v13, &v11) && !AMAuthInstallSupportCreateDataFromMappedFileURL(a1, &theData, v11))
      {
        if (AMAuthInstallApImg3IsImg3Payload(theData))
        {
          SafeRelease(v13);
          if (AMAuthInstallApImg3CopyRequestTag(a1, theData, &v13))
          {
            AMAuthInstallLog(3, "AMAuthInstallApCopyImageTag", "failed to copy img3 tag", v4, v5, v6, v7, v8, v10);
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  SafeRelease(theData);
  SafeRelease(v3);
  SafeRelease(v11);
  return v13;
}

uint64_t AMAuthInstallApCopyDeviceEntryFromDeviceMap(const void *a1, uint64_t a2)
{
  cf = 0;
  v35 = 0;
  if (a2)
  {
    v31 = OUTLINED_FUNCTION_7_0();
    v29 = _AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap(v31, v32, v33);
    goto LABEL_14;
  }

  v3 = getenv("PLATFORM_DIR");
  if (v3)
  {
    v4 = CFGetAllocator(a1);
    v34 = v3;
    v5 = CFStringCreateWithFormat(v4, 0, @"%s/%@");
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = CFGetAllocator(a1);
    v7 = CFURLCreateWithFileSystemPath(v6, v5, kCFURLPOSIXPathStyle, 0);
    v8 = v7;
    if (!v7)
    {
      goto LABEL_18;
    }

    MEMORY[0x29C28AEE0](v7, &v35);
    if (v35)
    {
      v9 = CFGetAllocator(a1);
      v10 = AMAuthInstallPlatformCreateDataFromMappedFileURL(v9, &cf, v8);
      if (v10)
      {
LABEL_17:
        v29 = v10;
        AMAuthInstallLog(3, "AMAuthInstallApCopyDeviceEntryFromDeviceMap", "Failed to read devicemap from %@", v11, v12, v13, v14, v15, v8);
        goto LABEL_14;
      }

      v16 = OUTLINED_FUNCTION_7_0();
      if (!_AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap(v16, v17, v18))
      {
        AMAuthInstallLog(6, "AMAuthInstallApCopyDeviceEntryFromDeviceMap", "Found matching entry in SDK-specific devicemap. (via PLATFORM_DIR)", v19, v20, v21, v22, v23, v34);
        v29 = 0;
        goto LABEL_14;
      }

      AMAuthInstallLog(4, "AMAuthInstallApCopyDeviceEntryFromDeviceMap", "Failed to find match in SDK-specific devicemap (via PLATFORM_DIR), falling back to system devicemap.", v19, v20, v21, v22, v23, v34);
    }

    CFRelease(v8);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v24 = CFGetAllocator(a1);
  v8 = CFURLCreateWithFileSystemPath(v24, @"/usr/local/standalone/firmware/device_map.plist", kCFURLPOSIXPathStyle, 0);
  if (!v8)
  {
LABEL_18:
    v29 = 2;
    goto LABEL_14;
  }

  v25 = CFGetAllocator(a1);
  v10 = AMAuthInstallPlatformCreateDataFromMappedFileURL(v25, &cf, v8);
  if (v10)
  {
    goto LABEL_17;
  }

  v26 = OUTLINED_FUNCTION_7_0();
  v29 = _AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap(v26, v27, v28);
LABEL_14:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v29;
}

uint64_t _AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap(void *cf, const __CFData *a2, CFDictionaryRef *a3)
{
  v3 = 0;
  v4 = @"SecurityDomain";
  error = 0;
  v5 = @"BoardID";
  v6 = 1;
  v7 = @"ChipID";
  if (!cf || !a2)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v10 = 0;
  v11 = 0;
  if (a3)
  {
    if (!*(cf[2] + 160))
    {
      goto LABEL_8;
    }

    v13 = *MEMORY[0x29EDB8ED8];
    v37 = *(cf[2] + 160);
    v7 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@,%@");
    if (v7)
    {
      v37 = *(cf[2] + 160);
      v5 = CFStringCreateWithFormat(v13, 0, @"%@,%@");
      if (v5)
      {
        v37 = *(cf[2] + 160);
        v4 = CFStringCreateWithFormat(v13, 0, @"%@,%@");
        if (v4)
        {
LABEL_8:
          v19 = CFGetAllocator(cf);
          v20 = CFPropertyListCreateWithData(v19, a2, 0, 0, &error);
          v3 = v20;
          if (!v20)
          {
            v6 = 3;
            AMAuthInstallLog(3, "_AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap", "failed to create dictionary from device_map (Not plist/xml data?): %@", v21, v22, v23, v24, v25, error);
            v10 = 0;
            v11 = 0;
            goto LABEL_22;
          }

          Count = CFDictionaryGetCount(v20);
          v27 = malloc(8 * Count);
          if (!v27)
          {
            v10 = 0;
            v11 = 0;
            v6 = 2;
            goto LABEL_22;
          }

          v28 = v27;
          v11 = malloc(8 * Count);
          if (!v11)
          {
            v6 = 2;
            v10 = v28;
            goto LABEL_22;
          }

          v29 = a3;
          v38 = v28;
          CFDictionaryGetKeysAndValues(v3, v28, v11);
          if (Count >= 1)
          {
            v30 = 0;
            while (1)
            {
              v31 = v11[v30];
              if (AMAuthInstallSupportCompareStringToInt32(v31, v7, *(cf[2] + 8)))
              {
                if (AMAuthInstallSupportCompareStringToInt32(v31, v5, *(cf[2] + 12)) && AMAuthInstallSupportCompareStringToInt32(v31, v4, *(cf[2] + 16)))
                {
                  break;
                }
              }

              if (Count == ++v30)
              {
                goto LABEL_20;
              }
            }

            TypeID = CFDictionaryGetTypeID();
            if (TypeID != CFGetTypeID(v31))
            {
              v6 = 14;
              goto LABEL_21;
            }

            v33 = CFGetAllocator(cf);
            Copy = CFDictionaryCreateCopy(v33, v31);
            *v29 = Copy;
            if (!Copy)
            {
              v6 = 0;
              goto LABEL_21;
            }
          }

LABEL_20:
          v6 = 8 * (*v29 == 0);
LABEL_21:
          v10 = v38;
          goto LABEL_22;
        }

        v36 = "failed secdomKey allocation";
      }

      else
      {
        v36 = "failed boardKey allocation";
      }
    }

    else
    {
      v36 = "failed chipKey allocation";
    }

    AMAuthInstallLog(3, "_AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap", v36, v14, v15, v16, v17, v18, v37);
    v3 = 0;
    v10 = 0;
    v11 = 0;
    v6 = 99;
  }

LABEL_22:
  SafeRelease(v3);
  SafeFree(v10);
  SafeFree(v11);
  SafeRelease(error);
  SafeRelease(v7);
  SafeRelease(v5);
  SafeRelease(v4);
  return v6;
}

uint64_t AMAuthInstallApApplyRequestRules(uint64_t a1, uint64_t a2, const __CFURL *a3, __CFDictionary *a4)
{
  v6 = 0;
  v7 = 1;
  if (a1 && a3)
  {
    OUTLINED_FUNCTION_8();
    if (a4)
    {
      v11 = v9;
      v12 = AMAuthInstallApCopyDeviceEntryFromDeviceMap(v9, v10);
      if (v12)
      {
        v7 = v12;
        v6 = 0;
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
        v13 = CFGetAllocator(v11);
        v6 = AMAuthInstallApCopyImageTag(v13, a3);
        if (v6)
        {
          Value = CFDictionaryGetValue(0, @"Manifest");
          if (Value)
          {
            v20 = Value;
            Count = CFDictionaryGetCount(Value);
            v4 = calloc(8uLL, Count);
            v22 = calloc(8uLL, Count);
            v5 = v22;
            v7 = 2;
            if (v4 && v22)
            {
              v40 = v11;
              v41 = v4;
              CFDictionaryGetKeysAndValues(v20, v4, v22);
              if (Count < 1)
              {
LABEL_21:
                AMAuthInstallLog(3, "AMAuthInstallApApplyRequestRules", "failed to find RestoreRequestRules property", v23, v24, v25, v26, v27, v40);
                v7 = 8;
              }

              else
              {
                v28 = 0;
                while (1)
                {
                  v29 = CFDictionaryGetValue(v5[v28], v6);
                  if (v29)
                  {
                    v30 = v29;
                    v31 = CFDictionaryGetValue(v29, @"RequiresPartialDigest");
                    if (v31)
                    {
                      v32 = v31;
                      TypeID = CFBooleanGetTypeID();
                      if (TypeID == CFGetTypeID(v32) && !CFBooleanGetValue(v32))
                      {
                        CFDictionaryRemoveValue(a4, @"PartialDigest");
                      }
                    }

                    v34 = CFDictionaryGetValue(v30, @"Trusted");
                    if (v34)
                    {
                      v35 = v34;
                      v36 = CFBooleanGetTypeID();
                      if (v36 == CFGetTypeID(v35))
                      {
                        CFDictionarySetValue(a4, @"Trusted", v35);
                      }
                    }

                    v37 = CFDictionaryGetValue(v30, @"RestoreRequestRules");
                    if (v37)
                    {
                      break;
                    }
                  }

                  if (Count == ++v28)
                  {
                    goto LABEL_21;
                  }
                }

                v7 = AMAuthInstallBundleProcessRules(v40, v37, a4);
              }

              v4 = v41;
            }
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallApApplyRequestRules", "failed to find manifest entry", v15, v16, v17, v18, v19, v39);
            OUTLINED_FUNCTION_6_0();
            v7 = 8;
          }
        }

        else
        {
          OUTLINED_FUNCTION_6_0();
          v7 = 3;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
  }

  SafeRelease(0);
  SafeRelease(v6);
  SafeFree(v4);
  SafeFree(v5);
  return v7;
}

uint64_t AMAuthInstallApExtractZippedDeviceMap(uint64_t a1, void *a2)
{
  v34 = 0;
  CFAllocatorGetDefault();
  v4 = AMAuthInstallPlatformCopyURLToNewTempDirectory();
  if (v4)
  {
    v31 = v4;
    AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to create temp dir", v5, v6, v7, v8, v9, v33);
    v11 = 0;
  }

  else
  {
    Default = CFAllocatorGetDefault();
    v11 = CFURLCreateCopyAppendingPathComponent(Default, 0, @"device_map", 0);
    if (v11)
    {
      v12 = CFAllocatorGetDefault();
      v13 = AMAuthInstallSupportWriteDataToFileURL(v12, a1, v11, 1);
      if (v13)
      {
        v31 = v13;
        AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to write data to %@", v14, v15, v16, v17, v18, v11);
      }

      else
      {
        v19 = BbfwReaderOpen(v11);
        if (v19)
        {
          v25 = v19;
          v31 = BbfwReaderCopyFileData(v19, &v34);
          if (v31)
          {
            AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to copy data from %@", v26, v27, v28, v29, v30, v11);
          }

          else
          {
            *a2 = v34;
          }

          BbfwReaderClose(v25);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to unzip file", v20, v21, v22, v23, v24, v33);
          v31 = 4;
        }
      }
    }

    else
    {
      v31 = 2;
    }
  }

  SafeRelease(v11);
  SafeRelease(0);
  return v31;
}

uint64_t AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped(void *a1, const __CFURL *a2, CFTypeRef cf, int a4, int a5, CFDictionaryRef *a6)
{
  v6 = 0;
  v48 = 0;
  theDict = 0;
  v7 = 1;
  if (a1 && a2 && a6)
  {
    if (cf && a4)
    {
      v12 = AMAuthInstallApExtractZippedDeviceMap(cf, &v48);
      if (v12)
      {
        v7 = v12;
        AMAuthInstallLog(3, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "failed to extract zipped device map", v13, v14, v15, v16, v17, v46);
        v6 = 0;
        goto LABEL_24;
      }
    }

    else if (cf && (a4 & 1) == 0)
    {
      v48 = CFRetain(cf);
    }

    v18 = *(a1[2] + 128);
    v19 = OUTLINED_FUNCTION_3_0();
    MeasurementsWithTag = AMAuthInstallApCreateMeasurementsWithTag(v19, v20, 0, v21, 0, a5, v22);
    v6 = theDict;
    if (MeasurementsWithTag)
    {
      v7 = MeasurementsWithTag;
    }

    else if (theDict)
    {
      if (AMAuthInstallApApplyRequestRules(a1, v48, a2, theDict))
      {
        AMAuthInstallLog(4, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "WARNING: Could not retrieve image properties from devicemap.", v24, v25, v26, v27, v28, v46);
        if (!*(a1[2] + 168))
        {
          v34 = *MEMORY[0x29EDB8F00];
          CFDictionarySetValue(theDict, @"Trusted", *MEMORY[0x29EDB8F00]);
          v35 = *MEMORY[0x29EDB8EF8];
          if (*(a1[2] + 20))
          {
            v36 = v34;
          }

          else
          {
            v36 = *MEMORY[0x29EDB8EF8];
          }

          CFDictionarySetValue(theDict, @"EPRO", v36);
          if (*(a1[2] + 88))
          {
            v37 = v34;
          }

          else
          {
            v37 = v35;
          }

          CFDictionarySetValue(theDict, @"ESEC", v37);
          AMAuthInstallLog(4, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "WARNING: Consider setting alternate device_map, ie in a device-specific SDK path.  Setting default RestoreRequestRules to: %@", v38, v39, v40, v41, v42, theDict);
        }

        AMAuthInstallLog(4, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "WARNING: Note: This default behavior may change in the future into a hard error.", v29, v30, v31, v32, v33, v47);
      }

      v43 = CFGetAllocator(a1);
      Copy = CFDictionaryCreateCopy(v43, theDict);
      *a6 = Copy;
      v7 = 2 * (Copy == 0);
      v6 = theDict;
    }

    else
    {
      v7 = 14;
    }
  }

LABEL_24:
  SafeRelease(v6);
  SafeRelease(v48);
  return v7;
}

uint64_t AMAuthInstallApSoftwareCoprocessorSetParameters(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 24));
  v4 = SafeRetain(a2);
  result = 0;
  *(a1 + 24) = v4;
  return result;
}

CFIndex AMAuthInstallApFtabIsValid(const __CFData *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    Length = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    if (Length < 0x30)
    {
      OUTLINED_FUNCTION_1_2();
      v20 = "Encoded header is larger than data.";
    }

    else if (*(BytePtr + 4) == 0x62617466736F6B72)
    {
      v17 = *(BytePtr + 10);
      if (16 * v17 + 48 > Length)
      {
        OUTLINED_FUNCTION_1_2();
        v20 = "Encoded metadata is larger than data.";
      }

      else if (v17)
      {
        v18 = (*&BytePtr[16 * (v17 - 1) + 56] + *&BytePtr[16 * (v17 - 1) + 52]);
        v19 = Length < v18;
        v17 = Length >= v18;
        v20 = "FTAB data is smaller than last payload";
        if (!v19)
        {
          LOBYTE(v20) = 0;
        }

        Length = v17;
      }

      else
      {
        Length = 0;
        v20 = "FTAB contains no payloads";
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_2();
      v20 = "FTAB contains invalid magic";
    }
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallApFtabIsValid", "ftabData is NULL", a4, a5, a6, a7, a8, v22);
    OUTLINED_FUNCTION_1_2();
  }

  if (!a2 && (v17 & 1) == 0)
  {
    AMAuthInstallLog(3, "AMAuthInstallApFtabIsValid", "FTAB Error: %s", v12, v13, v14, v15, v16, v20);
  }

  return Length;
}

uint64_t AMAuthInstallApFtabCreateMeasurementsWithTag(const __CFAllocator *a1, uint64_t a2, CFStringRef theString, int a4, CFTypeRef *a5)
{
  value = 0;
  v5 = 1;
  if (a2 && theString && a5)
  {
    v56 = 0;
    if (CFStringGetLength(theString) == 4)
    {
      v16 = _AMAuthInstallApFtabCopyFtabFromFile(a1, a2, &v56, v11, v12, v13, v14, v15);
      v22 = v16;
      if (v16)
      {
        Length = CFDataGetLength(v16);
        BytePtr = CFDataGetBytePtr(v22);
        if (CFStringGetCString(theString, buffer, 5, 0x8000100u))
        {
          v25 = v56;
          if (*(v56 + 10))
          {
            v26 = 0;
            v27 = 0;
            while (1)
            {
              v53 = *&v25[v26 + 56];
              AMAuthInstallLog(7, "AMAuthInstallApFtabCopyDataForTag", "Payload %2d: [%.4s], %7u bytes.", v17, v18, v19, v20, v21, v27);
              v25 = v56;
              v28 = &v56[v26];
              if (*&v56[v26 + 48] == *buffer)
              {
                break;
              }

              ++v27;
              v26 += 16;
              if (v27 >= *(v56 + 10))
              {
                goto LABEL_11;
              }
            }

            v35 = *(v28 + 13);
            v34 = *(v28 + 14);
            if (Length < (v34 + v35))
            {
              v51 = "Encoded payload is larger than data.";
            }

            else
            {
              v36 = CFDataCreate(a1, &BytePtr[v35], v34);
              if (v36)
              {
                v37 = v36;
                AMSupportSafeRelease();
                AMAuthInstallCryptoCreateDigestForDataType(a1, v37, &value, a4);
                if (value)
                {
                  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                  v49 = Mutable;
                  if (Mutable)
                  {
                    CFDictionarySetValue(Mutable, @"Digest", value);
                    v5 = 0;
                    *a5 = CFRetain(v49);
                    goto LABEL_18;
                  }

                  AMAuthInstallLog(3, "AMAuthInstallApFtabCreateMeasurementsWithTag", "failed to create mutable dict measurementDict", v44, v45, v46, v47, v48, v52);
                }

                else
                {
                  AMAuthInstallLog(3, "AMAuthInstallApFtabCreateMeasurementsWithTag", "created digest is NULL", v38, v39, v40, v41, v42, v52);
                }

                v5 = 2;
                goto LABEL_18;
              }

              v51 = "payload is NULL";
            }

            goto LABEL_25;
          }

LABEL_11:
          v5 = 8;
LABEL_12:
          AMSupportSafeRelease();
          AMAuthInstallLog(3, "AMAuthInstallApFtabCreateMeasurementsWithTag", "AMAuthInstallApFtabCopyDataForTag returned %d", v29, v30, v31, v32, v33, v5);
          goto LABEL_18;
        }

        v51 = "CFStringGetCString failed.";
      }

      else
      {
        v51 = "ftabData is NULL";
      }

LABEL_25:
      AMAuthInstallLog(3, "AMAuthInstallApFtabCopyDataForTag", v51, v17, v18, v19, v20, v21, v52);
      v5 = 99;
      goto LABEL_12;
    }

    AMAuthInstallLog(3, "AMAuthInstallApFtabCopyDataForTag", "payloadTag is not 4 bytes", v11, v12, v13, v14, v15, v52);
    v5 = 1;
    goto LABEL_12;
  }

LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v5;
}

uint64_t AMAuthInstallApFtabStitchTicketData(const void **a1, uint64_t a2, const __CFURL *a3, const __CFDictionary *a4)
{
  v46 = 0;
  v8 = CFGetAllocator(a1);
  v9 = 1;
  if (a2 && a3 && a4)
  {
    v10 = v8;
    Value = CFDictionaryGetValue(a4, a1[11]);
    if (Value)
    {
      v17 = Value;
      Length = CFDataGetLength(Value);
      if (Length > 0)
      {
        v24 = Length;
        v25 = _AMAuthInstallApFtabCopyFtabFromFile(v10, a2, &v46, v19, v20, v21, v22, v23);
        v31 = v25;
        if (v25)
        {
          v32 = CFDataGetLength(v25);
          BytePtr = CFDataGetBytePtr(v17);
          CFDataAppendBytes(v31, BytePtr, v24);
          v34 = v46;
          *(v46 + 4) = v32;
          *(v34 + 5) = v24;
          v35 = CFDataGetLength(v31);
          CFDataIncreaseLength(v31, -v35 & 0xFFFLL);
          v36 = AMAuthInstallSupportWriteDataToFileURL(v10, v31, a3, 1);
          if (v36)
          {
            v43 = v36;
            AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "%s: Failed to copy FTAB file to personalized bundle.", v37, v38, v39, v40, v41, "AMAuthInstallApFtabStitchTicketData");
            v9 = v43;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "ftabData is NULL", v26, v27, v28, v29, v30, v44);
          v9 = 99;
        }

        goto LABEL_9;
      }

      AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "%s: responseDict has an empty ticket.", v19, v20, v21, v22, v23, "AMAuthInstallApFtabStitchTicketData");
    }

    else
    {
      v45 = a1[11];
      AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "%s: responseDict doesn't contain a %@ ticket.", v12, v13, v14, v15, v16, "AMAuthInstallApFtabStitchTicketData");
    }

    v9 = 17;
  }

LABEL_9:
  AMSupportSafeRelease();
  return v9;
}

uint64_t AMAuthInstallApImg3CreateServerRequestDictionary(void *a1, const void *a2, const void *a3, int a4, CFTypeRef *a5)
{
  v5 = 0;
  v6 = 1;
  if (a1 && a2 && a3 && a5)
  {
    v12 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v5 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, a2, a3);
      v6 = AMAuthInstallApServerRequestAddRequiredTags(a1, v5, a4, v14, v15, v16, v17, v18);
      if (!v6)
      {
        *a5 = CFRetain(v5);
      }
    }

    else
    {
      v6 = 2;
    }
  }

  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallApImg3ServerRequestAddRequiredTags(void *a1, __CFDictionary *a2, int a3, int a4)
{
  v29 = a2;
  if (!a1)
  {
    return 1;
  }

  v5 = 1;
  if (!a2)
  {
    return v5;
  }

  v7 = a1[2];
  if (!v7)
  {
    return v5;
  }

  if (*v7)
  {
    _CFDictionarySetInteger64(a2, @"ApECID", *v7);
    v7 = a1[2];
  }

  _CFDictionarySetInteger32(a2, @"ApChipID", *(v7 + 8));
  _CFDictionarySetInteger32(a2, @"ApBoardID", *(a1[2] + 12));
  v10 = a1[2];
  if (!*(v10 + 132))
  {
    _CFDictionarySetBoolean(a2, @"ApProductionMode", *(v10 + 20));
    v10 = a1[2];
  }

  _CFDictionarySetInteger32(a2, @"ApSecurityDomain", *(v10 + 16));
  if (a3)
  {
    v11 = *MEMORY[0x29EDB8F00];
    CFDictionarySetValue(a2, @"@APTicket", *MEMORY[0x29EDB8F00]);
    v12 = a1[2];
    v13 = *(v12 + 24);
    if (v13 && !*(v12 + 132))
    {
      CFDictionarySetValue(a2, @"ApNonce", v13);
      v12 = a1[2];
    }

    if (*(v12 + 80))
    {
      CFDictionarySetValue(a2, @"ApRelaxedImageVerification", v11);
    }
  }

  v14 = a1[53];
  if (!a4 && v14)
  {
    Value = CFDictionaryGetValue(v14, @"ApRequestEntries");
    if (Value)
    {
      v16 = Value;
      v17 = CFGetAllocator(a1);
      v5 = AMAuthInstallSupportApplyDictionaryOverrides(v17, v16, &v29, 0);
      if (v5)
      {
        v23 = "failed to set Ap entitlements";
LABEL_24:
        AMAuthInstallLog(3, "AMAuthInstallApImg3ServerRequestAddRequiredTags", v23, v18, v19, v20, v21, v22, v28);
        return v5;
      }

      return v5;
    }

    return 0;
  }

  v5 = 0;
  if (!a4 || !v14)
  {
    return v5;
  }

  v24 = CFDictionaryGetValue(v14, @"RecoveryRequestEntries");
  if (!v24)
  {
    return 0;
  }

  v25 = v24;
  v26 = CFGetAllocator(a1);
  v5 = AMAuthInstallSupportApplyDictionaryOverrides(v26, v25, &v29, 0);
  if (v5)
  {
    v23 = "failed to set recovery entitlements";
    goto LABEL_24;
  }

  return v5;
}

uint64_t AMAuthInstallApImg3CreateMeasurementsFromURL(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3, char a4)
{
  v4 = 0;
  v40 = *MEMORY[0x29EDCA608];
  theData = 0;
  v5 = 1;
  if (!a2)
  {
    v7 = 0;
    Mutable = 0;
    goto LABEL_11;
  }

  v7 = 0;
  Mutable = 0;
  if (a3)
  {
    v11 = AMAuthInstallPlatformCreateDataFromFileURL(a1, &theData, a2);
    if (v11)
    {
      v5 = v11;
      v4 = 0;
      v7 = 0;
      Mutable = 0;
      goto LABEL_11;
    }

    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      if (tss_get_partial_hash(BytePtr, Length, 64, bytes, v14, v15, v16, v17))
      {
        AMAuthInstallLog(3, "AMAuthInstallApImg3CreateMeasurementsFromURL", "failed to compute partial digest for img3 object", v18, v19, v20, v21, v22, theData);
        v4 = 0;
        v7 = 0;
LABEL_8:
        v5 = 5;
        goto LABEL_11;
      }

      v7 = CFDataCreate(a1, bytes, 28);
      if (v7)
      {
        CFDictionarySetValue(Mutable, @"PartialDigest", v7);
        if (a4)
        {
          v4 = 0;
LABEL_15:
          v5 = 0;
          *a3 = CFRetain(Mutable);
          goto LABEL_11;
        }

        v25 = CFDataGetBytePtr(theData);
        v26 = CFDataGetLength(theData);
        if (tss_get_hash(v25, v26, v38, v27, v28, v29, v30, v31))
        {
          AMAuthInstallLog(3, "AMAuthInstallApImg3CreateMeasurementsFromURL", "failed to compute digest for img3 object", v32, v33, v34, v35, v36, theData);
          v4 = 0;
          goto LABEL_8;
        }

        v4 = CFDataCreate(a1, v38, 20);
        if (v4)
        {
          CFDictionarySetValue(Mutable, @"Digest", v4);
          goto LABEL_15;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
      v7 = 0;
    }

    v5 = 2;
  }

LABEL_11:
  SafeRelease(theData);
  SafeRelease(v4);
  SafeRelease(v7);
  SafeRelease(Mutable);
  v23 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t AMAuthInstallApImg3CopyPersonalizedData(void *a1, const __CFURL *a2, CFStringRef a3, const void *a4, const __CFDictionary *a5, CFTypeRef *a6, char a7)
{
  v10 = a4;
  v36 = 0;
  theDict = a5;
  v34 = 0;
  v35 = 0;
  SafeRetain(a4);
  SafeRetain(a5);
  if (!a1 || !a1[2])
  {
    v17 = 1;
    goto LABEL_10;
  }

  if (v10)
  {
    if (a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v33 = 0;
  v31 = CFGetAllocator(a1);
  v32 = AMAuthInstallApImg3CreateMeasurementsFromURL(v31, a2, &v33, a7);
  if (v32)
  {
    v17 = v32;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v33;
  if (!a3)
  {
LABEL_5:
    v14 = CFGetAllocator(a1);
    a3 = AMAuthInstallApCopyImageTag(v14, a2);
    if (!a3)
    {
      v17 = 0;
      goto LABEL_10;
    }
  }

LABEL_6:
  if (!a5)
  {
    v16 = AMAuthInstallApImg3CreateServerRequestDictionary(a1, a3, v10, 0, &v36);
    if (v16)
    {
      goto LABEL_8;
    }

    v16 = AMAuthInstallRequestSendSync(a1, v36, &theDict);
    if (v16)
    {
      goto LABEL_8;
    }
  }

  v15 = CFGetAllocator(a1);
  v16 = AMAuthInstallPlatformCreateDataFromFileURL(v15, &v35, a2);
  if (v16)
  {
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(theDict, a3);
  if (!Value)
  {
    v30 = "response missing entry %@";
LABEL_24:
    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyPersonalizedData", v30, v20, v21, v22, v23, v24, a3);
    v29 = &v35;
LABEL_25:
    v17 = 0;
    *a6 = CFRetain(*v29);
    goto LABEL_10;
  }

  v25 = Value;
  v26 = CFDictionaryGetValue(Value, @"Blob");
  if (!v26)
  {
    v30 = "response missing personalization data for %@";
    goto LABEL_24;
  }

  v27 = v26;
  v28 = CFDictionaryGetValue(v25, @"PartialDigest");
  if (!v28)
  {
    v30 = "response missing partial digest for %@";
    goto LABEL_24;
  }

  v29 = &v34;
  v16 = AMAuthInstallApImg3CreatePersonalizedData(a1, v35, v27, v28, &v34);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_8:
  v17 = v16;
LABEL_10:
  SafeRelease(v36);
  SafeRelease(v10);
  SafeRelease(theDict);
  SafeRelease(v35);
  SafeRelease(v34);
  return v17;
}

uint64_t AMAuthInstallApImg3CreateSignatureStrippedImage3(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  v3 = 0;
  length = 0;
  v4 = 1;
  if (theData && a3)
  {
    MutableCopy = CFDataCreateMutableCopy(a1, 0, theData);
    v3 = MutableCopy;
    if (MutableCopy)
    {
      length = CFDataGetLength(MutableCopy);
      BytePtr = CFDataGetBytePtr(v3);
      if (tss_strip_img3_signature(BytePtr, &length, v8, v9, v10, v11, v12, v13))
      {
        v4 = 9;
      }

      else
      {
        CFDataSetLength(v3, length);
        v4 = 0;
        *a3 = CFRetain(v3);
      }
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

uint64_t AMAuthInstallApImg3WriteSignatureStrippedImage3(const void *a1, const __CFURL *a2)
{
  *v7 = 0;
  theData = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(*MEMORY[0x29EDB8ED8], &theData, a1);
  if (!DataFromFileURL)
  {
    DataFromFileURL = AMAuthInstallApImg3CreateSignatureStrippedImage3(v3, theData, v7);
    if (!DataFromFileURL)
    {
      DataFromFileURL = AMAuthInstallSupportWriteDataToFileURL(v3, *v7, a2, 1);
    }
  }

  v5 = DataFromFileURL;
  SafeRelease(theData);
  SafeRelease(*v7);
  return v5;
}

const __CFData *AMAuthInstallApImg3IsImg3Payload(const __CFData *result)
{
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    return (tss_image_is_img3(BytePtr) == 0);
  }

  return result;
}

uint64_t AMAuthInstallApImg3IsFinalized(const __CFAllocator *a1, const void *a2, BOOL *a3)
{
  theData = 0;
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(a1, &theData, a2);
  if (!DataFromFileURL)
  {
    BytePtr = CFDataGetBytePtr(theData);
    *a3 = tss_image_is_finalized(BytePtr, v6, v7, v8, v9, v10, v11, v12) == 0;
  }

  SafeRelease(theData);
  return DataFromFileURL;
}

uint64_t AMAuthInstallApImg3Finalize(const __CFAllocator *a1, const void *a2, const __CFURL *a3)
{
  v21 = 0;
  v22 = 0;
  theData = 0;
  v20 = 0;
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(a1, &theData, a2);
  if (DataFromFileURL)
  {
    v16 = DataFromFileURL;
    v12 = 0;
    v15 = 0;
  }

  else
  {
    MutableCopy = CFDataCreateMutableCopy(a1, 0, theData);
    v12 = MutableCopy;
    if (MutableCopy)
    {
      BytePtr = CFDataGetBytePtr(MutableCopy);
      Length = CFDataGetLength(v12);
      if (image3InstantiateFromBuffer(&v20, BytePtr, Length, 1))
      {
        v15 = 0;
        v16 = 9;
        v17 = "%s: invalid image 3 object";
LABEL_10:
        AMAuthInstallLog(3, "AMAuthInstallApImg3Finalize", v17, v6, v7, v8, v9, v10, "AMAuthInstallApImg3Finalize");
        goto LABEL_11;
      }

      if (image3Finalize(v20, &v22, &v21, 1, 0))
      {
        v15 = 0;
        v16 = 14;
        v17 = "%s: failed to finalize image";
        goto LABEL_10;
      }

      v15 = CFDataCreate(a1, v22, v21);
      if (v15)
      {
        v16 = AMAuthInstallSupportWriteDataToFileURL(a1, v15, a3, 1);
        if (!v16)
        {
          goto LABEL_11;
        }

        v17 = "%s: failed to write finalized image3";
        goto LABEL_10;
      }

      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 2;
    }
  }

LABEL_11:
  if (v20)
  {
    image3Discard(&v20);
  }

  if (v16)
  {
    AMAuthInstallLog(8, "AMAuthInstallApImg3Finalize", "%s: %@", v6, v7, v8, v9, v10, "AMAuthInstallApImg3Finalize");
  }

  SafeRelease(theData);
  SafeRelease(v12);
  SafeRelease(v15);
  return v16;
}

uint64_t AMAuthInstallApImg3CopyRequestTag(int a1, CFDataRef theData, void *a3)
{
  v30 = 0;
  v28 = 0;
  v3 = 1;
  if (!theData || !a3)
  {
    goto LABEL_13;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (image3InstantiateFromBuffer(&v28, BytePtr, Length, 0))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyRequestTag", "%s: invalid image 3 object", v8, v9, v10, v11, v12, "AMAuthInstallApImg3CopyRequestTag");
  }

  else
  {
    if (!image3GetTagSignedNumber(v28, 1415139397, &v30, 0))
    {
      __s1 = bswap32(v30);
      v30 = __s1;
      v18 = off_29EE99850;
      v19 = 28;
      do
      {
        if (CFStringGetCString(*v18, buffer, 5, 0x8000100u) && !memcmp(&__s1, buffer, 5uLL))
        {
          v26 = CFRetain(*(v18 - 1));
          *a3 = v26;
          if (v26)
          {
            goto LABEL_10;
          }

          goto LABEL_15;
        }

        v18 += 2;
        --v19;
      }

      while (v19);
      if (*a3)
      {
LABEL_10:
        v3 = 0;
        goto LABEL_11;
      }

LABEL_15:
      AMAuthInstallLog(3, "AMAuthInstallApImg3CopyRequestTag", "failed to find entry for %@", v20, v21, v22, v23, v24, 0);
      v3 = 8;
      goto LABEL_11;
    }

    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyRequestTag", "%s: failed to get tag", v13, v14, v15, v16, v17, "AMAuthInstallApImg3CopyRequestTag");
  }

  v3 = 9;
LABEL_11:
  if (v28)
  {
    image3Discard(&v28);
  }

LABEL_13:
  SafeRelease(0);
  return v3;
}

uint64_t AMAuthInstallApImg4CreateRequestTagFromFileURL(const __CFAllocator *a1, CFStringRef theString, CFStringRef stringToFind, CFStringRef *a4, CFURLRef *a5)
{
  v5 = 0;
  cf = 0;
  v6 = 1;
  if (!theString || !stringToFind || !a4)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v9 = 0;
  if (a5)
  {
    location = CFStringFind(theString, stringToFind, 0).location;
    if (location == -1)
    {
      v17 = CFURLCreateWithFileSystemPath(a1, theString, kCFURLPOSIXPathStyle, 0);
      *a5 = v17;
      if (v17)
      {
        DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(a1, &cf, v17);
        if (DataFromMappedFileURL)
        {
          v6 = DataFromMappedFileURL;
          AMAuthInstallLog(3, "AMAuthInstallApImg4CreateRequestTagFromFileURL", "failed to create file from %@", v20, v21, v22, v23, v24, theString);
          v5 = 0;
        }

        else
        {
          v25 = AMAuthInstallApImg4CopyPayloadType(a1, cf, v19, v20, v21, v22, v23, v24);
          v5 = v25;
          if (v25)
          {
            EntryNameForType = AMAuthInstallApImg4GetEntryNameForType(v25);
            *a4 = EntryNameForType;
            if (!EntryNameForType)
            {
              AMAuthInstallLog(3, "AMAuthInstallApImg4CreateRequestTagFromFileURL", "entry not found for %@", v32, v33, v34, v35, v36, v5);
              v9 = 0;
              v6 = 8;
              goto LABEL_16;
            }

            CFRetain(EntryNameForType);
            v9 = 0;
LABEL_15:
            v6 = 0;
            goto LABEL_16;
          }

          AMAuthInstallLog(3, "AMAuthInstallApImg4CreateRequestTagFromFileURL", "failed to get payload type from %@", v26, v27, v28, v29, v30, theString);
        }

        v9 = 0;
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_4_0();
    }

    else
    {
      v13 = location;
      v14 = location + 1;
      v39.length = CFStringGetLength(theString) - (location + 1);
      v39.location = v14;
      v9 = CFStringCreateWithSubstring(a1, theString, v39);
      if (v9)
      {
        v15 = CFURLCreateWithFileSystemPath(a1, v9, kCFURLPOSIXPathStyle, 0);
        *a5 = v15;
        if (v15)
        {
          v40.location = 0;
          v40.length = v13;
          v16 = CFStringCreateWithSubstring(a1, theString, v40);
          v5 = 0;
          *a4 = v16;
          if (!v16)
          {
            goto LABEL_20;
          }

          goto LABEL_15;
        }
      }

      v5 = 0;
    }

LABEL_20:
    v6 = 2;
  }

LABEL_16:
  SafeRelease(cf);
  SafeRelease(v5);
  SafeRelease(0);
  SafeRelease(v9);
  return v6;
}

const __CFData *AMAuthInstallApImg4IsImg4Payload(int a1, CFDataRef theData)
{
  v2 = theData;
  v42[0] = 0;
  v42[1] = 0;
  v40 = 0;
  v41 = 0;
  HIDWORD(v39) = 0;
  if (!theData)
  {
    goto LABEL_13;
  }

  HIDWORD(v41) = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(v2);
  v4 = DERDecoderInitialize(v42, BytePtr, &v41 + 1, HIDWORD(v41));
  if (v4 || (v12 = OUTLINED_FUNCTION_6_1(v4, v5, v6, v7, v8, v9, v10, v11, v37, v39, v40, v41, v42[0]), DERDecoderGetDataWithTag(v12, v13, 0x10u, 1, v14, v15, v16)) || (v17 = DERDecoderInitialize(v42, v40, &v39 + 1, HIDWORD(v39)), v17) || (LODWORD(v41) = 0, v25 = OUTLINED_FUNCTION_6_1(v17, v18, v19, v20, v21, v22, v23, v24, v38, v39, v40, v41, v42[0]), DERDecoderGetDataWithTag(v25, v26, 0x16u, 0, v27, v28, v29)))
  {
    v2 = 0;
LABEL_13:
    v35 = 0;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_1();
  v34 = CFStringCreateWithBytes(v30, v31, v32, v33, 0);
  v35 = v34;
  v2 = (v34 && (CFStringCompare(v34, @"IMG4", 0) == kCFCompareEqualTo || CFStringCompare(v35, @"IM4P", 0) == kCFCompareEqualTo));
LABEL_11:
  SafeRelease(v35);
  return v2;
}

uint64_t AMAuthInstallApImg4CopyPayload(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  v3 = 1;
  if (a2 && a3)
  {
    v5 = a1;
    DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(a1, &cf, a2);
    if (DataFromMappedFileURL)
    {
      v3 = DataFromMappedFileURL;
    }

    else if (AMAuthInstallApImg4IsImg4Payload(v5, cf))
    {
      v3 = 0;
      *a3 = CFRetain(cf);
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayload", "object is not a valid img4/im4p type", v7, v8, v9, v10, v11, v13);
      v3 = 23;
    }
  }

  SafeRelease(cf);
  return v3;
}

uint64_t AMAuthInstallApImg4CreateMeasurementsWithTag(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CFTypeRef *a5)
{
  v142 = *MEMORY[0x29EDCA608];
  value = 0;
  cf = 0;
  v128 = 0;
  v129 = 0;
  v5 = 1;
  if (!a2)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_12();
  if (v10)
  {
    v11 = v9;
    v12 = v8;
    v13 = v7;
    v14 = CFURLCopyFileSystemPath(v8, kCFURLPOSIXPathStyle);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_77;
    }

    if (CFStringFind(v14, @"=", 0).location == -1)
    {
      v22 = CFRetain(v12);
      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v13, v15, @"=");
    v17 = ArrayBySeparatingStrings;
    if (!ArrayBySeparatingStrings)
    {
      goto LABEL_77;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    v19 = ValueAtIndex;
    if (ValueAtIndex)
    {
      if (!v11)
      {
        TypeForEntryName = AMAuthInstallApImg4GetTypeForEntryName(ValueAtIndex);
        if (!TypeForEntryName)
        {
          goto LABEL_75;
        }

        v11 = TypeForEntryName;
        if (CFStringCompare(TypeForEntryName, v19, 0) == kCFCompareEqualTo)
        {
          v84 = OUTLINED_FUNCTION_14(0, @"ftap");
          if (v84)
          {
            v85 = OUTLINED_FUNCTION_14(v84, @"rfta");
            if (v85)
            {
              v86 = OUTLINED_FUNCTION_14(v85, @"ftsp");
              if (v86)
              {
                if (OUTLINED_FUNCTION_14(v86, @"rfts"))
                {
                  v11 = 0;
                }
              }
            }
          }
        }
      }

      v21 = CFArrayGetValueAtIndex(v17, 1);
      if (v21)
      {
        v22 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], v21, kCFURLPOSIXPathStyle, 0);
        if (!v22)
        {
          goto LABEL_77;
        }

        if (v11)
        {
LABEL_13:
          OUTLINED_FUNCTION_3_1();
          CFStringGetCString(v23, v24, v25, v26);
          DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(v13, &cf, v22);
          if (DataFromMappedFileURL)
          {
            v5 = DataFromMappedFileURL;
            goto LABEL_42;
          }

          v28 = OUTLINED_FUNCTION_8_0();
          if (v28)
          {
            v5 = v28;
            v57 = "failed to create im4p with override tag";
          }

          else
          {
            AMSupportSafeRelease();
            cf = 0;
            if (AMAuthInstallCryptoCreateDigestForDataType(v13, v129, &value, a4) != 1)
            {
              v34 = AMSupportSafeRetain();
              AMSupportSafeRelease();
              v129 = 0;
              goto LABEL_17;
            }

            v5 = 1;
            v57 = "Unsupported digestType";
          }

LABEL_27:
          AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", v57, v29, v30, v31, v32, v33, v124);
          goto LABEL_42;
        }

LABEL_25:
        v55 = AMAuthInstallSupportCreateDataFromMappedFileURL(v13, &cf, v22);
        if (!v55)
        {
          v34 = AMAuthInstallApImg4CopyPayloadType(v13, cf, v56, v29, v30, v31, v32, v33);
          AMAuthInstallCryptoCreateDigestForDataType(v13, cf, &value, a4);
          if (!value)
          {
            v5 = 3;
            AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "failed to create digest for %@ with error %d", v64, v65, v66, v67, v68, v22);
            goto LABEL_42;
          }

          AMSupportSafeRelease();
          cf = 0;
LABEL_17:
          if (value)
          {
            Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            v46 = Mutable;
            if (Mutable)
            {
              CFDictionarySetValue(Mutable, @"Digest", value);
              if (!v34)
              {
LABEL_41:
                v5 = 0;
                *a5 = CFRetain(v46);
                goto LABEL_42;
              }

              v48 = OUTLINED_FUNCTION_15(v47, @"sepi");
              if (v48)
              {
                if (OUTLINED_FUNCTION_15(v48, @"rsep"))
                {
                  goto LABEL_33;
                }

                v49 = AMAuthInstallApImg4CopyPayloadVersionProperty(v13, v22, 2, &v128);
                if (v49)
                {
                  AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "could not get tbmr property, status:%d\n", v50, v51, v52, v53, v54, v49);
                  goto LABEL_33;
                }
              }

              else
              {
                v58 = AMAuthInstallApImg4CopyPayloadVersionProperty(v13, v22, 1, &v128);
                if (v58)
                {
                  AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "could not get tbms property, status:%d\n", v59, v60, v61, v62, v63, v58);
                  goto LABEL_33;
                }
              }

              CFDictionarySetValue(v46, @"TBMDigests", v128);
LABEL_33:
              v137 = 0;
              theData = 0;
              BytePtr = 0;
              bzero(v139, 0xA0uLL);
              v135 = 0;
              if (!v22)
              {
                v76 = 0;
                v5 = 1;
                goto LABEL_40;
              }

              v69 = AMAuthInstallApImg4CopyPayload(v13, v22, &theData);
              if (v69)
              {
                v5 = v69;
                v76 = 0;
                goto LABEL_40;
              }

              BytePtr = CFDataGetBytePtr(theData);
              v137 = CFDataGetLength(theData);
              bzero(v139, 0xA0uLL);
              v70 = DERImg4DecodePayloadWithProperties(&BytePtr, v139);
              if (v70)
              {
                AMAuthInstallLog(7, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "failed to decode img4 payload with properties (error=%d), assuming no properties", v71, v72, v73, v74, v75, v70);
LABEL_38:
                v76 = 0;
LABEL_39:
                v5 = 0;
                goto LABEL_40;
              }

              if (!v140)
              {
                goto LABEL_38;
              }

              *bytes = 0u;
              *length = 0u;
              v132 = 0u;
              v87 = OUTLINED_FUNCTION_15(v70, @"sepi");
              if (v87)
              {
                v94 = OUTLINED_FUNCTION_15(v87, @"rsep");
                if (v94)
                {
                  goto LABEL_59;
                }

                if (OUTLINED_FUNCTION_9(0, 1952607602, v95, v96, v97, v98, v99, v100, v124, v125) || (v93 = bytes[1]) == 0)
                {
                  AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "could not get tbmr payload property, status:%d\n", v101, v102, v103, v104, v105, 23);
                  goto LABEL_59;
                }
              }

              else if (AMAuthInstallApImg4DecodePayloadProperty(&BytePtr, 0xE000000074626D73, &v132) || (v93 = bytes[1]) == 0)
              {
                AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "could not get tbms payload property, status:%d\n", v88, v89, v90, v91, v92, 23);
                goto LABEL_59;
              }

              v106 = CFDataCreate(v13, v93, length[0]);
              if (!v106)
              {
                goto LABEL_84;
              }

              v107 = v106;
              CFDictionarySetValue(v46, @"TBMDigests", v106);
              SafeRelease(v107);
LABEL_59:
              v108 = OUTLINED_FUNCTION_9(v94, 1835884912, v95, v96, v97, v98, v99, v100, v124, v125);
              if (!v108 && bytes[1])
              {
                v115 = CFDataCreate(v13, bytes[1], length[0]);
                if (!v115)
                {
                  goto LABEL_84;
                }

                v116 = v115;
                CFDictionarySetValue(v46, @"MemoryMap", v115);
                SafeRelease(v116);
              }

              if (OUTLINED_FUNCTION_9(v108, 1919181927, v109, v110, v111, v112, v113, v114, v124, v126) || !bytes[1])
              {
                goto LABEL_67;
              }

              v117 = CFDataCreate(v13, bytes[1], length[0]);
              if (v117)
              {
                v118 = v117;
                CFDictionarySetValue(v46, @"RawDataDigest", v117);
                SafeRelease(v118);
LABEL_67:
                v76 = CFDataCreate(v13, v140, v141);
                AMAuthInstallCryptoCreateDigestForDataType(v13, v76, &v135, a4);
                if (v135)
                {
                  CFDictionarySetValue(v46, @"ObjectPayloadPropertyDigest", v135);
                  goto LABEL_39;
                }

                AMAuthInstallLog(3, "AMAuthInstallCopyPayloadPropertiesToMeasurementDictionary", "created digest is NULL", v119, v120, v121, v122, v123, v124);
                goto LABEL_86;
              }

LABEL_84:
              v76 = 0;
LABEL_86:
              v5 = 2;
LABEL_40:
              SafeRelease(v135);
              SafeRelease(v76);
              SafeRelease(0);
              SafeRelease(theData);
              if (v5)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "failed to copy payload properties to measurement dictionary.", v77, v78, v79, v80, v81, v124);
                goto LABEL_42;
              }

              goto LABEL_41;
            }

            AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "failed to create mutable dict measurementDict", v41, v42, v43, v44, v45, v124);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4CreateMeasurementsWithTag", "created digest is NULL", v35, v36, v37, v38, v39, v124);
          }

LABEL_77:
          v5 = 2;
          goto LABEL_42;
        }

        v5 = v55;
        LOBYTE(v124) = v22;
        v57 = "Failed to read file %@: error=%d";
        goto LABEL_27;
      }
    }

LABEL_75:
    v5 = 8;
  }

LABEL_42:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  v82 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t AMAuthInstallApImg4CreateServerRequestDictionary(void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  v3 = 1;
  if (a1 && a2 && a3)
  {
    v7 = CFGetAllocator(a1);
    cf = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (cf)
    {
      v8 = CFGetAllocator(a1);
      v9 = AMAuthInstallSupportApplyDictionaryOverrides(v8, a2, &cf, 0);
      if (v9)
      {
        v3 = v9;
        AMAuthInstallLog(3, "AMAuthInstallApImg4CreateServerRequestDictionary", "failed to apply measurements override", v10, v11, v12, v13, v14, v16);
      }

      else
      {
        v3 = AMAuthInstallApImg4ServerRequestAddRequiredTagsWithRecoveryOS(a1, cf, 1, 0);
        if (!v3)
        {
          *a3 = CFRetain(cf);
        }
      }
    }

    else
    {
      v3 = 2;
    }
  }

  SafeRelease(cf);
  return v3;
}

uint64_t AMAuthInstallApImg4SetSepNonce(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (cf && *(a1 + 16))
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID() && CFDataGetLength(cf) == 20)
    {
      SafeRelease(*(*(a1 + 16) + 48));
      v6 = CFRetain(cf);
      return OUTLINED_FUNCTION_11(v6);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4SetSepNonceSlotID(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 16))
  {
    return 1;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFNumberGetTypeID())
  {
    return 1;
  }

  CFRetain(cf);
  SafeRelease(*(*(a1 + 16) + 56));
  result = 0;
  *(*(a1 + 16) + 56) = cf;
  return result;
}

uint64_t AMAuthInstallApImg4ServerRequestAddUIDMode(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (theDict)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(v5 + 184);
      if (CFDictionaryContainsKey(theDict, @"UniqueBuildID") || CFDictionaryContainsKey(theDict, @"UID_MODE"))
      {
        return 0;
      }

      v7 = *MEMORY[0x29EDB8EF8];
      if (v6)
      {
        v8 = v6 == v7;
      }

      else
      {
        v8 = 1;
      }

      if (!v8 || (v9 = *(*(a1 + 16) + 192), v10 = *MEMORY[0x29EDB8F00], v9 == *MEMORY[0x29EDB8F00]) || (result = CFDictionaryContainsKey(theDict, @"SepNonce"), !v10) || result)
      {
        if (v6)
        {
          v11 = v6;
        }

        else
        {
          v11 = v7;
        }

        CFDictionarySetValue(theDict, @"UID_MODE", v11);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4ServerRequestAddRequiredTagsWithRecoveryOS(void *a1, __CFDictionary *a2, int a3, int a4)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a2)
  {
    v7 = a1[2];
    if (v7)
    {
      v10 = *(v7 + 132);
      v11 = *(v7 + 88);
      v12 = kAMAuthInstallTagX86SecurityMode;
      if (!v10)
      {
        v12 = kAMAuthInstallTagApSecurityMode;
      }

      _CFDictionarySetBoolean(a2, *v12, v11);
      v14 = a1[2];
      if (*(v14 + 90))
      {
        if (*(v14 + 132))
        {
          v15 = kAMAuthInstallTagX86AllowMixAndMatch;
        }

        else
        {
          v15 = kAMAuthInstallTagApAllowMixAndMatch;
        }

        CFDictionarySetValue(a2, *v15, *MEMORY[0x29EDB8F00]);
      }

      v16 = a1[2];
      if (v16[91])
      {
        OUTLINED_FUNCTION_10(v13, @"Ap,InternalUseOnlySW");
        v16 = a1[2];
      }

      if (v16[132])
      {
        _CFDictionarySetBoolean(a2, @"x86,ProductionMode", v16[20]);
        if (*(a1[2] + 95))
        {
          _CFDictionarySetInteger32(a2, @"x86,UseGlobalSigning", 1);
        }

        if (!a3)
        {
          goto LABEL_39;
        }

        v18 = *(a1[2] + 24);
        if (v18)
        {
          CFDictionarySetValue(a2, @"x86,Nonce", v18);
        }

        OUTLINED_FUNCTION_10(v17, @"@x86,Ticket");
      }

      else
      {
        if (v16[95])
        {
          _CFDictionarySetInteger32(a2, @"Ap,UseGlobalSigning", 1);
        }

        if (!a3)
        {
          goto LABEL_39;
        }
      }

      v19 = a1[2];
      if (!*(v19 + 132))
      {
        OUTLINED_FUNCTION_10(v13, @"@ApImg4Ticket");
        v19 = a1[2];
      }

      v20 = *(v19 + 24);
      if (v20)
      {
        CFDictionarySetValue(a2, @"ApNonce", v20);
        v19 = a1[2];
      }

      v21 = *(v19 + 48);
      if (v21)
      {
        CFDictionarySetValue(a2, @"SepNonce", v21);
        v19 = a1[2];
      }

      v22 = *(v19 + 40);
      if (v22)
      {
        CFDictionarySetValue(a2, @"Ap,SoftwareNonceForUpdateFreshness", v22);
        v19 = a1[2];
      }

      v23 = *(v19 + 136);
      if (v23)
      {
        CFDictionarySetValue(a2, @"@BCert", v23);
        OUTLINED_FUNCTION_10(v24, @"@Managed");
        v19 = a1[2];
      }

      v25 = *(v19 + 144);
      if (v25)
      {
        CFDictionarySetValue(a2, @"@BCert", v25);
        OUTLINED_FUNCTION_10(v26, @"@AlternateSU");
        v19 = a1[2];
      }

      v27 = *(v19 + 176);
      if (v27)
      {
        CFDictionarySetValue(a2, @"Ap,SikaFuse", v27);
        v19 = a1[2];
      }

      v28 = *(v19 + 208);
      if (v28)
      {
        CFDictionarySetValue(a2, @"Ap,DisablePlatformOnlyCode", v28);
      }

LABEL_39:
      result = AMAuthInstallApImg3ServerRequestAddRequiredTags(a1, a2, 0, a4);
      if (!result)
      {

        return AMAuthInstallApImg4ServerRequestAddUIDMode(a1, a2);
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4StitchData(const void **a1, uint64_t a2, const void *a3, uint64_t a4, CFDictionaryRef theDict, int a6)
{
  v6 = 0;
  v53 = 0;
  v54 = 0;
  v7 = 1;
  if (a3 && a4)
  {
    if (a6)
    {
      Value = 0;
    }

    else
    {
      if (!theDict)
      {
LABEL_20:
        v6 = 0;
        goto LABEL_14;
      }

      Value = CFDictionaryGetValue(theDict, a1[11]);
      if (!Value)
      {
        v51 = a1[11];
        AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "%s: could not find ticket %@ data in response.", v13, v14, v15, v16, v17, "AMAuthInstallApImg4StitchData");
        v6 = 0;
        v7 = 8;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_3_1();
      CFStringGetCString(v18, v19, v20, v21);
      v22 = CFGetAllocator(a1);
      DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(v22, &v54, a3);
      if (DataFromMappedFileURL)
      {
        v7 = DataFromMappedFileURL;
      }

      else
      {
        v24 = OUTLINED_FUNCTION_8_0();
        if (!v24)
        {
          SafeRelease(v54);
          v54 = 0;
          CFGetAllocator(a1);
          Length = CFDataGetLength(v53);
          v7 = _AMAuthInstallApImg4StitchToURL(a4, Value, Length, v53, _WriteCFDataIntoFile, v31, v32, v33);
          v6 = 0;
          if (!v7)
          {
            goto LABEL_14;
          }

LABEL_17:
          AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to write stitched data to %@", v34, v35, v36, v37, v38, a4);
          goto LABEL_14;
        }

        v7 = v24;
        AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to recreate", v25, v26, v27, v28, v29, v50);
      }

      goto LABEL_20;
    }

    v6 = AMAuthInstallPlatformOpenFileStreamWithURL();
    if (v6)
    {
      bzero(&v52, 0x90uLL);
      v39 = fileno(v6);
      fstat(v39, &v52);
      CFGetAllocator(a1);
      v7 = _AMAuthInstallApImg4StitchToURL(a4, Value, LODWORD(v52.st_size), v6, _WriteStreamIntoFile, v40, v41, v42);
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    v44 = __error();
    strerror(*v44);
    AMAuthInstallLog(3, "AMAuthInstallApImg4StitchData", "failed to open file %@, error=%s", v45, v46, v47, v48, v49, a3);
    v7 = 4;
  }

LABEL_14:
  SafeRelease(v54);
  SafeRelease(v53);
  if (v6)
  {
    fclose(v6);
  }

  return v7;
}

uint64_t AMAuthInstallApImg4PersonalizeFile(uint64_t a1, CFURLRef anURL, const void *a3, const void *a4)
{
  *v57 = 0;
  key = 0;
  v55 = 0;
  value = 0;
  theDict = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_4_0();
    PersonalizedResponse = 1;
    goto LABEL_24;
  }

  v4 = 0;
  PersonalizedResponse = 1;
  if (!a3 || !anURL)
  {
    TypeForEntryName = 0;
    goto LABEL_24;
  }

  TypeForEntryName = 0;
  if (*(a1 + 16))
  {
    v4 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
    if (!v4)
    {
      TypeForEntryName = 0;
      goto LABEL_30;
    }

    v10 = CFGetAllocator(a1);
    RequestTagFromFileURL = AMAuthInstallApImg4CreateRequestTagFromFileURL(v10, v4, @"=", &key, v57);
    if (RequestTagFromFileURL)
    {
      PersonalizedResponse = RequestTagFromFileURL;
      AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "could not get request tag from path %@", v12, v13, v14, v15, v16, v4);
    }

    else
    {
      TypeForEntryName = 0;
      PersonalizedResponse = 14;
      if (!key || !*v57)
      {
        goto LABEL_24;
      }

      if (a4)
      {
        value = CFRetain(a4);
        goto LABEL_13;
      }

      TypeForEntryName = AMAuthInstallApImg4GetTypeForEntryName(key);
      if (!TypeForEntryName)
      {
        goto LABEL_34;
      }

      v17 = CFGetAllocator(a1);
      MeasurementsWithTag = AMAuthInstallApImg4CreateMeasurementsWithTag(v17, *v57, TypeForEntryName, *(*(a1 + 16) + 128), &value);
      if (!MeasurementsWithTag)
      {
LABEL_13:
        v24 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v24, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        TypeForEntryName = Mutable;
        if (Mutable)
        {
          CFDictionaryAddValue(Mutable, key, value);
          ServerRequestDictionary = AMAuthInstallApImg4CreateServerRequestDictionary(a1, TypeForEntryName, &v55);
          if (ServerRequestDictionary)
          {
            PersonalizedResponse = ServerRequestDictionary;
            v52 = "failed to create request dict";
            goto LABEL_37;
          }

          PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse(a1, v55, &theDict);
          if (PersonalizedResponse || !theDict)
          {
            v52 = "failed to create response dict";
            goto LABEL_37;
          }

          if (CFDictionaryGetValue(theDict, *(a1 + 88)))
          {
            v42 = AMAuthInstallApImg4GetTypeForEntryName(key);
            if (v42)
            {
              v43 = v42;
              if (CFStringCompare(v42, key, 0))
              {
                v44 = v43;
              }

              else
              {
                v44 = 0;
              }

              v45 = AMAuthInstallApImg4StitchData(a1, v44, *v57, a3, theDict, 0);
              if (v45)
              {
                PersonalizedResponse = v45;
                AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "failed to stitch ticket to %@", v46, v47, v48, v49, v50, a3);
                goto LABEL_24;
              }

              PersonalizedResponse = AMAuthInstallApImg4StitchRestoreInfoWithAMAI(key, a3, theDict, 0, a1);
              if (!PersonalizedResponse)
              {
                goto LABEL_24;
              }

              v53 = a3;
              v52 = "failed to stitch restore info to %@";
LABEL_37:
              AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", v52, v32, v33, v34, v35, v36, v53);
              goto LABEL_24;
            }
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "Ap ticket not found in response", v37, v38, v39, v40, v41, v53);
          }

LABEL_34:
          PersonalizedResponse = 8;
          goto LABEL_24;
        }

        AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "failed to create mutable dict measurementDict", v26, v27, v28, v29, v30, v53);
LABEL_30:
        PersonalizedResponse = 2;
        goto LABEL_24;
      }

      PersonalizedResponse = MeasurementsWithTag;
      AMAuthInstallLog(3, "AMAuthInstallApImg4PersonalizeFile", "could not measure %@", v19, v20, v21, v22, v23, v4);
    }

    TypeForEntryName = 0;
  }

LABEL_24:
  SafeRelease(v4);
  SafeRelease(key);
  SafeRelease(*v57);
  SafeRelease(value);
  SafeRelease(TypeForEntryName);
  SafeRelease(v55);
  SafeRelease(theDict);
  return PersonalizedResponse;
}

uint64_t AMAuthInstallApImg4ForceLocalSigning(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 16);
  result = 1;
  if (v1)
  {
    *(v1 + 92) = 1;
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApImg4ForceServerSigning(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 16);
  result = 1;
  if (v1)
  {
    *(v1 + 94) = 1;
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApImg4SetParameters(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4SetParameters", "%s: make sure to call AMAuthInstallApSetParameters first", a4, a5, a6, a7, a8, "AMAuthInstallApImg4SetParameters");
    return 1;
  }

  if (!theDict)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(theDict, @"ApCertificateEpoch");
  if (Value)
  {
    v11 = Value;
    v12 = CFGetTypeID(Value);
    if (v12 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v11, kCFNumberIntType, &valuePtr))
      {
        *(*(a1 + 16) + 84) = valuePtr;
      }
    }
  }

  v13 = CFDictionaryGetValue(theDict, @"ApLeafCertStatus");
  if (v13)
  {
    v14 = v13;
    v15 = CFGetTypeID(v13);
    if (v15 == CFBooleanGetTypeID())
    {
      *(*(a1 + 16) + 89) = CFBooleanGetValue(v14);
    }
  }

  v16 = CFDictionaryGetValue(theDict, @"ApAllowMixAndMatch");
  if (v16)
  {
    v17 = v16;
    v18 = CFGetTypeID(v16);
    if (v18 == CFBooleanGetTypeID())
    {
      *(*(a1 + 16) + 90) = CFBooleanGetValue(v17);
    }
  }

  result = CFDictionaryGetValue(theDict, @"SepNonce");
  if (result)
  {
    v20 = result;
    v21 = CFGetTypeID(result);
    if (v21 == CFDataGetTypeID())
    {
      SafeRelease(*(*(a1 + 16) + 48));
      v22 = CFRetain(v20);
      return OUTLINED_FUNCTION_11(v22);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4DecodeRestoreInfo(const __CFData *a1, CFMutableDictionaryRef *a2)
{
  v43[2] = *MEMORY[0x29EDCA608];
  if (!a1 || !*a2)
  {
    result = 1;
    goto LABEL_36;
  }

  bzero(v42, 0x1C8uLL);
  v41[0] = 0;
  v41[1] = 0;
  v40[0] = 0;
  v40[1] = 0;
  v39 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  Img4DecodeInit(BytePtr, Length, v42);
  if (v11)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4DecodeRestoreInfo", "Img4DecodeInit img4 decode failed.", v6, v7, v8, v9, v10, v32);
LABEL_41:
    result = 99;
    goto LABEL_36;
  }

  if (DERDecodeSeqContentInit(v43, v41))
  {
    AMSupportLogInternal();
    goto LABEL_41;
  }

  v12 = *MEMORY[0x29EDB8ED8];
  v13 = *MEMORY[0x29EDB8EF8];
  v14 = *MEMORY[0x29EDB8F00];
  while (1)
  {
    do
    {
      while (1)
      {
        v15 = DERDecodeSeqNext(v41, &v39);
        if (!v15)
        {
          break;
        }

        if (v15 == 1)
        {
          result = 0;
          goto LABEL_36;
        }
      }

      v37 = 0;
      v38[0] = 0;
      v38[1] = 0;
      v36[0] = 0;
      v36[1] = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
    }

    while (DERDecodeItem(v40, &v37) || DERDecodeSeqContentInit(v38, v36) || DERDecodeSeqNext(v36, &v33) || v33 != 22);
    OUTLINED_FUNCTION_3_1();
    v20 = CFStringCreateWithBytes(v16, v17, v18, v19, 0);
    if (v20)
    {
      if (!DERDecodeSeqNext(v36, &v33))
      {
        break;
      }
    }

LABEL_35:
    SafeRelease(v20);
  }

  if (v33 != 1)
  {
    if (v33 != 2)
    {
      if (v33 == 4)
      {
        v25 = CFDataCreate(v12, v34, v35);
      }

      else
      {
        if (v33 != 22)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_3_1();
        v25 = CFStringCreateWithBytes(v21, v22, v23, v24, 0);
      }

      v28 = v25;
      if (v25)
      {
        CFDictionarySetValue(*a2, v20, v25);
      }

      v29 = v28;
      goto LABEL_34;
    }

    v32 = 0;
    if (DERParseInteger64(&v34, &v32))
    {
      goto LABEL_37;
    }

    v26 = CFNumberCreate(v12, kCFNumberSInt64Type, &v32);
    if (!v26)
    {
LABEL_33:
      v29 = 0;
LABEL_34:
      SafeRelease(v29);
      goto LABEL_35;
    }

    v27 = v26;
LABEL_32:
    CFDictionarySetValue(*a2, v20, v27);
    goto LABEL_33;
  }

  LOBYTE(v32) = 0;
  if (!DERParseBoolean(&v34, &v32))
  {
    if (v32)
    {
      v27 = v13;
    }

    else
    {
      v27 = v14;
    }

    if (!v27)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_37:
  result = 23;
LABEL_36:
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMAuthInstallApImg4EncodeRestoreDict(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v70 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2)
  {
    OUTLINED_FUNCTION_7_1();
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_7_1();
  if (!v5)
  {
    goto LABEL_41;
  }

  v6 = v4;
  v7 = DEREncoderCreate();
  if (!v7)
  {
    v3 = 0;
    v2 = 0;
    goto LABEL_41;
  }

  Count = CFDictionaryGetCount(v6);
  v9 = 8 * Count;
  v3 = malloc(v9);
  v10 = malloc(v9);
  v2 = v10;
  if (!v3 || !v10)
  {
    goto LABEL_41;
  }

  CFDictionaryGetKeysAndValues(v6, v3, v10);
  if (Count)
  {
    v16 = 0;
    v17 = 8 * Count;
    v18 = "%s: unexpected restore property type";
    while (1)
    {
      v19 = v3[v16 / 8];
      if (!v19 || (v20 = CFGetTypeID(v3[v16 / 8]), v20 != CFStringGetTypeID()))
      {
        v66 = "invalid overridesKey";
        goto LABEL_40;
      }

      v21 = v2[v16 / 8];
      if (!v21)
      {
        break;
      }

      v22 = CFGetTypeID(v21);
      if (v22 == CFDataGetTypeID())
      {
        if (AMAuthInstallApImg4AddDataProperty(v7, v19, v2[v16 / 8], v23, v24, v25, v26, v27))
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = CFGetTypeID(v2[v16 / 8]);
        TypeID = CFBooleanGetTypeID();
        v30 = v2[v16 / 8];
        if (v28 == TypeID)
        {
          Value = CFBooleanGetValue(v30);
          if (AMAuthInstallApImg4AddBooleanProperty(v7, v19, Value, v32, v33, v34, v35, v36))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v37 = CFGetTypeID(v30);
          if (v37 != CFNumberGetTypeID())
          {
            goto LABEL_38;
          }

          v43 = v2[v16 / 8];
          if (CFNumberGetType(v43) == kCFNumberSInt32Type)
          {
            if (AMAuthInstallApImg4AddInteger32Property(v7, v19, v43, v44, v45, v46, v47, v48))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (CFNumberGetType(v43) != kCFNumberSInt64Type)
            {
              v18 = "%s: unexpected integer type";
LABEL_38:
              AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", v18, v38, v39, v40, v41, v42, "AMAuthInstallApImg4EncodeRestoreDict");
LABEL_39:
              v66 = "failed to encode restore property";
              goto LABEL_40;
            }

            if (AMAuthInstallApImg4AddInteger64Property(v7, v3[v16 / 8], v43, v38, v39, v40, v41, v42))
            {
              goto LABEL_39;
            }
          }
        }
      }

      v16 += 8;
      if (v17 == v16)
      {
        goto LABEL_25;
      }
    }

    v66 = "invalid overridesValue";
LABEL_40:
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", v66, v11, v12, v13, v14, v15, v68);
    goto LABEL_41;
  }

LABEL_25:
  if (!DEREncoderCreate())
  {
LABEL_41:
    v63 = 3;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_3_1();
  if (CFStringGetCString(v49, v50, v51, v52))
  {
    strlen(__s);
    OUTLINED_FUNCTION_5_1();
    if (DEREncoderAddData())
    {
      v68 = @"IM4M";
      v67 = "failed to add %@ string";
      goto LABEL_52;
    }
  }

  if (DEREncoderAddSetFromEncoder())
  {
    v67 = "failed to encode restore info properties as set";
LABEL_52:
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", v67, v53, v54, v55, v56, v57, v68);
    goto LABEL_41;
  }

  if (!DEREncoderCreate())
  {
LABEL_48:
    v63 = 2;
    goto LABEL_36;
  }

  if (DEREncoderAddSequenceFromEncoder())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreDict", "failed to encode restore info sequence", v58, v59, v60, v61, v62, v68);
    goto LABEL_41;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_41;
  }

  if (!DEREncoderCreate())
  {
    goto LABEL_48;
  }

  if (DEREncoderAddData() || DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_41;
  }

  v63 = 0;
LABEL_36:
  SafeFree(v3);
  SafeFree(v2);
  SafeFree(0);
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  v64 = *MEMORY[0x29EDCA608];
  return v63;
}

uint64_t AMAuthInstallApImg4CopyURLAddingExtension(const __CFAllocator *a1, CFURLRef url, CFTypeRef *a3)
{
  v3 = 0;
  v4 = 1;
  if (!url)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  if (a3)
  {
    v3 = CFURLCopyPathExtension(url);
    v6 = CFURLCreateCopyDeletingPathExtension(a1, url);
    if (v6)
    {
      v10 = CFURLCreateCopyAppendingPathExtension(a1, v6, @"img4");
      v7 = v10;
      if (v10)
      {
        v4 = 0;
        *a3 = CFRetain(v10);
        goto LABEL_6;
      }
    }

    else
    {
      v7 = 0;
    }

    v4 = 2;
  }

LABEL_6:
  SafeRelease(v3);
  SafeRelease(v6);
  SafeRelease(v7);
  return v4;
}

uint64_t AMAuthInstallApImg4ReCreatePayloadWithProperties()
{
  v4 = 0;
  v50 = *MEMORY[0x29EDCA608];
  BytePtr = 0;
  Length = 0;
  PayloadWithProperties = 1;
  v6 = 0;
  OUTLINED_FUNCTION_1_3();
  if (v9 && v14)
  {
    v15 = v9;
    v16 = v8;
    v17 = v7;
    v18 = v10;
    v1 = v11;
    v2 = v12;
    v3 = v13;
    v0 = v14;
    BytePtr = CFDataGetBytePtr(v9);
    Length = CFDataGetLength(v15);
    bzero(v41, 0x90uLL);
    v19 = DERImg4DecodePayload(&BytePtr, v41);
    if (v19)
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4ReCreatePayloadWithProperties", "failed to decode img4 payload, error:%d", v20, v21, v22, v23, v24, v19);
      v4 = 0;
      v6 = 0;
      OUTLINED_FUNCTION_1_3();
      PayloadWithProperties = 99;
      goto LABEL_45;
    }

    if (v17 && !_DERItemEqualsCString(__s1, v17))
    {
      v4 = strdup(v17);
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!__s1[0])
      {
        v4 = 0;
        goto LABEL_16;
      }

      v4 = strndup(__s1[0], __s1[1]);
      LOBYTE(PayloadWithProperties) = 0;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    if (!v16 || _DERItemEqualsCString(v43, v16))
    {
      if (!v43[0])
      {
        goto LABEL_16;
      }

      v25 = strndup(v43[0], v43[1]);
      if (!v25)
      {
        goto LABEL_16;
      }

LABEL_18:
      if (v18)
      {
        v26 = CFRetain(v18);
        LOBYTE(PayloadWithProperties) = 1;
        if (!v26)
        {
LABEL_31:
          OUTLINED_FUNCTION_1_3();
          PayloadWithProperties = 2;
LABEL_44:
          v6 = v25;
          goto LABEL_45;
        }
      }

      else
      {
        if (!v44)
        {
          goto LABEL_31;
        }

        v26 = OUTLINED_FUNCTION_13(0, v44, v45);
        if (!v26)
        {
          goto LABEL_31;
        }
      }

      v27 = v1;
      if (v1)
      {
        v27 = CFRetain(v1);
        v1 = v27;
        LOBYTE(PayloadWithProperties) = 1;
        if (!v2)
        {
          goto LABEL_33;
        }
      }

      else if (v46)
      {
        v27 = OUTLINED_FUNCTION_13(0, v46, v47);
        v1 = v27;
        if (!v27)
        {
          v2 = 0;
          goto LABEL_51;
        }

        if (!v2)
        {
LABEL_33:
          if (!v48)
          {
            v2 = 0;
            if (!v3)
            {
              goto LABEL_36;
            }

            goto LABEL_47;
          }

          v2 = OUTLINED_FUNCTION_13(v27, v48, v49);
          if (v2)
          {
            if (!v3)
            {
              goto LABEL_36;
            }

            goto LABEL_47;
          }

LABEL_51:
          v3 = 0;
          goto LABEL_52;
        }
      }

      else
      {
        v1 = 0;
        if (!v2)
        {
          goto LABEL_33;
        }
      }

      v2 = CFRetain(v2);
      LOBYTE(PayloadWithProperties) = 1;
      if (!v3)
      {
LABEL_36:
        bzero(v38, 0xA0uLL);
        v28 = DERImg4DecodePayloadWithProperties(&BytePtr, v38);
        if (v28)
        {
          AMAuthInstallLog(7, "AMAuthInstallApImg4ReCreatePayloadWithProperties", "failed to decode img4 payload with properties (error=%d), assuming no properties", v29, v30, v31, v32, v33, v28);
LABEL_38:
          v3 = 0;
          goto LABEL_41;
        }

        if (!v39)
        {
          goto LABEL_38;
        }

        v3 = OUTLINED_FUNCTION_13(v28, v39, v40);
        if (v3)
        {
LABEL_41:
          if ((PayloadWithProperties & 1) == 0)
          {
            PayloadWithProperties = 0;
            *v0 = CFRetain(v15);
LABEL_43:
            v0 = v26;
            goto LABEL_44;
          }

LABEL_48:
          PayloadWithProperties = AMAuthInstallApImg4CreatePayloadWithProperties(v4, v25, v26, v1, v2, v3, v0);
          goto LABEL_43;
        }

LABEL_52:
        PayloadWithProperties = 2;
        goto LABEL_43;
      }

LABEL_47:
      v3 = CFRetain(v3);
      goto LABEL_48;
    }

    v25 = strdup(v16);
    LOBYTE(PayloadWithProperties) = 1;
    if (v25)
    {
      goto LABEL_18;
    }

LABEL_16:
    v6 = 0;
    OUTLINED_FUNCTION_1_3();
    PayloadWithProperties = 2;
  }

LABEL_45:
  SafeFree(v4);
  SafeFree(v6);
  SafeRelease(v0);
  SafeRelease(v1);
  SafeRelease(v2);
  SafeRelease(v3);
  v34 = *MEMORY[0x29EDCA608];
  return PayloadWithProperties;
}

uint64_t AMAuthInstallApImg4CreatePayloadWithProperties(const char *a1, const char *a2, const __CFData *a3, const __CFData *a4, const __CFData *a5, const __CFData *a6, CFDataRef *a7)
{
  v7 = 1;
  if (a1 && a2 && a3 && a7)
  {
    if (strlen(a1) != 4)
    {
      OUTLINED_FUNCTION_4_0();
      goto LABEL_21;
    }

    if (!DEREncoderCreate() || !DEREncoderCreate())
    {
LABEL_34:
      v7 = 2;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_5_1();
    if (DEREncoderAddData())
    {
      v20 = "failed to add payload tag to DER file";
    }

    else
    {
      OUTLINED_FUNCTION_5_1();
      if (DEREncoderAddData())
      {
        v20 = "failed to add payload type to DER file";
      }

      else
      {
        strlen(a2);
        OUTLINED_FUNCTION_2_2();
        if (DEREncoderAddData())
        {
          v20 = "failed to add payload version to DER file";
        }

        else
        {
          CFDataGetBytePtr(a3);
          CFDataGetLength(a3);
          OUTLINED_FUNCTION_2_2();
          if (!DEREncoderAddDataNoCopy())
          {
            if (a4)
            {
              CFDataGetBytePtr(a4);
              CFDataGetLength(a4);
              OUTLINED_FUNCTION_2_2();
              if (DEREncoderAddData())
              {
                v20 = "failed to add payloadKeybag to DER file";
                goto LABEL_33;
              }
            }

            if (a5)
            {
              CFDataGetBytePtr(a5);
              CFDataGetLength(a5);
              OUTLINED_FUNCTION_2_2();
              if (DEREncoderAddData())
              {
                v20 = "failed to add payloadCompression to DER file";
                goto LABEL_33;
              }
            }

            if (!a6 || (CFDataGetBytePtr(a6), CFDataGetLength(a6), !DEREncoderAddData()))
            {
              if (DEREncoderAddDataFromEncoderNoCopy())
              {
                v20 = "failed to add payload to sequence";
              }

              else
              {
                if (!DEREncoderCreateEncodedBuffer())
                {
                  v7 = 0;
                  *a7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], 0, 0, *MEMORY[0x29EDB8EE0]);
                  goto LABEL_21;
                }

                v20 = "failed to create DER encoded buffer: sequenceEncoder";
              }

              goto LABEL_33;
            }
          }

          v20 = "failed to add payload data to DER file";
        }
      }
    }

LABEL_33:
    AMAuthInstallLog(3, "AMAuthInstallApImg4CreatePayloadWithProperties", v20, v14, v15, v16, v17, v18, 0);
    goto LABEL_34;
  }

LABEL_21:
  DEREncoderDestroy();
  DEREncoderDestroy();
  return v7;
}

uint64_t AMAuthInstallApImg4GetPayloadPropertiesData(const __CFAllocator *a1, CFDataRef *a2, uint64_t a3, CFDictionaryRef theDict, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v61 = "dstData cannot be NULL";
LABEL_35:
    AMAuthInstallLog(3, "AMAuthInstallApImg4GetPayloadPropertiesData", v61, theDict, a5, a6, a7, a8, v63);
    OUTLINED_FUNCTION_4_0();
    goto LABEL_31;
  }

  v10 = a3;
  if (!a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4GetPayloadPropertiesData", "imageTag cannot be NULL", theDict, a5, a6, a7, a8, v63);
    OUTLINED_FUNCTION_4_0();
LABEL_31:
    v18 = 1;
    goto LABEL_30;
  }

  if (!theDict)
  {
    v61 = "requestDict cannot be NULL";
    goto LABEL_35;
  }

  Count = CFDictionaryGetCount(theDict);
  if (Count < 1)
  {
    OUTLINED_FUNCTION_4_0();
LABEL_29:
    v18 = 0;
    goto LABEL_30;
  }

  v15 = Count;
  v16 = DEREncoderCreate();
  if (!v16)
  {
    OUTLINED_FUNCTION_4_0();
    goto LABEL_37;
  }

  v8 = malloc(8 * v15);
  v9 = malloc(8 * v15);
  CFDictionaryGetKeysAndValues(theDict, v8, v9);
  if (!CFArrayCreateMutable(a1, 0, MEMORY[0x29EDB9000]))
  {
    goto LABEL_37;
  }

  v17 = 0;
  v18 = 99;
  do
  {
    v19 = v8[v17];
    if (!v19)
    {
      goto LABEL_31;
    }

    v20 = CFGetTypeID(v8[v17]);
    if (v20 != CFStringGetTypeID())
    {
      goto LABEL_31;
    }

    v21 = v9[v17];
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = CFGetTypeID(v21);
    if (v22 == CFDataGetTypeID())
    {
      v28 = AMAuthInstallApImg4AddDataProperty(v16, v19, v9[v17], v23, v24, v25, v26, v27);
    }

    else
    {
      v29 = CFGetTypeID(v9[v17]);
      TypeID = CFBooleanGetTypeID();
      v31 = v9[v17];
      if (v29 == TypeID)
      {
        Value = CFBooleanGetValue(v31);
        v28 = AMAuthInstallApImg4AddBooleanProperty(v16, v19, Value, v33, v34, v35, v36, v37);
      }

      else
      {
        v38 = CFGetTypeID(v31);
        if (v38 != CFNumberGetTypeID())
        {
          goto LABEL_18;
        }

        v28 = AMAuthInstallApImg4AddInteger64Property(v16, v19, v9[v17], v39, v40, v41, v42, v43);
      }
    }

    v18 = v28;
LABEL_18:
    ++v17;
  }

  while (v15 != v17);
  if (!DEREncoderCreate())
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_3_1();
  if (CFStringGetCString(v44, v45, v46, v47))
  {
    strlen(__s);
    OUTLINED_FUNCTION_5_1();
    if (DEREncoderAddData())
    {
      v63 = v10;
      v62 = "failed to add %@ string";
      goto LABEL_42;
    }
  }

  if (DEREncoderAddSetFromEncoder())
  {
    v62 = "failed to encode properties list as set";
LABEL_42:
    AMAuthInstallLog(3, "AMAuthInstallApImg4GetPayloadPropertiesData", v62, v48, v49, v50, v51, v52, v63);
    goto LABEL_30;
  }

  if (!DEREncoderCreate())
  {
    goto LABEL_37;
  }

  if (DEREncoderAddSequenceFromEncoder())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4GetPayloadPropertiesData", "failed to encode restore info sequence", v53, v54, v55, v56, v57, v63);
    goto LABEL_30;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    v18 = 3;
    goto LABEL_30;
  }

  v58 = CFDataCreate(0, 0, 0);
  *a2 = v58;
  if (v58)
  {
    goto LABEL_29;
  }

LABEL_37:
  v18 = 2;
LABEL_30:
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeFree(0);
  SafeFree(v8);
  SafeFree(v9);
  v59 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t AMAuthInstallApImg4DecodePayloadProperty(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v14 = 0uLL;
  v13 = 0uLL;
  v12 = 0uLL;
  v11 = 0uLL;
  ItemWithTag = AMAuthInstallApImg4FindItemWithTag(a1, 0x2000000000000010, &v14);
  if (ItemWithTag)
  {
    goto LABEL_11;
  }

  ItemWithTag = AMAuthInstallApImg4FindItemWithTag(&v14, 0xA000000000000000, &v13);
  if (ItemWithTag)
  {
    goto LABEL_11;
  }

  ItemWithTag = AMAuthInstallApImg4FindItemWithTag(&v13, 0x2000000000000010, &v12);
  if (ItemWithTag)
  {
    goto LABEL_11;
  }

  ItemWithTag = AMAuthInstallApImg4FindItemWithTag(&v12, 0x2000000000000011, &v11);
  if (ItemWithTag)
  {
    goto LABEL_11;
  }

  v16 = 0uLL;
  v15 = 0;
  v6 = AMAuthInstallApImg4FindItemWithTag(&v11, a2, &v16);
  if (v6)
  {
    v8 = v6;
LABEL_14:
    AMSupportLogInternal();
    goto LABEL_10;
  }

  v17 = xmmword_29855C670;
  v18 = 0;
  v19 = xmmword_29855C680;
  v20 = 0;
  v7 = DERParseSequence(&v16, 2u, &v17, a3, 0);
  if (v7)
  {
    v8 = v7;
    goto LABEL_14;
  }

  ItemWithTag = DERParseInteger(a3, &v15);
  if (ItemWithTag)
  {
LABEL_11:
    v8 = ItemWithTag;
    goto LABEL_10;
  }

  if ((v15 | 0xE000000000000000) == a2)
  {
    v8 = 0;
    *(a3 + 16) = a2 | 0xE000000000000000;
    *(a3 + 40) = 4;
  }

  else
  {
    v8 = 2;
  }

LABEL_10:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

void _AMAuthInstallApImg4StitchToURL_cold_4(uint64_t a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  AMAuthInstallLog(3, "_AMAuthInstallApImg4StitchToURL", a1, v4, v5, v6, v7, v8, v3);
  perror("error:");
}

void _AMAuthInstallApImg4StitchToURL_cold_5(char a1)
{
  v2 = __error();
  strerror(*v2);
  AMAuthInstallLog(3, "_AMAuthInstallApImg4StitchToURL", "failed to open file %@, error=%s", v3, v4, v5, v6, v7, a1);
}

void _WriteStreamIntoFile_cold_1()
{
  v0 = __error();
  v1 = strerror(*v0);
  AMAuthInstallLog(3, "_WriteStreamIntoFile", "failed to stitch payload to file: %s", v2, v3, v4, v5, v6, v1);

  perror("error:");
}

uint64_t AMAuthInstallApImg4LocalAddImages(const __CFAllocator *a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theDict)
  {
    v35 = "requestDict cannot be NULL";
LABEL_23:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", v35, a4, a5, a6, a7, a8, v36);
    v12 = 0;
    v13 = 0;
    Mutable = 0;
LABEL_24:
    v33 = 1;
    goto LABEL_18;
  }

  if (!a3)
  {
    v35 = "dstEncoder cannot be NULL";
    goto LABEL_23;
  }

  Count = CFDictionaryGetCount(theDict);
  v12 = malloc(8 * Count);
  v13 = malloc(8 * Count);
  CFDictionaryGetKeysAndValues(theDict, v12, v13);
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    v33 = 2;
    goto LABEL_18;
  }

  if (Count >= 1)
  {
    v15 = 0;
    do
    {
      v16 = v12[v15];
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = v13[v15];
      v18 = CFGetTypeID(v12[v15]);
      if (v18 != CFStringGetTypeID() || v17 == 0)
      {
        goto LABEL_24;
      }

      v20 = CFGetTypeID(v17);
      if (v20 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryGetValue(v17, @"Digest"))
        {
          v37.length = CFArrayGetCount(Mutable);
          v37.location = 0;
          if (CFArrayGetFirstIndexOfValue(Mutable, v37, v16) == -1)
          {
            CFArrayAppendValue(Mutable, v16);
            TypeForEntryName = AMAuthInstallApImg4GetTypeForEntryName(v16);
            if (!TypeForEntryName)
            {
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "did not find a matching tag for requestTag %@", v22, v23, v24, v25, v26, v16);
              goto LABEL_24;
            }

            v27 = AMAuthInstallApImg4LocalAddImageProperties(TypeForEntryName, a3, TypeForEntryName, v17, v23, v24, v25, v26);
            if (v27)
            {
              v33 = v27;
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImages", "failed to add %@ image to the ticket body", v28, v29, v30, v31, v32, v16);
              goto LABEL_18;
            }
          }
        }
      }
    }

    while (Count != ++v15);
  }

  v33 = 0;
LABEL_18:
  SafeFree(v12);
  SafeFree(v13);
  SafeRelease(Mutable);
  return v33;
}

uint64_t AMAuthInstallApImg4LocalRegisterKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  v8 = *(a1 + 16);
  if (*(v8 + 20))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalRegisterKeys", "local signing is not available for production fused devices.", a4, a5, a6, a7, a8, v26);
    return 14;
  }

  if (!*(a1 + 392))
  {
    if (*(v8 + 88) || *(v8 + 16))
    {
      if (*(v8 + 89))
      {
        v10 = *(v8 + 8);
        if (v10 == 32784)
        {
          v11 = @"ap.ticket.insec.rsa4k.key.private";
        }

        else
        {
          if (v10 != 35168)
          {
            AMAuthInstallLog(3, "AMAuthInstallApImg4LocalRegisterKeys", "unrecognized chipid: 0x%08X", a4, a5, a6, a7, a8, v10);
            return 1;
          }

          v11 = @"ap.ticket.insec.rsa1k.key.private";
        }
      }

      else
      {
        v11 = @"ap.ticket.localpolicy.hacktivation.key.private";
        if (!*(a1 + 505))
        {
          v11 = @"ap.ticket.dev.key.private";
        }
      }
    }

    else
    {
      v11 = @"ap.ticket.unfused.key.private";
    }

    *(a1 + 392) = v11;
  }

  if (CFDictionaryContainsKey(*(a1 + 376), @"ap.ticket.dev.key.private"))
  {
    return 0;
  }

  v28 = OUTLINED_FUNCTION_1_4();
  v27 = OUTLINED_FUNCTION_1_4();
  v12 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v13 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v14 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v15 = OUTLINED_FUNCTION_1_4();
  v16 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v17 = OUTLINED_FUNCTION_1_4();
  v18 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v19 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  v20 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  result = OUTLINED_FUNCTION_1_4();
  if ((!v28 || !v27 || !v15 || !v17 || !result) && (!v12 || !v13 || !v14 || !v16 || !v18 || !v19 || !v20))
  {
    AMAuthInstallLog(6, "AMAuthInstallApImg4LocalRegisterKeys", "ap local signing keys available", v21, v22, v23, v24, v25, v26);
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallApImg4LocalCreateEncodedCertificateChain(uint64_t a1, CFTypeRef *a2)
{
  if (!a1 || !a2)
  {
    Mutable = 0;
    v12 = 1;
    if (!a2)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  v4 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v4, 0);
  if (!Mutable)
  {
    v12 = 2;
    goto LABEL_6;
  }

  v11 = *(a1 + 16);
  if (!*(v11 + 20))
  {
    if (!*(a1 + 400))
    {
      if (*(a1 + 505))
      {
        v13 = @"ap.ticket.localpolicy.hacktivation.leaf.cert";
      }

      else if (*(v11 + 88) || *(v11 + 16))
      {
        if (*(v11 + 89))
        {
          v27 = *(v11 + 8);
          switch(v27)
          {
            case 32770:
              v13 = @"ap.ticket.8002.insec.cert";
              break;
            case 35168:
              if (!*(a1 + 408))
              {
                *(a1 + 408) = @"ap.ticket.ca.cert";
              }

              v18 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
              if (v18)
              {
                goto LABEL_46;
              }

              BytePtr = CFDataGetBytePtr(0);
              Length = CFDataGetLength(0);
              CFDataAppendBytes(Mutable, BytePtr, Length);
              v13 = @"ap.ticket.8960.insec.cert";
              break;
            case 32784:
              v13 = @"ap.ticket.8010.insec.cert";
              break;
            default:
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "unrecognized chipid: 0x%08X", v5, v6, v7, v8, v9, v27);
              goto LABEL_42;
          }
        }

        else
        {
          v13 = @"ap.ticket.8960.dev.cert";
        }
      }

      else
      {
        v13 = @"ap.ticket.8960.unfused.cert";
      }

      *(a1 + 400) = v13;
    }

    if (!*(a1 + 505))
    {
      v14 = *(a1 + 16);
      if (!*(v14 + 93))
      {
        v15 = *(v14 + 8);
        v16 = v15 == 32770 || v15 == 35168;
        if (!v16 && v15 != 32784)
        {
          AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "chipid: 0x%08X unsupported for img4 local signing", v5, v6, v7, v8, v9, v15);
LABEL_42:
          v12 = 1;
          goto LABEL_6;
        }
      }
    }

    v18 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    if (!v18)
    {
      v19 = CFDataGetBytePtr(0);
      v20 = CFDataGetLength(0);
      CFDataAppendBytes(Mutable, v19, v20);
      if (DEREncoderCreate())
      {
        CFDataGetBytePtr(Mutable);
        CFDataGetLength(Mutable);
        if (DEREncoderAddData())
        {
          v12 = 3;
          goto LABEL_6;
        }

        if (!DEREncoderCreateEncodedBuffer())
        {
          v12 = 0;
          *a2 = CFDataCreate(0, 0, 0);
          goto LABEL_26;
        }

        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "%s: failed to create buffer", v21, v22, v23, v24, v25, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain");
      }

      v12 = 0;
      goto LABEL_26;
    }

LABEL_46:
    v12 = v18;
    goto LABEL_6;
  }

  AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedCertificateChain", "local signing is not available for production fused devices.", v5, v6, v7, v8, v9, v30);
  v12 = 14;
LABEL_6:
  SafeRelease(*a2);
LABEL_26:
  SafeRelease(Mutable);
  SafeFree(0);
  DEREncoderDestroy();
  return v12;
}

uint64_t AMAuthInstallApImg4LocalAddImageProperties(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v104 = "toEncoder cannot be NULL";
LABEL_28:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", v104, a4, a5, a6, a7, a8, v105);
    v25 = 1;
    goto LABEL_24;
  }

  if (!a3)
  {
    v104 = "imageTag cannot be NULL";
    goto LABEL_28;
  }

  if (!a4)
  {
    v104 = "requestDict cannot be NULL";
    goto LABEL_28;
  }

  v11 = DEREncoderCreate();
  if (!v11)
  {
    v25 = 2;
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(a4, @"Digest");
  if (Value)
  {
    v13 = Value;
    if (CFDataGetLength(Value) < 1)
    {
      AMAuthInstallLog(6, "AMAuthInstallApImg4LocalAddImageProperties", "'%@' has zero length digest - skipping digest", v14, v15, v16, v17, v18, a3);
    }

    else
    {
      v19 = AMAuthInstallApImg4AddDataProperty(v11, @"DGST", v13, v14, v15, v16, v17, v18);
      if (v19)
      {
        v25 = v19;
        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add Digest property for '%@'", v20, v21, v22, v23, v24, a3);
        goto LABEL_24;
      }
    }
  }

  v26 = CFDictionaryGetValue(a4, @"Trusted");
  if (v26 && (v27 = CFBooleanGetValue(v26), v33 = AMAuthInstallApImg4AddBooleanProperty(v11, @"EKEY", v27, v28, v29, v30, v31, v32), v33))
  {
    v25 = v33;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add EKEY property for '%@'", v34, v35, v36, v37, v38, a3);
  }

  else
  {
    v39 = CFDictionaryGetValue(a4, @"DPRO");
    if (v39 && (v40 = CFBooleanGetValue(v39), v46 = AMAuthInstallApImg4AddBooleanProperty(v11, @"DPRO", v40, v41, v42, v43, v44, v45), v46))
    {
      v25 = v46;
      AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add DPRO property for '%@'", v47, v48, v49, v50, v51, a3);
    }

    else
    {
      v52 = CFDictionaryGetValue(a4, @"DSEC");
      if (v52 && (v53 = CFBooleanGetValue(v52), v59 = AMAuthInstallApImg4AddBooleanProperty(v11, @"DSEC", v53, v54, v55, v56, v57, v58), v59))
      {
        v25 = v59;
        AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add DSEC property for '%@'", v60, v61, v62, v63, v64, a3);
      }

      else
      {
        v65 = CFDictionaryGetValue(a4, @"ESEC");
        if (v65 && (v66 = CFBooleanGetValue(v65), v72 = AMAuthInstallApImg4AddBooleanProperty(v11, @"ESEC", v66, v67, v68, v69, v70, v71), v72))
        {
          v25 = v72;
          AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add ESEC property for '%@'", v73, v74, v75, v76, v77, a3);
        }

        else
        {
          v78 = CFDictionaryGetValue(a4, @"EPRO");
          if (v78 && (v79 = CFBooleanGetValue(v78), v85 = AMAuthInstallApImg4AddBooleanProperty(v11, @"EPRO", v79, v80, v81, v82, v83, v84), v85))
          {
            v25 = v85;
            AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add EPRO property for '%@'", v86, v87, v88, v89, v90, a3);
          }

          else
          {
            v91 = CFDictionaryGetValue(a4, @"TBMDigests");
            if (v91 && (v97 = AMAuthInstallApImg4AddDataProperty(v11, @"tbms", v91, v92, v93, v94, v95, v96), v97))
            {
              v25 = v97;
              AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "failed to add %@ property for '%@'", v92, v93, v94, v95, v96, @"tbms");
            }

            else
            {
              v25 = AMAuthInstallApImg4AddDictionaryProperty(v11, a2, a3, v92, v93, v94, v95, v96);
              if (v25)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4LocalAddImageProperties", "AMAuthInstallApImg4LocalAddDictionaryProperty failed for '%@'", v98, v99, v100, v101, v102, a3);
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  DEREncoderDestroy();
  return v25;
}

uint64_t AMAuthInstallBasebandServerRequestAddRequiredTags(uint64_t a1, __CFDictionary *a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theDict = a2;
  if (!a1)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: amai is NULL", a4, a5, a6, a7, a8, "AMAuthInstallBasebandServerRequestAddRequiredTags");
LABEL_40:
    v10 = 0;
    goto LABEL_41;
  }

  v9 = *(a1 + 48);
  if (!v9)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: amai->bbParameters is NULL", a4, a5, a6, a7, a8, "AMAuthInstallBasebandServerRequestAddRequiredTags");
    goto LABEL_40;
  }

  if (!*(v9 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: amai->bbParameters->snum is NULL", a4, a5, a6, a7, a8, "AMAuthInstallBasebandServerRequestAddRequiredTags");
    goto LABEL_40;
  }

  v10 = a2;
  if (!a2)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: requestDict is NULL", a4, a5, a6, a7, a8, "AMAuthInstallBasebandServerRequestAddRequiredTags");
LABEL_41:
    a3 = 0;
LABEL_42:
    v48 = 1;
    goto LABEL_31;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v10))
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: requestDict mistyped", v13, v14, v15, v16, v17, "AMAuthInstallBasebandServerRequestAddRequiredTags");
    goto LABEL_40;
  }

  if (!a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: bbfwURL is NULL", v13, v14, v15, v16, v17, "AMAuthInstallBasebandServerRequestAddRequiredTags");
    v10 = 0;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_20();
  v26 = AMAuthInstallBasebandApplyTssOverrides(v18, v19, v20, v21, v22, v23, v24, v25);
  if (v26)
  {
    v48 = v26;
    AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "%s: failed to apply tss overrides", v27, v28, v29, v30, v31, "AMAuthInstallBasebandServerRequestAddRequiredTags");
LABEL_46:
    v10 = 0;
    a3 = 0;
    goto LABEL_31;
  }

  CFDictionarySetValue(v10, @"BbSNUM", *(*(a1 + 48) + 16));
  _CFDictionarySetInteger32(v10, @"BbChipID", *(*(a1 + 48) + 4));
  _CFDictionarySetInteger32(v10, @"BbGoldCertId", *(*(a1 + 48) + 8));
  v32 = *(*(a1 + 48) + 24);
  if (v32)
  {
    CFDictionarySetValue(v10, @"BbNonce", v32);
    CFDictionarySetValue(v10, @"@BBTicket", *MEMORY[0x29EDB8F00]);
  }

  v33 = *(a1 + 136);
  if (v33)
  {
    CFDictionarySetValue(v10, @"BbVendorData", v33);
  }

  v34 = *(a1 + 144);
  if (v34)
  {
    CFDictionarySetValue(v10, @"BbAntennaType", v34);
  }

  v35 = *(a1 + 152);
  if (v35)
  {
    CFDictionarySetValue(v10, @"BbBehavior", v35);
  }

  v36 = *(a1 + 424);
  if (v36)
  {
    Value = CFDictionaryGetValue(v36, @"BbRequestEntries");
    if (Value)
    {
      v38 = Value;
      v39 = CFGetAllocator(a1);
      v40 = AMAuthInstallSupportApplyDictionaryOverrides(v39, v38, &theDict, 0);
      if (v40)
      {
        v48 = v40;
        AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "failed to set Bb entitlements", v41, v42, v43, v44, v45, v67);
        goto LABEL_46;
      }
    }
  }

  Count = CFDictionaryGetCount(*(a1 + 200));
  v10 = malloc(8 * Count);
  v47 = malloc(8 * Count);
  a3 = v47;
  v48 = 2;
  if (v10 && v47)
  {
    v49 = *(a1 + 200);
    OUTLINED_FUNCTION_20();
    CFDictionaryGetKeysAndValues(v50, v51, v52);
    if (Count < 1)
    {
LABEL_27:
      v68 = 0;
      if (!AMAuthInstallVinylIsLegacyChipId(a1, &v68) && v68 && (TagForKeyHashName = AMAuthInstallBasebandVinylAddMeasurementTags(a1, theDict), TagForKeyHashName))
      {
LABEL_32:
        v48 = TagForKeyHashName;
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      v58 = 0;
      while (1)
      {
        key = 0;
        v59 = *(v10 + v58);
        if (!v59)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "invalid HashKeysBuffer array", v53, v54, v55, v56, v57, v67);
          v48 = 99;
          goto LABEL_31;
        }

        TagForKeyHashName = AMAuthInstallBasebandGetTagForKeyHashName(a1, v59, &key, v53, v54, v55, v56, v57);
        if (TagForKeyHashName)
        {
          goto LABEL_32;
        }

        if (!key)
        {
          break;
        }

        CFDictionarySetValue(theDict, key, a3[v58++]);
        if (Count == v58)
        {
          goto LABEL_27;
        }
      }

      v48 = 3;
      AMAuthInstallLog(3, "AMAuthInstallBasebandServerRequestAddRequiredTags", "keyHashTag not found for %@", v61, v62, v63, v64, v65, *(v10 + v58));
    }
  }

LABEL_31:
  SafeFree(v10);
  SafeFree(a3);
  return v48;
}

uint64_t AMAuthInstallBasebandCreateServerRequestDictionary(void *a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4, const void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandCreateServerRequestDictionary", "%s: measurementDict is NULL", a4, a5, a6, a7, a8, "AMAuthInstallBasebandCreateServerRequestDictionary");
LABEL_16:
    v15 = 0;
    v27 = 1;
    goto LABEL_12;
  }

  if (!a4)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandCreateServerRequestDictionary", "%s: outRequestDict is NULL", 0, a5, a6, a7, a8, "AMAuthInstallBasebandCreateServerRequestDictionary");
    goto LABEL_16;
  }

  if (!a5)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandCreateServerRequestDictionary", "%s: bbfwURL is NULL", a4, 0, a6, a7, a8, "AMAuthInstallBasebandCreateServerRequestDictionary");
    goto LABEL_16;
  }

  v13 = CFGetAllocator(a1);
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v13, 0, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v13, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  }

  v15 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"BasebandFirmware", a2);
    v21 = AMAuthInstallBasebandServerRequestAddRequiredTags(a1, v15, a5, v16, v17, v18, v19, v20);
    if (v21)
    {
      v27 = v21;
    }

    else
    {
      if (a1[2])
      {
        AMAuthInstallApServerRequestAddRequiredTags(a1, v15, 0, v22, v23, v24, v25, v26);
      }

      v27 = 0;
      *a4 = CFRetain(v15);
    }
  }

  else
  {
    v27 = 2;
  }

LABEL_12:
  SafeRelease(v15);
  return v27;
}

uint64_t AMAuthInstallBasebandCopyAllPersonalizedComponents(void *a1, void *a2, const void *a3, __CFDictionary *a4, const __CFDictionary *a5, const __CFDictionary *a6, CFTypeRef *a7)
{
  v10 = a4;
  v186 = 0;
  theDict = a5;
  v185 = 0;
  SafeRetain(a4);
  SafeRetain(a5);
  if (!a1 || !a1[6])
  {
    Mutable = 0;
    goto LABEL_189;
  }

  v14 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v134 = 2;
    goto LABEL_158;
  }

  v16 = *(a1[6] + 4);
  v17 = (v16 - 94) > 0xA || ((1 << (v16 - 94)) & 0x685) == 0;
  if (!v17)
  {
    OUTLINED_FUNCTION_4_1();
    v33 = AMAuthInstallApImg3SupportsLocalSigning();
    if (v33)
    {
      goto LABEL_190;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_12_0();
  if (v17 || v18 == 520417)
  {
LABEL_44:
    v31 = OUTLINED_FUNCTION_4_1();
    v33 = AMAuthInstallBasebandJ2FuseIfNecessary(v31);
    if (v33)
    {
      goto LABEL_190;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_14_0();
  if (v17 || v20 == 1327329 || v20 == 1515745 || v20 == 1700065 || v20 == 2044129 || v20 == 2089185 || v20 == 2814177)
  {
    v32 = OUTLINED_FUNCTION_4_1();
    v33 = AMAuthInstallBasebandJ2FuseIfNecessary(v32);
    if (v33)
    {
      goto LABEL_190;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_9_0();
  if (!v17)
  {
    OUTLINED_FUNCTION_18();
    if (!v17)
    {
      OUTLINED_FUNCTION_8_1();
      if (v17)
      {
        v44 = OUTLINED_FUNCTION_4_1();
        v33 = AMAuthInstallBasebandJ2FuseIfNecessary(v44);
        if (v33)
        {
          goto LABEL_190;
        }

        goto LABEL_59;
      }

      OUTLINED_FUNCTION_7_2();
      if (v17 || v27 == 7282913)
      {
        v41 = OUTLINED_FUNCTION_4_1();
        v33 = AMAuthInstallBasebandJ2FuseIfNecessary(v41);
        if (v33)
        {
          goto LABEL_190;
        }

        goto LABEL_59;
      }

      OUTLINED_FUNCTION_11_0();
      if (!v17 && v29 != 9572577)
      {
        OUTLINED_FUNCTION_10_0();
        if (v42)
        {
          v43 = OUTLINED_FUNCTION_4_1();
          v33 = AMAuthInstallBasebandJ2FuseIfNecessary(v43);
          if (v33)
          {
            goto LABEL_190;
          }
        }

        goto LABEL_59;
      }
    }

    goto LABEL_44;
  }

  v45 = OUTLINED_FUNCTION_4_1();
  v33 = AMAuthInstallBasebandJ2FuseIfNecessary(v45);
  if (v33)
  {
    goto LABEL_190;
  }

LABEL_59:
  v46 = a1[6];
  if (!*(v46 + 16))
  {
    goto LABEL_157;
  }

  if (v10)
  {
LABEL_61:
    if (*(v46 + 4) == 104)
    {
      IsICE19BBGoldCertIDECDSA = AMAuthInstallIsICE19BBGoldCertIDECDSA(*(v46 + 8), v34, v35, v36, v37, v38, v39, v40);
      v48 = kAMAuthInstallTagBbPsiPartialDigest;
      if (IsICE19BBGoldCertIDECDSA)
      {
        v48 = kAMAuthInstallTagBbPsi2PartialDigest;
        v49 = kAMAuthInstallTagBbRestorePsi2PartialDigest;
      }

      else
      {
        v49 = kAMAuthInstallTagBbRestorePsiPartialDigest;
      }

      CFDictionaryRemoveValue(v10, *v48);
      CFDictionaryRemoveValue(v10, *v49);
    }

LABEL_66:
    v50 = theDict;
    if (theDict)
    {
LABEL_67:
      Value = CFDictionaryGetValue(v50, @"BBTicket");
      if (Value)
      {
        v52 = Value;
        BytePtr = CFDataGetBytePtr(Value);
        Length = CFDataGetLength(v52);
        AMAuthInstallLogDumpMemory(8, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "BBTicket:", BytePtr, Length, v55, v56, v57);
      }

LABEL_69:
      if ((*(a1[6] + 4) - 80) <= 0x18)
      {
        OUTLINED_FUNCTION_13_0();
        if (!v17)
        {
          v78 = OUTLINED_FUNCTION_1_5();
          v76 = AMAuthInstallBasebandRembrandtStitchFirmware(v78, v79, v80, v81);
          goto LABEL_146;
        }

        if (!v77)
        {
          v94 = OUTLINED_FUNCTION_1_5();
          v76 = AMAuthInstallBasebandICE3StitchFirmware(v94, v95, v96, v97);
          goto LABEL_146;
        }
      }

      OUTLINED_FUNCTION_12_0();
      if (v17 || v58 == 520417)
      {
LABEL_98:
        v72 = OUTLINED_FUNCTION_1_5();
        v76 = AMAuthInstallBasebandMAV10StitchFirmware(v72, v73, v74, v75);
LABEL_146:
        v134 = v76;
        if (v76)
        {
          goto LABEL_142;
        }

        v144 = a1[6];
        if (*(v144 + 24))
        {
          if (*(v144 + 4) != 80)
          {
            v145 = CFDictionaryGetValue(theDict, @"BBTicket");
            if (v145)
            {
              CFDictionaryAddValue(Mutable, @"bbticket.der", v145);
            }
          }
        }

        v146 = CFRetain(theDict);
        v186 = v146;
        if (a3 && *(a1[6] + 160))
        {
          v147 = AMAuthInstallVinylPersonalizeFirmware(a1, a3, 0, &v186, a6, v131, v132, v133);
          if (v147)
          {
            v134 = v147;
            v135 = "failed to personalize vinyl fw";
            goto LABEL_143;
          }

          v146 = v186;
        }

        v148 = AMAuthInstallBasebandVinylStitchFirmware(a1, a2, a3, v146, Mutable, v131, v132, v133);
        if (v148)
        {
          v134 = v148;
          v135 = "failed to stitch vinyl fw";
          goto LABEL_143;
        }

        v150 = AMAuthInstallProvisioningProvisionIfNecessary(a1, Mutable, v149, v129, v130, v131, v132, v133);
        if (v150)
        {
          v134 = v150;
          v135 = "AMAuthInstallProvisioningProvisionIfNecessary failed";
          goto LABEL_143;
        }

LABEL_157:
        v134 = 0;
        *a7 = CFRetain(Mutable);
        goto LABEL_158;
      }

      OUTLINED_FUNCTION_14_0();
      if (v17)
      {
        v121 = OUTLINED_FUNCTION_1_5();
        v76 = AMAuthInstallBasebandMAV20StitchFirmware(v121, v122, v123, v124);
        goto LABEL_146;
      }

      if (v60 != 1327329)
      {
        if (v60 == 1515745)
        {
          goto LABEL_101;
        }

        if (v60 != 1700065)
        {
          if (v60 == 2044129)
          {
            v117 = OUTLINED_FUNCTION_1_5();
            v76 = AMAuthInstallBasebandMAV25StitchFirmware(v117, v118, v119, v120);
            goto LABEL_146;
          }

          if (v60 != 2089185 && v60 != 2814177)
          {
            OUTLINED_FUNCTION_9_0();
            if (v17)
            {
              v140 = OUTLINED_FUNCTION_1_5();
              v76 = AMAuthInstallBasebandJ2StitchFirmware(v140, v141, v142, v143);
              goto LABEL_146;
            }

            OUTLINED_FUNCTION_10_0();
            if (v17)
            {
              v125 = OUTLINED_FUNCTION_1_5();
              v76 = AMAuthInstallBasebandN92StitchFirmware(v125, v126, v127, v128);
              goto LABEL_146;
            }

            OUTLINED_FUNCTION_8_1();
            if (v17)
            {
              v136 = OUTLINED_FUNCTION_1_5();
              v76 = AMAuthInstallBasebandN94StitchFirmware(v136, v137, v138, v139);
              goto LABEL_146;
            }

            OUTLINED_FUNCTION_7_2();
            if (v17 || v62 == 7282913)
            {
              v90 = OUTLINED_FUNCTION_1_5();
              v76 = AMAuthInstallBasebandN41StitchFirmware(v90, v91, v92, v93);
              goto LABEL_146;
            }

            OUTLINED_FUNCTION_11_0();
            if (!v17 && v69 != 9572577 && v69 != 9781473)
            {
              AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "chipID: 0x%x is not supported", v64, v65, v66, v67, v68, v69);
              v134 = 13;
LABEL_142:
              v135 = "failed to stitch bbfw";
LABEL_143:
              AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", v135, v129, v130, v131, v132, v133, v182);
              goto LABEL_158;
            }

            goto LABEL_98;
          }

LABEL_101:
          v82 = OUTLINED_FUNCTION_1_5();
          v76 = AMAuthInstallBasebandMAV22StitchFirmware(v82, v83, v84, v85);
          goto LABEL_146;
        }
      }

      v86 = OUTLINED_FUNCTION_1_5();
      v76 = AMAuthInstallBasebandMAV21StitchFirmware(v86, v87, v88, v89);
      goto LABEL_146;
    }

    LOBYTE(v184) = 0;
    if (!AMAuthInstallBasebandLocalSigningEnabled(a1, &v184))
    {
      v33 = AMAuthInstallBasebandCreateServerRequestDictionary(a1, v10, a6, &v185, a2, v99, v100, v101);
      if (v33)
      {
        goto LABEL_190;
      }

      if (v184)
      {
        AMAuthInstallLog(6, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "this certid specifies local signing", v102, v103, v104, v105, v106, v182);
        v107 = *(a1[6] + 4) - 94;
        if (v107 <= 0xA && ((1 << v107) & 0x685) != 0)
        {
          v163 = OUTLINED_FUNCTION_3_2();
          v164 = AMAuthInstallBasebandRembrandtHandleLocalSigningRequest(v163);
          goto LABEL_184;
        }

        OUTLINED_FUNCTION_12_0();
        if (v17 || v108 == 520417 || v108 == 938209 || v108 == 1327329 || v108 == 1515745 || v108 == 1700065 || v108 == 2044129 || v108 == 2089185 || v108 == 2814177)
        {
          goto LABEL_183;
        }

        OUTLINED_FUNCTION_9_0();
        if (v152)
        {
          goto LABEL_183;
        }

        OUTLINED_FUNCTION_18();
        if (v17)
        {
          goto LABEL_183;
        }

        OUTLINED_FUNCTION_8_1();
        if (v17)
        {
          goto LABEL_183;
        }

        OUTLINED_FUNCTION_7_2();
        v154 = v17 || v153 == 7282913;
        if (v154 || ((OUTLINED_FUNCTION_11_0(), !v17) ? (v156 = v155 == 9572577) : (v156 = 1), v156 || (OUTLINED_FUNCTION_10_0(), v17)))
        {
LABEL_183:
          v173 = OUTLINED_FUNCTION_3_2();
          v164 = AMAuthInstallBasebandJ2HandleLocalSigningRequest(v173);
LABEL_184:
          v134 = v164;
          if (v164)
          {
            goto LABEL_158;
          }

          v174 = OUTLINED_FUNCTION_3_2();
          v33 = AMAuthInstallBasebandVinylLocalHandleRequest(v174, v175, v176, v177, v178, v179, v180, v181);
          if (!v33)
          {
            v50 = theDict;
            if (!theDict)
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }

LABEL_190:
          v134 = v33;
          goto LABEL_158;
        }

        AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "chipID: 0x%x is not supported", v157, v158, v159, v160, v161, v162);
LABEL_182:
        v134 = 14;
        goto LABEL_158;
      }

      v183 = 0;
      if (!AMAuthInstallBasebandSupportsServerSigning(a1, &v183))
      {
        if (v183 != 1)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllPersonalizedComponents", "This chipid/certid does not support local or server personalization.", v165, v166, v167, v168, v169, v182);
          v134 = 13;
          goto LABEL_158;
        }

        v170 = OUTLINED_FUNCTION_3_2();
        v33 = AMAuthInstallRequestSendSync(v170, v171, v172);
        if (v33)
        {
          goto LABEL_190;
        }

        v50 = theDict;
        if (theDict)
        {
          goto LABEL_67;
        }

        goto LABEL_182;
      }
    }

LABEL_189:
    v134 = 1;
    goto LABEL_158;
  }

  v184 = 0;
  Measurements = AMAuthInstallBasebandCreateMeasurements(a1, a2, a3, &v184);
  if (!Measurements)
  {
    v10 = v184;
    v46 = a1[6];
    if (!v46)
    {
      goto LABEL_66;
    }

    goto LABEL_61;
  }

  v134 = Measurements;
  v10 = 0;
LABEL_158:
  SafeRelease(v10);
  SafeRelease(v186);
  SafeRelease(theDict);
  SafeRelease(v185);
  SafeRelease(Mutable);
  SafeRelease(0);
  return v134;
}

uint64_t AMAuthInstallBasebandCreateMeasurements(void *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v79 = 0;
  v8 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v80 = Mutable;
  v15 = a1[6];
  if (v15 && (v16 = *(v15 + 4)) != 0)
  {
    AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using set ChipID 0x%08X to measure", v9, v10, v11, v12, v13, *(v15 + 4));
  }

  else
  {
    if (AMAuthInstallBasebandReadChipIDFromBbfw(a2, &v79))
    {
      if (AMAuthInstallBasebandICE3FirmwareSupported(a2))
      {
        v16 = 80;
        AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using detected ICE3 ChipID 0x%08X to measure", v46, v47, v48, v49, v50, 80);
      }

      else
      {
        v16 = 5243105;
        AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using default ChipID 0x%08X to measure", v46, v47, v48, v49, v50, 225);
      }
    }

    else
    {
      v16 = v79;
      if (!v79)
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandCreateMeasurements", "chipid 0 read from Info.plist!", v41, v42, v43, v44, v45, v77);
        v63 = 14;
        goto LABEL_63;
      }

      AMAuthInstallLog(5, "AMAuthInstallBasebandCreateMeasurements", "Using ChipID 0x%08X from Info.plist to measure", v41, v42, v43, v44, v45, v79);
    }

    v75 = calloc(1uLL, 0xB0uLL);
    if (!v75)
    {
      a1[6] = 0;
      v63 = 2;
      goto LABEL_63;
    }

    v76 = v75;
    bzero(v75, 0xB0uLL);
    a1[6] = v76;
    v76[1] = v16;
  }

  if ((v16 - 80) <= 0x18)
  {
    OUTLINED_FUNCTION_16();
    if (!v22)
    {
      v35 = OUTLINED_FUNCTION_2_3();
      v33 = AMAuthInstallBasebandRembrandtMeasureFirmware(v35, v36, v37);
      goto LABEL_55;
    }

    if (!v34)
    {
      v54 = OUTLINED_FUNCTION_2_3();
      v33 = AMAuthInstallBasebandICE3MeasureFirmware(v54, v55, v56);
      goto LABEL_55;
    }
  }

  v22 = v16 == 241889 || v16 == 520417;
  if (v22)
  {
    goto LABEL_39;
  }

  switch(v16)
  {
    case 938209:
    case 1327329:
    case 1515745:
    case 1700065:
      goto LABEL_42;
    case 2044129:
      v57 = OUTLINED_FUNCTION_2_3();
      v33 = AMAuthInstallBasebandMAV25MeasureFirmware(v57, v58, v59);
      goto LABEL_55;
    case 2089185:
    case 2814177:
LABEL_42:
      v38 = OUTLINED_FUNCTION_2_3();
      v33 = AMAuthInstallBasebandMAV20MeasureFirmware(v38, v39, v40);
      goto LABEL_55;
    case 4587745:
      v67 = OUTLINED_FUNCTION_2_3();
      v33 = AMAuthInstallBasebandJ2MeasureFirmware(v67, v68, v69);
LABEL_55:
      v63 = v33;
      if (v33)
      {
        goto LABEL_63;
      }

      v78 = 0;
      if (a3)
      {
        if (!AMAuthInstallVinylIsLegacyChipId(a1, &v78) && v78)
        {
          Measurements = AMAuthInstallVinylCreateMeasurements(a1, a3, &v80, 0);
          Mutable = v80;
          if (Measurements)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v71 = OUTLINED_FUNCTION_2_3();
        Measurements = AMAuthInstallBasebandVinylCreateMeasurements(v71, v72, v73);
        if (Measurements)
        {
LABEL_60:
          v63 = Measurements;
          goto LABEL_63;
        }
      }

      v63 = 0;
      *a4 = CFRetain(Mutable);
      Mutable = v80;
      goto LABEL_63;
    case 5243105:
      v60 = OUTLINED_FUNCTION_2_3();
      v33 = AMAuthInstallBasebandN92MeasureFirmware(v60, v61, v62);
      goto LABEL_55;
    case 5898465:
      v64 = OUTLINED_FUNCTION_2_3();
      v33 = AMAuthInstallBasebandN94MeasureFirmware(v64, v65, v66);
      goto LABEL_55;
    case 7278817:
    case 7282913:
      v51 = OUTLINED_FUNCTION_2_3();
      v33 = AMAuthInstallBasebandN41MeasureFirmware(v51, v52, v53);
      goto LABEL_55;
    case 8343777:
    case 9572577:
    case 9781473:
LABEL_39:
      v30 = OUTLINED_FUNCTION_2_3();
      v33 = AMAuthInstallBasebandMAV10MeasureFirmware(v30, v31, v32);
      goto LABEL_55;
  }

  AMAuthInstallLog(3, "AMAuthInstallBasebandCreateMeasurements", "unrecognized chipid: 0x%08X", v17, v18, v19, v20, v21, v16);
  v63 = 13;
LABEL_63:
  SafeRelease(Mutable);
  return v63;
}

uint64_t AMAuthInstallBasebandLocalSigningEnabled(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a2 && *(a1 + 48))
  {
    v14 = 0;
    if (AMAuthInstallBasebandSupportsServerSigning(a1, &v14 + 1))
    {
      v12 = "failed to query is server signing is supported.";
    }

    else
    {
      BooleanValue = AMAuthInstallPreferencesGetBooleanValue(@"AuthInstallEnableLocalSigning", 0, 0);
      if (HIBYTE(v14) && BooleanValue != 1)
      {
        v11 = 0;
LABEL_8:
        result = 0;
        *a2 = v11;
        return result;
      }

      if (!AMAuthInstallBasebandSupportsLocalSigning(a1, &v14))
      {
        v11 = v14;
        goto LABEL_8;
      }

      v12 = "failed to query is local signing is supported.";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandLocalSigningEnabled", v12, v5, v6, v7, v8, v9, v13);
    return 1;
  }

  return result;
}

uint64_t AMAuthInstallBasebandSupportsServerSigning(uint64_t a1, _BYTE *a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    v4 = *(a1 + 48);
    if (!v4)
    {
LABEL_49:
      v25 = 0;
      goto LABEL_50;
    }

    if ((*(v4 + 4) - 80) > 0x18)
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_13_0();
    if (!v6)
    {
      v25 = AMAuthInstallBasebandRembrandtSupportsServerSigning(v23);
LABEL_50:
      v2 = 0;
      *a2 = v25;
      return v2;
    }

    if (v24)
    {
LABEL_5:
      OUTLINED_FUNCTION_12_0();
      v6 = v6 || v5 == 520417;
      if (!v6)
      {
        OUTLINED_FUNCTION_14_0();
        if (!v6)
        {
          v8 = v7 == 1327329 || v7 == 1515745;
          v9 = v8 || v7 == 1700065;
          v10 = v9 || v7 == 2044129;
          v11 = v10 || v7 == 2089185;
          if (!v11 && v7 != 2814177)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v6)
            {
              OUTLINED_FUNCTION_10_0();
              if (!v6)
              {
                OUTLINED_FUNCTION_8_1();
                if (!v6)
                {
                  OUTLINED_FUNCTION_7_2();
                  if (!v6 && v13 != 7282913)
                  {
                    OUTLINED_FUNCTION_11_0();
                    v21 = v6 || v20 == 9572577;
                    if (!v21 && v20 != 9781473)
                    {
                      AMAuthInstallLog(3, "AMAuthInstallBasebandSupportsServerSigning", "chipID: 0x%x is not supported for server signing", v15, v16, v17, v18, v19, v20);
                      goto LABEL_49;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v25 = AMAuthInstallBasebandICE3SupportsServerSigning();
    goto LABEL_50;
  }

  return v2;
}

uint64_t AMAuthInstallBasebandCopyAllComponents(const void *a1, const void *a2, CFTypeRef *a3)
{
  v3 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v4 = 1;
  v25 = 0;
  if (a1 && a2 && a3)
  {
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v3 = Mutable;
    if (Mutable)
    {
      v24[0] = a1;
      v25 = Mutable;
      v10 = BbfwReaderStart(a2, _AddFirmware, v24);
      if (v10)
      {
        v4 = v10;
      }

      else
      {
        v17 = AMAuthInstallProvisioningProvisionIfNecessary(a1, v3, v11, v12, v13, v14, v15, v16);
        v4 = v17;
        if (v17)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandCopyAllComponents", "AMAuthInstallProvisioningProvisionIfNecessary failed: %d", v18, v19, v20, v21, v22, v17);
        }

        else
        {
          *a3 = CFRetain(v3);
        }
      }
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

CFIndex AMAuthInstallBasebandCopyFirmware(const void *a1, const void *a2, const void *a3)
{
  v14 = 0;
  v4 = AMAuthInstallBasebandCopyAllComponents(a1, a2, &v14);
  if (v4)
  {
    v10 = v4;
    v12 = "AMAuthInstallBasebandCopyAllComponents failed";
LABEL_6:
    AMAuthInstallLog(3, "AMAuthInstallBasebandCopyFirmware", v12, v5, v6, v7, v8, v9, v13);
    goto LABEL_3;
  }

  v10 = AMAuthInstallBasebandWriteFilesToBbfw(0, a3, v14);
  if (v10)
  {
    v12 = "AMAuthInstallBasebandWriteFilesToBbfw failed";
    goto LABEL_6;
  }

LABEL_3:
  SafeRelease(v14);
  return v10;
}

CFIndex AMAuthInstallBasebandWriteFilesToBbfw(int a1, CFTypeRef cf, const __CFDictionary *a3)
{
  context = 0;
  v12 = BbfwWriterCreate(cf);
  if (!v12)
  {
    return 4;
  }

  CFDictionaryApplyFunction(a3, _AddToArchive, &context);
  BbfwWriterFinalize(v12);
  if (!context)
  {
    return 0;
  }

  AMAuthInstallLog(3, "AMAuthInstallBasebandWriteFilesToBbfw", "Error writing bbfw zip: %@", v4, v5, v6, v7, v8, context);
  Code = CFErrorGetCode(context);
  CFRelease(context);
  return Code;
}

uint64_t AMAuthInstallBasebandSetKeyHashRootManifest(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = OUTLINED_FUNCTION_15_0();
  if (v5 && v4 && *(v2 + 208))
  {
    if (CFDataGetLength(v1) == 20 || CFDataGetLength(v1) == 32 || CFDataGetLength(v1) == 48)
    {
      OUTLINED_FUNCTION_21(*(v2 + 208));
      return 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetKeyHashRootManifest", "Invalid hash length", v6, v7, v8, v9, v10, v11);
      return 99;
    }
  }

  return result;
}

unint64_t AMAuthInstallBasebandPersonalizationRequired(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = *(result + 48);
    if (v9)
    {
      v10 = *(v9 + 96);
      v11 = v10 > 3 || v10 == 1;
      return !v11 && *(v9 + 16) || *(result + 168) || *(result + 176) != 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandPersonalizationRequired", "failed to get fusing status", a4, a5, a6, a7, a8, v8);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandSetFusings(uint64_t a1, int a2, int a3, CFTypeRef cf, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v42 = "missing amai";
LABEL_67:
    AMAuthInstallLog(3, "AMAuthInstallBasebandSetFusings", v42, cf, a5, a6, a7, a8, v43);
    return 1;
  }

  if (!cf)
  {
    v42 = "missing snum";
    goto LABEL_67;
  }

  v12 = CFGetTypeID(cf);
  if (v12 != CFDataGetTypeID())
  {
    v42 = "snum is not CFData";
    goto LABEL_67;
  }

  if (_AMAuthInstallBasebandCheckSnum(a2, cf, v13, cf, a5, a6, a7, a8))
  {
    return 1;
  }

  _AMAuthInstallBasebandParametersFinalize(*(a1 + 48));
  v14 = calloc(1uLL, 0xB0uLL);
  if (v14)
  {
    v15 = v14;
    bzero(v14, 0xB0uLL);
    *(a1 + 48) = v15;
    if ((a2 - 80) > 0x18 || (OUTLINED_FUNCTION_16(), v21) && v38)
    {
      v21 = a2 == 241889 || a2 == 520417;
      if (!v21 && a2 != 938209 && a2 != 1327329 && a2 != 1515745 && a2 != 1700065 && a2 != 2044129 && a2 != 2089185 && a2 != 2814177 && a2 != 4587745 && a2 != 5243105 && a2 != 5898465 && a2 != 7278817 && a2 != 7282913 && a2 != 8343777 && a2 != 9572577 && a2 != 9781473)
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandSetFusings", "chipID: 0x%x is not supported", v16, v17, v18, v19, v20, a2);
        v15 = *(a1 + 48);
LABEL_61:
        v15[1] = a2;
        v15[2] = a3;
        CFRetain(cf);
        result = OUTLINED_FUNCTION_17();
        v40 = *(a1 + 48);
        v40[2] = v41;
        v40[4] = 0;
        v40[5] = 0;
        v40[9] = 0;
        v40[10] = 0;
        v40[8] = 0;
        v40[13] = 0;
        v40[14] = 0;
        return result;
      }

      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    *v15 = v37;
    goto LABEL_61;
  }

  *(a1 + 48) = 0;
  return 2;
}

uint64_t AMAuthInstallBasebandSetKeyHash(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = OUTLINED_FUNCTION_15_0();
  if (v5 && v4 && *(v2 + 216))
  {
    if (CFDataGetLength(v1) == 20 || CFDataGetLength(v1) == 32 || CFDataGetLength(v1) == 48 || !CFDataGetLength(v1))
    {
      OUTLINED_FUNCTION_21(*(v2 + 216));
      OUTLINED_FUNCTION_21(*(v2 + 200));
      return 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetKeyHash", "Invalid hash length", v6, v7, v8, v9, v10, v11);
      return 99;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandPersonalizeFirmwareInternal(void *a1, void *a2, const void *a3, const void *a4, __CFDictionary *a5, const __CFDictionary *a6, const __CFDictionary *a7)
{
  v12 = 0;
  if (a1)
  {
    v8 = 0;
    v9 = 1;
    if (a4 && a2 && a1[6])
    {
      v10 = AMAuthInstallBasebandCopyAllPersonalizedComponents(a1, a2, a3, a5, a6, a7, &v12);
      v8 = v12;
      if (!v10)
      {
        v10 = AMAuthInstallBasebandWriteFilesToBbfw(0, a4, v12);
      }

      v9 = v10;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  SafeRelease(v8);
  SafeRelease(0);
  return v9;
}

uint64_t AMAuthInstallBasebandReadChipIDFromBbfw(const void *a1, _DWORD *a2)
{
  data = 0;
  v25 = 0;
  error = 0;
  if (!a1)
  {
    v9 = 0;
    v17 = 0;
    v20 = 1;
    goto LABEL_9;
  }

  v3 = BbfwReaderOpen(a1);
  v9 = v3;
  if (!v3)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandReadChipIDFromBbfw", "failed to open bbfw archive for reading", v4, v5, v6, v7, v8, v23);
    v17 = 0;
    v20 = 4;
    goto LABEL_9;
  }

  v10 = BbfwReaderFindAndCopyFileData(v3, @"Info.plist", &data);
  if (v10)
  {
    v20 = v10;
    v17 = 0;
    goto LABEL_9;
  }

  v11 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], data, 0, 0, &error);
  v17 = v11;
  if (!v11)
  {
    v23 = @"Info.plist";
    v22 = "failed to parse %@: %@";
LABEL_17:
    v20 = 3;
    AMAuthInstallLog(3, "AMAuthInstallBasebandReadChipIDFromBbfw", v22, v12, v13, v14, v15, v16, v23);
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(v11, @"com.apple.EmbeddedSoftwareRestore.Baseband.ChipId");
  if (!Value)
  {
    v23 = @"Info.plist";
    v22 = "failed to find ChipId in %@";
    goto LABEL_17;
  }

  v19 = Value;
  if (!_CFStringToUInt32(Value, &v25))
  {
    LOBYTE(v23) = v19;
    v22 = "failed to convert ChipId(%@) to int";
    goto LABEL_17;
  }

  if (!v25)
  {
    v22 = "ChipId is 0 (invalid)";
    goto LABEL_17;
  }

  v20 = 0;
  *a2 = v25;
LABEL_9:
  BbfwReaderClose(v9);
  SafeRelease(data);
  SafeRelease(v17);
  SafeRelease(error);
  return v20;
}

uint64_t AMAuthInstallBasebandReadVersionFromBbfw(CFDataRef data, const void *a2, CFTypeRef *a3)
{
  v3 = 0;
  valuePtr = 0;
  error = 0;
  v4 = 1;
  if (!data || !a2)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v7 = 0;
  if (a3)
  {
    v8 = *MEMORY[0x29EDB8ED8];
    v9 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], data, 0, 0, &error);
    v3 = v9;
    if (v9)
    {
      Value = CFDictionaryGetValue(v9, a2);
      v7 = Value;
      if (!Value)
      {
        v4 = 3;
        AMAuthInstallLog(3, "AMAuthInstallBasebandReadVersionFromBbfw", "failed to find VersionStr in %@", v16, v17, v18, v19, v20, @"Info.plist");
        goto LABEL_10;
      }

      if (_CFStringToUInt32(Value, &valuePtr))
      {
        if (valuePtr)
        {
          v21 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
          v7 = v21;
          if (v21)
          {
            v4 = 0;
            *a3 = CFRetain(v21);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallBasebandReadVersionFromBbfw", "Failed to create versionNumber", v22, v23, v24, v25, v26, v29);
            v4 = 2;
          }

          goto LABEL_10;
        }

        v28 = "Version is 0 (invalid)";
      }

      else
      {
        LOBYTE(v29) = v7;
        v28 = "failed to convert VersionStr(%@) to int";
      }
    }

    else
    {
      v29 = @"Info.plist";
      v28 = "failed to parse %@: %@";
    }

    v4 = 3;
    AMAuthInstallLog(3, "AMAuthInstallBasebandReadVersionFromBbfw", v28, v10, v11, v12, v13, v14, v29);
    v7 = 0;
  }

LABEL_10:
  SafeRelease(v7);
  SafeRelease(v3);
  SafeRelease(error);
  return v4;
}

uint64_t AMAuthInstallBasebandSetFusingProfileName(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 168));
  SafeRetain(a2);
  result = OUTLINED_FUNCTION_17();
  *(a1 + 168) = v5;
  return result;
}

uint64_t AMAuthInstallBasebandCopyNextComponentName(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    if ((*(v2 + 4) - 80) > 0x18)
    {
      goto LABEL_4;
    }

    OUTLINED_FUNCTION_13_0();
    if (v6)
    {
      if (v37)
      {
LABEL_4:
        OUTLINED_FUNCTION_12_0();
        v5 = v4;
        v6 = v6 || v3 == 520417;
        if (!v6 && v3 != 938209 && v3 != 1327329 && v3 != 1515745 && v3 != 1700065 && v3 != 2044129 && v3 != 2089185 && v3 != 2814177)
        {
          OUTLINED_FUNCTION_9_0();
          if (v6)
          {

            return AMAuthInstallBasebandJ2CopyNextComponentName();
          }

          OUTLINED_FUNCTION_10_0();
          if (v6)
          {

            return AMAuthInstallBasebandJ2CopyNextComponentName();
          }

          OUTLINED_FUNCTION_8_1();
          if (v6)
          {

            return AMAuthInstallBasebandJ2CopyNextComponentName();
          }

          OUTLINED_FUNCTION_7_2();
          if (v6 || v18 == 7282913)
          {

            return AMAuthInstallBasebandJ2CopyNextComponentName();
          }

          OUTLINED_FUNCTION_11_0();
          v5 = v26;
          if (!v6 && v25 != 9572577 && v25 != 9781473)
          {
            AMAuthInstallLog(3, "AMAuthInstallBasebandCopyNextComponentName", "chipID: 0x%x is not supported", v20, v21, v22, v23, v24, v25);
            return 99;
          }
        }

        return AMAuthInstallBasebandJ2CopyNextComponentName();
      }

      return AMAuthInstallBasebandICE3CopyNextComponentName(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    else
    {

      return AMAuthInstallBasebandRembrandtCopyNextComponentName();
    }
  }

  else
  {
    *a2 = 0;
    return 99;
  }
}

uint64_t AMAuthInstallBasebandCreateUpdaterStateInfo(uint64_t a1, CFTypeRef *a2)
{
  if (!a1)
  {
    Mutable = 0;
    v10 = 0;
    v11 = 0;
    v2 = 0;
    OUTLINED_FUNCTION_6_2();
    v8 = 1;
    goto LABEL_25;
  }

  Mutable = 0;
  v8 = 1;
  if (!a2)
  {
    v10 = 0;
    v11 = 0;
    OUTLINED_FUNCTION_19();
    goto LABEL_25;
  }

  v10 = 0;
  v11 = 0;
  v12 = *(a1 + 48);
  OUTLINED_FUNCTION_19();
  if (v13)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v14 = CFGetAllocator(a1);
      v10 = CFNumberCreate(v14, kCFNumberSInt32Type, *(a1 + 48));
      if (v10)
      {
        v15 = CFGetAllocator(a1);
        v11 = CFNumberCreate(v15, kCFNumberSInt32Type, (*(a1 + 48) + 4));
        if (v11)
        {
          v16 = CFGetAllocator(a1);
          v2 = CFNumberCreate(v16, kCFNumberSInt32Type, (*(a1 + 48) + 8));
          CFDictionarySetValue(Mutable, @"VendorID", v10);
          CFDictionarySetValue(Mutable, @"ChipID", v11);
          CFDictionarySetValue(Mutable, @"CertID", v2);
          v17 = *(a1 + 48);
          v18 = *(v17 + 16);
          if (v18)
          {
            CFDictionarySetValue(Mutable, @"ChipSerialNo", v18);
            v17 = *(a1 + 48);
          }

          v19 = *(v17 + 24);
          if (v19)
          {
            CFDictionarySetValue(Mutable, @"Nonce", v19);
          }

          v20 = *(a1 + 208);
          if (!v20)
          {
            OUTLINED_FUNCTION_6_2();
            v8 = 14;
            goto LABEL_25;
          }

          Value = CFDictionaryGetValue(v20, @"BbProvisioningManifestKeyHash");
          v21 = CFDictionaryGetValue(*(a1 + 208), @"BbCalibrationManifestKeyHash");
          if (!(Value | v21))
          {
            OUTLINED_FUNCTION_6_2();
LABEL_24:
            v8 = 0;
            *a2 = CFRetain(Mutable);
            goto LABEL_25;
          }

          v22 = v21;
          v23 = CFGetAllocator(a1);
          v24 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          v3 = v24;
          if (v24)
          {
            if (Value)
            {
              CFDictionarySetValue(v24, @"SKeyHash", Value);
              AMAuthInstallLog(6, "AMAuthInstallBasebandCreateUpdaterStateInfo", "provisioning key status=%d", v30, v31, v32, v33, v34, 0);
              v40 = 0;
            }

            else
            {
              v40 = 3;
              AMAuthInstallLog(3, "AMAuthInstallBasebandCreateUpdaterStateInfo", "provisioning key hash not found", v25, v26, v27, v28, v29, v51);
            }

            valuePtr = v40;
            if (v22)
            {
              CFDictionarySetValue(v3, @"CKeyHash", v22);
              AMAuthInstallLog(6, "AMAuthInstallBasebandCreateUpdaterStateInfo", "calibration key status=%d", v41, v42, v43, v44, v45, 0);
              v46 = 0;
            }

            else
            {
              v46 = 3;
              AMAuthInstallLog(3, "AMAuthInstallBasebandCreateUpdaterStateInfo", "calibration key hash not found", v35, v36, v37, v38, v39, v52);
            }

            v53 = v46;
            v47 = CFGetAllocator(a1);
            v4 = CFNumberCreate(v47, kCFNumberSInt32Type, &valuePtr);
            if (v4)
            {
              CFDictionarySetValue(v3, @"SKeyStatus", v4);
              v48 = CFGetAllocator(a1);
              v49 = CFNumberCreate(v48, kCFNumberSInt32Type, &v53);
              if (v49)
              {
                Value = v49;
                CFDictionarySetValue(v3, @"CKeyStatus", v49);
                CFDictionarySetValue(Mutable, @"ManifestInfo", v3);
                goto LABEL_24;
              }
            }
          }

          else
          {
            v4 = 0;
          }

          Value = 0;
LABEL_34:
          v8 = 2;
          goto LABEL_25;
        }

LABEL_30:
        v2 = 0;
        OUTLINED_FUNCTION_6_2();
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
    goto LABEL_30;
  }

LABEL_25:
  SafeRelease(Mutable);
  SafeRelease(v10);
  SafeRelease(v11);
  SafeRelease(v2);
  SafeRelease(v4);
  SafeRelease(Value);
  SafeRelease(v3);
  return v8;
}

uint64_t AMAuthInstallBasebandSupportsLocalSigning(uint64_t a1, _BYTE *a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(v4 + 4);
      v6 = (v5 - 94) > 0xA || ((1 << (v5 - 94)) & 0x685) == 0;
      if (!v6)
      {
        v28 = AMAuthInstallBasebandICE3SupportsServerSigning();
LABEL_50:
        v2 = 0;
        *a2 = v28;
        return v2;
      }

      OUTLINED_FUNCTION_12_0();
      if (v6 || v7 == 520417)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_14_0();
      v10 = v6 || v9 == 1327329;
      v11 = v10 || v9 == 1515745;
      v12 = v11 || v9 == 1700065;
      v13 = v12 || v9 == 2044129;
      v14 = v13 || v9 == 2089185;
      if (v14 || v9 == 2814177)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_9_0();
      if (v6)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_18();
      if (v6)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_8_1();
      if (v6)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_7_2();
      if (v6 || v24 == 7282913)
      {
        v28 = AMAuthInstallBasebandN41SupportsLocalSigning(v16, v17, v18, v19, v20, v21, v22, v23);
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_11_0();
      v27 = v6 || v26 == 9572577;
      if (v27 || (OUTLINED_FUNCTION_10_0(), v29))
      {
LABEL_44:
        v28 = AMAuthInstallBasebandJ2SupportsLocalSigning();
        goto LABEL_50;
      }

      AMAuthInstallLog(3, "AMAuthInstallBasebandSupportsLocalSigning", "chipID: 0x%x is not supported for local signing", v30, v31, v32, v33, v34, v35);
    }

    v28 = 0;
    goto LABEL_50;
  }

  return v2;
}

uint64_t AMAuthInstallBasebandSetKeyHashInternal(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = OUTLINED_FUNCTION_15_0();
  if (v5 && v4 && *(v2 + 200))
  {
    if (CFDataGetLength(v1) == 20 || CFDataGetLength(v1) == 32 || CFDataGetLength(v1) == 48 || !CFDataGetLength(v1))
    {
      OUTLINED_FUNCTION_21(*(v2 + 200));
      return 0;
    }

    else
    {
      Length = CFDataGetLength(v1);
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetKeyHashInternal", "Invalid hash length %d", v7, v8, v9, v10, v11, Length);
      return 99;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandMeasureFirmwareFromBbfw(int a1, uint64_t a2, const __CFString *a3, uint64_t (*a4)(uint64_t, CFTypeRef, uint64_t), uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v25 = 0;
  v11 = BbfwReaderFindAndCopyFileData(a5, a3, &v25);
  if (!a1 && v11)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandMeasureFirmwareFromBbfw", "%@ absent; but ignoring", v12, v13, v14, v15, v16, v8);
LABEL_8:
    v23 = 1;
    goto LABEL_9;
  }

  if (!v11)
  {
    v17 = a4(a2, v25, a6);
    if (!v17)
    {
      goto LABEL_8;
    }

    AMAuthInstallGetLocalizedStatusString(0, v17);
    AMAuthInstallLog(3, "AMAuthInstallBasebandMeasureFirmwareFromBbfw", "failed to measure %@: %@;", v18, v19, v20, v21, v22, v8);
  }

  v23 = 0;
LABEL_9:
  SafeRelease(v25);
  return v23;
}

uint64_t AMAuthInstallBasebandStitchCopyFile(uint64_t a1, CFTypeRef cf, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return 1;
  }

  CFRetain(cf);
  result = OUTLINED_FUNCTION_17();
  *a4 = v6;
  return result;
}

uint64_t AMAuthInstallBasebandStitchFirmwareFromBbfw(uint64_t a1, const __CFString *a2, uint64_t (*a3)(uint64_t, CFTypeRef, uint64_t, void **), uint64_t a4, uint64_t a5, __CFDictionary *a6)
{
  value = 0;
  v25 = 0;
  if (!BbfwReaderFindAndCopyFileData(a4, a2, &v25))
  {
    v11 = a3(a1, v25, a5, &value);
    if (v11)
    {
      AMAuthInstallGetLocalizedStatusString(0, v11);
      AMAuthInstallLog(4, "AMAuthInstallBasebandStitchFirmwareFromBbfw", "failed to stitch %@: %@; continuing anyway", v17, v18, v19, v20, v21, a2);
    }

    else
    {
      if (value)
      {
        CFDictionarySetValue(a6, a2, value);
        v22 = 1;
        goto LABEL_7;
      }

      AMAuthInstallLog(3, "AMAuthInstallBasebandStitchFirmwareFromBbfw", "stitch function returned NULL for %@; continuing anyway", v12, v13, v14, v15, v16, a2);
    }
  }

  v22 = 0;
LABEL_7:
  SafeRelease(v25);
  SafeRelease(value);
  return v22;
}

uint64_t AMAuthInstallBasebandLocalProvisionDevice(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if (!a1)
  {
    return v3;
  }

  if (!a2)
  {
    return v3;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    return v3;
  }

  v5 = *(v4 + 4);
  v6 = (v5 - 94) > 0xA || ((1 << (v5 - 94)) & 0x685) == 0;
  if (!v6)
  {

    return AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  }

  OUTLINED_FUNCTION_12_0();
  v9 = v8;
  if (v6 || v7 == 520417)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_14_0();
  if (v6 || v12 == 1327329 || v12 == 1515745 || v12 == 1700065 || v12 == 2044129 || v12 == 2089185 || v12 == 2814177)
  {

    return AMAuthInstallBasebandJ2HandleLocalSigningRequest();
  }

  OUTLINED_FUNCTION_9_0();
  if (v6)
  {

    return AMAuthInstallBasebandJ2HandleLocalSigningRequest();
  }

  OUTLINED_FUNCTION_18();
  v9 = v20;
  if (v6)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_8_1();
  if (v6)
  {

    return AMAuthInstallBasebandJ2HandleLocalSigningRequest();
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 || v23 == 7282913)
  {

    return AMAuthInstallBasebandJ2HandleLocalSigningRequest();
  }

  OUTLINED_FUNCTION_11_0();
  v9 = v26;
  if (v6 || v25 == 9572577)
  {
LABEL_44:

    return AMAuthInstallBasebandJ2HandleLocalSigningRequest();
  }

  OUTLINED_FUNCTION_10_0();
  if (!v29)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandLocalProvisionDevice", "chipID: 0x%x is not supported for local provisioning", v32, v33, v34, v35, v36, v37);
    return 13;
  }

  return AMAuthInstallBasebandN92LocalProvisionDevice(v30);
}

uint64_t AMAuthInstallBasebandSetAntennaType(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 144));
  SafeRetain(a2);
  result = OUTLINED_FUNCTION_17();
  *(a1 + 144) = v5;
  return result;
}

uint64_t AMAuthInstallBasebandSetBehavior(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 152));
  SafeRetain(a2);
  result = OUTLINED_FUNCTION_17();
  *(a1 + 152) = v5;
  return result;
}

uint64_t AMAuthInstallBasebandIsFused(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  v4 = *(v2 + 16);
  v5 = (*(v2 + 96) < 4u) & (0xDu >> (*(v2 + 96) & 0xF));
  if (!v4)
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t AMAuthInstallBasebandGetChipID(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a2)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      result = 0;
      *a2 = *(v4 + 4);
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandGetVersion(uint64_t a1, CFDataRef data, __CFDictionary *a3, const void *a4, const void *a5)
{
  value = 0;
  result = 1;
  if (a1 && data && a3 && a4)
  {
    if (AMAuthInstallBasebandReadVersionFromBbfw(data, a4, &value) || !value)
    {
      return 14;
    }

    else
    {
      CFDictionarySetValue(a3, a5, value);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallBasebandSupportsFDR(int a1, char *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = 1;
  if (((a1 - 94) > 0xA || ((1 << (a1 - 94)) & 0x685) == 0) && a1 != 241889 && a1 != 520417 && a1 != 938209 && a1 != 1327329 && a1 != 1515745 && a1 != 1700065 && a1 != 2044129 && a1 != 2089185 && a1 != 2814177 && a1 != 8343777 && a1 != 9572577 && a1 != 9781473)
  {
    v2 = 0;
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t AMAuthInstallBasebandGetRFSelfTestTicket(const void *a1, const __CFData *a2, int a3, uint64_t a4, uint64_t a5, CFDataRef *a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a7;
  v12 = a5;
  v13 = a4;
  theDict = 0;
  AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "Entering RF Self Test LAI API to get a signed ticket", a4, a5, a6, a7, a8, v75);
  if (!a1)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "inSnum is NULL", v17, v18, v19, v20, v21, v76);
LABEL_30:
    v29 = 0;
LABEL_39:
    a2 = 0;
    goto LABEL_46;
  }

  if (!a2)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "inNonce is NULL", v17, v18, v19, v20, v21, v76);
    v29 = 0;
LABEL_46:
    v59 = 1;
    goto LABEL_28;
  }

  if (!a6)
  {
    goto LABEL_30;
  }

  v22 = *MEMORY[0x29EDB8ED8];
  v23 = AMAuthInstallCreate(*MEMORY[0x29EDB8ED8]);
  v29 = v23;
  if (!v23)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "amai is NULL", v24, v25, v26, v27, v28, v76);
    a2 = 0;
    goto LABEL_33;
  }

  v30 = AMAuthInstallBasebandSetFusings(v23, a3, v13, a1, v25, v26, v27, v28);
  if (v30)
  {
    v59 = v30;
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "invalid baseband fusings", v31, v32, v33, v34, v35, v76);
    a2 = 0;
    goto LABEL_28;
  }

  if (AMAuthInstallBasebandSetNonce(v29, a2))
  {
    v73 = "invalid baseband fusings";
LABEL_38:
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", v73, v36, v37, v38, v39, v40, v76);
    goto LABEL_39;
  }

  AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "will check signing support now", v36, v37, v38, v39, v40, v76);
  v80 = 0;
  v41 = AMAuthInstallBasebandSupportsServerSigning(v29, &v80);
  AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "signing support check completed", v42, v43, v44, v45, v46, v77);
  if (v41)
  {
    v73 = "signing support check failed";
    goto LABEL_38;
  }

  if (v80 != 1)
  {
    v73 = "signing NOT supported";
    goto LABEL_38;
  }

  v47 = CFGetAllocator(v29);
  Mutable = CFDictionaryCreateMutable(v47, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  a2 = Mutable;
  if (!Mutable)
  {
    goto LABEL_33;
  }

  v54 = v29[6];
  if (!v54)
  {
    v74 = "amai->bbParameters is NULL";
LABEL_45:
    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", v74, v49, v50, v51, v52, v53, v76);
    goto LABEL_46;
  }

  v55 = *(v54 + 24);
  if (v55)
  {
    CFDictionarySetValue(Mutable, @"BbNonce", v55);
    v54 = v29[6];
  }

  v56 = *(v54 + 16);
  if (v56)
  {
    CFDictionarySetValue(a2, @"BbSNUM", v56);
    v54 = v29[6];
  }

  v57 = *(v54 + 4);
  if (v57)
  {
    _CFDictionarySetInteger32(a2, @"BbChipID", v57);
    v54 = v29[6];
  }

  v58 = *(v54 + 8);
  if (v58)
  {
    _CFDictionarySetInteger64(a2, @"BbGoldCertId", v58);
  }

  _CFDictionarySetInteger32(a2, @"BbFieldDiagsEnable", v12);
  if (a9)
  {
    if (a8)
    {
      if (v10)
      {
        _CFDictionarySetInteger64(a2, @"ApECID", a8);
        _CFDictionarySetInteger32(a2, @"ApChipID", v10);
        goto LABEL_23;
      }

      v74 = "inApChipID is zero";
    }

    else
    {
      v74 = "inApECID is zero";
    }

    goto LABEL_45;
  }

LABEL_23:
  AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "will start signing now", v49, v50, v51, v52, v53, v76);
  v59 = AMAuthInstallRequestSendSync(v29, a2, &theDict);
  AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "signing done", v60, v61, v62, v63, v64, v78);
  if (!v59)
  {
    if (!theDict)
    {
      v59 = 14;
      goto LABEL_28;
    }

    AMAuthInstallLog(6, "AMAuthInstallBasebandGetRFSelfTestTicket", "returning the ticket content", v65, v66, v67, v68, v69, v79);
    if (!CFDictionaryContainsKey(theDict, @"BBTicket"))
    {
      v59 = 8;
      goto LABEL_28;
    }

    Value = CFDictionaryGetValue(theDict, @"BBTicket");
    Copy = CFDataCreateCopy(v22, Value);
    *a6 = Copy;
    if (Copy)
    {
      v59 = 0;
      goto LABEL_28;
    }

LABEL_33:
    v59 = 2;
  }

LABEL_28:
  SafeRelease(a2);
  SafeRelease(theDict);
  SafeRelease(v29);
  return v59;
}

uint64_t AMAuthInstallBasebandICE3MeasureRamPsi(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  OUTLINED_FUNCTION_3_3();
  v6 = CFGetAllocator(v5);
  v7 = FlsParserCreate(v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_2_4();
    v10 = FlsParserReadFromData(v8, v9);
    if (v10 || (v10 = FlsParserCopyRamPsi(v7, &theData), v10) || (v11 = CFGetAllocator(a1), BytePtr = CFDataGetBytePtr(theData), Length = CFDataGetLength(theData), v10 = _AMAuthInstallCopyPsiMeasurementAndVersion(v11, BytePtr, Length, &v32, &value, v14, v15, v16), v10))
    {
      v30 = v10;
    }

    else
    {
      OUTLINED_FUNCTION_4_2(v10, v17, "Version = %@", v18, v19, v20, v21, v22, value);
      CFDictionarySetValue(a3, @"RamPSI-Version", value);
      OUTLINED_FUNCTION_4_2(v23, v24, "PartialDigest = %@", v25, v26, v27, v28, v29, v32);
      CFDictionarySetValue(a3, @"RamPSI-PartialDigest", v32);
      v30 = 0;
    }
  }

  else
  {
    v30 = 2;
  }

  SafeRelease(v7);
  SafeRelease(value);
  SafeRelease(theData);
  SafeRelease(v32);
  return v30;
}

uint64_t AMAuthInstallBasebandICE3StitchRamPsi()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_3_3();
  v4 = CFGetAllocator(v3);
  v5 = FlsParserCreate(v4);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_9_1();
    if (v6 || (v6 = FlsParserCopyRamPsi(v5, &v18), v6))
    {
      v14 = v6;
      v9 = 0;
    }

    else
    {
      AMAuthInstallDebugWriteObject(v2, v18, @"RamPSI-Original", 1);
      v7 = _AMAuthInstallBasebandStitchICE3Psi(v2, v18, v1, @"RamPSI-Blob", &v17);
      v9 = v17;
      if (v7 || (OUTLINED_FUNCTION_8_2(v2, v8, @"RamPSI-Personalized"), v10 = OUTLINED_FUNCTION_2_4(), v7 = FlsParserReplaceRamPsi(v10, v11), v7))
      {
        v14 = v7;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_6_3();
        v14 = FlsParserCopyAsData(v12, v13);
        if (!v14)
        {
          *v0 = CFRetain(cf);
        }
      }
    }
  }

  else
  {
    v9 = 0;
    v14 = 2;
  }

  SafeRelease(v5);
  SafeRelease(v18);
  SafeRelease(v9);
  SafeRelease(cf);
  return v14;
}

uint64_t _AMAuthInstallBasebandStitchICE3Psi(const void *a1, const void *a2, CFDictionaryRef theDict, const void *a4, CFTypeRef *a5)
{
  Value = CFDictionaryGetValue(theDict, @"BasebandFirmware");
  if (!Value)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBasebandStitchICE3Psi", "response missing %@", v10, v11, v12, v13, v14, @"BasebandFirmware");
LABEL_8:
    v24 = 0;
    v29 = 8;
    goto LABEL_5;
  }

  v15 = CFDictionaryGetValue(Value, a4);
  if (!v15)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBasebandStitchICE3Psi", "response missing %@", v16, v17, v18, v19, v20, a4);
    goto LABEL_8;
  }

  v21 = v15;
  AMAuthInstallDebugWriteObject(a1, a2, a4, 1);
  v22 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v22, 0, a2);
  v24 = MutableCopy;
  if (MutableCopy)
  {
    Length = CFDataGetLength(MutableCopy);
    v26 = CFDataGetLength(v21);
    CFDataSetLength(v24, Length - v26);
    BytePtr = CFDataGetBytePtr(v21);
    v28 = CFDataGetLength(v21);
    CFDataAppendBytes(v24, BytePtr, v28);
    v29 = 0;
    *a5 = CFRetain(v24);
  }

  else
  {
    v29 = 2;
  }

LABEL_5:
  SafeRelease(v24);
  return v29;
}

uint64_t AMAuthInstallBasebandICE3MeasureEbl(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  v19 = 0;
  theData = 0;
  v5 = CFGetAllocator(a1);
  v6 = FlsParserCreate(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_9_1();
    if (v7 || (v7 = FlsParserCopyEbl(v6, &theData), v7))
    {
      v16 = v7;
      v17 = 0;
    }

    else
    {
      v8 = CFGetAllocator(a1);
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      v16 = _AMAuthInstallCopyBufferMeasurement(v8, BytePtr, Length, &v19);
      v17 = v19;
      if (!v16)
      {
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureEbl", "Digest = %@", v11, v12, v13, v14, v15, v19);
        CFDictionarySetValue(a3, @"EBL-Digest", v17);
      }
    }
  }

  else
  {
    v17 = 0;
    v16 = 2;
  }

  SafeRelease(v6);
  SafeRelease(theData);
  SafeRelease(v17);
  return v16;
}

uint64_t AMAuthInstallBasebandICE3StitchEbl(void *a1, const __CFData *a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  cf = 0;
  theData = 0;
  Value = CFDictionaryGetValue(theDict, @"BBTicket");
  if (!Value)
  {
    v11 = 0;
    v24 = 8;
    goto LABEL_12;
  }

  if (!*(a1[6] + 24))
  {
    v24 = 0;
    v11 = 0;
LABEL_11:
    Value = 0;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2(a1, v7, @"BB-Ticket");
  v9 = CFGetAllocator(a1);
  v10 = FlsParserCreate(v9);
  v11 = v10;
  if (!v10)
  {
    Value = 0;
    goto LABEL_16;
  }

  v12 = FlsParserReadFromData(v10, a2);
  if (v12 || (v13 = OUTLINED_FUNCTION_6_3(), v12 = FlsParserCopyEbl(v13, v14), v12))
  {
    v24 = v12;
    goto LABEL_11;
  }

  v15 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v15, 0, Value);
  Value = MutableCopy;
  if (!MutableCopy)
  {
LABEL_16:
    v24 = 2;
    goto LABEL_12;
  }

  Length = CFDataGetLength(MutableCopy);
  CFDataAppendBytes(Value, AMAuthInstallBasebandICE3StitchEbl_kPaddingBytes, -Length & 3);
  BytePtr = CFDataGetBytePtr(theData);
  v19 = CFDataGetLength(theData);
  CFDataAppendBytes(Value, BytePtr, v19);
  OUTLINED_FUNCTION_8_2(a1, v20, @"EBL-Personalized");
  v21 = OUTLINED_FUNCTION_2_4();
  v23 = FlsParserReplaceEbl(v21, v22);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = FlsParserCopyAsData(v11, &cf);
    if (!v24)
    {
      *a4 = CFRetain(cf);
    }
  }

LABEL_12:
  SafeRelease(v11);
  SafeRelease(theData);
  SafeRelease(cf);
  SafeRelease(Value);
  return v24;
}

uint64_t AMAuthInstallBasebandICE3MeasureFlashPsi(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  theData = 0;
  value = 0;
  OUTLINED_FUNCTION_3_3();
  v6 = CFGetAllocator(v5);
  v7 = FlsParserCreate(v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_2_4();
    v10 = FlsParserReadFromData(v8, v9);
    if (v10 || (v10 = FlsParserCopyFlashPsi(v7, &theData, &v46), v10) || (v11 = CFGetAllocator(a1), v12 = CFDataGetBytePtr(theData), v13 = CFDataGetLength(theData), v10 = _AMAuthInstallCopyPsiMeasurementAndVersion(v11, v12, v13, &v45, &value, v14, v15, v16), v10))
    {
      v42 = v10;
      v34 = 0;
    }

    else
    {
      v17 = CFGetAllocator(a1);
      BytePtr = CFDataGetBytePtr(v46);
      Length = CFDataGetLength(v46);
      v20 = _AMAuthInstallCopyBufferMeasurement(v17, BytePtr, Length, &v44);
      if (v20)
      {
        v42 = v20;
        v34 = v44;
      }

      else
      {
        OUTLINED_FUNCTION_4_2(v20, v21, "Version = %@", v22, v23, v24, v25, v26, value);
        CFDictionarySetValue(a3, @"FlashPSI-Version", value);
        OUTLINED_FUNCTION_4_2(v27, v28, "PartialDigest = %@", v29, v30, v31, v32, v33, v45);
        CFDictionarySetValue(a3, @"FlashPSI-PartialDigest", v45);
        v34 = v44;
        OUTLINED_FUNCTION_4_2(v35, v36, "SecPack Digest = %@", v37, v38, v39, v40, v41, v44);
        CFDictionarySetValue(a3, @"FlashPSI-SecPackDigest", v34);
        v42 = 0;
      }
    }
  }

  else
  {
    v34 = 0;
    v42 = 2;
  }

  SafeRelease(v7);
  SafeRelease(value);
  SafeRelease(theData);
  SafeRelease(v46);
  SafeRelease(v45);
  SafeRelease(v34);
  return v42;
}

uint64_t AMAuthInstallBasebandICE3StitchFlashPsi()
{
  OUTLINED_FUNCTION_3_3();
  if (*(*(v3 + 48) + 24))
  {
    OUTLINED_FUNCTION_7_3();
    v5 = CFGetAllocator(v4);
    v6 = FlsParserCreate(v5);
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_9_1();
      if (v7 || (v7 = FlsParserCopyFlashPsi(v6, &v19, 0), v7))
      {
        v15 = v7;
        v10 = 0;
      }

      else
      {
        AMAuthInstallDebugWriteObject(v2, v19, @"FlashPsi-Original", 1);
        v8 = _AMAuthInstallBasebandStitchICE3Psi(v2, v19, v1, @"FlashPSI-Blob", &v18);
        v10 = v18;
        if (v8 || (OUTLINED_FUNCTION_8_2(v2, v9, @"FlashPsi-Personalized"), v11 = OUTLINED_FUNCTION_2_4(), v8 = FlsParserReplaceFlashPsi(v11, v12), v8))
        {
          v15 = v8;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_6_3();
          v15 = FlsParserCopyAsData(v13, v14);
          if (!v15)
          {
            *v0 = CFRetain(cf);
          }
        }
      }
    }

    else
    {
      v10 = 0;
      v15 = 2;
    }
  }

  else
  {
    v10 = 0;
    v15 = 0;
    v6 = 0;
  }

  SafeRelease(v6);
  SafeRelease(v19);
  SafeRelease(v10);
  SafeRelease(cf);
  return v15;
}

uint64_t AMAuthInstallBasebandICE3MeasureModemStack(const void *a1, const __CFData *a2, __CFDictionary *a3)
{
  v36 = 0;
  theData = 0;
  v34 = 0;
  v35 = 0;
  v6 = CFGetAllocator(a1);
  v7 = FlsParserCreate(v6);
  v8 = v7;
  if (!v7)
  {
    v32 = 0;
    v19 = 0;
    v22 = 0;
LABEL_14:
    v31 = 2;
    goto LABEL_8;
  }

  v9 = FlsParserReadFromData(v7, a2);
  if (v9 || (v9 = FlsParserCopyModemStack(v8, &theData, &v36), v9))
  {
    v31 = v9;
    v32 = 0;
    v19 = 0;
LABEL_12:
    v22 = 0;
    goto LABEL_8;
  }

  v10 = CFGetAllocator(a1);
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v13 = _AMAuthInstallCopyBufferMeasurement(v10, BytePtr, Length, &v35);
  v19 = v35;
  if (v13)
  {
    v31 = v13;
    v32 = 0;
    goto LABEL_12;
  }

  AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureModemStack", "Digest = %@", v14, v15, v16, v17, v18, v35);
  CFDictionarySetValue(a3, @"ModemStack-Digest", v19);
  v20 = CFGetAllocator(a1);
  v21 = CFDataGetLength(theData);
  v22 = CFStringCreateWithFormat(v20, 0, @"0x%08lx", v21);
  if (!v22)
  {
    v32 = 0;
    goto LABEL_14;
  }

  CFDictionarySetValue(a3, @"ModemStack-Length", v22);
  v23 = CFGetAllocator(a1);
  v24 = CFDataGetBytePtr(v36);
  v25 = CFDataGetLength(v36);
  v31 = _AMAuthInstallCopyBufferMeasurement(v23, v24, v25, &v34);
  v32 = v34;
  if (!v31)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureModemStack", "SecPack Digest = %@", v26, v27, v28, v29, v30, v34);
    CFDictionarySetValue(a3, @"ModemStack-SecPackDigest", v32);
  }

LABEL_8:
  SafeRelease(v8);
  SafeRelease(theData);
  SafeRelease(v36);
  SafeRelease(v19);
  SafeRelease(v32);
  SafeRelease(v22);
  return v31;
}

uint64_t AMAuthInstallBasebandICE3StitchWorld()
{
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  OUTLINED_FUNCTION_3_3();
  if (!v0 || (v3 = v0, !v0[6]))
  {
    v7 = 0;
    v9 = 1;
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v1;
  v6 = CFGetAllocator(v0);
  v7 = FlsParserCreate(v6);
  if (!v7)
  {
    goto LABEL_33;
  }

  v8 = OUTLINED_FUNCTION_9_1();
  if (!v8)
  {
    v8 = FlsParserCopyRamPsi(v7, &v31);
    if (!v8)
    {
      if (!*(v3[6] + 24) || (v8 = FlsParserCopyFlashPsi(v7, &v30, 0), !v8) && (v8 = FlsParserCopyEbl(v7, &v29), !v8))
      {
        Value = CFDictionaryGetValue(v5, @"BasebandFirmware");
        v9 = Value;
        if (!Value)
        {
          AMAuthInstallLog(3, "AMAuthInstallBasebandICE3StitchWorld", "server response doesn't contain personalization data", v12, v13, v14, v15, v16, v24);
          goto LABEL_8;
        }

        v17 = CFDictionaryGetValue(Value, @"RamPSI-Blob");
        v18 = CFDictionaryGetValue(v9, @"FlashPSI-Blob");
        v19 = CFDictionaryGetValue(v5, @"BBTicket");
        if (v31 && v17)
        {
          v8 = AMAuthInstallBasebandCreatePersonalizedPsiData(v3, v31, v17, &v28);
          if (v8)
          {
            goto LABEL_6;
          }

          OUTLINED_FUNCTION_5_3(v8, v31, @"rampsi-original");
          v20 = AMAuthInstallDebugWriteObject(v3, v17, @"rampsi-stitch", 1);
          OUTLINED_FUNCTION_5_3(v20, v28, @"rampsi-personalized");
        }

        if (!v30 || !v18)
        {
          goto LABEL_21;
        }

        v8 = AMAuthInstallBasebandCreatePersonalizedPsiData(v3, v30, v18, &v27);
        if (!v8)
        {
          OUTLINED_FUNCTION_5_3(v8, v30, @"flashpsi-original");
          v21 = AMAuthInstallDebugWriteObject(v3, v18, @"flashpsi-stitch", 1);
          OUTLINED_FUNCTION_5_3(v21, v27, @"flashpsi-personalized");
LABEL_21:
          if (!v29 || !v19)
          {
LABEL_25:
            if (v28)
            {
              FlsParserReplaceRamPsi(v7, v28);
            }

            if (v27)
            {
              FlsParserReplaceFlashPsi(v7, v27);
            }

            if (v26)
            {
              FlsParserReplaceEbl(v7, v26);
            }

            v22 = OUTLINED_FUNCTION_6_3();
            FlsParserCopyAsData(v22, v23);
            if (cf)
            {
              v9 = 0;
              *v4 = CFRetain(cf);
              goto LABEL_8;
            }

LABEL_33:
            v9 = 2;
            goto LABEL_8;
          }

          v8 = AMAuthInstallBasebandCreatePersonalizedTicketPlusEblData(v3, v29, v19, &v26);
          if (!v8)
          {
            OUTLINED_FUNCTION_5_3(v8, v26, @"ticket-plus-ebl");
            goto LABEL_25;
          }
        }
      }
    }
  }

LABEL_6:
  v9 = v8;
LABEL_8:
  SafeRelease(v7);
  SafeRelease(v31);
  SafeRelease(v30);
  SafeRelease(v29);
  SafeRelease(v28);
  SafeRelease(v27);
  SafeRelease(v26);
  SafeRelease(cf);
  return v9;
}

uint64_t AMAuthInstallBasebandICE3CopyNextComponentName(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  v8 = *(a1 + 48);
  if (!v8)
  {
    return 1;
  }

  if (*(v8 + 4) != 80)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandICE3CopyNextComponentName", "unsupported chipID: 0x%08x", a4, a5, a6, a7, a8, *(v8 + 4));
    return 1;
  }

  if (!*(v8 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandICE3CopyNextComponentName", "missing snum", a4, a5, a6, a7, a8, v13);
    return 1;
  }

  if (*(v8 + 24))
  {
    v10 = @"stack.bbfw";
  }

  else
  {
    v10 = @"boot.bbfw";
  }

  v11 = CFRetain(v10);
  result = 0;
  *a2 = v11;
  return result;
}

uint64_t AMAuthInstallBasebandICE3StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v6 = BbfwReaderOpen(cf);
    v4 = v6;
    if (v6)
    {
      v12 = OUTLINED_FUNCTION_0_0(v6, @"psi_ram.fls");
      v13 = OUTLINED_FUNCTION_0_0(v12, @"ebl.fls");
      v14 = OUTLINED_FUNCTION_0_0(v13, @"psi_flash.fls");
      v15 = OUTLINED_FUNCTION_0_0(v14, @"stack.fls");
      v16 = OUTLINED_FUNCTION_0_0(v15, @"world.fls");
      OUTLINED_FUNCTION_0_0(v16, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandICE3StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v18);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandICE3MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (!v5)
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v27);
      v4 = 4;
      goto LABEL_10;
    }

    v12 = OUTLINED_FUNCTION_1_6(v5, v6, @"psi_ram.fls");
    if (v12)
    {
      v19 = OUTLINED_FUNCTION_1_6(v12, v13, @"ebl.fls");
      if (v19)
      {
        v21 = OUTLINED_FUNCTION_1_6(v19, v20, @"psi_flash.fls");
        if (v21)
        {
          v23 = OUTLINED_FUNCTION_1_6(v21, v22, @"stack.fls");
          if (v23)
          {
            OUTLINED_FUNCTION_1_6(v23, v24, @"world.fls");
            v4 = 0;
            goto LABEL_10;
          }

          v26 = "failed to measure: stack.fls";
        }

        else
        {
          v26 = "failed to measure: psi_flash.fls";
        }
      }

      else
      {
        v26 = "failed to measure: ebl.fls";
      }
    }

    else
    {
      v26 = "failed to measure: psi_ram.fls";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureFirmware", v26, v14, v15, v16, v17, v18, v27);
    v4 = 15;
  }

LABEL_10:
  BbfwReaderClose(v3);
  return v4;
}

BOOL AMAuthInstallBasebandICE3FirmwareSupported(const void *a1)
{
  if (!a1)
  {
    v7 = 0;
LABEL_7:
    v8 = 0;
    goto LABEL_4;
  }

  v1 = BbfwReaderOpen(a1);
  v7 = v1;
  if (!v1)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandICE3FirmwareSupported", "failed to open bbfw archive for reading", v2, v3, v4, v5, v6, v10);
    goto LABEL_7;
  }

  v8 = BbfwReaderFindFile(v1, @"psi_ram.fls") == 0;
LABEL_4:
  BbfwReaderClose(v7);
  return v8;
}

uint64_t AMAuthInstallBasebandJ2StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v7 = BbfwReaderOpen(cf);
    v4 = v7;
    if (v7)
    {
      v13 = OUTLINED_FUNCTION_0_0(v7, @"ENPRG.mbn");
      OUTLINED_FUNCTION_0_0(v13, @"dbl.mbn");
      OUTLINED_FUNCTION_2(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      OUTLINED_FUNCTION_2(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      OUTLINED_FUNCTION_2(a1, @"dsp1.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v14 = OUTLINED_FUNCTION_2(a1, @"dsp2.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v15 = OUTLINED_FUNCTION_0_0(v14, @"partition.mbn");
      OUTLINED_FUNCTION_0_0(v15, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandJ2StitchFirmware", "failed to open bbfw archive for reading", v8, v9, v10, v11, v12, v17);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandJ2MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v12 = OUTLINED_FUNCTION_1_6(v5, v6, @"ENPRG.mbn");
      if (v12)
      {
        v14 = OUTLINED_FUNCTION_1_6(v12, v13, @"dbl.mbn");
        if (v14)
        {
          v16 = OUTLINED_FUNCTION_1_6(v14, v15, @"osbl.mbn");
          if (v16)
          {
            v18 = OUTLINED_FUNCTION_1_6(v16, v17, @"amss.mbn");
            if (v18)
            {
              v20 = OUTLINED_FUNCTION_1_6(v18, v19, @"dsp1.mbn");
              if (v20)
              {
                v22 = OUTLINED_FUNCTION_1_6(v20, v21, @"dsp2.mbn");
                if (v22)
                {
                  if (OUTLINED_FUNCTION_1_6(v22, v23, @"partition.mbn"))
                  {
                    v4 = 0;
                    goto LABEL_13;
                  }

                  v4 = 15;
                  v25 = "failed to measure: partition.mbn";
                }

                else
                {
                  v4 = 15;
                  v25 = "failed to measure: dsp2.mbn";
                }
              }

              else
              {
                v4 = 15;
                v25 = "failed to measure: dsp1.mbn";
              }
            }

            else
            {
              v4 = 15;
              v25 = "failed to measure: amss.mbn";
            }
          }

          else
          {
            v4 = 15;
            v25 = "failed to measure: osbl.mbn";
          }
        }

        else
        {
          v4 = 15;
          v25 = "failed to measure: dbl.mbn";
        }
      }

      else
      {
        v4 = 15;
        v25 = "failed to measure: ENPRG.mbn";
      }
    }

    else
    {
      v4 = 4;
      v25 = "failed to open bbfw archive for reading";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandJ2MeasureFirmware", v25, v7, v8, v9, v10, v11, v26);
  }

LABEL_13:
  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV10StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      OUTLINED_FUNCTION_2(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      OUTLINED_FUNCTION_2(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      v12 = OUTLINED_FUNCTION_2(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = OUTLINED_FUNCTION_1_7(v12, @"apps.mbn");
      v14 = OUTLINED_FUNCTION_1_7(v13, @"dsp3.mbn");
      v15 = OUTLINED_FUNCTION_1_7(v14, @"mba.mbn");
      v16 = OUTLINED_FUNCTION_1_7(v15, @"qdsp6sw.mbn");
      v17 = OUTLINED_FUNCTION_1_7(v16, @"rpm.mbn");
      v18 = OUTLINED_FUNCTION_1_7(v17, @"tz.mbn");
      v19 = OUTLINED_FUNCTION_1_7(v18, @"wdt.mbn");
      OUTLINED_FUNCTION_1_7(v19, @"bbcfg.mbn");
      OUTLINED_FUNCTION_2(a1, @"Options.plist", AMAuthInstallBasebandStitchCopyFile);
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV10StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v21);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandMAV10MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v7 = BbfwReaderOpen(cf);
    v3 = v7;
    if (!v7)
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV10MeasureFirmware", "failed to open bbfw archive for reading", v9, v10, v11, v12, v13, v51);
      v4 = 4;
      goto LABEL_47;
    }

    v14 = OUTLINED_FUNCTION_1_6(v7, v8, @"acdb.mbn");
    if (!v14)
    {
      AMAuthInstallLog(4, "AMAuthInstallBasebandMAV10MeasureFirmware", "missing acdb or failed to measure image", v16, v17, v18, v19, v20, v51);
    }

    if (!OUTLINED_FUNCTION_1_6(v14, v15, @"apps.mbn"))
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_4_3();
    v24 = v24 || v23 == 520417;
    if (!v24 && v23 != 9781473)
    {
      v21 = OUTLINED_FUNCTION_1_6(v21, v22, @"dsp3.mbn");
      if (!v21)
      {
        goto LABEL_48;
      }
    }

    v26 = OUTLINED_FUNCTION_1_6(v21, v22, @"mba.mbn");
    if (!v26 || !OUTLINED_FUNCTION_1_6(v26, v27, @"qdsp6sw.mbn"))
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_4_3();
    v31 = v24 || v30 == 9781473;
    v32 = @"restoresbl1.mbn";
    if (v31 || v30 == 520417)
    {
      v28 = OUTLINED_FUNCTION_1_6(v28, v29, @"restoresbl1.mbn");
      if (!v28)
      {
        goto LABEL_48;
      }

      v32 = @"Info.plist";
      v34 = AMAuthInstallBasebandGetRestoreSbl1Version;
    }

    else
    {
      v34 = AMAuthInstallMonetMeasureRestoreSbl1;
    }

    v35 = OUTLINED_FUNCTION_2_5(v28, v29, v32, v34);
    if (!v35 || !OUTLINED_FUNCTION_1_6(v35, v36, @"rpm.mbn"))
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_4_3();
    v40 = v24 || v39 == 9781473;
    v41 = @"sbl1.mbn";
    if (v40 || v39 == 520417)
    {
      v37 = OUTLINED_FUNCTION_1_6(v37, v38, @"sbl1.mbn");
      if (!v37)
      {
        goto LABEL_48;
      }

      v41 = @"Info.plist";
      v43 = AMAuthInstallBasebandGetSbl1Version;
    }

    else
    {
      v43 = AMAuthInstallMonetMeasureSbl1;
    }

    v44 = OUTLINED_FUNCTION_2_5(v37, v38, v41, v43);
    if (v44)
    {
      v46 = OUTLINED_FUNCTION_1_6(v44, v45, @"tz.mbn");
      if (v46)
      {
        v48 = *(*(a1 + 48) + 4);
        v49 = AMAuthInstallMonetMeasureWdt;
        if (v48 != 8343777)
        {
          if (v48 != 9572577)
          {
LABEL_46:
            OUTLINED_FUNCTION_1_6(v46, v47, @"bbcfg.mbn");
            v4 = 0;
            goto LABEL_47;
          }

          v49 = AMAuthInstallMonetMeasureWdtElf;
        }

        v46 = AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, a1, @"wdt.mbn", v49, v3, a3);
        if (v46)
        {
          goto LABEL_46;
        }
      }
    }

LABEL_48:
    v4 = 15;
  }

LABEL_47:
  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV20StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v12 = OUTLINED_FUNCTION_2(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = OUTLINED_FUNCTION_1_7(v12, @"aop.mbn");
      v14 = OUTLINED_FUNCTION_1_7(v13, @"apdp.mbn");
      v15 = OUTLINED_FUNCTION_1_7(v14, @"apps.mbn");
      v16 = OUTLINED_FUNCTION_1_7(v15, @"bbcfg.mbn");
      v17 = OUTLINED_FUNCTION_1_7(v16, @"devcfg.mbn");
      v18 = OUTLINED_FUNCTION_1_7(v17, @"hyp.mbn");
      v19 = OUTLINED_FUNCTION_1_7(v18, @"qdsp6sw.mbn");
      OUTLINED_FUNCTION_1_7(v19, @"sec.elf");
      OUTLINED_FUNCTION_2(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      OUTLINED_FUNCTION_2(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v20 = OUTLINED_FUNCTION_2(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v21 = OUTLINED_FUNCTION_1_7(v20, @"multi_image_qti.mbn");
      OUTLINED_FUNCTION_1_7(v21, @"tz.mbn");
      OUTLINED_FUNCTION_2(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV20StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v23);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandMAV20MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v12 = OUTLINED_FUNCTION_1_6(v5, v6, @"acdb.mbn");
      if (!v12)
      {
        AMAuthInstallLog(4, "AMAuthInstallBasebandMAV20MeasureFirmware", "missing acdb or failed to measure image", v14, v15, v16, v17, v18, v30);
      }

      v19 = OUTLINED_FUNCTION_1_6(v12, v13, @"restoresbl1.mbn");
      if (v19 && (v21 = OUTLINED_FUNCTION_1_6(v19, v20, @"Info.plist"), v21) && (v23 = OUTLINED_FUNCTION_1_6(v21, v22, @"sbl1.mbn"), v23) && (v25 = OUTLINED_FUNCTION_1_6(v23, v24, @"multi_image.mbn"), v25) && (v27 = OUTLINED_FUNCTION_1_6(v25, v26, @"Info.plist"), v27))
      {
        OUTLINED_FUNCTION_1_6(v27, v28, @"bbcfg.mbn");
        v4 = 0;
      }

      else
      {
        v4 = 15;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV20MeasureFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v30);
      v4 = 4;
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV21StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v12 = OUTLINED_FUNCTION_2(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = OUTLINED_FUNCTION_1_7(v12, @"aop.mbn");
      v14 = OUTLINED_FUNCTION_1_7(v13, @"apdp.mbn");
      v15 = OUTLINED_FUNCTION_1_7(v14, @"apps.mbn");
      v16 = OUTLINED_FUNCTION_1_7(v15, @"bbcfg.mbn");
      v17 = OUTLINED_FUNCTION_1_7(v16, @"devcfg.mbn");
      v18 = OUTLINED_FUNCTION_1_7(v17, @"hyp.mbn");
      v19 = OUTLINED_FUNCTION_1_7(v18, @"qdsp6sw.mbn");
      OUTLINED_FUNCTION_1_7(v19, @"sec.elf");
      OUTLINED_FUNCTION_2(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      OUTLINED_FUNCTION_2(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v20 = OUTLINED_FUNCTION_2(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v21 = OUTLINED_FUNCTION_1_7(v20, @"multi_image_qti.mbn");
      OUTLINED_FUNCTION_1_7(v21, @"tz.mbn");
      v22 = OUTLINED_FUNCTION_2(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      OUTLINED_FUNCTION_1_7(v22, @"xbl_cfg.elf");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV21StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v24);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN41StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      OUTLINED_FUNCTION_2(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v12 = OUTLINED_FUNCTION_2(a1, @"sbl2.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = OUTLINED_FUNCTION_1_7(v12, @"rpm.mbn");
      v14 = OUTLINED_FUNCTION_1_7(v13, @"apps.mbn");
      v15 = OUTLINED_FUNCTION_1_7(v14, @"dsp1.mbn");
      v16 = OUTLINED_FUNCTION_1_7(v15, @"dsp2.mbn");
      OUTLINED_FUNCTION_1_7(v16, @"dsp3.mbn");
      OUTLINED_FUNCTION_2(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      OUTLINED_FUNCTION_2(a1, @"Options.plist", AMAuthInstallBasebandStitchCopyFile);
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN41StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v18);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN41MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v12 = OUTLINED_FUNCTION_1_6(v5, v6, @"sbl1.mbn");
      if (v12 && (v14 = OUTLINED_FUNCTION_1_6(v12, v13, @"sbl2.mbn"), v14) && (v16 = OUTLINED_FUNCTION_1_6(v14, v15, @"rpm.mbn"), v16) && (v18 = OUTLINED_FUNCTION_1_6(v16, v17, @"apps.mbn"), v18) && (v20 = OUTLINED_FUNCTION_1_6(v18, v19, @"dsp1.mbn"), v20) && (v22 = OUTLINED_FUNCTION_1_6(v20, v21, @"dsp2.mbn"), v22))
      {
        v24 = OUTLINED_FUNCTION_1_6(v22, v23, @"dsp3.mbn");
        v4 = 15;
        if (v24)
        {
          if (OUTLINED_FUNCTION_1_6(v24, v25, @"restoresbl1.mbn"))
          {
            v4 = 0;
          }

          else
          {
            v4 = 15;
          }
        }
      }

      else
      {
        v4 = 15;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN41MeasureFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v27);
      v4 = 4;
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandN92StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, __CFDictionary *a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v9 = BbfwReaderOpen(cf);
    v4 = v9;
    if (v9)
    {
      v15 = OUTLINED_FUNCTION_0_0(v9, @"ENPRG.mbn");
      OUTLINED_FUNCTION_0_0(v15, @"dbl.mbn");
      AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v16 = AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v17 = OUTLINED_FUNCTION_0_0(v16, @"partition.mbn");
      OUTLINED_FUNCTION_0_0(v17, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN92StitchFirmware", "failed to open bbfw archive for reading", v10, v11, v12, v13, v14, v19);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN92MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v12 = OUTLINED_FUNCTION_1_6(v5, v6, @"ENPRG.mbn");
      if (v12)
      {
        v14 = OUTLINED_FUNCTION_1_6(v12, v13, @"dbl.mbn");
        if (v14)
        {
          v16 = OUTLINED_FUNCTION_1_6(v14, v15, @"osbl.mbn");
          if (v16)
          {
            v18 = OUTLINED_FUNCTION_1_6(v16, v17, @"amss.mbn");
            if (v18)
            {
              if (OUTLINED_FUNCTION_1_6(v18, v19, @"partition.mbn"))
              {
                v4 = 0;
                goto LABEL_11;
              }

              v4 = 15;
              v21 = "failed to measure: partition.mbn";
            }

            else
            {
              v4 = 15;
              v21 = "failed to measure: amss.mbn";
            }
          }

          else
          {
            v4 = 15;
            v21 = "failed to measure: osbl.mbn";
          }
        }

        else
        {
          v4 = 15;
          v21 = "failed to measure: dbl.mbn";
        }
      }

      else
      {
        v4 = 15;
        v21 = "failed to measure: ENPRG.mbn";
      }
    }

    else
    {
      v4 = 4;
      v21 = "failed to open bbfw archive for reading";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandN92MeasureFirmware", v21, v7, v8, v9, v10, v11, v22);
  }

LABEL_11:
  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandN92LocalProvisionDevice(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 272);
  v3 = *(a1 + 280);
  v4 = *(a1 + 232);
  v5 = *(a1 + 240);
  AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  *(a1 + 256) = 0;

  return AMAuthInstallBasebandRembrandtLocalProvisionDevice();
}

uint64_t AMAuthInstallBasebandN94StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, __CFDictionary *a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v9 = BbfwReaderOpen(cf);
    v4 = v9;
    if (v9)
    {
      v15 = OUTLINED_FUNCTION_0_0(v9, @"dbl.mbn");
      OUTLINED_FUNCTION_0_0(v15, @"restoredbl.mbn");
      AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"osbl.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      v16 = AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, @"amss.mbn", AMAuthInstallMonetStitchCopyIfPersonalized, v4, a3, a4);
      OUTLINED_FUNCTION_0_0(v16, @"Options.plist");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandN94StitchFirmware", "failed to open bbfw archive for reading", v10, v11, v12, v13, v14, v18);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandN94MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v5 = BbfwReaderOpen(cf);
    v3 = v5;
    if (v5)
    {
      v12 = OUTLINED_FUNCTION_0_2(v5, v6, @"dbl.mbn");
      if (v12)
      {
        v14 = OUTLINED_FUNCTION_0_2(v12, v13, @"restoredbl.mbn");
        if (v14)
        {
          v16 = OUTLINED_FUNCTION_0_2(v14, v15, @"osbl.mbn");
          if (v16)
          {
            if (OUTLINED_FUNCTION_0_2(v16, v17, @"amss.mbn"))
            {
              v4 = 0;
              goto LABEL_10;
            }

            v4 = 15;
            v19 = "failed to measure: amss.mbn";
          }

          else
          {
            v4 = 15;
            v19 = "failed to measure: osbl.mbn";
          }
        }

        else
        {
          v4 = 15;
          v19 = "failed to measure: restoredbl.mbn";
        }
      }

      else
      {
        v4 = 15;
        v19 = "failed to measure: dbl.mbn";
      }
    }

    else
    {
      v4 = 4;
      v19 = "failed to open bbfw archive for reading";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandN94MeasureFirmware", v19, v7, v8, v9, v10, v11, v20);
  }

LABEL_10:
  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallUpdaterCryptex1LocalPolicySetInfo(const void **a1, const __CFURL *a2, void *a3, uint64_t a4, const void *a5, const void *a6, const void *a7, const void *a8, const __CFUUID *a9, uint64_t a10)
{
  v15 = AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo(a1, a6, a7, a8, a9);
  if (v15)
  {
    v16 = AMAuthInstallUpdaterSetInfo(a1, @"Cryptex1LocalPolicy", v15, a2, a3, a4, a5, 0, 0, a10);
  }

  else
  {
    v16 = 1;
  }

  AMSupportSafeRelease();
  return v16;
}

uint64_t AMAuthInstallUpdaterCryptex1LocalPolicyCopyTicket(const void *a1, const __CFURL *a2)
{
  v2 = AMAuthInstallUpdaterCopyResponse(a1, @"Cryptex1LocalPolicy", a2);
  if (v2)
  {
    CFDictionaryGetValue(v2, @"ApImg4Ticket");
    v3 = AMSupportSafeRetain();
    if (!v3)
    {
      AMSupportCreateErrorInternal();
    }
  }

  else
  {
    v3 = 0;
  }

  AMSupportSafeRelease();
  return v3;
}

uint64_t AMAuthInstallUpdaterCryptex1LocalPolicyStitchTicketData(const void *a1, const void *a2, CFTypeRef *a3)
{
  v3 = 1;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v8 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"ApImg4Ticket", a2);
      v3 = AMAuthInstallLocalPolicyStitchTicketData(a1, v8, a3);
    }

    else
    {
      v3 = 2;
    }
  }

  AMSupportSafeRelease();
  return v3;
}

uint64_t AMAuthInstallBasebandRembrandtStitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v7 = BbfwReaderOpen(cf);
    v4 = v7;
    if (v7)
    {
      v5 = 0;
      v15 = *(a1 + 48);
      switch(*(v15 + 4))
      {
        case '^':
          v16 = OUTLINED_FUNCTION_2_6(v7, @"psi_ram.bin");
          OUTLINED_FUNCTION_9_2(v16, @"restorepsi.bin");
          OUTLINED_FUNCTION_0_3();
          v19 = OUTLINED_FUNCTION_2(a1, v17, v18);
          v20 = OUTLINED_FUNCTION_1_7(v19, @"SYS_SW.elf");
          v21 = OUTLINED_FUNCTION_1_7(v20, @"TDSFW.elf");
          v22 = OUTLINED_FUNCTION_1_7(v21, @"LTEFW.elf");
          v23 = OUTLINED_FUNCTION_1_7(v22, @"bbcfg.bin");
          v24 = OUTLINED_FUNCTION_1_7(v23, @"3GFW.elf");
          v25 = OUTLINED_FUNCTION_1_7(v24, @"2GFW.elf");
          v26 = OUTLINED_FUNCTION_1_7(v25, @"RFFW.elf");
          v27 = OUTLINED_FUNCTION_1_7(v26, @"AudioFW.elf");
          v28 = OUTLINED_FUNCTION_1_7(v27, @"Debug_info.elf");
          v29 = OUTLINED_FUNCTION_1_7(v28, @"RPCU.elf");
          v30 = OUTLINED_FUNCTION_1_7(v29, @"DPC.elf");
          v31 = OUTLINED_FUNCTION_1_7(v30, @"CDMA2KFW.elf");
          v32 = @"custpack.elf";
          goto LABEL_15;
          v44 = OUTLINED_FUNCTION_2_6(v7, @"psi_ram.bin");
          OUTLINED_FUNCTION_9_2(v44, @"restorepsi.bin");
          OUTLINED_FUNCTION_0_3();
          v47 = OUTLINED_FUNCTION_2(a1, v45, v46);
          v48 = OUTLINED_FUNCTION_1_7(v47, @"SYS_SW.elf");
          v49 = OUTLINED_FUNCTION_1_7(v48, @"TDSFW.elf");
          v31 = OUTLINED_FUNCTION_1_7(v49, @"LTEFW.elf");
          v32 = @"bbcfg.bin";
          goto LABEL_15;
        case 'e':
          v33 = OUTLINED_FUNCTION_2_6(v7, @"psi_ram.bin");
          OUTLINED_FUNCTION_9_2(v33, @"restorepsi.bin");
          OUTLINED_FUNCTION_0_3();
          v36 = OUTLINED_FUNCTION_2(a1, v34, v35);
          v37 = OUTLINED_FUNCTION_1_7(v36, @"SYS_SW.elf");
          v38 = OUTLINED_FUNCTION_1_7(v37, @"TDSFW.elf");
          v39 = OUTLINED_FUNCTION_1_7(v38, @"LTEFW.elf");
          v40 = OUTLINED_FUNCTION_1_7(v39, @"bbcfg.bin");
          v41 = OUTLINED_FUNCTION_1_7(v40, @"3GFW.elf");
          v42 = OUTLINED_FUNCTION_1_7(v41, @"2GFW.elf");
          v43 = OUTLINED_FUNCTION_1_7(v42, @"RFFW.elf");
          v31 = OUTLINED_FUNCTION_1_7(v43, @"AudioFW.elf");
          v32 = @"Debug_info.elf";
          goto LABEL_15;
        case 'g':
          v50 = OUTLINED_FUNCTION_2_6(v7, @"psi_ram.bin");
          OUTLINED_FUNCTION_9_2(v50, @"restorepsi.bin");
          OUTLINED_FUNCTION_0_3();
          v53 = OUTLINED_FUNCTION_2(a1, v51, v52);
          v54 = OUTLINED_FUNCTION_1_7(v53, @"SYS_SW.elf");
          v55 = OUTLINED_FUNCTION_1_7(v54, @"LTEFW.elf");
          v56 = OUTLINED_FUNCTION_1_7(v55, @"bbcfg.bin");
          v57 = OUTLINED_FUNCTION_1_7(v56, @"3GFW.elf");
          v58 = OUTLINED_FUNCTION_1_7(v57, @"RFFW.elf");
          v59 = OUTLINED_FUNCTION_1_7(v58, @"AudioFW.elf");
          v60 = OUTLINED_FUNCTION_1_7(v59, @"Debug_info.elf");
          v31 = OUTLINED_FUNCTION_1_7(v60, @"GNSS_FW.elf");
          v32 = @"irx_coefficient.elf";
          goto LABEL_15;
        case 'h':
          IsICE19BBGoldCertIDECDSA = AMAuthInstallIsICE19BBGoldCertIDECDSA(*(v15 + 8), v8, v9, v10, v11, v12, v13, v14);
          if (IsICE19BBGoldCertIDECDSA)
          {
            v62 = OUTLINED_FUNCTION_2_6(IsICE19BBGoldCertIDECDSA, @"psi_ram.bin");
            v63 = @"restorepsi.bin";
            v64 = AMAuthInstallRembrandtCreateStitchedRestorePSI;
          }

          else
          {
            v62 = OUTLINED_FUNCTION_10_1(IsICE19BBGoldCertIDECDSA, @"psi_ram2.bin", AMAuthInstallRembrandtCreateStitchedPSI2);
            v63 = @"restorepsi2.bin";
            v64 = AMAuthInstallRembrandtCreateStitchedRestorePSI2;
          }

          OUTLINED_FUNCTION_10_1(v62, v63, v64);
          OUTLINED_FUNCTION_0_3();
          v67 = OUTLINED_FUNCTION_2(a1, v65, v66);
          v68 = OUTLINED_FUNCTION_1_7(v67, @"SYS_SW.elf");
          v69 = OUTLINED_FUNCTION_1_7(v68, @"bbcfg.bin");
          v70 = OUTLINED_FUNCTION_1_7(v69, @"RFFW.elf");
          v71 = OUTLINED_FUNCTION_1_7(v70, @"custpack.elf");
          v72 = OUTLINED_FUNCTION_1_7(v71, @"TPCU.elf");
          v73 = OUTLINED_FUNCTION_1_7(v72, @"upc.elf");
          v31 = OUTLINED_FUNCTION_1_7(v73, @"legacy_rat_fw.elf");
          v32 = @"ant_cfg_data.elf";
LABEL_15:
          OUTLINED_FUNCTION_1_7(v31, v32);
          v5 = 0;
          break;
        default:
          break;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtStitchFirmware", "failed to open bbfw archive for reading", v10, v11, v12, v13, v14, v75);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallBasebandRembrandtMeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v6 = BbfwReaderOpen(cf);
    v3 = v6;
    if (v6)
    {
      v4 = 0;
      switch(*(*(a1 + 48) + 4))
      {
        case '^':
          v13 = OUTLINED_FUNCTION_5_4(v6, v7, @"psi_ram.bin");
          if (!v13)
          {
            goto LABEL_72;
          }

          v15 = OUTLINED_FUNCTION_4_4(v13, v14, @"restorepsi.bin");
          if (!v15)
          {
            goto LABEL_72;
          }

          v17 = OUTLINED_FUNCTION_3_4(v15, v16, @"ebl.bin");
          if (!v17)
          {
            goto LABEL_72;
          }

          v19 = OUTLINED_FUNCTION_1_8(v17, v18, @"SYS_SW.elf");
          if (!v19)
          {
            goto LABEL_74;
          }

          v21 = OUTLINED_FUNCTION_1_6(v19, v20, @"TDSFW.elf");
          if (!v21)
          {
            goto LABEL_78;
          }

          v23 = OUTLINED_FUNCTION_1_6(v21, v22, @"LTEFW.elf");
          if (!v23)
          {
            goto LABEL_76;
          }

          v25 = OUTLINED_FUNCTION_6_4(v23, v24, @"bbcfg.bin");
          if (!v25)
          {
            goto LABEL_75;
          }

          v27 = OUTLINED_FUNCTION_1_6(v25, v26, @"3GFW.elf");
          if (!v27)
          {
            goto LABEL_79;
          }

          v29 = OUTLINED_FUNCTION_1_6(v27, v28, @"2GFW.elf");
          if (!v29)
          {
            goto LABEL_82;
          }

          v31 = OUTLINED_FUNCTION_1_6(v29, v30, @"RFFW.elf");
          if (!v31)
          {
            goto LABEL_77;
          }

          v33 = OUTLINED_FUNCTION_1_6(v31, v32, @"AudioFW.elf");
          if (!v33)
          {
            goto LABEL_80;
          }

          v35 = OUTLINED_FUNCTION_1_6(v33, v34, @"Debug_info.elf");
          if (!v35)
          {
            goto LABEL_81;
          }

          v37 = OUTLINED_FUNCTION_1_6(v35, v36, @"RPCU.elf");
          if (!v37)
          {
            v4 = 15;
            v99 = "failed to measure: RPCU.elf";
            break;
          }

          v39 = OUTLINED_FUNCTION_1_6(v37, v38, @"DPC.elf");
          if (!v39)
          {
            v4 = 15;
            v99 = "failed to measure: DPC.elf";
            break;
          }

          v41 = OUTLINED_FUNCTION_1_6(v39, v40, @"CDMA2KFW.elf");
          if (!v41)
          {
            v4 = 15;
            v99 = "failed to measure: CDMA2KFW.elf";
            break;
          }

          if (OUTLINED_FUNCTION_1_6(v41, v42, @"custpack.elf"))
          {
            goto LABEL_70;
          }

          goto LABEL_83;
          v65 = OUTLINED_FUNCTION_5_4(v6, v7, @"psi_ram.bin");
          if (!v65)
          {
            goto LABEL_72;
          }

          v67 = OUTLINED_FUNCTION_4_4(v65, v66, @"restorepsi.bin");
          if (!v67)
          {
            goto LABEL_72;
          }

          v69 = OUTLINED_FUNCTION_3_4(v67, v68, @"ebl.bin");
          if (!v69)
          {
            goto LABEL_72;
          }

          v71 = OUTLINED_FUNCTION_1_8(v69, v70, @"SYS_SW.elf");
          if (!v71)
          {
            goto LABEL_74;
          }

          v73 = OUTLINED_FUNCTION_1_6(v71, v72, @"TDSFW.elf");
          if (!v73)
          {
            goto LABEL_78;
          }

          v75 = OUTLINED_FUNCTION_1_6(v73, v74, @"LTEFW.elf");
          if (!v75)
          {
            goto LABEL_76;
          }

          if (!OUTLINED_FUNCTION_6_4(v75, v76, @"bbcfg.bin"))
          {
            goto LABEL_75;
          }

          goto LABEL_70;
        case 'e':
          v43 = OUTLINED_FUNCTION_5_4(v6, v7, @"psi_ram.bin");
          if (!v43)
          {
            goto LABEL_72;
          }

          v45 = OUTLINED_FUNCTION_4_4(v43, v44, @"restorepsi.bin");
          if (!v45)
          {
            goto LABEL_72;
          }

          v47 = OUTLINED_FUNCTION_3_4(v45, v46, @"ebl.bin");
          if (!v47)
          {
            goto LABEL_72;
          }

          v49 = OUTLINED_FUNCTION_1_8(v47, v48, @"SYS_SW.elf");
          if (!v49)
          {
            goto LABEL_74;
          }

          v51 = OUTLINED_FUNCTION_1_6(v49, v50, @"TDSFW.elf");
          if (v51)
          {
            v53 = OUTLINED_FUNCTION_1_6(v51, v52, @"LTEFW.elf");
            if (v53)
            {
              v55 = OUTLINED_FUNCTION_6_4(v53, v54, @"bbcfg.bin");
              if (!v55)
              {
                goto LABEL_75;
              }

              v57 = OUTLINED_FUNCTION_1_6(v55, v56, @"3GFW.elf");
              if (v57)
              {
                v59 = OUTLINED_FUNCTION_1_6(v57, v58, @"2GFW.elf");
                if (v59)
                {
                  v61 = OUTLINED_FUNCTION_1_6(v59, v60, @"RFFW.elf");
                  if (!v61)
                  {
                    goto LABEL_77;
                  }

                  v63 = OUTLINED_FUNCTION_1_6(v61, v62, @"AudioFW.elf");
                  if (v63)
                  {
                    if (OUTLINED_FUNCTION_1_6(v63, v64, @"Debug_info.elf"))
                    {
                      goto LABEL_70;
                    }

LABEL_81:
                    v4 = 15;
                    v99 = "failed to measure: Debug_info.elf";
                  }

                  else
                  {
LABEL_80:
                    v4 = 15;
                    v99 = "failed to measure: AudioFW.elf";
                  }
                }

                else
                {
LABEL_82:
                  v4 = 15;
                  v99 = "failed to measure: 2GFW.elf";
                }
              }

              else
              {
LABEL_79:
                v4 = 15;
                v99 = "failed to measure: 3GFW.elf";
              }
            }

            else
            {
LABEL_76:
              v4 = 15;
              v99 = "failed to measure: LTE.elf";
            }
          }

          else
          {
LABEL_78:
            v4 = 15;
            v99 = "failed to measure: TDS.elf";
          }

          break;
        case 'g':
          v77 = OUTLINED_FUNCTION_5_4(v6, v7, @"psi_ram.bin");
          if (!v77)
          {
            goto LABEL_72;
          }

          v79 = OUTLINED_FUNCTION_4_4(v77, v78, @"restorepsi.bin");
          if (!v79)
          {
            goto LABEL_72;
          }

          v81 = OUTLINED_FUNCTION_3_4(v79, v80, @"ebl.bin");
          if (!v81)
          {
            goto LABEL_72;
          }

          v83 = OUTLINED_FUNCTION_1_8(v81, v82, @"SYS_SW.elf");
          if (!v83)
          {
            goto LABEL_74;
          }

          v85 = OUTLINED_FUNCTION_1_6(v83, v84, @"LTEFW.elf");
          if (!v85)
          {
            goto LABEL_76;
          }

          v87 = OUTLINED_FUNCTION_6_4(v85, v86, @"bbcfg.bin");
          if (!v87)
          {
            goto LABEL_75;
          }

          v89 = OUTLINED_FUNCTION_1_6(v87, v88, @"3GFW.elf");
          if (!v89)
          {
            goto LABEL_79;
          }

          v91 = OUTLINED_FUNCTION_1_6(v89, v90, @"RFFW.elf");
          if (!v91)
          {
            goto LABEL_77;
          }

          v93 = OUTLINED_FUNCTION_1_6(v91, v92, @"AudioFW.elf");
          if (!v93)
          {
            goto LABEL_80;
          }

          v95 = OUTLINED_FUNCTION_1_6(v93, v94, @"Debug_info.elf");
          if (!v95)
          {
            goto LABEL_81;
          }

          v97 = OUTLINED_FUNCTION_1_6(v95, v96, @"GNSS_FW.elf");
          if (v97)
          {
            if (OUTLINED_FUNCTION_1_6(v97, v98, @"irx_coefficient.elf"))
            {
              goto LABEL_70;
            }

            v4 = 15;
            v99 = "failed to measure: irx_coefficient.elf";
          }

          else
          {
            v4 = 15;
            v99 = "failed to measure: GNSS_FW.elf";
          }

          break;
        case 'h':
          v100 = OUTLINED_FUNCTION_5_4(v6, v7, @"psi_ram.bin");
          if (!v100 || (v102 = OUTLINED_FUNCTION_4_4(v100, v101, @"restorepsi.bin"), !v102) || (v104 = OUTLINED_FUNCTION_12_1(v102, v103, @"psi_ram2.bin"), !v104) || (v106 = OUTLINED_FUNCTION_12_1(v104, v105, @"restorepsi2.bin"), !v106) || (v108 = OUTLINED_FUNCTION_3_4(v106, v107, @"ebl.bin"), !v108))
          {
LABEL_72:
            v4 = 15;
            goto LABEL_71;
          }

          v110 = OUTLINED_FUNCTION_1_8(v108, v109, @"SYS_SW.elf");
          if (v110)
          {
            v112 = OUTLINED_FUNCTION_6_4(v110, v111, @"bbcfg.bin");
            if (v112)
            {
              v114 = OUTLINED_FUNCTION_1_6(v112, v113, @"RFFW.elf");
              if (v114)
              {
                v116 = OUTLINED_FUNCTION_1_6(v114, v115, @"custpack.elf");
                if (v116)
                {
                  v118 = OUTLINED_FUNCTION_1_6(v116, v117, @"ant_cfg_data.elf");
                  if (v118)
                  {
                    v120 = OUTLINED_FUNCTION_1_6(v118, v119, @"TPCU.elf");
                    if (v120)
                    {
                      v122 = OUTLINED_FUNCTION_1_6(v120, v121, @"upc.elf");
                      if (v122)
                      {
                        if (OUTLINED_FUNCTION_1_6(v122, v123, @"legacy_rat_fw.elf"))
                        {
LABEL_70:
                          v4 = 0;
                          goto LABEL_71;
                        }

                        v4 = 15;
                        v99 = "failed to measure: legacy_rat_fw.elf";
                      }

                      else
                      {
                        v4 = 15;
                        v99 = "failed to measure: upc.elf";
                      }
                    }

                    else
                    {
                      v4 = 15;
                      v99 = "failed to measure: TPCU.elf";
                    }
                  }

                  else
                  {
                    v4 = 15;
                    v99 = "failed to measure: ant_cfg_data.elf";
                  }
                }

                else
                {
LABEL_83:
                  v4 = 15;
                  v99 = "failed to measure: custpack.elf";
                }
              }

              else
              {
LABEL_77:
                v4 = 15;
                v99 = "failed to measure: RFFW.elf";
              }
            }

            else
            {
LABEL_75:
              v4 = 15;
              v99 = "failed to measure: bbcfg.bin";
            }
          }

          else
          {
LABEL_74:
            v4 = 15;
            v99 = "failed to measure: SYS_SW.elf";
          }

          break;
        default:
          goto LABEL_71;
      }
    }

    else
    {
      v4 = 4;
      v99 = "failed to open bbfw archive for reading";
    }

    AMAuthInstallLog(3, "AMAuthInstallBasebandRembrandtMeasureFirmware", v99, v8, v9, v10, v11, v12, v125);
  }

LABEL_71:
  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandVinylStitchFirmware(void *a1, const void *a2, const void *a3, const __CFDictionary *a4, __CFDictionary *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = *MEMORY[0x29EDCA608];
  if (!a1 || !a1[6])
  {
    v13 = 1;
    goto LABEL_25;
  }

  MutableCopy = 0;
  v39[1] = a5;
  v40 = 0;
  v39[0] = a1;
  v11 = a2 != 0;
  if (a3)
  {
    v11 = 0;
  }

  LOBYTE(v40) = v11;
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = a2;
  }

  v13 = 1;
  if (!a5 || !a4)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_24;
  }

  v15 = 0;
  v16 = 0;
  if (v12)
  {
    v17 = BbfwReaderStart(v12, _VinylBBFWReaderCB, v39);
    if (v17)
    {
      v13 = v17;
      AMAuthInstallLog(3, "_VinylStitchInternal", "Failed to copy unperso'd Vinyl files", v18, v19, v20, v21, v22, v37);
    }

    else
    {
      if (!*(a1[6] + 160))
      {
        MutableCopy = 0;
        v15 = 0;
        v16 = 0;
        goto LABEL_28;
      }

      v38 = 0;
      IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(a1, &v38);
      if (!IsLegacyChipId)
      {
        if (v38)
        {
          MutableCopy = 0;
          v15 = 0;
          v16 = @"vinyl";
          goto LABEL_28;
        }

        v24 = *(a1[6] + 152);
        if (v24)
        {
          v25 = *MEMORY[0x29EDB8ED8];
          MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v24);
          if (MutableCopy)
          {
            v26 = *(a1[6] + 168);
            if (!v26 || AMAuthInstallVinylCheckVinylFwLdrVerLegacy(v26))
            {
              v16 = _CopyHexStringFromData(v25, MutableCopy);
              v15 = 0;
              if (v16)
              {
                goto LABEL_28;
              }

              goto LABEL_23;
            }

            BytePtr = CFDataGetBytePtr(*(a1[6] + 168));
            Length = CFDataGetLength(*(a1[6] + 168));
            CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
            CFDataGetBytePtr(MutableCopy);
            CFDataGetLength(MutableCopy);
            if (!AMSupportDigestSha256())
            {
              v15 = CFDataCreate(v25, bytes, 32);
              v16 = _CopyHexStringFromData(v25, v15);
              if (!v16)
              {
LABEL_23:
                v13 = 2;
                goto LABEL_24;
              }

LABEL_28:
              v36 = _VinylPopulateDstEntry(v16, @"/update/main/ticket.der", a4, @"EuiccMainTicket", a5);
              if (!v36)
              {
                v36 = _VinylPopulateDstEntry(v16, @"/update/gold/ticket.der", a4, @"EuiccGoldTicket", a5);
              }

              v13 = v36;
              goto LABEL_24;
            }

            AMAuthInstallLog(3, "_VinylStitchInternal", "failed to compute digest", v29, v30, v31, v32, v33, v37);
            v13 = 5;
          }

          else
          {
            v13 = 2;
          }
        }

        else
        {
          MutableCopy = 0;
          v13 = 8;
        }

LABEL_38:
        v15 = 0;
        v16 = 0;
        goto LABEL_24;
      }

      v13 = IsLegacyChipId;
    }

    MutableCopy = 0;
    goto LABEL_38;
  }

LABEL_24:
  AMAuthInstallLog(6, "_VinylStitchInternal", "%d", a4, a5, a6, a7, a8, v13);
  SafeRelease(MutableCopy);
  SafeRelease(v16);
  SafeRelease(v15);
LABEL_25:
  v34 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t AMAuthInstallBasebandVinylCreateMeasurements(uint64_t a1, CFTypeRef cf, __CFDictionary *a3)
{
  v18[2] = *MEMORY[0x29EDCA608];
  value = 0;
  v17[0] = @"EUICCSignedProfileMain";
  v17[1] = @"vinyl/update/main/signedprofile.der";
  v18[0] = @"EUICCSignedProfileGold";
  v18[1] = @"vinyl/update/gold/signedprofile.der";
  if (a1)
  {
    v4 = 0;
    v5 = 1;
    if (a3 && cf && *(a1 + 48))
    {
      v4 = BbfwReaderOpen(cf);
      if (v4)
      {
        v11 = v17;
        v12 = 1;
        do
        {
          v13 = v12;
          if (!BbfwReaderFindAndCopyFileData(v4, v11[1], &value))
          {
            CFDictionarySetValue(a3, *v11, value);
            SafeRelease(value);
            value = 0;
          }

          v12 = 0;
          v11 = v18;
        }

        while ((v13 & 1) != 0);
        v5 = 0;
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandVinylCreateMeasurements", "failed to open bbfw archive for reading", v6, v7, v8, v9, v10, value);
        v5 = 4;
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  BbfwReaderClose(v4);
  SafeRelease(value);
  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t AMAuthInstallBasebandVinylAddMeasurementTags(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 48))
  {
    return 1;
  }

  Value = CFDictionaryGetValue(theDict, @"BasebandFirmware");
  if (Value)
  {
    TypeID = CFDictionaryGetTypeID();
    LODWORD(Value) = TypeID == CFGetTypeID(Value) && CFDictionaryContainsKey(Value, @"EUICCSignedProfileMain") != 0;
  }

  AMAuthInstallLog(6, "AMAuthInstallBasebandVinylAddMeasurementTags", "Vinyl Tags %d Measurements %d", v4, v5, v6, v7, v8, *(*(a1 + 48) + 120) != 0);
  v11 = *(a1 + 48);
  v12 = v11[15];
  if (!v12 || !v11[16])
  {
    return 8;
  }

  result = 8;
  if (Value && v11[19])
  {
    CFDictionarySetValue(theDict, @"EUICCCSN", v12);
    v14 = *(a1 + 48);
    v15 = v14[16];
    if (v15)
    {
      CFDictionarySetValue(theDict, @"EUICCMainNonce", v15);
      v14 = *(a1 + 48);
    }

    v16 = v14[17];
    if (v16)
    {
      CFDictionarySetValue(theDict, @"EUICCGoldNonce", v16);
      v14 = *(a1 + 48);
    }

    v17 = v14[18];
    if (v17)
    {
      CFDictionarySetValue(theDict, @"EUICCTicketVersion", v17);
      v14 = *(a1 + 48);
    }

    v18 = v14[19];
    if (v18)
    {
      CFDictionarySetValue(theDict, @"EUICCCertIdentifier", v18);
      v14 = *(a1 + 48);
    }

    v19 = v14[20];
    if (v19)
    {
      CFDictionarySetValue(theDict, @"EUICCChipID", v19);
      v14 = *(a1 + 48);
    }

    v20 = v14[21];
    if (v20)
    {
      CFDictionarySetValue(theDict, @"EUICCFirmwareLoaderVersion", v20);
    }

    CFDictionarySetValue(theDict, @"@EUICCTicket", *MEMORY[0x29EDB8F00]);
    return 0;
  }

  return result;
}

uint64_t _VinylPopulateDstEntry(const __CFString *a1, const __CFString *a2, CFDictionaryRef theDict, void *key, __CFDictionary *a5)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(Value))
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
      v11 = Mutable;
      if (Mutable)
      {
        CFStringAppend(Mutable, a1);
        CFStringAppend(v11, a2);
        CFDictionarySetValue(a5, v11, Value);
        SafeRetain(Value);
        v12 = 0;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v11 = 0;
      v12 = 17;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  SafeRelease(v11);
  SafeRelease(Value);
  return v12;
}

uint64_t AMAuthInstallBundleCopyNextBasebandComponentName(const void *a1, CFTypeRef *a2)
{
  v10 = 0;
  v4 = AMAuthInstallBasebandCopyNextComponentName(a1, &v10);
  if (v4)
  {
    v8 = v4;
    v7 = 0;
  }

  else
  {
    v5 = CFGetAllocator(a1);
    v6 = CFStringCreateWithFormat(v5, 0, @"%s/%@", "amai", v10);
    v7 = v6;
    if (v6)
    {
      v8 = 0;
      *a2 = CFRetain(v6);
    }

    else
    {
      v8 = 2;
    }
  }

  SafeRelease(v10);
  SafeRelease(v7);
  return v8;
}

uint64_t AMAuthInstallBundleCopyBuildIdentityForVariant(void *a1, const void *a2, CFStringRef theString1, void *a4)
{
  v73 = @"ApBoardID";
  v6 = @"ApChipID";
  key = @"ApSecurityDomain";
  if (!a1)
  {
    OUTLINED_FUNCTION_11_1();
    v8 = 1;
    goto LABEL_20;
  }

  v4 = 0;
  v8 = 1;
  if (!a4 || !a2 || (v11 = a1[2]) == 0)
  {
    v5 = 0;
    goto LABEL_20;
  }

  v14 = *(v11 + 8);
  v13 = *(v11 + 12);
  theDict = *(v11 + 16);
  v15 = *(v11 + 160);
  if (v15)
  {
    v16 = *MEMORY[0x29EDB8ED8];
    v68 = v15;
    v17 = OUTLINED_FUNCTION_28();
    v6 = CFStringCreateWithFormat(v17, v18, v19);
    if (v6)
    {
      OUTLINED_FUNCTION_41();
      v69 = v25;
      v26 = OUTLINED_FUNCTION_28();
      v73 = CFStringCreateWithFormat(v26, v27, v28);
      if (v73)
      {
        OUTLINED_FUNCTION_41();
        v67 = v34;
        v35 = OUTLINED_FUNCTION_28();
        key = CFStringCreateWithFormat(v35, v36, v37);
        if (key)
        {
          goto LABEL_9;
        }

        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed secdomKey allocation", v38, v39, v40, v41, v42, v67);
        OUTLINED_FUNCTION_11_1();
        key = 0;
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed boardKey allocation", v29, v30, v31, v32, v33, v69);
        OUTLINED_FUNCTION_11_1();
        v73 = 0;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "failed chipKey allocation", v20, v21, v22, v23, v24, v68);
      OUTLINED_FUNCTION_11_1();
    }

    v8 = 99;
    goto LABEL_20;
  }

LABEL_9:
  IsRecoveryVariant = _AMAuthInstallIsRecoveryVariant(a1, theString1);
  v5 = IsRecoveryVariant;
  v49 = a1[16];
  if (v49 && *(v49 + 32))
  {
    Value = CFBooleanGetValue(IsRecoveryVariant);
    v51 = a1[16];
    if (Value)
    {
      v52 = *(v51 + 40);
      if (!v52)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v52 = *(v51 + 32);
    }

    CFRetain(v52);
    OUTLINED_FUNCTION_11_1();
    v8 = 0;
    *a4 = v65;
    goto LABEL_20;
  }

LABEL_13:
  if (theString1)
  {
    CFBooleanGetValue(v5);
    AMAuthInstallLog(6, "AMAuthInstallBundleCopyBuildIdentityForVariant", "searching for variant %@ (%d recovery)", v53, v54, v55, v56, v57, theString1);
  }

  else
  {
    AMAuthInstallLog(4, "AMAuthInstallBundleCopyBuildIdentityForVariant", "variant not specified, will use first variant found for this device in build manifest", v44, v45, v46, v47, v48, v67);
  }

  v58 = CFGetAllocator(a1);
  v59 = AMAuthInstallBundleCopyPublishedVariantsArray(v58, a2);
  if (v59)
  {
    v8 = v59;
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "AMAuthInstallBundleCopyPublishedVariantsArray failed", v60, v61, v62, v63, v64, v70);
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    AMAuthInstallLog(3, "AMAuthInstallBundleCopyBuildIdentityForVariant", "AMAuthInstallBundleCopyPublishedVariantsArray returned NULL", v60, v61, v62, v63, v64, v70);
    v5 = 0;
    v8 = 7;
  }

LABEL_20:
  SafeRelease(v4);
  SafeRelease(v73);
  SafeRelease(v6);
  SafeRelease(key);
  SafeRelease(v5);
  return v8;
}

uint64_t AMAuthInstallBundleCopyFullPathForBuildIdentityKey(CFDictionaryRef **a1, const void *a2, void *key, const __CFDictionary *a4, CFTypeRef *a5)
{
  RelativePathForEntry = 0;
  v26 = 0;
  v6 = 1;
  if (a1 && a2)
  {
    v10 = key;
    Value = CFDictionaryGetValue(*a1[16], key);
    v26 = Value;
    if (Value)
    {
      RelativePathForEntry = Value;
      CFRetain(Value);
      AMAuthInstallLog(8, "AMAuthInstallBundleCopyFullPathForBuildIdentityKey", "using override: %@ = %@", v13, v14, v15, v16, v17, v10);
    }

    else
    {
      if (!a4)
      {
        RelativePathForEntry = 0;
        goto LABEL_9;
      }

      RelativePathForEntry = _GetRelativePathForEntry(a4);
      if (!RelativePathForEntry)
      {
        AMAuthInstallLog(3, "AMAuthInstallBundleCopyFullPathForBuildIdentityKey", "%@ key not found.", v18, v19, v20, v21, v22, v10);
        goto LABEL_9;
      }

      v23 = CFGetAllocator(a1);
      v24 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v23, a2, RelativePathForEntry, 0, &v26);
      RelativePathForEntry = v26;
      if (v24)
      {
        v6 = v24;
        goto LABEL_9;
      }
    }

    v6 = 0;
    *a5 = CFRetain(RelativePathForEntry);
    RelativePathForEntry = v26;
  }

LABEL_9:
  SafeRelease(RelativePathForEntry);
  return v6;
}

uint64_t _AMAuthInstallBundleInstallPersonalizedBasebandFirmware(CFDictionaryRef **a1, const __CFDictionary *a2, const __CFDictionary *a3, const __CFDictionary *a4, const void *a5, const void *a6, __CFArray *a7, const __CFDictionary *a8)
{
  v67 = 0;
  v68 = 0;
  v66 = 0;
  Value = CFDictionaryGetValue(*a1[16], @"VinylFirmware");
  v65 = Value;
  if (Value)
  {
    CFRetain(Value);
    AMAuthInstallLog(8, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "using vinyl firmware override: %@ = %@", v17, v18, v19, v20, v21, @"VinylFirmware");
  }

  else
  {
    v48 = CFDictionaryGetValue(a4, @"eUICC,Main");
    v49 = CFDictionaryGetValue(a4, @"eUICC,Gold");
    if (v48)
    {
      v50 = v49;
      if (v49)
      {
        RelativePathForEntry = _GetRelativePathForEntry(v48);
        v52 = _GetRelativePathForEntry(v50);
        if (CFStringCompare(RelativePathForEntry, v52, 0))
        {
LABEL_26:
          v38 = 0;
          v46 = 1;
          goto LABEL_12;
        }

        if (RelativePathForEntry && v52)
        {
          v58 = CFGetAllocator(a1);
          v31 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v58, a5, RelativePathForEntry, 0, &v65);
          if (v31)
          {
            goto LABEL_19;
          }
        }

        else
        {
          AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "%@ OR %@ key not found, but that's okay. Moving along...", v53, v54, v55, v56, v57, @"eUICC,Main");
        }
      }
    }
  }

  v22 = CFDictionaryGetValue(*a1[16], @"BasebandFirmware");
  v67 = v22;
  if (v22)
  {
    CFRetain(v22);
    AMAuthInstallLog(8, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "using baseband firmware override: %@ = %@", v59, v60, v61, v62, v63, @"BasebandFirmware");
    a2 = 0;
    goto LABEL_6;
  }

  v23 = _GetRelativePathForEntry(a2);
  if (!v23)
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "%@ key not found.", v24, v25, v26, v27, v28, @"BasebandFirmware");
    goto LABEL_26;
  }

  v29 = v23;
  v30 = CFGetAllocator(a1);
  v31 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v30, a5, v29, 0, &v67);
  if (v31)
  {
LABEL_19:
    v46 = v31;
    v38 = 0;
    goto LABEL_12;
  }

LABEL_6:
  BasebandComponentName = AMAuthInstallBundleCopyNextBasebandComponentName(a1, &v68);
  v38 = v68;
  if (BasebandComponentName)
  {
    goto LABEL_22;
  }

  if (!v68)
  {
    AMAuthInstallLog(4, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "server provided unneeded baseband data; ignoring it", v33, v34, v35, v36, v37, v64);
    v46 = 0;
    goto LABEL_12;
  }

  v39 = CFGetAllocator(a1);
  BasebandComponentName = AMAuthInstallPlatformCopyURLWithAppendedComponent(v39, a6, v38, 0, &v66);
  if (BasebandComponentName)
  {
LABEL_22:
    v46 = BasebandComponentName;
  }

  else
  {
    DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(v66);
    if (DirectoryForURL)
    {
      v46 = DirectoryForURL;
      AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedBasebandFirmware", "failed to create output directory", v41, v42, v43, v44, v45, v64);
    }

    else
    {
      v46 = AMAuthInstallBasebandPersonalizeFirmwareInternal(a1, v67, v65, v66, a2, a3, a8);
      if (!v46)
      {
        CFArrayAppendValue(a7, v38);
      }
    }
  }

LABEL_12:
  SafeRelease(v38);
  SafeRelease(v67);
  SafeRelease(v66);
  SafeRelease(v65);
  return v46;
}

uint64_t AMAuthInstallBundleWriteReceipt(void *a1, const void *a2, const void *a3, const __CFBoolean *a4)
{
  error = 0;
  cf = 0;
  v8 = CFGetAllocator(a1);
  v9 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v8, a2, @"amai/receipt.plist", 0, &cf);
  if (!v9)
  {
    v13 = CFGetAllocator(a1);
    v11 = CFPropertyListCreateData(v13, a3, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (error)
    {
      v12 = CFErrorCopyDescription(error);
      AMAuthInstallLog(3, "AMAuthInstallBundleWriteReceipt", "%@", v14, v15, v16, v17, v18, v12);
    }

    else
    {
      if (v11)
      {
        DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(cf);
        if (DirectoryForURL)
        {
          v10 = DirectoryForURL;
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, DirectoryForURL);
          AMAuthInstallLog(3, "AMAuthInstallBundleWriteReceipt", "failed to create receipt directory: %@", v22, v23, v24, v25, v26, LocalizedStatusString);
          AMAuthInstallLog(8, "AMAuthInstallBundleWriteReceipt", "%@", v27, v28, v29, v30, v31, cf);
        }

        else
        {
          v32 = CFGetAllocator(a1);
          v10 = AMAuthInstallSupportWriteDataToFileURL(v32, v11, cf, 1);
          Value = CFBooleanGetValue(a4);
          v34 = *(a1[16] + 8);
          if (!Value)
          {
            SafeRelease(v34);
            v35 = CFRetain(a3);
            v12 = 0;
            *(a1[16] + 8) = v35;
            goto LABEL_7;
          }

          CFDictionarySetValue(v34, @"RecoveryOS", a3);
        }

        goto LABEL_3;
      }

      v12 = 0;
    }

    v10 = 2;
    goto LABEL_7;
  }

  v10 = v9;
  v11 = 0;
LABEL_3:
  v12 = 0;
LABEL_7:
  SafeRelease(cf);
  SafeRelease(v11);
  SafeRelease(error);
  SafeRelease(v12);
  return v10;
}

uint64_t AMAuthInstallBundlePersonalizePartialWithRecoveryOS(unint64_t a1, const void *a2, int a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v381 = 0;
  v382 = 0;
  v379 = 0;
  v380 = 0;
  v377 = 0;
  v378 = 0;
  v376 = 0;
  v374 = 0;
  value = 0;
  v372 = 0;
  v373 = 0;
  if (!*(a1 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "bundle personalization requires AP parameters (even with AP personalization disabled)", a4, a5, a6, a7, a8, theArray);
    v14 = 0;
    OUTLINED_FUNCTION_7_4();
    v12 = 0;
    MutableCopy = 0;
    v11 = 0;
    v17 = 0;
    v15 = 1;
    goto LABEL_149;
  }

  v14 = 0;
  v15 = 1;
  if (!a2)
  {
    v17 = OUTLINED_FUNCTION_17_0();
    goto LABEL_149;
  }

  v17 = OUTLINED_FUNCTION_17_0();
  if (v18)
  {
    v22 = v20;
    v23 = v19;
    v24 = v18;
    _AMAuthInstallBundlePersonalizeApplyPreferencesOverrides(a1);
    v25 = OUTLINED_FUNCTION_18_0();
    DebugDirectory = _AMAuthInstallBundleCreateDebugDirectory(v25, v26);
    v34 = OUTLINED_FUNCTION_32(DebugDirectory, v28, v29, &v382, v30, v31, v32, v33, theArray, v337, BOOLean, v341, v343, v345, v347, v349, v351, a8, v355, cf, v359, theDict, a5, a4, v367, a2);
    if (v34)
    {
      v15 = v34;
      v14 = 0;
      OUTLINED_FUNCTION_7_4();
      v12 = 0;
      MutableCopy = 0;
    }

    else
    {
      v21 = v382;
      if (!v382)
      {
        v14 = 0;
        v13 = 0;
        v12 = 0;
        MutableCopy = 0;
        goto LABEL_162;
      }

      v35 = CFGetAllocator(a1);
      MutableCopy = CFDictionaryCreateMutableCopy(v35, 0, v382);
      if (!MutableCopy)
      {
        v14 = 0;
        OUTLINED_FUNCTION_7_4();
        v12 = 0;
        goto LABEL_164;
      }

      if (!v364)
      {
        OUTLINED_FUNCTION_11_1();
        if (v22)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }

      v39 = CFGetAllocator(a1);
      v12 = CFURLCreateCopyAppendingPathComponent(v39, v24, @"RecoveryOS", 1u);
      v40 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, v364, v23, &v381);
      if (!v40)
      {
        v21 = v381;
        if (v381)
        {
          v41 = CFGetAllocator(a1);
          v14 = CFDictionaryCreateMutableCopy(v41, 0, v381);
          if (!v14)
          {
            OUTLINED_FUNCTION_7_4();
            goto LABEL_164;
          }

          _AMAuthInstallBundleCreateDebugDirectory(a1, v12);
          if (v22)
          {
LABEL_9:
            CFGetAllocator(a1);
            OUTLINED_FUNCTION_30();
            v17 = CFArrayCreateMutableCopy(v36, v37, v38);
            v13 = v17;
            if (!v17)
            {
              v21 = 0;
LABEL_164:
              v11 = 0;
LABEL_166:
              v15 = 2;
              goto LABEL_149;
            }

            goto LABEL_16;
          }

LABEL_15:
          v13 = 0;
LABEL_16:
          v352 = v23;
          v42 = CFGetAllocator(a1);
          if (a9)
          {
            OUTLINED_FUNCTION_44();
            Mutable = CFArrayCreateMutableCopy(v43, v44, v45);
          }

          else
          {
            Mutable = CFArrayCreateMutable(v42, 0, MEMORY[0x29EDB9000]);
          }

          v11 = Mutable;
          if (!Mutable)
          {
            v17 = OUTLINED_FUNCTION_2_7();
            goto LABEL_166;
          }

          v368 = v13;
          if (!a10 || !v13)
          {
            goto LABEL_25;
          }

          v47 = _AMRAuthInstallBundleModifyFirmwareEntries(a1, MutableCopy, v13, Mutable);
          if (!v47)
          {
            if (!v14)
            {
              v273 = OUTLINED_FUNCTION_18_0();
              IfNecessary = AMAuthInstallBundleCopyReceiptCreateIfNecessary(v273, v274, v275);
              if (!IfNecessary)
              {
                goto LABEL_27;
              }

              goto LABEL_121;
            }

            OUTLINED_FUNCTION_42();
            v47 = _AMRAuthInstallBundleModifyFirmwareEntries(v48, v49, v50, v11);
            if (!v47)
            {
LABEL_25:
              v51 = OUTLINED_FUNCTION_18_0();
              IfNecessary = AMAuthInstallBundleCopyReceiptCreateIfNecessary(v51, v52, v53);
              if (!IfNecessary)
              {
                if (v14)
                {
                  v55 = AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, v12, &value);
                  if (v55)
                  {
                    theArraya = OUTLINED_FUNCTION_19_0(v55);
                    v325 = "failed to generate a recovery OS receipt: %@";
                    goto LABEL_184;
                  }

                  CFDictionarySetValue(v376, @"RecoveryOS", value);
                  SafeRelease(value);
                  HIDWORD(v350) = 1;
LABEL_30:
                  v56 = _AMAuthInstallBundleCopyOverrideBuildIdentity(a1, v13, v370, v24, MutableCopy, v364);
                  if (!v56)
                  {
                    v360 = v14;
                    theDicta = MutableCopy;
                    v356 = v11;
                    cfa = v24;
                    if (!*(a1 + 48))
                    {
                      goto LABEL_75;
                    }

                    v384[0] = 0;
                    v62 = CFGetAllocator(a1);
                    v344 = @"BbFDRSecurityKeyHash";
                    v346 = 0;
                    BOOLeana = @"BbCalibrationManifestKeyHash";
                    v342 = @"BbFactoryActivationManifestKeyHash";
                    v338 = @"BbActivationManifestKeyHash";
                    v70 = _CFArrayCreateWithObjects(v62, v63, v64, v65, v66, v67, v68, v69, @"BbProvisioningManifestKeyHash");
                    v77 = v70;
                    if (!v70)
                    {
                      v15 = 2;
                      goto LABEL_56;
                    }

                    v78 = OUTLINED_FUNCTION_32(v70, v71, v72, v384, v73, v74, v75, v76, theArrayb, @"BbActivationManifestKeyHash", @"BbCalibrationManifestKeyHash", @"BbFactoryActivationManifestKeyHash", @"BbFDRSecurityKeyHash", 0, v348, v350, v23, v354, v11, cfa, v14, MutableCopy, v364, v366, v13, v370);
                    if (v78)
                    {
                      v15 = v78;
                      goto LABEL_56;
                    }

                    Count = CFArrayGetCount(v77);
                    if (Count < 1)
                    {
                      v15 = 0;
                      MutableCopy = theDicta;
                      goto LABEL_56;
                    }

                    v80 = Count;
                    v348 = v12;
                    v81 = 0;
                    v22 = "_AMAuthInstallBundleSetBasebandKeyHashes";
                    while (1)
                    {
                      v383 = 0;
                      ValueAtIndex = CFArrayGetValueAtIndex(v77, v81);
                      if (!ValueAtIndex)
                      {
LABEL_151:
                        v15 = 14;
                        goto LABEL_54;
                      }

                      v83 = ValueAtIndex;
                      if (CFDictionaryGetValue(*(a1 + 216), ValueAtIndex))
                      {
                        v84 = OUTLINED_FUNCTION_40();
                        AMAuthInstallLog(v84, v85, "setting (from PR2 document/Override): %@ = %@", v86, v87, v88, v89, v90, theArrayb);
                        v91 = OUTLINED_FUNCTION_14_1();
                        if (AMAuthInstallBasebandSetKeyHashInternal(v91))
                        {
                          v92 = OUTLINED_FUNCTION_20_0();
                          v99 = "Failed setting (from PR2 document/Override) %@ = %@";
LABEL_51:
                          AMAuthInstallLog(v92, v93, v99, v94, v95, v96, v97, v98, theArrayb);
                        }
                      }

                      else
                      {
                        v100 = CFDictionaryGetValue(*(a1 + 208), v83);
                        if (v100)
                        {
                          v101 = v100;
                          v102 = CFDictionaryGetValue(*(a1 + 200), v83);
                          if (v102 && !CFEqual(v102, v101))
                          {
                            AMAuthInstallLog(4, "_AMAuthInstallBundleSetBasebandKeyHashes", "key hash mismatch, triggering bbfw re-personalization", v103, v104, v105, v106, v107, theArrayb);
                            *(a1 + 224) = 1;
                          }

                          v338 = v101;
                          AMAuthInstallLog(6, "_AMAuthInstallBundleSetBasebandKeyHashes", "setting (from hash baseband returned): %@ = %@", v103, v104, v105, v106, v107, v83);
                          v108 = OUTLINED_FUNCTION_14_1();
                          if (!AMAuthInstallBasebandSetKeyHashInternal(v108))
                          {
                            goto LABEL_52;
                          }

                          v92 = OUTLINED_FUNCTION_20_0();
                          v99 = "Failed setting (from hash baseband returned) %@ = %@";
                          goto LABEL_51;
                        }

                        v109 = OUTLINED_FUNCTION_14_1();
                        TagForKeyHashName = AMAuthInstallBasebandGetTagForKeyHashName(v109, v110, v111, v112, v113, v114, v115, v116);
                        if (TagForKeyHashName)
                        {
                          v15 = TagForKeyHashName;
LABEL_54:
                          v14 = v360;
                          MutableCopy = theDicta;
                          v13 = v368;
                          v11 = v356;
LABEL_56:
                          SafeRelease(v77);
                          SafeRelease(v384[0]);
                          if (!v15)
                          {
                            v384[0] = 0;
                            v133 = OUTLINED_FUNCTION_32(v126, v127, v128, v384, v129, v130, v131, v132, theArrayb, v338, BOOLeana, v342, v344, v346, v348, v350, v352, v354, v356, cfa, v360, theDicta, v364, v366, v368, v370);
                            if (v133)
                            {
                              LOBYTE(theArrayc) = v133;
                              v145 = "Failed to read build identity : error = %d";
LABEL_172:
                              v146 = 3;
                            }

                            else
                            {
                              v139 = CFDictionaryGetValue(v384[0], @"BbFactoryDebugEnable");
                              if (!v139)
                              {
                                goto LABEL_65;
                              }

                              v140 = v139;
                              CFBooleanGetTypeID();
                              v141 = OUTLINED_FUNCTION_39();
                              if (v22 != CFGetTypeID(v141))
                              {
                                goto LABEL_65;
                              }

                              if (CFBooleanGetValue(v140) == 1)
                              {
                                v142 = *MEMORY[0x29EDB8F00];
                                AMAuthInstallLog(6, "_AMAuthInstallBundleSetBasebandFactoryDebugEnable", "setting (from build manifest): %@ = %@", v134, v135, v136, v137, v138, @"BbFactoryDebugEnable");
                                v143 = OUTLINED_FUNCTION_14_1();
                                if (AMAuthInstallSetBbRequestEntry(v143, v144, v142))
                                {
                                  theArrayc = @"BbFactoryDebugEnable";
                                  v145 = "Failed setting (from build manifest) %@ : error = %d";
                                  goto LABEL_172;
                                }

LABEL_65:
                                SafeRelease(v384[0]);
                                if (*(a1 + 224))
                                {
                                  if (!v376)
                                  {
                                    v15 = 1;
                                    goto LABEL_153;
                                  }

                                  v147 = CFDictionaryGetValue(v376, @"Personalized");
                                  if (!v147)
                                  {
                                    AMAuthInstallLog(3, "_AMAuthInstallBundleRemovePersonalizedBbfw", "failed to find personalized array", v148, v149, v150, v151, v152, theArraya);
                                    v15 = 14;
                                    goto LABEL_153;
                                  }

                                  v153 = v147;
                                  v13 = v12;
                                  v154 = CFArrayGetCount(v147);
                                  if (v154 >= 1)
                                  {
                                    v155 = v154;
                                    v156 = 0;
                                    while (1)
                                    {
                                      v157 = CFArrayGetValueAtIndex(v153, v156);
                                      if (!v157)
                                      {
                                        break;
                                      }

                                      if (CFStringHasSuffix(v157, @".bbfw"))
                                      {
                                        v163 = OUTLINED_FUNCTION_25();
                                        AMAuthInstallLog(v163, "_AMAuthInstallBundleRemovePersonalizedBbfw", "removing personalizedEntry %@", v164, v165, v166, v167, v168, theArraya);
                                        CFArrayRemoveValueAtIndex(v153, v156--);
                                        --v155;
                                      }

                                      if (++v156 >= v155)
                                      {
                                        goto LABEL_74;
                                      }
                                    }

                                    AMAuthInstallLog(3, "_AMAuthInstallBundleRemovePersonalizedBbfw", "failed to find personalized entry %d", v158, v159, v160, v161, v162, v156);
                                    v15 = 14;
                                    v14 = v360;
                                    MutableCopy = theDicta;
                                    v11 = v356;
LABEL_153:
                                    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v15);
                                    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to remove bbfw: %@", v320, v321, v322, v323, v324, LocalizedStatusString);
LABEL_154:
                                    OUTLINED_FUNCTION_7_4();
                                    v17 = v368;
                                    goto LABEL_149;
                                  }

LABEL_74:
                                  *(a1 + 224) = 0;
                                  v14 = v360;
                                  MutableCopy = theDicta;
                                  v13 = v368;
                                }

LABEL_75:
                                v169 = MEMORY[0x29EDB8EF8];
                                if (!v13)
                                {
                                  goto LABEL_134;
                                }

                                v385.length = CFArrayGetCount(v13);
                                v385.location = 0;
                                if (!CFArrayContainsValue(v13, v385, @"BasebandFirmware") || (LOBYTE(v384[0]) = 0, LOBYTE(v383) = 0, v170 = *(a1 + 304), AMAuthInstallBasebandIsFused(a1, v384)) || (!LOBYTE(v384[0]) ? (v178 = AMAuthInstallBasebandPersonalizationRequired(a1, v171, v172, v173, v174, v175, v176, v177) == 0) : (v178 = 1), AMAuthInstallBasebandLocalSigningEnabled(a1, &v383) || (!v383 ? (v179 = v178) : (v179 = 0), v179 && !v170)))
                                {
                                  v13 = 0;
                                  goto LABEL_123;
                                }

                                v180 = *(a1 + 304);
                                v181 = CFDictionaryGetValue(v376, @"Personalized");
                                if (!v181)
                                {
                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in receiptDict", v182, v183, v184, v185, v186, @"Personalized");
                                  v17 = OUTLINED_FUNCTION_2_7();
                                  v15 = 8;
                                  goto LABEL_190;
                                }

                                v187 = v181;
                                v188 = OUTLINED_FUNCTION_16_0();
                                v190 = CFDictionaryGetValue(v188, v189);
                                if (v190)
                                {
                                  v196 = v190;
                                  v197 = CFDictionaryGetValue(v190, @"BasebandFirmware");
                                  if (v197 | CFDictionaryGetValue(**(a1 + 128), @"BasebandFirmware"))
                                  {
                                    _CFArrayRemoveValue(v13, @"BasebandFirmware");
                                    BasebandComponentName = AMAuthInstallBundleCopyNextBasebandComponentName(a1, &v372);
                                    if (BasebandComponentName)
                                    {
                                      v15 = BasebandComponentName;
                                      v17 = OUTLINED_FUNCTION_2_7();
                                    }

                                    else
                                    {
                                      v209 = v372;
                                      if (v372)
                                      {
                                        CFArrayGetCount(v187);
                                        v210 = OUTLINED_FUNCTION_47();
                                        if (CFArrayContainsValue(v210, v386, v209))
                                        {
                                          AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "entry %@ has been previously personalized; skipping it", v211, v212, v213, v214, v215, v209);
                                          if (v180)
                                          {
                                            AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "inserting provisioning info (if any) into existing bbfw for %@", v216, v217, v218, v219, v220, v209);
                                            v221 = CFGetAllocator(a1);
                                            v222 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v221, cfa, v209, 0, &v374);
                                            MutableCopy = theDicta;
                                            v228 = v370;
                                            if (!v222)
                                            {
                                              v14 = v360;
                                              if (!v374)
                                              {
                                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "bbfwURL AMAuthInstallPlatformCopyURLWithAppendedComponent failed", v223, v224, v225, v226, v227, theArraya);
                                                v17 = OUTLINED_FUNCTION_2_7();
                                                v15 = 2;
                                                goto LABEL_118;
                                              }

                                              v229 = AMAuthInstallBasebandCopyFirmware(a1, v374, v374);
                                              if (v229)
                                              {
                                                v15 = v229;
                                                v332 = "AMAuthInstallBasebandCopyFirmware failed";
                                              }

                                              else
                                              {
                                                v235 = AMAuthInstallBasebandCopyAllComponents(a1, v374, &v373);
                                                if (!v235)
                                                {
                                                  v236 = AMAuthInstallBasebandWriteFilesToBbfw(a1, v374, v373);
                                                  if (!v236)
                                                  {
                                                    v13 = 0;
                                                    goto LABEL_124;
                                                  }

                                                  v15 = v236;
                                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBasebandWriteFilesToBbfw failed", v237, v238, v239, v240, v241, theArraya);
                                                  v21 = 0;
LABEL_116:
                                                  v13 = 0;
LABEL_117:
                                                  v17 = v368;
LABEL_118:
                                                  v11 = v356;
                                                  goto LABEL_149;
                                                }

                                                v15 = v235;
                                                v332 = "AMAuthInstallBasebandCopyAllComponents failed";
                                              }

                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", v332, v230, v231, v232, v233, v234, theArraya);
                                              v17 = OUTLINED_FUNCTION_2_7();
                                              goto LABEL_118;
                                            }

                                            v15 = v222;
                                            v17 = OUTLINED_FUNCTION_2_7();
LABEL_190:
                                            v14 = v360;
                                            goto LABEL_118;
                                          }

                                          v13 = 0;
                                          v14 = v360;
                                          MutableCopy = theDicta;
LABEL_123:
                                          v228 = v370;
LABEL_124:
                                          v282 = _AMAuthInstallBundleCreateServerRequestDictionary(a1, v368, MutableCopy, v376, v228, v14, &v380, &v379);
                                          if (v282)
                                          {
                                            v15 = v282;
                                          }

                                          else
                                          {
                                            v283 = CFDictionaryGetValue(v376, @"CumulativeResponse");
                                            if (!(v283 | v380))
                                            {
                                              v21 = v13;
                                              v13 = 0;
                                              v15 = 0;
                                              goto LABEL_117;
                                            }

                                            if (!v380)
                                            {
                                              v378 = CFRetain(v283);
                                              AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "This is an install/stitch-only request.", v287, v288, v289, v290, v291, theArraya);
                                              goto LABEL_134;
                                            }

                                            v284 = AMAuthInstallApCreatePersonalizedResponse(a1, v380, &v378);
                                            if (!v284)
                                            {
                                              v285 = HIDWORD(v350);
                                              if (!v379)
                                              {
                                                v285 = 0;
                                              }

                                              if (v285 == 1)
                                              {
                                                PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse(a1, v379, &v377);
                                                if (PersonalizedResponse)
                                                {
                                                  v15 = PersonalizedResponse;
                                                  v272 = "failed to create ap ticket for recovery OS";
                                                  goto LABEL_114;
                                                }
                                              }

LABEL_134:
                                              *v371 = v13;
                                              v292 = CFDictionaryGetValue(v376, @"Updaters");
                                              if (v292)
                                              {
                                                v293 = v292;
                                                v294 = CFDictionaryGetCount(v292);
                                                v13 = malloc(8 * v294);
                                                if (v13)
                                                {
                                                  CFDictionaryGetKeysAndValues(v293, v13, 0);
                                                  if (v294 >= 1)
                                                  {
                                                    v295 = v13;
                                                    do
                                                    {
                                                      v296 = *v295++;
                                                      v297 = CFDictionaryGetValue(v293, v296);
                                                      CFDictionaryRemoveValue(v297, @"RequestTags");
                                                      --v294;
                                                    }

                                                    while (v294);
                                                  }

                                                  v298 = *v169;
                                                  v299 = AMAuthInstallBundleWriteReceipt(a1, cfa, v376, *v169);
                                                  if (!v299)
                                                  {
                                                    v14 = v360;
                                                    MutableCopy = theDicta;
                                                    goto LABEL_142;
                                                  }

                                                  v15 = v299;
                                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "AMAuthInstallBundleWriteReceipt returned %d", v300, v301, v302, v303, v304, v299);
                                                  v14 = v360;
                                                  MutableCopy = theDicta;
                                                }

                                                else
                                                {
                                                  v15 = 2;
                                                }

                                                v17 = v368;
                                                v11 = v356;
                                              }

                                              else
                                              {
                                                v13 = 0;
                                                v298 = *v169;
LABEL_142:
                                                v11 = v356;
                                                v305 = OUTLINED_FUNCTION_18_0();
                                                v310 = _AMAuthInstallBundlePopulatePersonalizedBundle(v305, v306, v307, v366, MutableCopy, v308, v309, v368, v354, v356, v298);
                                                if (v310)
                                                {
                                                  v326 = OUTLINED_FUNCTION_19_0(v310);
                                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to personalize bundle", v327, v328, v329, v330, v331, v326);
                                                }

                                                else if (v379)
                                                {
                                                  v15 = _AMAuthInstallBundlePopulatePersonalizedBundle(a1, v364, v12, v352, v14, v377, v376, v368, v354, v356, *MEMORY[0x29EDB8F00]);
                                                  if (v15)
                                                  {
                                                    v311 = AMAuthInstallGetLocalizedStatusString(a1, v15);
                                                    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to personalize recovery OS bundle", v312, v313, v314, v315, v316, v311);
                                                  }
                                                }

                                                else
                                                {
                                                  v15 = 0;
                                                }

                                                v17 = v368;
                                              }

                                              v21 = *v371;
                                              goto LABEL_149;
                                            }

                                            v15 = v284;
                                            v272 = "failed to create ap ticket";
LABEL_114:
                                            AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", v272, v267, v268, v269, v270, v271, theArraya);
                                          }

                                          v21 = v13;
                                          goto LABEL_116;
                                        }

                                        AMAuthInstallLog(7, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "performing separate baseband firmware personalization of %@", v211, v212, v213, v214, v215, v209);
                                        v242 = CFDictionaryGetValue(theDicta, @"UniqueBuildID");
                                        if (!v242)
                                        {
                                          AMAuthInstallLog(6, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "this build lacks UniqueBuildID", v243, v244, v245, v246, v247, theArraya);
                                          v13 = 0;
                                          goto LABEL_105;
                                        }

                                        v248 = v242;
                                        v249 = CFGetAllocator(a1);
                                        v250 = CFDictionaryCreateMutable(v249, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                                        v13 = v250;
                                        if (!v250)
                                        {
                                          goto LABEL_196;
                                        }

                                        CFDictionarySetValue(v250, @"UniqueBuildID", v248);
LABEL_105:
                                        v251 = *(a1 + 16);
                                        if (*(v251 + 136) || *(v251 + 144))
                                        {
                                          v252 = CFDictionaryGetValue(theDicta, @"ProductMarketingVersion");
                                          if (v252)
                                          {
                                            v258 = v252;
                                            if (v13 || (v259 = CFGetAllocator(a1), (v13 = CFDictionaryCreateMutable(v259, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020])) != 0))
                                            {
                                              CFDictionarySetValue(v13, @"ProductMarketingVersion", v258);
                                              goto LABEL_111;
                                            }

LABEL_196:
                                            v21 = 0;
                                            v15 = 2;
                                            v14 = v360;
LABEL_200:
                                            MutableCopy = theDicta;
                                            goto LABEL_117;
                                          }

                                          AMAuthInstallLog(6, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "this build lacks ProductMarketingVersion", v253, v254, v255, v256, v257, theArraya);
                                        }

LABEL_111:
                                        v260 = _AMAuthInstallBundleInstallPersonalizedBasebandFirmware(a1, v197, 0, v196, v370, cfa, v187, v13);
                                        v14 = v360;
                                        if (!v260)
                                        {
                                          v261 = *v169;
                                          v262 = OUTLINED_FUNCTION_14_1();
                                          v266 = AMAuthInstallBundleWriteReceipt(v262, v263, v264, v265);
                                          MutableCopy = theDicta;
                                          if (!v266)
                                          {
                                            goto LABEL_123;
                                          }

                                          theArraya = OUTLINED_FUNCTION_19_0(v266);
                                          v272 = "failed to write receipt: %@";
                                          goto LABEL_114;
                                        }

                                        v15 = v260;
                                        v21 = v13;
                                        v13 = 0;
                                        goto LABEL_200;
                                      }

                                      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "nextBbfwComponentStr is NULL", v204, v205, v206, v207, v208, theArraya);
                                      v17 = OUTLINED_FUNCTION_2_7();
                                      v15 = 14;
                                    }

LABEL_179:
                                    v14 = v360;
                                    MutableCopy = theDicta;
                                    goto LABEL_118;
                                  }

                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in manifestDict", v198, v199, v200, v201, v202, @"BasebandFirmware");
                                }

                                else
                                {
                                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "'%@' not found in buildIdentity", v191, v192, v193, v194, v195, @"Manifest");
                                }

                                v17 = OUTLINED_FUNCTION_2_7();
                                v15 = 8;
                                goto LABEL_179;
                              }

                              theArrayc = @"BbFactoryDebugEnable";
                              v145 = "%@ (from build manifest) is not true. Not setting it";
                              v146 = 6;
                            }

                            AMAuthInstallLog(v146, "_AMAuthInstallBundleSetBasebandFactoryDebugEnable", v145, v134, v135, v136, v137, v138, theArrayc);
                            goto LABEL_65;
                          }

LABEL_185:
                          v17 = OUTLINED_FUNCTION_2_7();
                          goto LABEL_149;
                        }

                        if (!v383)
                        {
                          goto LABEL_151;
                        }

                        if (CFDictionaryGetValue(v384[0], v383))
                        {
                          v118 = OUTLINED_FUNCTION_40();
                          AMAuthInstallLog(v118, v119, "setting (from build manifest): %@ = %@", v120, v121, v122, v123, v124, theArrayb);
                          v125 = OUTLINED_FUNCTION_14_1();
                          if (AMAuthInstallBasebandSetKeyHashInternal(v125))
                          {
                            v92 = OUTLINED_FUNCTION_20_0();
                            v99 = "Failed setting (from build manifest) %@ = %@";
                            goto LABEL_51;
                          }
                        }
                      }

LABEL_52:
                      if (v80 == ++v81)
                      {
                        v15 = 0;
                        goto LABEL_54;
                      }
                    }
                  }

                  v15 = v56;
                  v325 = "failed to create build identity with overrides";
LABEL_184:
                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", v325, v57, v58, v59, v60, v61, theArraya);
                  goto LABEL_185;
                }

LABEL_27:
                HIDWORD(v350) = 0;
                goto LABEL_30;
              }

LABEL_121:
              v276 = OUTLINED_FUNCTION_19_0(IfNecessary);
              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialWithRecoveryOS", "failed to generate a receipt: %@", v277, v278, v279, v280, v281, v276);
              goto LABEL_154;
            }
          }

          v15 = v47;
          goto LABEL_185;
        }

        v14 = 0;
        v13 = 0;
LABEL_162:
        v11 = 0;
        v17 = 0;
        v15 = 14;
        goto LABEL_149;
      }

      v15 = v40;
      v14 = 0;
      OUTLINED_FUNCTION_7_4();
    }

    v11 = 0;
    v17 = 0;
  }

LABEL_149:
  v317 = v21;
  SafeRelease(v17);
  SafeRelease(v11);
  SafeRelease(v382);
  SafeRelease(MutableCopy);
  SafeRelease(v380);
  SafeRelease(v379);
  SafeRelease(v378);
  SafeRelease(v377);
  SafeRelease(v376);
  SafeRelease(v317);
  SafeRelease(v374);
  SafeRelease(v373);
  SafeRelease(v372);
  SafeFree(v13);
  SafeRelease(v12);
  SafeRelease(v381);
  SafeRelease(v14);
  return v15;
}