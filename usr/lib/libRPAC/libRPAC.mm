uint64_t parseableExtendedIssueDescription(const char *a1, char *__str, const char *a3, const char *a4, const char *a5, const char *a6, const char *a7, size_t __size, _BYTE *a9, int a10, int a11, const char *a12, const char *a13, const char *a14, const char *a15, int a16)
{
  if (__size > 1023)
  {
    v16 = (a1 != 0) & envEnableExtendedDiagnosticFormat;
  }

  else
  {
    v16 = 0;
  }

  if (v16 != 1)
  {
    return v16;
  }

  v17 = __size;
  v25 = snprintf(__str, __size, "__delegate_identifier__:Performance Diagnostics__:::____message__:{");
  v27 = v25 == -1 || v17 < v25;
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = (v17 - v25);
  }

  if (v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = v25;
  }

  v30 = &__str[v29];
  if (v28 < 1)
  {
    LODWORD(v34) = v28;
  }

  else
  {
    v31 = snprintf(v30, v28, "%s:%s", "message", a1);
    v33 = v31 == -1 || v28 < v31;
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = (v28 - v31);
    }

    if (v33)
    {
      v35 = 0;
    }

    else
    {
      v35 = v31;
    }

    v30 += v35;
    if (a3 && v34 >= 1)
    {
      v36 = snprintf(v30, v34, ",%s:%s", "antipattern trigger", a3);
      v38 = v36 == -1 || v34 < v36;
      if (v38)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        LODWORD(v34) = v34 - v36;
      }

      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v36;
      }

      v30 += v39;
    }

    if (a4 && v34 >= 1)
    {
      v40 = snprintf(v30, v34, ",%s:%s", "API", a4);
      v42 = v40 == -1 || v34 < v40;
      if (v42)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        LODWORD(v34) = v34 - v40;
      }

      if (v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = v40;
      }

      v30 += v43;
    }

    if (a5 && v34 >= 1)
    {
      v44 = snprintf(v30, v34, ",%s:%s", "framework API", a5);
      v46 = v44 == -1 || v34 < v44;
      if (v46)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        LODWORD(v34) = v34 - v44;
      }

      if (v46)
      {
        v47 = 0;
      }

      else
      {
        v47 = v44;
      }

      v30 += v47;
    }

    if (a6 && v34 >= 1)
    {
      v48 = snprintf(v30, v34, ",%s:%s", "lowlevel antipattern triggering framework", a6);
      v50 = v48 == -1 || v34 < v48;
      if (v50)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        LODWORD(v34) = v34 - v48;
      }

      if (v50)
      {
        v51 = 0;
      }

      else
      {
        v51 = v48;
      }

      v30 += v51;
    }

    if (a7 && v34 >= 1)
    {
      v52 = snprintf(v30, v34, ",%s:%s", "lowlevel antipattern triggering method", a7);
      v54 = v52 == -1 || v34 < v52;
      if (v54)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        LODWORD(v34) = v34 - v52;
      }

      if (v54)
      {
        v55 = 0;
      }

      else
      {
        v55 = v52;
      }

      v30 += v55;
    }

    if (a12 && v34 >= 1)
    {
      v56 = snprintf(v30, v34, ",%s:%s", "action", a12);
      v58 = v56 == -1 || v34 < v56;
      if (v58)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        LODWORD(v34) = v34 - v56;
      }

      if (v58)
      {
        v59 = 0;
      }

      else
      {
        v59 = v56;
      }

      v30 += v59;
    }

    if (a13 && v34 >= 1)
    {
      v60 = snprintf(v30, v34, ",%s:%s", "location", a13);
      v62 = v60 == -1 || v34 < v60;
      if (v62)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        LODWORD(v34) = v34 - v60;
      }

      if (v62)
      {
        v63 = 0;
      }

      else
      {
        v63 = v60;
      }

      v30 += v63;
    }

    if (a14 && v34 >= 1)
    {
      v64 = snprintf(v30, v34, ",%s:%s", "problem", a14);
      v66 = v64 == -1 || v34 < v64;
      if (v66)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        LODWORD(v34) = v34 - v64;
      }

      if (v66)
      {
        v67 = 0;
      }

      else
      {
        v67 = v64;
      }

      v30 += v67;
    }

    if (a15 && v34 >= 1)
    {
      v68 = snprintf(v30, v34, ",%s:%s", "recommendation", a15);
      v70 = v68 == -1 || v34 < v68;
      if (v70)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        LODWORD(v34) = v34 - v68;
      }

      if (v70)
      {
        v71 = 0;
      }

      else
      {
        v71 = v68;
      }

      v30 += v71;
    }
  }

  if (*a9 == 1 && (envOverrideAllSuppressableIssues & 1) == 0)
  {
    if (v34 <= 0)
    {
      goto LABEL_185;
    }

    v72 = "suppressable";
  }

  else
  {
    if (v34 < 1)
    {
      goto LABEL_185;
    }

    v72 = "elevatable";
  }

  v73 = snprintf(v30, v34, ",%s:%s", "message type", v72);
  v75 = v73 == -1 || v34 < v73;
  if (v75)
  {
    LODWORD(v34) = 0;
  }

  else
  {
    LODWORD(v34) = v34 - v73;
  }

  if (v75)
  {
    v76 = 0;
  }

  else
  {
    v76 = v73;
  }

  v30 += v76;
LABEL_185:
  if (a11 >= 0x2000 || a11 == -1)
  {
    if ((a11 & 0xFFFFE000) == 0x2000 && v34 >= 1)
    {
      v77 = v34;
      v78 = 2;
      goto LABEL_196;
    }
  }

  else
  {
    if (a16 == 1)
    {
      if (v34 < 1)
      {
        return v16;
      }

      v77 = v34;
      v78 = 1;
      goto LABEL_196;
    }

    if (a16 == 4 && v34 >= 1)
    {
      v77 = v34;
      v78 = 4;
LABEL_196:
      v79 = snprintf(v30, v77, ",%s:%d", "issue type", v78);
      if (v79 == -1 || v34 < v79)
      {
        return v16;
      }

      v30 += v79;
      LODWORD(v34) = v34 - v79;
    }
  }

  if (v34 >= 1)
  {
    v80 = snprintf(v30, v34, ",%s:%d", "category type", a10);
    if (v80 != -1 && v34 >= v80)
    {
      v81 = (v34 - v80);
      if (v81 >= 1)
      {
        v82 = &v30[v80];
        v83 = snprintf(v82, v81, ",%s:%d", "subcategory type", a11);
        if (v83 != -1 && v81 >= v83)
        {
          v84 = (v81 - v83);
          if (v84 >= 1)
          {
            v85 = &v82[v83];
            v86 = snprintf(v85, v84, ",%s:%d", "show in console", 0);
            if (v86 != -1 && v84 >= v86)
            {
              v87 = (v84 - v86);
              if (v87 >= 1)
              {
                snprintf(&v85[v86], v87, "}");
              }
            }
          }
        }
      }
    }
  }

  return v16;
}

double issueDescription(char *__s1, int a2, int a3, int a4, unint64_t a5, char *__str, int a7, int a8, char *a9, char *a10, char *a11, char *a12, char *a13, int a14)
{
  v17 = a5 / 0xF4240;
  switch(a3)
  {
    case 0:
      snprintf(__str, 0x200uLL, "%sXPC blocked main thread for %llu ms. This can result in non-deterministic delays. Consider moving to an asynchronous design", "[Internal] ", a5 / 0xF4240);
      if (a10)
      {
        snprintf(a10, 0x200uLL, "Calling %s results in interprocess communication");
      }

      goto LABEL_22;
    case 1:
      snprintf(__str, 0x200uLL, "%sThe timeout value passed exceeds 500 ms. This can result in a UI hang in heavy contention conditions. If possible, either bring that value down below the 500 ms threshold or move the work off the main thread");
      return result;
    case 2:
      snprintf(__str, 0x200uLL, "%sLocking blocked main thread for %llu ms. Consider moving to a design that eliminates lock contention on the main thread", "[Internal] ", a5 / 0xF4240);
      if (a10)
      {
        snprintf(a10, 0x200uLL, "Locking blocked main thread for %llu ms");
      }

LABEL_22:
      if (a11)
      {
        strcpy(a11, "main thread");
      }

      if (a12)
      {
        strcpy(a12, "Non-determenistic delays");
        result = *"menistic delays";
      }

      goto LABEL_68;
    case 3:
    case 4:
      if (a4 == 8)
      {
        v18 = a8;
      }

      else
      {
        v18 = 0;
      }

      if (!a7)
      {
        if (!v18 || (envEnableExtendedDiagnosticFormat & 1) != 0)
        {
          snprintf(__str, 0x200uLL, "%s");
LABEL_61:
          v21 = 0;
          goto LABEL_62;
        }

LABEL_60:
        snprintf(__str, 0x200uLL, "%s%s");
        goto LABEL_61;
      }

      if (!v18)
      {
        goto LABEL_60;
      }

      if (envEnableExtendedDiagnosticFormat)
      {
        snprintf(__str, 0x200uLL, "%s %s");
      }

      else
      {
        snprintf(__str, 0x200uLL, "%s%s %s");
      }

      v21 = 1;
LABEL_62:
      *a9 = v21;
      if (a10)
      {
        strcpy(a10, "Higher QoS thread blocked by lower QoS thread");
        result = *"ower QoS thread";
      }

      if (a11)
      {
        strcpy(a11, "main thread");
      }

      if (a12)
      {
        result = *"Priority inversion";
        strcpy(a12, "Priority inversion");
      }

LABEL_68:
      if (a13)
      {
        strcpy(a13, "Consider ways to optimize this code path");
        return *" this code path";
      }

      return result;
    case 5:
      snprintf(__str, 0x200uLL, "%sMain thread run loop blocked for %llu ms");
      return result;
    case 6:
      snprintf(__str, 0x200uLL, "%sI/O blocked main thread for %llu ms. Consider doing this work on background thread", "[Internal] ", a5 / 0xF4240);
      if (a10)
      {
        snprintf(a10, 0x200uLL, "I/O blocked main thread for %llu ms", v17);
      }

      goto LABEL_43;
    case 7:
      snprintf(__str, 0x200uLL, "%sDoing file I/O on the main thread can lead to UI unresponsiveness. Consider design that does file I/O on the background thread", "[Internal] ");
      if (a10)
      {
        strcpy(a10, "File I/O on the main thread");
        result = *"the main thread";
      }

LABEL_43:
      if (a11)
      {
        strcpy(a11, "main thread");
      }

      if (a12)
      {
        result = *"I/O causing UI responsiveness issues";
        strcpy(a12, "I/O causing UI responsiveness issues");
      }

      goto LABEL_68;
    case 8:
      snprintf(__str, 0x200uLL, "%sI/O blocked main thread for %llu ms. Issue being tracked in rdar://90077561");
      return result;
    case 9:
      snprintf(__str, 0x200uLL, "%sDon’t call this synchronous initializer on the main thread to request network-based URLs. It can hang the app for many seconds");
      return result;
    case 10:
      snprintf(__str, 0x200uLL, "%sNetworking on another thread blocked main thread. Consider design that moves away from emulating synchronous networking behavior on the main thread");
      return result;
    case 11:
      snprintf(__str, 0x200uLL, "%sCostly protocol conformance check blocked main thread for %llu ms. Consider using respondsToSelector or other alternatives if possible. Explore alternatives to do this work on non-main thread");
      return result;
    case 12:
      snprintf(__str, 0x200uLL, "%s%s blocked main thread for %llu ms. Consider design that does non-UI work on non-main thread");
      return result;
    case 13:
      if (a7)
      {
        if (envEnableAGPCChecks && (isAppleInternalNoIO() & 1) == 0 && a8)
        {
          if (envEnableExtendedDiagnosticFormat)
          {
            snprintf(__str, 0x200uLL, "%s%s should be called from background thread. Calling it on the main thread can lead to UI unresponsiveness.");
          }

          else
          {
            snprintf(__str, 0x200uLL, "%s%s%s should be called from background thread. Calling it on the main thread can lead to UI unresponsiveness.");
          }

          LOBYTE(v20) = 1;
        }

        else
        {
          snprintf(__str, 0x200uLL, "%s%s should be called from background thread. Calling it on the main thread can lead to UI unresponsiveness", "[Internal] ", __s1);
          v20 = isAppleInternalNoIO() ^ 1;
        }
      }

      else
      {
        if (envEnableAGPCChecks && (isAppleInternalNoIO() & 1) == 0 && a8 && (envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          snprintf(__str, 0x200uLL, "%s%s should be called from background thread. Calling it on the main thread can lead to UI unresponsiveness");
        }

        else
        {
          snprintf(__str, 0x200uLL, "%s should be called from background thread. Calling it on the main thread can lead to UI unresponsiveness");
        }

        LOBYTE(v20) = 0;
      }

      *a9 = v20;
      if (a10)
      {
        snprintf(a10, 0x200uLL, "%s should be called from background thread", __s1);
      }

      if (a11)
      {
        strcpy(a11, "main thread");
      }

      if (a12)
      {
        strcpy(a12, "Background work causing UI responsiveness issues");
        result = *"nsiveness issues";
      }

      if (a13)
      {
        strcpy(a13, "Do work on a background thread");
        return *"ckground thread";
      }

      return result;
    case 14:
      snprintf(__str, 0x200uLL, "%s%s");
      return result;
    case 15:
      if (!strcmp(__s1, "UIGraphicsBeginImageContext") || !strcmp(__s1, "UIGraphicsBeginImageContextWithOptions"))
      {
        snprintf(__str, 0x200uLL, "%sRecommendation is to replace %s with UIGraphicsImageRenderer for potential memory savings");
      }

      goto LABEL_33;
    case 16:
      if (!strcmp(__s1, "UIImage"))
      {
        snprintf(__str, 0x200uLL, "%s%s memory footprint of %llu (MB) seems exceedingly high. Consider investigating ways to reduce it");
      }

      goto LABEL_33;
    case 17:
      provideAGPCIssueDescription(__str, __s1, a2, a10, a11, a12, a13, 17, a4, a14);
LABEL_33:
      *a9 = 1;
      return result;
    default:
      issueDescription_cold_1();
  }
}

uint64_t _replacement_NSData_writeToFile_atomically(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  if (pthread_main_np() == 1)
  {
    checkUnconditionally(0, 0, 0, "[NSData writeToFile:atomically:]", shouldFlag, 7);
  }

  v9 = __original_NSData_writeToFile_atomically(v7, a2, v8, a4);

  return v9;
}

uint64_t _replacement_NSData_writeToFile_options_error(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a3;
  if (pthread_main_np() == 1)
  {
    checkUnconditionally(0, 0, 0, "[NSData writeToFile:options:error:]", shouldFlag, 7);
  }

  v11 = __original_NSData_writeToFile_options_error(v9, a2, v10, a4, a5);

  return v11;
}

id _replacement_NSData_initWithContentsOfFile(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (pthread_main_np() == 1)
  {
    checkUnconditionally(0, 0, 0, "[NSData initWithContentsOfFile:]", shouldFlag, 7);
  }

  v7 = __original_NSData_initWithContentsOfFile(v5, a2, v6);

  return v7;
}

id _replacement_NSData_initWithContentsOfFile_options_error(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a3;
  if (pthread_main_np() == 1)
  {
    checkUnconditionally(0, 0, 0, "[NSData initWithContentsOfFile:options:error:]", shouldFlag, 7);
  }

  v11 = __original_NSData_initWithContentsOfFile_options_error(v9, a2, v10, a4, a5);

  return v11;
}

id _replacement_NSData_initWithContentsOfURL(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (pthread_main_np() == 1)
  {
    v7 = [v6 absoluteString];
    v8 = [v7 hasPrefix:@"http"];

    if (v8)
    {
      checkUnconditionally(0, 0, 0, "[NSData initWithContentsOfURL:]", shouldFlag, 9);
    }
  }

  v9 = __original_NSData_initWithContentsOfURL(v5, a2, v6);

  return v9;
}

id _replacement_NSData_initWithContentsOfURL_options_error(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a3;
  if (pthread_main_np() == 1)
  {
    v11 = [v10 absoluteString];
    v12 = [v11 hasPrefix:@"http"];

    if (v12)
    {
      checkUnconditionally(0, 0, 0, "[NSData initWithContentsOfURL:options:error:]", shouldFlag, 9);
    }
  }

  v13 = __original_NSData_initWithContentsOfURL_options_error(v9, a2, v10, a4, a5);

  return v13;
}

id _replacement_NSData_dataWithContentsOfFile(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (pthread_main_np() == 1)
  {
    checkUnconditionally(0, 0, 0, "+[NSData dataWithContentsOfFile:]", shouldFlag, 7);
  }

  v7 = __original_NSData_dataWithContentsOfFile(v5, a2, v6);

  return v7;
}

id _replacement_NSData_dataWithContentsOfFile_options_error(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (pthread_main_np() == 1)
  {
    checkUnconditionally(0, 0, 0, "+[NSData dataWithContentsOfFile:options:error:]", shouldFlag, 7);
  }

  v7 = __original_NSData_dataWithContentsOfFile(v5, a2, v6);

  return v7;
}

void _replacement_AVCaptureSession_startRunning(void *a1, uint64_t a2)
{
  v3 = a1;
  if (pthread_main_np() == 1)
  {
    checkUnconditionally(0, 0, 0, "[AVCaptureSession startRunning]", shouldFlag, 13);
  }

  __original_AVCaptureSession_startRunning(v3, a2);
}

id _replacement_ISIcon_prepareImageForDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (isAppleInternalNoIO() && pthread_main_np() == 1)
  {
    v7 = mach_absolute_time();
    v8 = __original_ISIcon_prepareImageForDescriptor(v5, a2, v6);
    v9 = mach_absolute_time();
    v10 = ticks_to_ns(v9 - v7);
    _replacement_ISIcon_prepareImageForDescriptor_total_duration += v10;
    checkUnconditionally(v10, _replacement_ISIcon_prepareImageForDescriptor_total_duration, ++_replacement_ISIcon_prepareImageForDescriptor_total_instances, "[ISIcon prepareImagesForDescriptor]", shouldFlag, 7);
  }

  else
  {
    v8 = __original_ISIcon_prepareImageForDescriptor(v5, a2, v6);
  }

  return v8;
}

void _replacement_ISIcon_prepareImagesForDescriptors(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v5 = a3;
  if (isAppleInternalNoIO() && pthread_main_np() == 1)
  {
    v6 = mach_absolute_time();
    __original_ISIcon_prepareImagesForDescriptors(v9, a2, v5);
    v7 = mach_absolute_time();
    v8 = ticks_to_ns(v7 - v6);
    checkUnconditionally(v8, _replacement_ISIcon_prepareImagesForDescriptors_total_duration, _replacement_ISIcon_prepareImagesForDescriptors_total_instances, "[ISIcon prepareImagesForDescriptors]", shouldFlag, 7);
    _replacement_ISIcon_prepareImagesForDescriptors_total_duration += v8;
    ++_replacement_ISIcon_prepareImagesForDescriptors_total_instances;
  }

  else
  {
    __original_ISIcon_prepareImagesForDescriptors(v9, a2, v5);
  }
}

void _replacement_ISIcon_prepareImagesForImageDescriptors(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v5 = a3;
  if (isAppleInternalNoIO() && pthread_main_np() == 1)
  {
    v6 = mach_absolute_time();
    __original_ISIcon_prepareImagesForImageDescriptors(v9, a2, v5);
    v7 = mach_absolute_time();
    v8 = ticks_to_ns(v7 - v6);
    checkUnconditionally(v8, _replacement_ISIcon_prepareImagesForImageDescriptors_total_duration, _replacement_ISIcon_prepareImagesForImageDescriptors_total_instances, "[ISIcon prepareImagesForImageDescriptors]", shouldFlag, 6);
    _replacement_ISIcon_prepareImagesForImageDescriptors_total_duration += v8;
    ++_replacement_ISIcon_prepareImagesForImageDescriptors_total_instances;
  }

  else
  {
    __original_ISIcon_prepareImagesForImageDescriptors(v9, a2, v5);
  }
}

uint64_t _replacement_NSObject_conformsToProtocol_Instance_Version(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (isAppleInternalNoIO() && pthread_main_np() == 1)
  {
    v7 = mach_absolute_time();
    v8 = __original_NSObject_conformsToProtocol_Instance_Version(v5, a2, v6);
    v9 = mach_absolute_time();
    v10 = ticks_to_ns(v9 - v7);
    _replacement_NSObject_conformsToProtocol_Instance_Version_total_duration += v10;
    checkUnconditionally(v10, _replacement_NSObject_conformsToProtocol_Instance_Version_total_duration, ++_replacement_NSObject_conformsToProtocol_Instance_Version_total_instances, "[NSObject conformsToProtocol:]", shouldFlag, 11);
  }

  else
  {
    v8 = __original_NSObject_conformsToProtocol_Instance_Version(v5, a2, v6);
  }

  return v8;
}

uint64_t _replacement_NSObject_conformsToProtocol_Class_Version(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (isAppleInternalNoIO() && pthread_main_np() == 1)
  {
    v7 = mach_absolute_time();
    v8 = __original_NSObject_conformsToProtocol_Class_Version(v5, a2, v6);
    v9 = mach_absolute_time();
    v10 = ticks_to_ns(v9 - v7);
    _replacement_NSObject_conformsToProtocol_Class_Version_total_duration += v10;
    checkUnconditionally(v10, _replacement_NSObject_conformsToProtocol_Class_Version_total_duration, ++_replacement_NSObject_conformsToProtocol_Class_Version_total_instances, "+[NSObject conformsToProtocol:]", shouldFlag, 11);
  }

  else
  {
    v8 = __original_NSObject_conformsToProtocol_Class_Version(v5, a2, v6);
  }

  return v8;
}

id _replacement_NSURLConnection_sendSynchronousRequest_returningResponse_error(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = a1;
  *(GetThreadLocalData() + 52) = 1;
  v11 = __original_NSURLConnection_sendSynchronousRequest_returningResponse_error(v10, a2, v9, a4, a5);

  v12 = mach_absolute_time();
  *GetThreadLocalData() = v12;
  *(GetThreadLocalData() + 52) = 0;

  return v11;
}

void initializeSwizzlers()
{
  v0 = 0;
  v1 = swizzled_class_instance_method_pairs;
  do
  {
    if ((envDisableConformanceChecks != 1 || strncmp(v1, "NSObject", 8uLL) || strncmp(v1 + 64, "conformsToProtocol:", 0x13uLL)) && (envDisableAVCaptureChecks != 1 || strncmp(v1, "AVCapture", 9uLL)) && (envEnableIOOnMainThread == 1 && envEnableAGPCChecks != 1 || strncmp(v1, "NSData", 6uLL)))
    {
      Class = objc_getClass(v1);
      if (Class)
      {
        v3 = Class;
        v4 = sel_registerName(v1 + 64);
        InstanceMethod = class_getInstanceMethod(v3, v4);
        v6 = off_9C740[v0];
        *v6 = method_setImplementation(InstanceMethod, off_9C700[v0]);
      }

      else if (envRPACDebug == 1)
      {
        fprintf(__stderrp, "Unable to swizzle selector %s of class %s \n", v1 + 64, v1);
      }
    }

    ++v0;
    v1 += 128;
  }

  while (v0 != 8);
  v7 = 0;
  v8 = swizzled_class_class_method_pairs;
  do
  {
    if ((envDisableConformanceChecks != 1 || strncmp(v8, "NSObject", 8uLL) || strncmp(v8 + 64, "conformsToProtocol:", 0x13uLL)) && (envDisableAVCaptureChecks != 1 || strncmp(v8, "AVCapture", 9uLL)) && (envEnableIOOnMainThread == 1 && envEnableAGPCChecks != 1 || strncmp(v8, "NSData", 6uLL)))
    {
      v9 = objc_getClass(v8);
      if (v9)
      {
        v10 = v9;
        v11 = sel_registerName(v8 + 64);
        ClassMethod = class_getClassMethod(v10, v11);
        v13 = off_9C7A0[v7];
        *v13 = method_setImplementation(ClassMethod, off_9C780[v7]);
      }

      else if (envRPACDebug == 1)
      {
        fprintf(__stderrp, "Unable to swizzle selector %s of class %s \n", v8 + 64, v8);
      }
    }

    ++v7;
    v8 += 128;
  }

  while (v7 != 4);
  if (isAppleInternal())
  {
    v14 = 0;
    v15 = appleinternal_swizzled_class_instance_method_pairs;
    do
    {
      if ((envDisableConformanceChecks != 1 || strncmp(v15, "NSObject", 8uLL) || strncmp(v15 + 64, "conformsToProtocol:", 0x13uLL)) && (envDisableAVCaptureChecks != 1 || strncmp(v15, "AVCapture", 9uLL)) && (envEnableIOOnMainThread == 1 && envEnableAGPCChecks != 1 || strncmp(v15, "NSData", 6uLL)))
      {
        v16 = objc_getClass(v15);
        if (v16)
        {
          v17 = v16;
          v18 = sel_registerName(v15 + 64);
          v19 = class_getInstanceMethod(v17, v18);
          v20 = (&off_9C7D8)[v14];
          *v20 = method_setImplementation(v19, off_9C7C0[v14]);
        }

        else if (envRPACDebug == 1)
        {
          fprintf(__stderrp, "Unable to swizzle selector %s of class %s \n", v15 + 64, v15);
        }
      }

      ++v14;
      v15 += 128;
    }

    while (v14 != 3);
  }

  initializeNSConditionSwizzling();
}

uint64_t trampoline_c(uint64_t a1)
{
  v1 = &data + 56 * ((a1 - first_trampoline + (a1 - first_trampoline < 0 ? 7uLL : 0)) >> 3);
  registered_callback(v1);
  return *v1;
}

uint64_t (*initialize_trampolines_with_one_callback(uint64_t (*result)(void)))(void)
{
  registered_callback = result;
  first_trampoline = __trampolines_one_callback;
  if (__trampolines_one_callback_end - __trampolines_one_callback != 0x40000)
  {
    initialize_trampolines_with_one_callback_cold_1();
  }

  return result;
}

uint64_t add_trampoline_one_callback(uint64_t a1, char *__s1, const char *a3, const char *a4, int a5, int *a6, int a7, unsigned int a8, int a9)
{
  v9 = trampolines_used;
  if (trampolines_used >= 0x8000)
  {
    add_trampoline_one_callback_cold_2();
  }

  if (a8 - 4 <= 0xFFFFFFFC)
  {
    add_trampoline_one_callback_cold_1();
  }

  ++trampolines_used;
  v20 = v9;
  v16 = &data + 56 * v9;
  *v16 = a1;
  *(v16 + 1) = strdup(__s1);
  *(v16 + 8) = a5;
  *(v16 + 2) = strdup(a4);
  *(v16 + 3) = strdup(a3);
  v17 = a8;
  *(v16 + 36) = -1;
  *(v16 + 11) = -1;
  *(v16 + 13) = a9;
  do
  {
    if ((a7 & 1) != 0 && *(v16 + 10) == -1 && isHangSubCategory(*a6))
    {
      *(v16 + 10) = *a6;
      if (envRPACTrampolineSwizzleDebug == 1)
      {
        fprintf(__stderrp, "HangSubCategory: %d\n");
      }
    }

    else if ((a7 & 2) != 0 && *(v16 + 9) == -1 && isExcessiveDiskWritesSubCategory(*a6))
    {
      *(v16 + 9) = *a6;
      if (envRPACTrampolineSwizzleDebug == 1)
      {
        fprintf(__stderrp, "ExcessiveDiskWritesSubCategory: %d\n");
      }
    }

    else if ((a7 & 4) != 0 && *(v16 + 11) == -1 && isHangSubCategory(*a6))
    {
      *(v16 + 11) = *a6;
      if (envRPACTrampolineSwizzleDebug == 1)
      {
        fprintf(__stderrp, "launchSubCategory: %d\n");
      }
    }

    else if (envRPACTrampolineSwizzleDebug == 1)
    {
      v18 = *a6;
      fprintf(__stderrp, "%s: Called with log sub type %d and issue type: %d\n");
    }

    ++a6;
    --v17;
  }

  while (v17);
  *(v16 + 12) = a7;
  return first_trampoline + 8 * v20;
}

BOOL isDatabaseTracked(uint64_t a1)
{
  if (a1)
  {
    v5 = a1;
    TableIndex = getTableIndex(a1);
    v2 = (&database_table_lock + 4 * TableIndex);
    os_unfair_lock_lock(v2);
    v3 = std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::find<long>(sqliteDBTrackingTable[TableIndex], &v5) != 0;
    os_unfair_lock_unlock(v2);
  }

  else
  {
    if (envRPACDebug == 1)
    {
      fprintf(__stderrp, "%s: Invalid database\n", "isDatabaseTracked");
    }

    return 0;
  }

  return v3;
}

uint64_t getTableIndex(uint64_t a1)
{
  if ((getTableIndex(long)::maps_initialized & 1) == 0)
  {
    if (initializeSQLiteDBTrackingTable(void)::onceToken != -1)
    {
      getTableIndex();
    }

    getTableIndex(long)::maps_initialized = 1;
  }

  if (a1 >> 3 <= 0)
  {
    return -(-(a1 >> 3) & 0x3F);
  }

  else
  {
    return (a1 >> 3) & 0x3F;
  }
}

uint64_t trackDatabase(uint64_t a1, char a2)
{
  if (a1)
  {
    v8[0] = a1;
    TableIndex = getTableIndex(a1);
    os_unfair_lock_lock(&database_table_lock + TableIndex);
    v5 = sqliteDBTrackingTable[TableIndex];
    v8[2] = v8;
    v6 = std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v5, v8);
    *(v6 + 41) = 0u;
    v6 = (v6 + 41);
    *(v6 - 17) = a1;
    *(v6 - 9) = 0;
    *(v6 - 1) = a2;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    v6[6] = 0u;
    v6[7] = 0u;
    v6[8] = 0u;
    v6[9] = 0u;
    v6[10] = 0u;
    v6[11] = 0u;
    v6[12] = 0u;
    v6[13] = 0u;
    v6[14] = 0u;
    v6[15] = 0u;
    v6[16] = 0u;
    v6[17] = 0u;
    v6[18] = 0u;
    v6[19] = 0u;
    v6[20] = 0u;
    v6[21] = 0u;
    v6[22] = 0u;
    v6[23] = 0u;
    *(v6 + 383) = 0u;
    os_unfair_lock_unlock(&database_table_lock + TableIndex);
    return 1;
  }

  else
  {
    if (envRPACDebug == 1)
    {
      fprintf(__stderrp, "%s: Invalid database\n", "trackDatabase");
    }

    return 0xFFFFFFFFLL;
  }
}

char *potentialBulkWriteQuery(char *result)
{
  if (result)
  {
    v1 = result;
    if (strcasestr(result, "update"))
    {
      return (&dword_0 + 1);
    }

    if (strcasestr(v1, "create"))
    {
      return (&dword_0 + 1);
    }

    if (strcasestr(v1, "drop"))
    {
      return (&dword_0 + 1);
    }

    if (strcasestr(v1, "insert"))
    {
      return (&dword_0 + 1);
    }

    result = strcasestr(v1, "delete");
    if (result)
    {
      return (&dword_0 + 1);
    }
  }

  return result;
}

char *potentialBulkReadQuery(char *result)
{
  if (result)
  {
    v1 = result;
    result = strcasestr(result, "select");
    if (result)
    {
      if (strcasestr(v1, "from"))
      {
        return (&dword_0 + 1);
      }

      result = strcasestr(v1, "where");
      if (result)
      {
        return (&dword_0 + 1);
      }
    }
  }

  return result;
}

const char *isPragmaQuery(const char *result)
{
  if (result)
  {
    return (strcasestr(result, "pragma") != 0);
  }

  return result;
}

uint64_t autoVacuumModeCheckCallback(void *a1, int a2, const char **a3, char **a4)
{
  if (a2 >= 1 && *a3)
  {
    strncpy(&autoVacuumMode, *a3, 0x3FuLL)[63] = 0;
  }

  return 0;
}

uint64_t autoVacuumModeStatus(sqlite3 *a1)
{
  if (!a1)
  {
    autoVacuumModeStatus_cold_2();
  }

  v15 = a1;
  TableIndex = getTableIndex(a1);
  if (!isDatabaseTracked(a1))
  {
    autoVacuumModeStatus_cold_1();
  }

  os_unfair_lock_lock(&database_table_lock + TableIndex);
  v3 = sqliteDBTrackingTable[TableIndex];
  *&v17[0] = &v15;
  if (*(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v3, &v15) + 43) == 1)
  {
    v4 = sqliteDBTrackingTable[TableIndex];
    *&v17[0] = &v15;
    v5 = *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v4, &v15) + 108);
LABEL_16:
    os_unfair_lock_unlock(&database_table_lock + TableIndex);
    return v5;
  }

  os_unfair_lock_unlock(&database_table_lock + TableIndex);
  errmsg = 0;
  v6 = sqlite3_db_mutex(a1);
  sqlite3_mutex_enter(v6);
  fprintf(__stderrp, "%s: Running PRAGMA auto_vacuum query to get vacuum mode\n", "autoVacuumModeStatus");
  if (!sqlite3_exec(a1, "PRAGMA auto_vacuum;", autoVacuumModeCheckCallback, 0, &errmsg))
  {
    sqlite3_mutex_leave(v6);
    memset(v17, 0, sizeof(v17));
    v7 = autoVacuumMode;
    if (autoVacuumMode)
    {
      v8 = v17;
      v9 = &byte_2E4D29;
      do
      {
        *v8++ = __tolower(v7);
        v10 = *v9++;
        v7 = v10;
      }

      while (v10);
    }

    else
    {
      v8 = v17;
    }

    *v8 = 0;
    v5 = LOBYTE(v17[0]) != 48 && LODWORD(v17[0]) == 1701736302;
    os_unfair_lock_lock(&database_table_lock + TableIndex);
    v11 = sqliteDBTrackingTable[TableIndex];
    v16 = &v15;
    *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v11, &v15) + 43) = 1;
    v12 = sqliteDBTrackingTable[TableIndex];
    v16 = &v15;
    *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v12, &v15) + 108) = v5;
    goto LABEL_16;
  }

  fprintf(__stderrp, "%s: SQL error: %s\n", "autoVacuumModeStatus", errmsg);
  sqlite3_free(errmsg);
  sqlite3_mutex_leave(v6);
  return 0;
}

char *isAutoVacuumPragmaQuery(const char *a1, int *a2)
{
  if (!a1)
  {
    if (envRPACDebug == 1)
    {
      fprintf(__stderrp, "%s: Invalid query\n", "isAutoVacuumPragmaQuery");
    }

LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  result = strcasestr(a1, "pragma");
  if (!result)
  {
LABEL_17:
    v5 = -1;
    goto LABEL_20;
  }

  if (!strcasestr(a1, "auto_vacuum"))
  {
LABEL_15:
    if (!strcasestr(a1, "pragma") && strcasestr(a1, "incremental_vacuum"))
    {
LABEL_19:
      result = (&dword_0 + 1);
      v5 = 2;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (strcasestr(a1, "incremental") || strcasestr(a1, "2"))
  {
    goto LABEL_19;
  }

  if (!strcasestr(a1, "full") && !strcasestr(a1, "1"))
  {
    if (strcasestr(a1, "none") || strcasestr(a1, "0"))
    {
      v5 = 0;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v5 = 1;
LABEL_9:
  result = (&dword_0 + 1);
LABEL_20:
  *a2 = v5;
  return result;
}

BOOL isExplicitVacuumQuery(const char *a1)
{
  if (a1)
  {
    if (!strcasestr(a1, "pragma"))
    {
      return strcasestr(a1, "vacuum") != 0;
    }
  }

  else if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Invalid query\n", "isExplicitVacuumQuery");
  }

  return 0;
}

BOOL isTransactionBeginEndRollback(const char *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (strcasestr(a1, "begin") || strcasestr(a1, "commit"))
  {
    return 1;
  }

  return strcasestr(a1, "rollback") != 0;
}

char *isWriteQuery(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  if (!a2)
  {
    if (envRPACDebug == 1)
    {
      fprintf(__stderrp, "%s: Invalid query\n", "isWriteQuery");
    }

    return 0;
  }

  *a4 = 0;
  if (isAutoVacuumPragmaQuery(a2, &v7))
  {
    return 0;
  }

  if (isExplicitVacuumQuery(a2))
  {
    result = (&dword_0 + 1);
    *a4 = 1;
    return result;
  }

  if (strcasestr(a2, "select") || strcasestr(a2, "commit") || strcasestr(a2, "rollback") || strcasestr(a2, "savepoint") || strcasestr(a2, "release") || strcasestr(a2, "attach") || strcasestr(a2, "detach"))
  {
    return 0;
  }

  if (!strcasestr(a2, "begin"))
  {
    return (&dword_0 + 1);
  }

  if (strcasestr(a2, "begin immediate"))
  {
    return (&dword_0 + 1);
  }

  result = strcasestr(a2, "begin exclusive");
  if (result)
  {
    return (&dword_0 + 1);
  }

  return result;
}

uint64_t journalModeCheckCallback(void *a1, int a2, const char **a3, char **a4)
{
  if (a2 >= 1 && *a3)
  {
    strncpy(&journalMode, *a3, 0x3FuLL)[63] = 0;
  }

  return 0;
}

uint64_t isDBInWalMode(sqlite3 *a1)
{
  if (a1)
  {
    if (!isDatabaseTracked(a1))
    {
      isDBInWalMode_cold_1();
    }

    v14 = a1;
    TableIndex = getTableIndex(a1);
    v3 = (&database_table_lock + 4 * TableIndex);
    os_unfair_lock_lock(v3);
    v4 = sqliteDBTrackingTable[TableIndex];
    v15 = &v14;
    v5 = *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v4, &v14) + 42);
    v6 = sqliteDBTrackingTable[TableIndex];
    v15 = &v14;
    v7 = *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v6, &v14) + 41);
    os_unfair_lock_unlock(v3);
    if ((v5 & 1) == 0)
    {
      errmsg = 0;
      v8 = sqlite3_db_mutex(a1);
      sqlite3_mutex_enter(v8);
      if (sqlite3_exec(a1, "PRAGMA journal_mode;", journalModeCheckCallback, 0, &errmsg))
      {
        fprintf(__stderrp, "SQL error: %s\n", errmsg);
        sqlite3_free(errmsg);
        sqlite3_mutex_leave(v8);
      }

      else
      {
        sqlite3_mutex_leave(v8);
        v7 = journalMode == 24951 && byte_2E4D6A == 108;
        os_unfair_lock_lock(v3);
        v10 = sqliteDBTrackingTable[TableIndex];
        v15 = &v14;
        *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v10, &v14) + 42) = 1;
        v11 = sqliteDBTrackingTable[TableIndex];
        v15 = &v14;
        *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v11, &v14) + 41) = v7;
        os_unfair_lock_unlock(v3);
      }
    }
  }

  else
  {
    if (envRPACDebug == 1)
    {
      fprintf(__stderrp, "%s: Invalid database\n", "isDBInWalMode");
    }

    return 0;
  }

  return v7;
}

BOOL isDBAssociatedWithStmtTracked(sqlite3_stmt *a1)
{
  if (!a1)
  {
    isDBAssociatedWithStmtTracked_cold_2();
  }

  v1 = sqlite3_db_handle(a1);
  if (!v1)
  {
    isDBAssociatedWithStmtTracked_cold_1();
  }

  return isDatabaseTracked(v1);
}

uint64_t determineStmtStats(sqlite3 *a1, int *pCur, int *a3, int *a4, int *pHiwtr)
{
  if (sqlite3_db_status(a1, 8, pCur, pHiwtr, 0))
  {
    determineStmtStats_cold_1();
  }

  if (sqlite3_db_status(a1, 9, a3, pHiwtr, 0))
  {
    determineStmtStats_cold_2();
  }

  if (sqlite3_db_status(a1, 12, a4, pHiwtr, 0))
  {
    determineStmtStats_cold_3();
  }

  return 1;
}

_DWORD *determineSpills(_DWORD *result, _DWORD *a2, int *a3)
{
  v3 = *a2 - *result;
  if (*a2 <= *result)
  {
    v3 = 0;
  }

  *a3 = v3;
  return result;
}

uint64_t isDBAssociatedWithStmtInMemory(sqlite3_stmt *a1)
{
  if (envEnableSQLiteIgnoreInMemoryDatabaseCheck)
  {
    v1 = 0;
  }

  else
  {
    v2 = sqlite3_db_handle(a1);
    if (!v2)
    {
      isDBAssociatedWithStmtInMemory_cold_2();
    }

    v3 = v2;
    if (!isDatabaseTracked(v2))
    {
      isDBAssociatedWithStmtInMemory_cold_1();
    }

    v8[0] = v3;
    TableIndex = getTableIndex(v3);
    v5 = (&database_table_lock + 4 * TableIndex);
    os_unfair_lock_lock(v5);
    v6 = sqliteDBTrackingTable[TableIndex];
    v8[2] = v8;
    v1 = *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v6, v8) + 40);
    os_unfair_lock_unlock(v5);
  }

  return v1 & 1;
}

uint64_t isExplicitVacuumStatement(sqlite3_stmt *a1)
{
  if (envEnableSQLiteWriteStmtInspection != 1)
  {
    goto LABEL_9;
  }

  if (!a1)
  {
    isExplicitVacuumStatement_cold_1();
  }

  v2 = sqlite3_db_handle(a1);
  if (v2)
  {
    v11 = v2;
    TableIndex = getTableIndex(v2);
    v4 = (&database_table_lock + 4 * TableIndex);
    os_unfair_lock_lock(v4);
    v5 = 0;
    while (1)
    {
      v6 = sqliteDBTrackingTable[TableIndex];
      v12 = &v11;
      if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v6, &v11)[v5 + 6])
      {
        v7 = sqliteDBTrackingTable[TableIndex];
        v12 = &v11;
        if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v7, &v11)[v5 + 6] == a1)
        {
          break;
        }
      }

      if (++v5 == 32)
      {
        os_unfair_lock_unlock(v4);
        goto LABEL_9;
      }
    }

    v10 = sqliteDBTrackingTable[TableIndex];
    v12 = &v11;
    v8 = *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v10, &v11) + v5 + 336);
    os_unfair_lock_unlock(v4);
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t isWriteStatement(sqlite3_stmt *a1)
{
  if (envEnableSQLiteWriteStmtInspection == 1)
  {
    if (!a1)
    {
      isWriteStatement_cold_3();
    }

    v2 = sqlite3_db_handle(a1);
    if (!v2)
    {
      isWriteStatement_cold_2();
    }

    v3 = v2;
    v11 = v2;
    TableIndex = getTableIndex(v2);
    if (!isDatabaseTracked(v3))
    {
      isWriteStatement_cold_1();
    }

    os_unfair_lock_lock(&database_table_lock + TableIndex);
    v5 = 0;
    while (1)
    {
      v6 = sqliteDBTrackingTable[TableIndex];
      v12 = &v11;
      if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v6, &v11)[v5 + 6])
      {
        v7 = sqliteDBTrackingTable[TableIndex];
        v12 = &v11;
        if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v7, &v11)[v5 + 6] == a1)
        {
          break;
        }
      }

      if (++v5 == 32)
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    v9 = sqliteDBTrackingTable[TableIndex];
    v12 = &v11;
    v8 = *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v9, &v11) + v5 + 304);
LABEL_12:
    os_unfair_lock_unlock(&database_table_lock + TableIndex);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t isBulkReadStatement(sqlite3_stmt *a1)
{
  if (envEnableSQLiteWriteStmtInspection == 1)
  {
    if (!a1)
    {
      isBulkReadStatement_cold_3();
    }

    v2 = sqlite3_db_handle(a1);
    if (!v2)
    {
      isBulkReadStatement_cold_2();
    }

    v3 = v2;
    v11 = v2;
    TableIndex = getTableIndex(v2);
    if (!isDatabaseTracked(v3))
    {
      isBulkReadStatement_cold_1();
    }

    os_unfair_lock_lock(&database_table_lock + TableIndex);
    v5 = 0;
    while (1)
    {
      v6 = sqliteDBTrackingTable[TableIndex];
      v12 = &v11;
      if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v6, &v11)[v5 + 6])
      {
        v7 = sqliteDBTrackingTable[TableIndex];
        v12 = &v11;
        if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v7, &v11)[v5 + 6] == a1)
        {
          break;
        }
      }

      if (++v5 == 32)
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    v9 = sqliteDBTrackingTable[TableIndex];
    v12 = &v11;
    v8 = *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v9, &v11) + v5 + 368);
LABEL_12:
    os_unfair_lock_unlock(&database_table_lock + TableIndex);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t isBulkWriteStatement(sqlite3_stmt *a1)
{
  if (envEnableSQLiteWriteStmtInspection == 1)
  {
    if (!a1)
    {
      isBulkWriteStatement_cold_3();
    }

    v2 = sqlite3_db_handle(a1);
    if (!v2)
    {
      isBulkWriteStatement_cold_2();
    }

    v3 = v2;
    v11 = v2;
    TableIndex = getTableIndex(v2);
    if (!isDatabaseTracked(v3))
    {
      isBulkWriteStatement_cold_1();
    }

    os_unfair_lock_lock(&database_table_lock + TableIndex);
    v5 = 0;
    while (1)
    {
      v6 = sqliteDBTrackingTable[TableIndex];
      v12 = &v11;
      if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v6, &v11)[v5 + 6])
      {
        v7 = sqliteDBTrackingTable[TableIndex];
        v12 = &v11;
        if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v7, &v11)[v5 + 6] == a1)
        {
          break;
        }
      }

      if (++v5 == 32)
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    v9 = sqliteDBTrackingTable[TableIndex];
    v12 = &v11;
    v8 = *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v9, &v11) + v5 + 400);
LABEL_12:
    os_unfair_lock_unlock(&database_table_lock + TableIndex);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t isStmtForDBInWalMode(sqlite3_stmt *a1)
{
  if (!a1)
  {
    isStmtForDBInWalMode_cold_1();
  }

  v1 = sqlite3_db_handle(a1);
  if (v1)
  {
    v2 = v1;
    if (isDatabaseTracked(v1))
    {
      getTableIndex(v2);

      return isDBInWalMode(v2);
    }

    else
    {
      if (envRPACDebug == 1)
      {
        fprintf(__stderrp, "%s: stmt not tracked\n", "isStmtForDBInWalMode");
      }

      return 0;
    }
  }

  else
  {
    if (envRPACDebug == 1)
    {
      fprintf(__stderrp, "%s: Invalid database handle", "isStmtForDBInWalMode");
    }

    return 1;
  }
}

uint64_t updateStmt(uint64_t a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 4294967294;
  }

  v29 = 0;
  v6 = isWriteQuery(a1, a3, a3, &v29);
  v7 = v6;
  if (v6)
  {
    if (envEnableSQLiteWriteStmtInspection)
    {
      v27 = potentialBulkWriteQuery(a3);
      Query = 0;
      goto LABEL_10;
    }
  }

  else if (envEnableSQLiteWriteStmtInspection)
  {
    Query = potentialBulkReadQuery(a3);
    v27 = 0;
LABEL_10:
    v28 = a1;
    TableIndex = getTableIndex(a1);
    os_unfair_lock_lock(&database_table_lock + TableIndex);
    v11 = 0;
    v12 = -1;
    do
    {
      v13 = sqliteDBTrackingTable[TableIndex];
      v30 = &v28;
      if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v13, &v28)[v11 + 6] == a2)
      {
        v22 = sqliteDBTrackingTable[TableIndex];
        v30 = &v28;
        *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v22, &v28) + v11 + 304) = v7;
        v23 = v29;
        v24 = sqliteDBTrackingTable[TableIndex];
        v30 = &v28;
        *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v24, &v28) + v11 + 336) = v23;
        v25 = sqliteDBTrackingTable[TableIndex];
        v30 = &v28;
        *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v25, &v28) + v11 + 368) = Query;
        v26 = sqliteDBTrackingTable[TableIndex];
        v30 = &v28;
        v21 = std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v26, &v28) + v11 + 400;
        goto LABEL_20;
      }

      if (v12 == -1)
      {
        v14 = sqliteDBTrackingTable[TableIndex];
        v30 = &v28;
        if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v14, &v28)[v11 + 6])
        {
          v12 = -1;
        }

        else
        {
          v12 = v11;
        }
      }

      ++v11;
    }

    while (v11 != 32);
    if (v12 == -1)
    {
      goto LABEL_21;
    }

    v15 = sqliteDBTrackingTable[TableIndex];
    v30 = &v28;
    std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v15, &v28)[v12 + 6] = a2;
    v16 = sqliteDBTrackingTable[TableIndex];
    v30 = &v28;
    *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v16, &v28) + v12 + 304) = v7;
    v17 = v29;
    v18 = sqliteDBTrackingTable[TableIndex];
    v30 = &v28;
    *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v18, &v28) + v12 + 336) = v17;
    v19 = sqliteDBTrackingTable[TableIndex];
    v30 = &v28;
    *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v19, &v28) + 400) = Query;
    v20 = sqliteDBTrackingTable[TableIndex];
    v30 = &v28;
    v21 = (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v20, &v28) + 54);
LABEL_20:
    *v21 = v27;
LABEL_21:
    os_unfair_lock_unlock(&database_table_lock + TableIndex);
  }

  return 1;
}

uint64_t updateWALModeTracker(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!isDatabaseTracked(a1))
  {
    updateWALModeTracker_cold_1();
  }

  v9 = a1;
  TableIndex = getTableIndex(a1);
  os_unfair_lock_lock(&database_table_lock + TableIndex);
  v5 = sqliteDBTrackingTable[TableIndex];
  v10 = &v9;
  v6 = 1;
  *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v5, &v9) + 42) = 1;
  v7 = sqliteDBTrackingTable[TableIndex];
  v10 = &v9;
  *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v7, &v9) + 41) = a2;
  os_unfair_lock_unlock(&database_table_lock + TableIndex);
  return v6;
}

uint64_t checkWalModeFromQuery(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    checkWalModeFromQuery_cold_2();
  }

  if (!isDatabaseTracked(a1))
  {
    checkWalModeFromQuery_cold_1();
  }

  if (a2)
  {
    v4 = strcasestr(a2, "pragma") && strcasestr(a2, "journal") && strcasestr(a2, "wal") != 0;
  }

  else
  {
    v10 = a1;
    TableIndex = getTableIndex(a1);
    v6 = (&database_table_lock + 4 * TableIndex);
    os_unfair_lock_lock(v6);
    v7 = sqliteDBTrackingTable[TableIndex];
    v11 = &v10;
    if (*(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v7, &v10) + 42) == 1)
    {
      v8 = sqliteDBTrackingTable[TableIndex];
      v11 = &v10;
      v4 = *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v8, &v10) + 41);
    }

    else
    {
      v4 = 0;
    }

    os_unfair_lock_unlock(v6);
  }

  return v4 & 1;
}

uint64_t deleteTrackingStmt(sqlite3_stmt *a1)
{
  if (envEnableSQLiteWriteStmtInspection != 1)
  {
    return 1;
  }

  v17 = v1;
  v18 = v2;
  if (!a1)
  {
    return 4294967294;
  }

  v4 = sqlite3_db_handle(a1);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v4;
  TableIndex = getTableIndex(v4);
  os_unfair_lock_lock(&database_table_lock + TableIndex);
  v6 = 0;
  while (1)
  {
    v7 = sqliteDBTrackingTable[TableIndex];
    v16 = &v15;
    if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v7, &v15)[v6 + 6])
    {
      v8 = sqliteDBTrackingTable[TableIndex];
      v16 = &v15;
      if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v8, &v15)[v6 + 6] == a1)
      {
        break;
      }
    }

    if (++v6 == 32)
    {
      goto LABEL_13;
    }
  }

  v10 = sqliteDBTrackingTable[TableIndex];
  v16 = &v15;
  std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v10, &v15)[v6 + 6] = 0;
  v11 = sqliteDBTrackingTable[TableIndex];
  v16 = &v15;
  *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v11, &v15) + v6 + 304) = 0;
  v12 = sqliteDBTrackingTable[TableIndex];
  v16 = &v15;
  *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v12, &v15) + v6 + 336) = 0;
  v13 = sqliteDBTrackingTable[TableIndex];
  v16 = &v15;
  *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v13, &v15) + v6 + 368) = 0;
  v14 = sqliteDBTrackingTable[TableIndex];
  v16 = &v15;
  *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v14, &v15) + v6 + 400) = 0;
LABEL_13:
  os_unfair_lock_unlock(&database_table_lock + TableIndex);
  return 1;
}

uint64_t deleteDatabaseTracker(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = a1;
  TableIndex = getTableIndex(a1);
  os_unfair_lock_lock(&database_table_lock + TableIndex);
  v2 = sqliteDBTrackingTable[TableIndex];
  v19 = &v18;
  *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v2, &v18) + 41) = 0;
  v3 = sqliteDBTrackingTable[TableIndex];
  v19 = &v18;
  *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v3, &v18) + 108) = 0;
  v4 = sqliteDBTrackingTable[TableIndex];
  v19 = &v18;
  *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v4, &v18) + 40) = 0;
  v5 = sqliteDBTrackingTable[TableIndex];
  v19 = &v18;
  *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v5, &v18) + 42) = 0;
  v6 = sqliteDBTrackingTable[TableIndex];
  v19 = &v18;
  v7 = 0;
  *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v6, &v18) + 43) = 0;
  do
  {
    v8 = sqliteDBTrackingTable[TableIndex];
    v19 = &v18;
    if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v8, &v18)[v7 + 6])
    {
      v9 = sqliteDBTrackingTable[TableIndex];
      v19 = &v18;
      std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v9, &v18)[v7 + 6] = 0;
      v10 = sqliteDBTrackingTable[TableIndex];
      v19 = &v18;
      *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v10, &v18) + v7 + 304) = 0;
      v11 = sqliteDBTrackingTable[TableIndex];
      v19 = &v18;
      *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v11, &v18) + v7 + 336) = 0;
      v12 = sqliteDBTrackingTable[TableIndex];
      v19 = &v18;
      *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v12, &v18) + v7 + 368) = 0;
      v13 = sqliteDBTrackingTable[TableIndex];
      v19 = &v18;
      *(std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v13, &v18) + v7 + 400) = 0;
    }

    ++v7;
  }

  while (v7 != 32);
  v14 = sqliteDBTrackingTable[TableIndex];
  v19 = &v18;
  if (std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v14, &v18)[4])
  {
    v15 = sqliteDBTrackingTable[TableIndex];
    v19 = &v18;
    v16 = std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v15, &v18);
    free(v16[4]);
  }

  std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__erase_unique<long>(sqliteDBTrackingTable[TableIndex], &v18);
  os_unfair_lock_unlock(&database_table_lock + TableIndex);
  return 1;
}

void *std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::find<long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__erase_unique<long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::find<long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::erase(a1, result);
    return (&dword_0 + 1);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t logCategoryFromString(char *__s1)
{
  v2 = *__s1;
  if (*__s1)
  {
    v3 = __s1 + 1;
    do
    {
      *(v3 - 1) = __tolower(v2);
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  if (!strncmp(__s1, "simplesynchronousxpc", 0x14uLL))
  {
    return 0;
  }

  if (!strncmp(__s1, "hangtracerhang", 0xEuLL))
  {
    return 5;
  }

  if (!strncmp(__s1, "timedcondwait", 0xDuLL) || !strncmp(__s1, "wait", 4uLL))
  {
    return 2;
  }

  v5 = *__s1;
  if (v5 == 113 && __s1[1] == 111 && __s1[2] == 115)
  {
    return 3;
  }

  if (!strncmp(__s1, "qosadditional", 0xDuLL))
  {
    return 4;
  }

  if (!strncmp(__s1, "sync", 4uLL))
  {
    return 6;
  }

  if (!strncmp(__s1, "syncio", 6uLL))
  {
    return 7;
  }

  if (!strncmp(__s1, "oslog", 5uLL))
  {
    return 8;
  }

  if (!strncmp(__s1, "syncnetworking", 0xEuLL))
  {
    return 9;
  }

  if (!strncmp(__s1, "emulatingsyncnetworking", 0x17uLL))
  {
    return 10;
  }

  if (!strncmp(__s1, "nonuiactiononmainthread", 0x17uLL))
  {
    return 12;
  }

  v6 = 13;
  if (strncmp(__s1, "apibackground", 0xDuLL))
  {
    if (!strncmp(__s1, "alternatemethod", 0xFuLL))
    {
      return 14;
    }

    else
    {
      v6 = 11;
      if (strncmp(__s1, "conformance", 0xBuLL))
      {
        if (!strncmp(__s1, "uiapireplacement", 0x10uLL))
        {
          return 15;
        }

        else if (!strncmp(__s1, "memorysizecheck", 0xFuLL))
        {
          return 16;
        }

        else if (!strncmp(__s1, "agpclogtype", 0xBuLL))
        {
          return 17;
        }

        else if (v5 == 97 && __s1[1] == 108)
        {
          if (__s1[2] == 108)
          {
            return 0x10000;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return v6;
}

const char *logTypeString(int a1)
{
  result = "SimpleSynchronousXPCLogType";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "TimedCondWaitLogType";
      break;
    case 2:
      result = "WaitLogType";
      break;
    case 3:
      result = "QoSLogType";
      break;
    case 4:
      result = "QoSAdditionalLogType";
      break;
    case 5:
      result = "HangTracerHangType";
      break;
    case 6:
      result = "SyncLogType";
      break;
    case 7:
      result = "SyncIOLogType";
      break;
    case 8:
      result = "SyncOSLogType";
      break;
    case 9:
      result = "SyncNetworkingType";
      break;
    case 10:
      result = "EmulatingSyncNetworkingType";
      break;
    case 11:
      result = "ConformanceLogType";
      break;
    case 12:
      result = "NonUIActionOnMainThreadLogType";
      break;
    case 13:
      result = "APIBackgroundLogType";
      break;
    case 14:
      result = "AlternateMethodLogType";
      break;
    case 15:
      result = "UIAPIReplacement";
      break;
    case 16:
      result = "MemorySizeCheck";
      break;
    case 17:
      result = "AGPCLogType";
      break;
    default:
      if (a1 == 0x10000)
      {
        result = "all";
      }

      else
      {
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t logSubCategoryFromString(char *__s1)
{
  v2 = *__s1;
  if (*__s1)
  {
    v3 = __s1 + 1;
    do
    {
      *(v3 - 1) = __tolower(v2);
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  result = strncmp(__s1, "xpconmainthreadagpclogtype", 0x1AuLL);
  if (result)
  {
    if (!strncmp(__s1, "timedconditionalwaitonmainthreadagpclogtype", 0x2BuLL))
    {
      return 1;
    }

    else if (!strncmp(__s1, "conditionalwaitonmainthreadagpclogtype", 0x26uLL))
    {
      return 2;
    }

    else if (!strncmp(__s1, "ioonmainthreadagpclogtype", 0x19uLL))
    {
      return 3;
    }

    else if (!strncmp(__s1, "waitingforoperationcompletiononmainthreadagpclogtype", 0x34uLL))
    {
      return 4;
    }

    else if (!strncmp(__s1, "databasereadsonmainthreadagpclogtype", 0x24uLL))
    {
      return 5;
    }

    else if (!strncmp(__s1, "databasewritesonmainthreadagpclogtype", 0x25uLL))
    {
      return 6;
    }

    else if (!strncmp(__s1, "databaseaccessonmainthreadagpclogtype", 0x25uLL))
    {
      return 7;
    }

    else if (!strncmp(__s1, "semaphorewaitingagpclogtype", 0x1BuLL))
    {
      return 8;
    }

    else if (!strncmp(__s1, "sleepagpclogtype", 0x10uLL))
    {
      return 9;
    }

    else if (!strncmp(__s1, "vnrequestonmainthreadagpclogtype", 0x20uLL))
    {
      return 10;
    }

    else if (!strncmp(__s1, "largescansymbollookuponmainthreadagpclogtype", 0x2CuLL))
    {
      return 11;
    }

    else if (!strncmp(__s1, "symbollookuponmainthreadagpclogtype", 0x23uLL))
    {
      return 12;
    }

    else if (!strncmp(__s1, "imagescanonmainthreadagpclogtype", 0x20uLL))
    {
      return 13;
    }

    else if (!strncmp(__s1, "excessiveioonanythreadagpclogtype", 0x21uLL))
    {
      return 0x2000;
    }

    else if (!strncmp(__s1, "sqlitespillsnonwalmodeonanythreadagpclogtype", 0x2CuLL))
    {
      return 8193;
    }

    else if (!strncmp(__s1, "sqlitewritesnonwalmodeonanythreadagpclogtype", 0x2CuLL))
    {
      return 8194;
    }

    else if (!strncmp(__s1, "sqlitespillsanymodeonanythreadagpclogtype", 0x29uLL))
    {
      return 8195;
    }

    else if (!strncmp(__s1, "sqlitewritesanymodeonanythreadagpclogtype", 0x29uLL))
    {
      return 8196;
    }

    else if (!strncmp(__s1, "sqlitespillsandwritesnonwalmodeonanythreadagpclogtype", 0x35uLL))
    {
      return 8197;
    }

    else if (!strncmp(__s1, "sqlitespillsandwritesanymodethreadagpclogtype", 0x2DuLL))
    {
      return 8198;
    }

    else if (!strncmp(__s1, "sqlitecheckpointingwriteswalmodeagpclogtype", 0x2BuLL))
    {
      return 8199;
    }

    else if (!strncmp(__s1, "sqlitenoautovacuumwritesagpclogtype", 0x23uLL))
    {
      return 8200;
    }

    else if (!strncmp(__s1, "endexcessiveioagpclogtype", 0x19uLL))
    {
      return 0x4000;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

const char *logSubTypeString(int a1)
{
  if (a1 >= 0x2000)
  {
    if (a1 <= 8196)
    {
      if (a1 <= 8193)
      {
        if (a1 == 0x2000)
        {
          return "ExcessiveIOOnAnyThreadAGPCLogType";
        }

        else
        {
          return "SQLiteSpillsNonWALModeOnAnyThreadAGPCLogType";
        }
      }

      else if (a1 == 8194)
      {
        return "SQLiteWritesNonWALModeOnAnyThreadAGPCLogType";
      }

      else if (a1 == 8195)
      {
        return "SQLiteSpillsAnyModeOnAnyThreadAGPCLogType";
      }

      else
      {
        return "SQLiteWritesAnyModeOnAnyThreadAGPCLogType";
      }
    }

    else if (a1 > 8199)
    {
      switch(a1)
      {
        case 0x2008:
          return "SQLiteExplicitVacuumWritesAGPCLogType";
        case 0x4000:
          return "EndExcessiveIOAGPCLogType";
        case 0x10000:
          return "all";
        default:
          return 0;
      }
    }

    else if (a1 == 8197)
    {
      return "SQLiteSpillsAndWritesNonWALModeOnAnyThreadAGPCLogType";
    }

    else if (a1 == 8198)
    {
      return "SQLiteSpillsAndWritesAnyModeThreadAGPCLogType";
    }

    else
    {
      return "SQLiteCheckpointingWritesWALModeAGPCLogType";
    }
  }

  else
  {
    result = "XPCOnMainThreadAGPCLogType";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "TimedConditionalWaitOnMainThreadAGPCLogType";
        break;
      case 2:
        result = "ConditionalWaitOnMainThreadAGPCLogType";
        break;
      case 3:
        result = "IOOnMainThreadAGPCLogType";
        break;
      case 4:
        result = "WaitingForOperationCompletionOnMainThreadAGPCLogType";
        break;
      case 5:
        result = "DatabaseReadsOnMainThreadAGPCLogType";
        break;
      case 6:
        result = "DatabaseWritesOnMainThreadAGPCLogType";
        break;
      case 7:
        result = "DatabaseAccessOnMainThreadAGPCLogType";
        break;
      case 8:
        result = "SemaphoreWaitingAGPCLogType";
        break;
      case 9:
        result = "SleepAGPCLogType";
        break;
      case 10:
        result = "VNRequestOnMainThreadAGPCLogType";
        break;
      case 11:
        result = "LargeScanSymbolLookupOnMainThreadAGPCLogType";
        break;
      case 12:
        result = "SymbolLookupOnMainThreadAGPCLogType";
        break;
      case 13:
        result = "ImageScanOnMainThreadAGPCLogType";
        break;
      default:
        return 0;
    }
  }

  return result;
}

CGImageRef interposed_CGImageSourceCreateThumbnailAtIndex(CGImageSource *a1, size_t a2, const __CFDictionary *a3)
{
  checkAndGenerateBT("CGImageSourceCreateThumbnailAtIndex", &_CGImageSourceCreateThumbnailAtIndex, 1, 17, 3, -1, 3, 1);

  return CGImageSourceCreateThumbnailAtIndex(a1, a2, a3);
}

CGImageRef interposed_CGImageSourceCreateImageAtIndex(CGImageSource *a1, size_t a2, const __CFDictionary *a3)
{
  checkAndGenerateBT("CGImageSourceCreateImageAtIndex", &_CGImageSourceCreateImageAtIndex, 1, 17, 3, -1, 3, 1);

  return CGImageSourceCreateImageAtIndex(a1, a2, a3);
}

BOOL interposed_CGImageDestinationFinalize(CGImageDestination *a1)
{
  checkAndGenerateBT("CGImageDestinationFinzalize", &_CGImageDestinationFinalize, 1, 17, 3, -1, 3, 1);

  return CGImageDestinationFinalize(a1);
}

void *GetThreadLocalData()
{
  v0 = pthread_getspecific(ThreadLocalDataKey);
  if (!v0)
  {
    v6 = 0;
    v5 = 0;
    v0 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004013D41EFFuLL);
    pthread_setspecific(ThreadLocalDataKey, v0);
    v0[3] = 0;
    *(v0 + 16) = 0;
    *(v0 + 52) = 0;
    *v0 = 0;
    v0[1] = 0;
    *(v0 + 36) = 0;
    *(v0 + 42) = 0;
    v1 = pthread_self();
    v2 = pthread_getschedparam(v1, &v6, &v5);
    sched_priority = v5.sched_priority;
    if (v2)
    {
      sched_priority = 0;
    }

    *(v0 + 4) = sched_priority;
  }

  return v0;
}

uint64_t __library_initializer()
{
  dylibInitializationStartTime = mach_absolute_time();
  v0 = getenv("PERFC_MEASURE_PERFORMANCE");
  if (v0)
  {
    envMeasurePerformance = atoi(v0) == 1;
  }

  v1 = getenv("PERFC_DONT_SWIZZLE");
  if (v1)
  {
    envDontSwizzleAnything = atoi(v1) == 1;
  }

  v2 = getenv("PERFC_RPAC_DEBUG");
  if (v2)
  {
    envRPACDebug = atoi(v2) == 1;
  }

  v3 = getenv("PERFC_RESET_INSERT_LIBRARIES");
  if (v3)
  {
    envRemoveDylibFromDyldInsertLibraries = atoi(v3) == 1;
  }

  v4 = getenv("PERFC_WAIT_THRESHOLD");
  if (v4)
  {
    envGlobalWaitThreshold = atoll(v4);
  }

  v5 = getenv("PERFC_XPC_WAIT_THRESHOLD");
  if (v5)
  {
    envXPCWaitThreshold = atoll(v5);
  }

  v6 = getenv("PERFC_MEASUREMENT_MODE");
  if (v6)
  {
    envMeasurementMode = atoi(v6) == 1;
  }

  v7 = getenv("PERFC_EFFECTIVE_TIMEOUT_THRESHOLD");
  if (v7)
  {
    envTimeoutThreshold = atoll(v7);
  }

  v8 = getenv("PERFC_HANG_RISK_THRESHOLD");
  if (v8)
  {
    envHangRiskThreshold = atoll(v8);
  }

  v9 = getenv("PERFC_SEVERE_HANG_RISK_THRESHOLD");
  if (v9)
  {
    envSevereHangRiskThreshold = atoll(v9);
  }

  v10 = getenv("PERFC_AGGRESSIVE_DETERMINISTIC_FLAGGING");
  if (v10)
  {
    envAggressiveDeterministicFlagging = atoi(v10) == 1;
  }

  v11 = getenv("PERFC_PRINT_STATS");
  if (v11)
  {
    envPrintStats = atoi(v11) == 1;
  }

  v12 = getenv("PERFC_DISABLE_TIME_CHECKS");
  if (v12)
  {
    envDisableTimeChecks = atoi(v12) == 1;
  }

  v13 = getenv("PERFC_DISABLE_AVCAPTURE_CHECKS");
  if (v13)
  {
    envDisableAVCaptureChecks = atoi(v13) == 1;
  }

  v14 = getenv("PERFC_EXTRA_TIME_INFO");
  if (v14)
  {
    envExtraTimeInfo = atoi(v14) == 1;
  }

  v15 = getenv("PERFC_ENABLE_IO_ON_MAIN_THREAD");
  if (v15)
  {
    envEnableIOOnMainThread = atoi(v15) == 1;
  }

  v16 = getenv("PERFC_DISABLE_PRIORITY_INVERSIONS");
  if (v16)
  {
    envDisablePriorityInversions = atoi(v16) == 1;
  }

  v17 = getenv("PERFC_MAX_ANTIPATTERN_DISTANCE");
  if (v17)
  {
    v18 = atoi(v17);
    v19 = v18;
    if (v18 <= 0)
    {
      v19 = envMaxAntipatternDistance;
    }

    envMaxAntipatternDistance = v19;
  }

  v20 = getenv("PERFC_FLAG_CALLERS_FROM_BUILT_BUNDLE_ONLY");
  if (v20)
  {
    envFlagCallersFromBuiltBundleOnly = atoi(v20) == 1;
  }

  v21 = getenv("PERFC_SUPPRESSION_FILE");
  if (v21)
  {
    parseUserSuppressionFile(v21);
  }

  v22 = getenv("PERFC_LOG_BACKTRACE_TO_STDERR");
  if (v22)
  {
    envLogBacktraceToStderr = atoi(v22) == 1;
    envDisableBacktraceOverride = 0;
  }

  v23 = getenv("PERFC_LOG_REPORTS_TO_STDERR");
  if (v23)
  {
    envLogReportsToStderr = atoi(v23) == 1;
  }

  v24 = getenv("PERFC_LOG_REPORTS_TO_OSLOG");
  if (v24)
  {
    envLogReportsToOsLog = atoi(v24) == 1;
  }

  v25 = getenv("PERFC_LOG_AGPC_REPORTS_TO_STDERR");
  if (v25)
  {
    envLogAGPCReportsToStderr = atoi(v25) == 1;
  }

  v26 = getenv("PERFC_ENABLE_PROFILE_MODE");
  if (v26)
  {
    v27 = atoi(v26);
    envProfileModeEnabled = v27 == 1;
    if (v27 == 1)
    {
      v28 = getenv("PERFC_XPC_WAIT_THRESHOLD");
      if (v28)
      {
        v29 = atoll(v28);
      }

      else
      {
        v29 = envXPCWaitThreshold << 6;
      }

      envXPCWaitThreshold = v29;
    }
  }

  v30 = getenv("PERFC_ENABLE_AGPC_CHECKS");
  if (v30)
  {
    envEnableAGPCChecks = atoi(v30) == 1;
    if (!getenv("PERFC_ENABLE_DUPLICATE_DETECTION"))
    {
      envEnableDuplicateDetection = 1;
    }
  }

  v31 = getenv("PERFC_ENABLE_AGPC_DISKWRITES_CHECKS");
  if (v31)
  {
    envEnableAGPCDiskwritesChecks = atoi(v31) == 1;
  }

  v32 = getenv("PERFC_ENABLE_AGPC_DISKWRITES_LAUNCH_CHECKS");
  if (v32)
  {
    v33 = v32;
    envEnableAGPCDiskwritesChecks = atoi(v32) == 1;
    envEnableAGPCDiskwritesLaunchChecks = atoi(v33) == 1;
  }

  v34 = getenv("PERFC_ENABLE_SQLITE_WRITE_STATEMENT_INSPECTION");
  if (v34)
  {
    envEnableSQLiteWriteStmtInspection = atoi(v34) == 1;
  }

  v35 = getenv("PERFC_ENABLE_SQLITE_DB_STATUS_INSPECTION");
  if (v35)
  {
    envEnableSQLiteDBStatusInspection = atoi(v35) == 1;
  }

  v36 = getenv("PERFC_ENABLE_SQLITE_IGNORE_INMEMORY_DATABASE_CHECK");
  if (v36)
  {
    envEnableSQLiteIgnoreInMemoryDatabaseCheck = atoi(v36) == 1;
  }

  v37 = getenv("PERFC_ENABLE_OVERRIDE_ALL_SUPPRESSABLE_ISSUES");
  if (v37)
  {
    envOverrideAllSuppressableIssues = atoi(v37) == 1;
  }

  v38 = getenv("PERFC_AGPC_SKIP_CLASS_STRING");
  if (v38)
  {
    v39 = v38;
    envEnableAGPCClassSkip = 1;
    v40 = strlen(v38);
    agpcSuppressionClassString = malloc_type_malloc(v40 + 1, 0x100004077774924uLL);
    v41 = strlen(v39);
    strncpy(agpcSuppressionClassString, v39, v41 + 1);
  }

  v42 = getenv("PERFC_AGPC_SKIP_METHOD_STRING");
  if (v42)
  {
    v43 = v42;
    envEnableAGPCMethodSkip = 1;
    v44 = strlen(v42);
    agpcSuppressionMethodString = malloc_type_malloc(v44, 0x100004077774924uLL);
    v45 = strlen(v43);
    strncpy(agpcSuppressionMethodString, v43, v45 + 1);
  }

  v46 = getenv("PERFC_ENABLE_EXTENDED_DIAGNOSTIC_FORMAT");
  if (v46)
  {
    envEnableExtendedDiagnosticFormat = atoi(v46) == 1;
  }

  v47 = getenv("PERFC_ENABLE_DIAGNOSTIC_MESSAGE_BREAKDOWN");
  if (v47)
  {
    envEnableDiagnosticMessageBreakdown = atoi(v47) == 1;
  }

  v48 = getenv("PERFC_ENABLE_TRAMPOLINE_DEBUG");
  if (v48)
  {
    envRPACTrampolineSwizzleDebug = atoi(v48) == 1;
  }

  v49 = getenv("PERFC_ENABLE_DUPLICATE_DETECTION");
  if (v49)
  {
    envEnableDuplicateDetection = atoi(v49) == 1;
  }

  v50 = getenv("PERFC_ENABLE_AGPC_AUDIO_VIDEO_CHECKS");
  if (v50)
  {
    envEnableAGPCAudioVideoChecks = atoi(v50) == 1;
  }

  v51 = getenv("PERFC_OVERRIDE_STARTUP_THRESHOLD");
  if (v51)
  {
    v52 = atoi(v51);
    if (v52 >= 1)
    {
      envOverrideStartupThresholdValue = v52;
    }
  }

  v53 = getenv("PERFC_OVERRIDE_CLEANUP_THRESHOLD");
  if (v53)
  {
    v54 = atoi(v53);
    if (v54 >= 1)
    {
      envOverrideCleanupThresholdValue = v54;
    }
  }

  v55 = getenv("PERFC_DISABLE_XPC_CHECKS");
  if (v55)
  {
    envDisableXPCChecks = atoi(v55) == 1;
  }

  v56 = getenv("PERFC_DISABLE_CONFORMANCE_CHECKS");
  if (v56)
  {
    envDisableConformanceChecks = atoi(v56) == 1;
  }

  v57 = getenv("PERFC_DISABLE_BACKTRACE");
  if (v57)
  {
    envDisableBacktrace = atoi(v57) == 1;
  }

  v58 = getenv("PERFC_SUPPRESS_SYSTEM_REPORTS");
  if (v58)
  {
    envIgnoreCallersFromSlashSystem = atoi(v58) == 1;
  }

  v59 = getenv("PERFC_ENABLE_PRIORITY_INVERSION_DETECTION_MAIN_THREAD_ONLY");
  if (v59)
  {
    envPriorityInversionDetectionOnMainThreadOnly = atoi(v59) == 1;
  }

  v60 = getenv("PERFC_DISABLE_NSCONDITION_CHECKS");
  if (v60)
  {
    envDisableNSConditionChecks = atoi(v60) == 1;
  }

  if (envRemoveDylibFromDyldInsertLibraries == 1)
  {
    resetDyldInsertLibraries();
  }

  MyOwnMachHeader = dyld_image_header_containing_address();
  mach_timebase_info(&info);
  if (envMeasurementMode == 1)
  {
    fwrite("API,Duration(ns)\n", 0x11uLL, 1uLL, __stderrp);
  }

  v61 = pthread_key_create(&ThreadLocalDataKey, &_free);
  if (v61)
  {
    fprintf(__stderrp, "libRPAC.dylib: pthread_key_create failed: %d\n", v61);
  }

  if ((envDontSwizzleAnything & 1) == 0)
  {
    initializeSwizzlers();
    if (envEnableAGPCChecks == 1 && (envProfileModeEnabled & 1) == 0)
    {
      initializeTrampolineBasedSwizzling(0);
    }
  }

  if (envMeasurePerformance == 1)
  {
    v62 = mach_absolute_time();
    if (!dword_2E4DCC)
    {
      __library_initializer_cold_1();
    }

    fprintf(__stderrp, "Startup took %.3llu nano seconds.\n", (v62 - dylibInitializationStartTime) * info / dword_2E4DCC);
  }

  return atexit_b(&__block_literal_global_0);
}

char *resetDyldInsertLibraries()
{
  result = getenv("DYLD_INSERT_LIBRARIES");
  if (result)
  {
    v1 = result;
    strlen(result);
    v2 = __chkstk_darwin();
    v3 = &v14 - ((v2 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v3, v2 + 1);
    v4 = *v1;
    if (!*v1)
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }

    v5 = v3;
    v6 = *v1;
    do
    {
      for (i = 0; v6; v6 = v1[++i])
      {
        if (v6 == 58)
        {
          break;
        }
      }

      v8 = v1;
      if (i)
      {
        v9 = i;
        while (v1[v9] != 47)
        {
          if (!--v9)
          {
            v4 = *v1;
            v8 = v1;
            goto LABEL_13;
          }
        }

        v8 = &v1[v9];
        v4 = 47;
      }

LABEL_13:
      v10 = v4 == 47;
      v11 = v4 == 47;
      if (v10)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = v8;
      }

      if (&v1[i] == v12)
      {
        v1 += i;
      }

      else
      {
        if (strncmp(v12, "libRPAC.dylib", v1 - v8 - v11 + i))
        {
          if (v5 != v3)
          {
            *v5++ = 58;
          }

          v5 = stpncpy(v5, v1, i);
          v6 = v1[i];
        }

        if (v6 == 58)
        {
          v13 = v1 + 1;
        }

        else
        {
          v13 = v1;
        }

        v1 = &v13[i];
        v6 = v13[i];
      }

      v4 = v6;
    }

    while (v6);
    if (v5 > v3)
    {
      *v5 = 0;
      return setenv("DYLD_INSERT_LIBRARIES", v3, 1);
    }

    else
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }
  }

  return result;
}

void ____library_initializer_block_invoke(id a1)
{
  if (agpcSuppressionClassString)
  {
    free(agpcSuppressionClassString);
    v1 = vars8;
  }

  v2 = agpcSuppressionMethodString;
  if (agpcSuppressionMethodString)
  {

    free(v2);
  }
}

uint64_t provideAGPCIssueDescription(uint64_t __str, char *__s1, int a3, char *a4, char *a5, char *a6, char *a7, int a8, int a9, int a10)
{
  if (a8 != 17)
  {
    provideAGPCIssueDescription_cold_1();
  }

  v14 = __str;
  if (a9 < 0x2000)
  {
    switch(a9)
    {
      case 0:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sInterprocess communication on the main thread can cause non-deterministic delays.");
        }

        if (a4)
        {
          __str = snprintf(a4, 0x200uLL, "Calling %s results in interprocess communication", __s1);
        }

        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "Non-determenistic delays");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        v15 = "Interprocess communication on the main thread can cause non-deterministic delays.";
        strcpy(v14 + 32, "e main thread can cause non-deterministic delays.");
        goto LABEL_183;
      case 1:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sSignaling thread does not have priority propagated from the main thread.");
        }

        if (a4)
        {
          __str = snprintf(a4, 0x200uLL, "%s does not propagate thread priority.", __s1);
        }

        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "Priority inversion");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        v15 = "Signaling thread does not have priority propagated from the main thread.";
        strcpy(v14 + 32, "riority propagated from the main thread.");
        break;
      case 2:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sSignaling thread created by %s does not have priority propagated from the main thread.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s does not propagate thread priority", __s1);
        }

        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "Priority inversion");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        return snprintf(v14, 0x200uLL, "Signaling thread created by %s does not have priority propagated from the main thread.");
      case 3:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sPerforming I/O on the main thread can cause %s.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s does I/O", __s1);
        }

        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "I/O causing UI responsiveness issues");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        return snprintf(v14, 0x200uLL, "Performing I/O on the main thread can cause %s.");
      case 4:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sAwaiting enqueued operations from %s on the main thread can cause non-deterministic delays.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s is waiting for completion of enqueued operations", __s1);
        }

        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "Waiting on enqueued operations");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        return snprintf(v14, 0x200uLL, "Awaiting enqueued operations from %s on the main thread can cause non-deterministic delays.");
      case 5:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sPerforming I/O on the main thread by reading or writing to a database can cause %s.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s reads a database underneath which triggers I/O");
        }

        goto LABEL_200;
      case 6:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sPerforming I/O on the main thread by reading or writing to a database can cause %s.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s issues writes to a database underneath which triggers I/O");
        }

        goto LABEL_200;
      case 7:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sPerforming I/O on the main thread by reading or writing to a database can cause %s.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s accesses a database underneath which triggers I/O");
        }

LABEL_200:
        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "I/O causing UI responsiveness issues");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        return snprintf(v14, 0x200uLL, "Performing I/O on the main thread by reading or writing to a database can cause %s.");
      case 8:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sA priority inversion may result when %s is called while awaiting a dispatch semaphore on a thread with a high quality-of-service class.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s may wait on a dispatch semaphore", __s1);
        }

        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "Priority inversion");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        return snprintf(v14, 0x200uLL, "A priority inversion may result when %s is called while awaiting a dispatch semaphore on a thread with a high quality-of-service class.");
      case 9:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%s%s suspends the main thread which can cause %s.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s suspends the thread", __s1);
        }

        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "Thread suspension causing UI responsiveness issues");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        return snprintf(v14, 0x200uLL, "%s suspends the main thread which can cause %s.");
      case 10:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sPerforming expensive Vision requests on the main thread can cause %s.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s is a vision request", __s1);
        }

        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "Background work causing UI responsiveness issues");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        return snprintf(v14, 0x200uLL, "Performing expensive Vision requests on the main thread can cause %s.");
      case 11:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sLooking up a symbol with RTLD_DEFAULT argument passed to dlsym on the main thread can cause %s.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s is a symbol lookup API", __s1);
        }

        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "Background work causing UI responsiveness issues");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        return snprintf(v14, 0x200uLL, "Looking up a symbol with RTLD_DEFAULT argument passed to dlsym on the main thread can cause %s.");
      case 12:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sLooking up a symbol on the main thread can cause %s.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s is a symbol lookup API", __s1);
        }

        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "Background work causing UI responsiveness issues");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        return snprintf(v14, 0x200uLL, "Looking up a symbol on the main thread can cause %s.");
      case 13:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sRepeated invocation of callbacks when images are added or removed on the main thread can cause %s.");
        }

        if (a4)
        {
          snprintf(a4, 0x200uLL, "%s adds and removes images", __s1);
        }

        if (a5)
        {
          strcpy(a5, "main thread");
        }

        if (a6)
        {
          strcpy(a6, "Background work causing UI responsiveness issues");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        return snprintf(v14, 0x200uLL, "Repeated invocation of callbacks when images are added or removed on the main thread can cause %s.");
      default:
        goto LABEL_258;
    }

    goto LABEL_183;
  }

  if (a9 <= 8195)
  {
    if (a9 <= 8193)
    {
      if (a9 == 0x2000)
      {
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%s%s is performing excessive I/O which will reduce the health of storage devices.");
        }

        if (!strncmp(__s1, "sqlite", 6uLL))
        {
          if (a4)
          {
            snprintf(a4, 0x200uLL, "%s is a SQLite query");
          }
        }

        else if (a4)
        {
          snprintf(a4, 0x200uLL, "%s does I/O");
        }

        if (a5)
        {
          strcpy(a5, "non-main thread");
        }

        if (a6)
        {
          strcpy(a6, "Excessive disk writes");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        return snprintf(v14, 0x200uLL, "%s is performing excessive I/O which will reduce the health of storage devices.");
      }

      if ((envEnableExtendedDiagnosticFormat & 1) == 0)
      {
        return snprintf(__str, 0x200uLL, "%sReading or writing to a database not configured in WAL mode will cause spills and reduce the health of storage devices.");
      }

      if (a4)
      {
        __str = snprintf(a4, 0x200uLL, "%s is a SQLite query", __s1);
      }

      if (a5)
      {
        strcpy(a5, "non-main thread");
      }

      if (a6)
      {
        strcpy(a6, "Excessive disk writes");
      }

      if (a7)
      {
        strcpy(a7, "Consider ways to optimize this code path");
      }

      v16 = "Reading or writing to a database not configured in WAL mode will cause spills and reduce the health of storage devices.";
      strcpy(v14 + 64, " cause spills and reduce the health of storage devices.");
      goto LABEL_148;
    }

    if (a9 == 8194)
    {
      if ((envEnableExtendedDiagnosticFormat & 1) == 0)
      {
        return snprintf(__str, 0x200uLL, "%sReading or writing to a database not configured in WAL mode will perform excessive I/O and reduce the health of storage devices.");
      }

      if (a4)
      {
        __str = snprintf(a4, 0x200uLL, "%s is a SQLite query", __s1);
      }

      if (a5)
      {
        strcpy(a5, "non-main thread");
      }

      if (a6)
      {
        strcpy(a6, "Excessive disk writes");
      }

      if (a7)
      {
        strcpy(a7, "Consider ways to optimize this code path");
      }

      v16 = "Reading or writing to a database not configured in WAL mode will perform excessive I/O and reduce the health of storage devices.";
      strcpy(v14 + 64, " perform excessive I/O and reduce the health of storage devices.");
      goto LABEL_148;
    }

    if ((envEnableExtendedDiagnosticFormat & 1) == 0)
    {
      return snprintf(__str, 0x200uLL, "%sReading or writing to this database will cause spills and reduce the health of storage devices.");
    }

    if (a4)
    {
      __str = snprintf(a4, 0x200uLL, "%s is a SQLite query", __s1);
    }

    if (a5)
    {
      strcpy(a5, "non-main thread");
    }

    if (a6)
    {
      strcpy(a6, "Excessive disk writes");
    }

    if (a7)
    {
      strcpy(a7, "Consider ways to optimize this code path");
    }

    v17 = "Reading or writing to this database will cause spills and reduce the health of storage devices.";
    strcpy(v14 + 32, "ase will cause spills and reduce the health of storage devices.");
LABEL_169:
    v22 = *(v17 + 1);
    *v14 = *v17;
    *(v14 + 1) = v22;
    return __str;
  }

  if (a9 > 8197)
  {
    switch(a9)
    {
      case 8198:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sReading or writing to this database will perform excessive I/O, cause spills and reduce the health of storage devices.");
        }

        if (a4)
        {
          __str = snprintf(a4, 0x200uLL, "%s is a SQLite query", __s1);
        }

        if (a5)
        {
          strcpy(a5, "non-main thread");
        }

        if (a6)
        {
          strcpy(a6, "Excessive disk writes");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        v16 = "Reading or writing to this database will perform excessive I/O, cause spills and reduce the health of storage devices.";
        strcpy(v14 + 64, "cause spills and reduce the health of storage devices.");
        break;
      case 8199:
        if ((envEnableExtendedDiagnosticFormat & 1) == 0)
        {
          return snprintf(__str, 0x200uLL, "%sPerforming excessive I/O will reduce the health of storage devices.");
        }

        if (a4)
        {
          __str = snprintf(a4, 0x200uLL, "%s is a SQLite query", __s1);
        }

        if (a5)
        {
          strcpy(a5, "non-main thread");
        }

        if (a6)
        {
          strcpy(a6, "Excessive disk writes");
        }

        if (a7)
        {
          strcpy(a7, "Consider ways to optimize this code path");
        }

        *(v14 + 16) = 3044197;
        v16 = "Performing excessive I/O will reduce the health of storage devices.";
        break;
      case 8200:
        if (envEnableExtendedDiagnosticFormat)
        {
          if (a4)
          {
            __str = snprintf(a4, 0x200uLL, "%s is a SQLite query", __s1);
          }

          if (a5)
          {
            strcpy(a5, "non-main thread");
          }

          if (a6)
          {
            strcpy(a6, "Excessive disk writes");
          }

          if (a7)
          {
            strcpy(a7, "Consider ways to optimize this code path");
          }

          v15 = "Manual repacking of a database will perform excessive I/O, cause spills, and reduce the health of storage devices. Instead, configure the database to utilize a full or incremental auto-vacuum mode.";
          strcpy(v14 + 96, "f storage devices. Instead, configure the database to utilize a full or incremental auto-vacuum mode.");
LABEL_63:
          v18 = *(v15 + 3);
          *(v14 + 2) = *(v15 + 2);
          *(v14 + 3) = v18;
          v19 = *(v15 + 5);
          *(v14 + 4) = *(v15 + 4);
          *(v14 + 5) = v19;
LABEL_183:
          v23 = *(v15 + 1);
          *v14 = *v15;
          *(v14 + 1) = v23;
          return __str;
        }

        return snprintf(__str, 0x200uLL, "%sManual repacking of a database will perform excessive I/O, cause spills, and reduce the health of storage devices. Instead, configure the database to utilize a full or incremental auto-vacuum mode.");
      default:
LABEL_258:
        provideAGPCIssueDescription_cold_2(a9);
    }

LABEL_148:
    v20 = *(v16 + 1);
    *v14 = *v16;
    *(v14 + 1) = v20;
    v21 = *(v16 + 3);
    *(v14 + 2) = *(v16 + 2);
    *(v14 + 3) = v21;
    return __str;
  }

  if (a9 == 8196)
  {
    if ((envEnableExtendedDiagnosticFormat & 1) == 0)
    {
      return snprintf(__str, 0x200uLL, "%sThis code path is leading to excessive disk writes which can reduce lifetime of the SSD");
    }

    if (a4)
    {
      __str = snprintf(a4, 0x200uLL, "%s is a SQLite query", __s1);
    }

    if (a5)
    {
      strcpy(a5, "non-main thread");
    }

    if (a6)
    {
      strcpy(a6, "Excessive disk writes");
    }

    if (a7)
    {
      strcpy(a7, "Consider ways to optimize this code path");
    }

    v17 = "This code path is leading to excessive disk writes which can reduce lifetime of the SSD";
    strcpy(v14 + 32, "essive disk writes which can reduce lifetime of the SSD");
    goto LABEL_169;
  }

  if (envEnableExtendedDiagnosticFormat)
  {
    if (a4)
    {
      __str = snprintf(a4, 0x200uLL, "%s is a SQLite query", __s1);
    }

    if (a5)
    {
      strcpy(a5, "non-main thread");
    }

    if (a6)
    {
      strcpy(a6, "Excessive disk writes");
    }

    if (a7)
    {
      strcpy(a7, "Consider ways to optimize this code path");
    }

    v15 = "Reading or writing to a database not configured in WAL mode will perform excessive I/O, cause spills and reduce the health of storage devices.";
    strcpy(v14 + 96, "ills and reduce the health of storage devices.");
    goto LABEL_63;
  }

  return snprintf(__str, 0x200uLL, "%sReading or writing to a database not configured in WAL mode will perform excessive I/O, cause spills and reduce the health of storage devices.");
}

uint64_t interposed_sqlite3_open(const char *a1, sqlite3 **a2)
{
  v4 = sqlite3_open(a1, a2);
  sqlite3_open_track_state(a1, a2, "sqlite3_open", &_sqlite3_open);
  return v4;
}

uint64_t sqlite3_open_track_state(uint64_t result, uint64_t *a2, const char *a3, uint64_t a4)
{
  if (a2)
  {
    if (envEnableAGPCDiskwritesChecks)
    {
      if (*a2)
      {
        v5 = result;
        checkAndGenerateBT(a3, a4, 1, 17, 3, -1, 3, 1);
        result = isDatabaseTracked(*a2);
        if ((result & 1) == 0)
        {
          v6 = *a2;
          v7 = isInMemoryDatabase(v5);

          return trackDatabase(v6, v7);
        }
      }
    }
  }

  return result;
}

uint64_t interposed_sqlite3_open16(const void *a1, sqlite3 **a2)
{
  v4 = sqlite3_open16(a1, a2);
  sqlite3_open_track_state(a1, a2, "sqlite3_open16", &_sqlite3_open16);
  return v4;
}

uint64_t interposed_sqlite3_open_v2(const char *a1, sqlite3 **a2, int a3, const char *a4)
{
  v6 = sqlite3_open_v2(a1, a2, a3, a4);
  sqlite3_open_track_state(a1, a2, "sqlite3_open_v2", &_sqlite3_open_v2);
  return v6;
}

uint64_t interposed_sqlite3_close(sqlite3 *a1)
{
  sqlite3_close_track_state(a1, "sqlite3_close", &_sqlite3_close);

  return sqlite3_close(a1);
}

uint64_t sqlite3_close_track_state(uint64_t result, const char *a2, uint64_t a3)
{
  if (envEnableAGPCDiskwritesChecks == 1)
  {
    v3 = result;
    checkAndGenerateBT(a2, a3, 1, 17, 3, -1, 3, 1);
    result = isDatabaseTracked(v3);
    if (result)
    {

      return deleteDatabaseTracker(v3);
    }
  }

  return result;
}

uint64_t interposed_sqlite3_close_v2(sqlite3 *a1)
{
  sqlite3_close_track_state(a1, "sqlite3_close_v2", &_sqlite3_close_v2);

  return sqlite3_close_v2(a1);
}

uint64_t interposed_sqlite3_exec(sqlite3 *a1, char *sql, int (__cdecl *callback)(void *, int, char **, char **), void *a4, char **errmsg)
{
  if (a1 && (envEnableAGPCDiskwritesChecks & 1) != 0 && (*(GetThreadLocalData() + 49) & 1) == 0)
  {
    *(GetThreadLocalData() + 32) = 1;
    if (isExplicitVacuumQuery(sql))
    {
      *(GetThreadLocalData() + 48) = 1;
    }

    v11 = sqlite3_exec(a1, sql, callback, a4, errmsg);
    if (isTransactionBeginEndRollback(sql))
    {
      return v11;
    }

    if (checkWalModeFromQuery(a1, sql))
    {
      if (!isDatabaseTracked(a1))
      {
        trackDatabase(a1, 0);
      }

      updateWALModeTracker(a1, 1);
      *(GetThreadLocalData() + 49) = 1;
      if (*(GetThreadLocalData() + 9) < 1 || *(GetThreadLocalData() + 11) < 1)
      {
        if (*(GetThreadLocalData() + 11) < 1 || *(GetThreadLocalData() + 48) != 1)
        {
          goto LABEL_40;
        }

        v12 = 8196;
        goto LABEL_24;
      }

      if (GetThreadLocalData()[6])
      {
        v12 = 8198;
LABEL_24:
        if (autoVacuumModeStatus(a1) <= 0)
        {
          v14 = 8200;
        }

        else
        {
          v14 = v12;
        }

        v15 = 3;
        goto LABEL_39;
      }

LABEL_40:
      *(GetThreadLocalData() + 49) = 0;
      *(GetThreadLocalData() + 32) = 0;
      *(GetThreadLocalData() + 48) = 0;
      *(GetThreadLocalData() + 9) = 0;
      *(GetThreadLocalData() + 10) = 0;
      *(GetThreadLocalData() + 11) = 0;
      return v11;
    }

    *(GetThreadLocalData() + 49) = 1;
    if (isDBInWalMode(a1))
    {
      if (potentialBulkReadQuery(sql) & 1) != 0 || (potentialBulkWriteQuery(sql))
      {
LABEL_38:
        v15 = 1;
        v14 = -1;
        goto LABEL_39;
      }

      ThreadLocalData = GetThreadLocalData();
LABEL_37:
      if (ThreadLocalData[10] < 1)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (*(GetThreadLocalData() + 9) < 1 || *(GetThreadLocalData() + 11) < 1)
    {
      v16 = *(GetThreadLocalData() + 11);
      ThreadLocalData = GetThreadLocalData();
      if (v16 < 1)
      {
        goto LABEL_37;
      }

      if (*(ThreadLocalData + 48) != 1 || autoVacuumModeStatus(a1) >= 1)
      {
        v15 = 3;
        v14 = 8194;
        goto LABEL_39;
      }
    }

    else if (*(GetThreadLocalData() + 48) != 1 || autoVacuumModeStatus(a1) >= 1)
    {
      v15 = 3;
      v14 = 8197;
LABEL_39:
      checkAndGenerateBT("sqlite3_exec", &_sqlite3_exec, v15, 17, 3, v14, 3, 1);
      goto LABEL_40;
    }

    v15 = 3;
    v14 = 8200;
    goto LABEL_39;
  }

  return sqlite3_exec(a1, sql, callback, a4, errmsg);
}

uint64_t interposed_sqlite3_exec_b(sqlite3 *a1, char *a2)
{
  if (a1 && (envEnableAGPCDiskwritesChecks & 1) != 0 && (*(GetThreadLocalData() + 49) & 1) == 0)
  {
    *(GetThreadLocalData() + 32) = 1;
    if (isExplicitVacuumQuery(a2))
    {
      *(GetThreadLocalData() + 48) = 1;
    }

    v5 = sqlite3_exec_b();
    if (isTransactionBeginEndRollback(a2))
    {
      return v5;
    }

    if (checkWalModeFromQuery(a1, a2))
    {
      if (!isDatabaseTracked(a1))
      {
        trackDatabase(a1, 0);
      }

      updateWALModeTracker(a1, 1);
      *(GetThreadLocalData() + 49) = 1;
      if (*(GetThreadLocalData() + 9) >= 1 && *(GetThreadLocalData() + 11) >= 1)
      {
        if (*(GetThreadLocalData() + 48) == 1)
        {
          if (autoVacuumModeStatus(a1) >= 1)
          {
            v6 = &_sqlite3_exec_b;
            v7 = 3;
            v8 = 8198;
LABEL_41:
            checkAndGenerateBT("sqlite3_exec_b", v6, v7, 17, 3, v8, 3, 1);
            goto LABEL_42;
          }

          v11 = &_sqlite3_exec;
LABEL_40:
          v6 = v11;
          v7 = 3;
          v8 = 8200;
          goto LABEL_41;
        }

LABEL_42:
        *(GetThreadLocalData() + 49) = 0;
        *(GetThreadLocalData() + 32) = 0;
        *(GetThreadLocalData() + 48) = 0;
        *(GetThreadLocalData() + 9) = 0;
        *(GetThreadLocalData() + 10) = 0;
        *(GetThreadLocalData() + 11) = 0;
        return v5;
      }

      if (*(GetThreadLocalData() + 11) < 1 || *(GetThreadLocalData() + 48) != 1)
      {
        goto LABEL_42;
      }

      if (autoVacuumModeStatus(a1) >= 1)
      {
        v6 = &_sqlite3_exec_b;
        v7 = 3;
        v8 = 8196;
        goto LABEL_41;
      }

LABEL_36:
      v11 = &_sqlite3_exec_b;
      goto LABEL_40;
    }

    *(GetThreadLocalData() + 49) = 1;
    if (isDBInWalMode(a1))
    {
      if ((potentialBulkReadQuery(a2) & 1) == 0 && (potentialBulkWriteQuery(a2) & 1) == 0 && !*(GetThreadLocalData() + 10))
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (*(GetThreadLocalData() + 9) >= 1 && *(GetThreadLocalData() + 11) >= 1)
      {
        if (*(GetThreadLocalData() + 48) != 1 || autoVacuumModeStatus(a1) >= 1)
        {
          v6 = &_sqlite3_exec_b;
          v7 = 3;
          v8 = 8197;
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      v9 = *(GetThreadLocalData() + 11);
      ThreadLocalData = GetThreadLocalData();
      if (v9 >= 1)
      {
        if (*(ThreadLocalData + 48) != 1 || autoVacuumModeStatus(a1) >= 1)
        {
          v6 = &_sqlite3_exec_b;
          v7 = 3;
          v8 = 8194;
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      if (*(ThreadLocalData + 10) < 1)
      {
        goto LABEL_42;
      }
    }

    v6 = &_sqlite3_exec_b;
    v7 = 1;
    v8 = -1;
    goto LABEL_41;
  }

  return sqlite3_exec_b();
}

uint64_t interposed_sqlite3_finalize(sqlite3_stmt *pStmt)
{
  if (pStmt && (envEnableAGPCDiskwritesChecks & 1) != 0 && (*(GetThreadLocalData() + 49) & 1) == 0)
  {
    if (!isDBAssociatedWithStmtTracked(pStmt) || (isDBAssociatedWithStmtInMemory(pStmt) & 1) != 0 || (isStmtForDBInWalMode(pStmt) & 1) != 0 || !isWriteStatement(pStmt))
    {
      if ((isBulkReadStatement(pStmt) & 1) == 0 && !isBulkWriteStatement(pStmt))
      {
        goto LABEL_13;
      }

      v2 = 1;
      v3 = -1;
    }

    else
    {
      v2 = 3;
      v3 = 8194;
    }

    checkAndGenerateBT("sqlite3_finalize", &_sqlite3_finalize, v2, 17, 3, v3, 3, 1);
LABEL_13:
    deleteTrackingStmt(pStmt);
  }

  return sqlite3_finalize(pStmt);
}

uint64_t interposed_sqlite3_prepare(sqlite3 *a1, char *a2, int a3, sqlite3_stmt **a4, const char **a5)
{
  v8 = sqlite3_prepare(a1, a2, a3, a4, a5);
  sqlite3_prepare_track_state(a1, a2, a4, "sqlite3_prepare", &_sqlite3_prepare);
  return v8;
}

const char *sqlite3_prepare_track_state(const char *result, char *a2, uint64_t *a3, const char *a4, uint64_t a5)
{
  if (!a2)
  {
    return result;
  }

  v5 = result;
  if (!result)
  {
    return result;
  }

  if ((envEnableAGPCDiskwritesChecks & 1) == 0)
  {
    return result;
  }

  result = GetThreadLocalData();
  if (result[49])
  {
    return result;
  }

  if (!a3 || !*a3)
  {
LABEL_35:
    result = GetThreadLocalData();
    *(result + 49) = 0;
    return result;
  }

  if (!sqlite3_stmt_readonly(*a3))
  {
    if (*a3)
    {
      if (!isDatabaseTracked(v5))
      {
        trackDatabase(v5, 0);
      }

      updateStmt(v5, *a3, a2);
      *(GetThreadLocalData() + 49) = 1;
      if ((checkWalModeFromQuery(v5, a2) & 1) != 0 || isDBInWalMode(v5))
      {
        v13 = 1;
        updateWALModeTracker(v5, 1);
      }

      else
      {
        v13 = 3;
      }

      if ((potentialBulkReadQuery(a2) & 1) == 0 && !potentialBulkWriteQuery(a2))
      {
        v13 &= 2u;
      }

      checkAndGenerateBT(a4, a5, v13, 17, 3, 8196, 3, 1);
    }

    goto LABEL_35;
  }

  v10 = isExplicitVacuumQuery(a2);
  v11 = isDatabaseTracked(v5);
  if (v10)
  {
    if (!v11)
    {
      trackDatabase(v5, 0);
    }

    updateStmt(v5, *a3, a2);
    *(GetThreadLocalData() + 49) = 1;
    if ((checkWalModeFromQuery(v5, a2) & 1) != 0 || isDBInWalMode(v5))
    {
      updateWALModeTracker(v5, 1);
    }

    *(GetThreadLocalData() + 49) = 0;
    v12 = 3;
  }

  else
  {
    if (!v11)
    {
      trackDatabase(v5, 0);
    }

    updateStmt(v5, *a3, a2);
    v12 = 1;
  }

  if ((potentialBulkReadQuery(a2) & 1) == 0 && !potentialBulkWriteQuery(a2))
  {
    v12 &= 2u;
  }

  return checkAndGenerateBT(a4, a5, v12, 17, 3, 8196, 3, 1);
}

uint64_t interposed_sqlite3_prepare_v2(sqlite3 *a1, char *a2, int a3, sqlite3_stmt **a4, const char **a5)
{
  v8 = sqlite3_prepare_v2(a1, a2, a3, a4, a5);
  sqlite3_prepare_track_state(a1, a2, a4, "sqlite3_prepare_v2", &_sqlite3_prepare_v2);
  return v8;
}

uint64_t interposed_sqlite3_prepare_v3(sqlite3 *a1, char *a2, int a3, unsigned int a4, sqlite3_stmt **a5, const char **a6)
{
  v9 = sqlite3_prepare_v3(a1, a2, a3, a4, a5, a6);
  sqlite3_prepare_track_state(a1, a2, a5, "sqlite3_prepare_v3", &_sqlite3_prepare_v3);
  return v9;
}

uint64_t interposed_sqlite3_prepare16(sqlite3 *a1, void *a2, int a3, sqlite3_stmt **a4, const void **a5)
{
  v8 = sqlite3_prepare16(a1, a2, a3, a4, a5);
  sqlite3_prepare_track_state(a1, a2, a4, "sqlite3_prepare16", &_sqlite3_prepare16);
  return v8;
}

uint64_t interposed_sqlite3_prepare16_v2(sqlite3 *a1, void *a2, int a3, sqlite3_stmt **a4, const void **a5)
{
  v8 = sqlite3_prepare16_v2(a1, a2, a3, a4, a5);
  sqlite3_prepare_track_state(a1, a2, a4, "sqlite3_prepare16_v2", &_sqlite3_prepare16_v2);
  return v8;
}

uint64_t interposed_sqlite3_prepare16_v3(sqlite3 *a1, void *a2, int a3, unsigned int a4, sqlite3_stmt **a5, const void **a6)
{
  v9 = sqlite3_prepare16_v3(a1, a2, a3, a4, a5, a6);
  sqlite3_prepare_track_state(a1, a2, a5, "sqlite3_prepare16_v3", &_sqlite3_prepare16_v3);
  return v9;
}

uint64_t interposed_sqlite3_step(sqlite3_stmt *a1)
{
  if (a1 && (envEnableAGPCDiskwritesChecks & 1) != 0 && (*(GetThreadLocalData() + 49) & 1) == 0)
  {
    pCur = 0;
    v16 = 0;
    *v14 = 0;
    *pHiwtr = 0;
    v12 = 0;
    v13 = 0;
    *(GetThreadLocalData() + 33) = 1;
    v3 = sqlite3_db_handle(a1);
    if ((GetThreadLocalData()[4] & 1) == 0 && v3)
    {
      if (!isDatabaseTracked(v3))
      {
        trackDatabase(v3, 0);
      }

      if (isExplicitVacuumStatement(a1))
      {
        *(GetThreadLocalData() + 48) = 1;
      }
    }

    if (v3 && (envEnableSQLiteDBStatusInspection & 1) != 0)
    {
      v4 = sqlite3_db_mutex(v3);
      sqlite3_mutex_enter(v4);
      determineStmtStats(v3, &pCur, &v16, &pHiwtr[1], pHiwtr);
      v5 = sqlite3_step(a1);
      if ((v5 & 0xFE) == 0x64)
      {
        determineStmtStats(v3, &v14[1], v14, &v13 + 1, pHiwtr);
        sqlite3_mutex_leave(v4);
        determineSpills(&pHiwtr[1], &v13 + 1, &v13);
        determineSpills(&pCur, &v14[1], &v12 + 1);
        determineSpills(&v16, v14, &v12);
        v6 = HIDWORD(v12);
        *(GetThreadLocalData() + 10) = v6;
        v7 = v12;
        *(GetThreadLocalData() + 11) = v7;
        v8 = v13;
        *(GetThreadLocalData() + 9) = v8;
        v9 = 1;
        goto LABEL_20;
      }

      sqlite3_mutex_leave(v4);
    }

    else
    {
      v5 = sqlite3_step(a1);
    }

    v9 = 0;
LABEL_20:
    if (GetThreadLocalData()[4])
    {
LABEL_37:
      *(GetThreadLocalData() + 33) = 0;
      *(GetThreadLocalData() + 48) = 0;
      return v5;
    }

    *(GetThreadLocalData() + 49) = 1;
    if (!isDBAssociatedWithStmtTracked(a1) || (isDBAssociatedWithStmtInMemory(a1) & 1) != 0 || (isStmtForDBInWalMode(a1) & 1) != 0 || !isWriteStatement(a1))
    {
      if ((GetThreadLocalData()[4] & 1) == 0)
      {
        if (*(GetThreadLocalData() + 48) == 1)
        {
          *(GetThreadLocalData() + 49) = 1;
          if (!autoVacuumModeStatus(v3))
          {
            checkAndGenerateBT("sqlite3_step", &_sqlite3_step, 3, 17, 3, 8200, 3, 1);
          }

          *(GetThreadLocalData() + 49) = 0;
          goto LABEL_36;
        }

        v10 = 1;
        v11 = -1;
        goto LABEL_35;
      }
    }

    else
    {
      if (v9 && (GetThreadLocalData()[4] & 1) == 0)
      {
        if (v12 < 1 || v13 < 1)
        {
          if (v12 < 1)
          {
            goto LABEL_36;
          }

          v10 = 3;
          v11 = 8194;
        }

        else
        {
          v10 = 3;
          v11 = 8197;
        }

        goto LABEL_35;
      }

      if ((GetThreadLocalData()[4] & 1) == 0)
      {
        v10 = 3;
        v11 = 8196;
LABEL_35:
        checkAndGenerateBT("sqlite3_step", &_sqlite3_step, v10, 17, 3, v11, 3, 1);
      }
    }

LABEL_36:
    *(GetThreadLocalData() + 49) = 0;
    goto LABEL_37;
  }

  return sqlite3_step(a1);
}

uint64_t interposed_sqlite3_wal_checkpoint_v2(sqlite3 *a1, const char *a2, int a3, int *a4, int *a5)
{
  v7 = sqlite3_wal_checkpoint_v2(a1, a2, a3, a4, a5);
  if (a1 && (envEnableAGPCDiskwritesChecks & 1) != 0 && (*(GetThreadLocalData() + 49) & 1) == 0)
  {
    if (!isDatabaseTracked(a1))
    {
      trackDatabase(a1, 0);
    }

    *(GetThreadLocalData() + 49) = 1;
    if ((checkWalModeFromQuery(a1, a2) & 1) != 0 || isDBInWalMode(a1))
    {
      updateWALModeTracker(a1, 1);
    }

    *(GetThreadLocalData() + 49) = 0;
    if ((*(GetThreadLocalData() + 33) & 1) == 0)
    {
      checkAndGenerateBT("sqlite3_wal_checkpoint_v2", &_sqlite3_wal_checkpoint_v2, 3, 17, 3, 8199, 3, 1);
    }
  }

  return v7;
}

uint64_t interposed_sqlite3_wal_autocheckpoint(sqlite3 *a1, int a2)
{
  v3 = sqlite3_wal_autocheckpoint(a1, a2);
  if (a1 && (envEnableAGPCDiskwritesChecks & 1) != 0 && (*(GetThreadLocalData() + 49) & 1) == 0)
  {
    if (!isDatabaseTracked(a1))
    {
      trackDatabase(a1, 0);
    }

    *(GetThreadLocalData() + 49) = 1;
    if ((checkWalModeFromQuery(a1, 0) & 1) != 0 || isDBInWalMode(a1))
    {
      updateWALModeTracker(a1, 1);
    }

    *(GetThreadLocalData() + 49) = 0;
    if ((*(GetThreadLocalData() + 33) & 1) == 0)
    {
      checkAndGenerateBT("sqlite3_wal_autocheckpoint", &_sqlite3_wal_autocheckpoint, 3, 17, 3, 8199, 3, 1);
    }
  }

  return v3;
}

void *interposed_sqlite3_wal_hook(sqlite3 *a1, int (__cdecl *a2)(void *, sqlite3 *, const char *, int), void *a3)
{
  if (a1 && (envEnableAGPCDiskwritesChecks & 1) != 0 && (*(GetThreadLocalData() + 49) & 1) == 0)
  {
    if (!isDatabaseTracked(a1))
    {
      trackDatabase(a1, 0);
    }

    *(GetThreadLocalData() + 49) = 1;
    if ((checkWalModeFromQuery(a1, 0) & 1) != 0 || isDBInWalMode(a1))
    {
      updateWALModeTracker(a1, 1);
    }

    *(GetThreadLocalData() + 49) = 0;
  }

  return sqlite3_wal_hook(a1, a2, a3);
}

uint64_t interposed_sqlite3_wal_checkpoint(sqlite3 *db, char *zDb)
{
  if (db && (envEnableAGPCDiskwritesChecks & 1) != 0 && (*(GetThreadLocalData() + 49) & 1) == 0)
  {
    if (!isDatabaseTracked(db))
    {
      trackDatabase(db, 0);
    }

    *(GetThreadLocalData() + 49) = 1;
    if ((checkWalModeFromQuery(db, 0) & 1) != 0 || isDBInWalMode(db))
    {
      updateWALModeTracker(db, 1);
    }

    *(GetThreadLocalData() + 49) = 0;
    if ((*(GetThreadLocalData() + 33) & 1) == 0)
    {
      checkAndGenerateBT("sqlite3_wal_checkpoint", &_sqlite3_wal_checkpoint, 3, 17, 3, 8199, 3, 1);
    }
  }

  return sqlite3_wal_checkpoint(db, zDb);
}

uint64_t interposed_dispatch_semaphore_create(intptr_t a1)
{
  v2 = dispatch_semaphore_create(a1);
  v3 = v2;
  if ((envDisablePriorityInversions & 1) == 0)
  {
    v4 = (&unfair_lock + 4 * getMapId(v2));
    os_unfair_lock_lock(v4);
    if (findPrimitiveInfoNoAssert(v3))
    {
      v5 = *GetThreadLocalData();
      v6 = GetThreadLocalData()[1];
      v7 = *(GetThreadLocalData() + 4);
      updateWaiterCountValueUnconditionally(v3, a1);
      updatePrimitiveWaiterQoSInfoUnconditionally(v3, 0, 0, 0);
      updatePrimitiveSignallerQoSInfoUnconditionally(v3, 33, v5, v6, v7);
    }

    else
    {
      envDisablePriorityInversions = createPrimitiveEntry(v3, 0, 33, a1) ^ 1;
    }

    os_unfair_lock_unlock(v4);
  }

  return v3;
}

intptr_t interposed_dispatch_semaphore_wait(dispatch_semaphore_t dsema, dispatch_time_t timeout)
{
  if (envDisablePriorityInversions == 1 || (MapId = getMapId(dsema), v5 = (&unfair_lock + 4 * MapId), os_unfair_lock_lock(v5), PrimitiveInfoNoAssert = findPrimitiveInfoNoAssert(dsema), os_unfair_lock_unlock(v5), !PrimitiveInfoNoAssert))
  {

    return dispatch_semaphore_wait(dsema, timeout);
  }

  else
  {
    v7 = mach_absolute_time();
    v8 = dispatch_semaphore_wait(dsema, timeout);
    v9 = mach_absolute_time();
    os_unfair_lock_lock(v5);
    v10 = qos_class_self();
    updatePrimitiveWaiterQoSInfo(dsema, v10, v7, v9);
    if (updateAndGetWaiterCountValue(dsema, 0) == -1)
    {
      qosWaiterSignallerInvariantCheck(unlockLockInDispatchLockMap, MapId, dsema, 1, "dispatch_semaphore_wait");
      os_unfair_lock_lock(v5);
      deletePrimitiveEntry(dsema);
    }

    os_unfair_lock_unlock(v5);
    return v8;
  }
}

intptr_t interposed_dispatch_semaphore_signal(dispatch_semaphore_t dsema)
{
  if ((envDisablePriorityInversions & 1) == 0)
  {
    v2 = (&unfair_lock + 4 * getMapId(dsema));
    os_unfair_lock_lock(v2);
    if (findPrimitiveInfoNoAssert(dsema))
    {
      v3 = *GetThreadLocalData();
      v4 = GetThreadLocalData()[1];
      v5 = *(GetThreadLocalData() + 4);
      v6 = qos_class_self();
      updatePrimitiveSignallerQoSInfo(dsema, v6, v3, v4, v5);
    }

    os_unfair_lock_unlock(v2);
  }

  return dispatch_semaphore_signal(dsema);
}

void interposed_dispatch_group_leave(dispatch_group_t group)
{
  if ((envDisablePriorityInversions & 1) == 0)
  {
    v2 = (&unfair_lock + 4 * getMapId(group));
    os_unfair_lock_lock(v2);
    if (findPrimitiveInfoNoAssert(group))
    {
      v3 = *GetThreadLocalData();
      v4 = GetThreadLocalData()[1];
      v5 = *(GetThreadLocalData() + 4);
      v6 = qos_class_self();
      updatePrimitiveSignallerQoSInfo(group, v6, v3, v4, v5);
    }

    else if (envRPACDebug == 1)
    {
      fwrite("No entry found before leaving\n", 0x1EuLL, 1uLL, __stderrp);
    }

    os_unfair_lock_unlock(v2);
  }

  dispatch_group_leave(group);
}

intptr_t interposed_dispatch_group_wait(dispatch_group_t group, dispatch_time_t timeout)
{
  if (envDisablePriorityInversions == 1)
  {

    return dispatch_group_wait(group, timeout);
  }

  else
  {
    MapId = getMapId(group);
    v6 = (&unfair_lock + 4 * MapId);
    os_unfair_lock_lock(v6);
    if (findPrimitiveInfoNoAssert(group))
    {
      PrimitiveEntry = 0;
    }

    else
    {
      PrimitiveEntry = createPrimitiveEntry(group, 0, 33, 0);
    }

    os_unfair_lock_unlock(v6);
    v8 = mach_absolute_time();
    v9 = dispatch_group_wait(group, timeout);
    v10 = mach_absolute_time();
    if (PrimitiveEntry)
    {
      v11 = v10;
      os_unfair_lock_lock(v6);
      if (findPrimitiveInfoNoAssert(group))
      {
        v12 = qos_class_self();
        updatePrimitiveWaiterQoSInfo(group, v12, v8, v11);
        qosWaiterSignallerInvariantCheck(unlockLockInDispatchLockMap, MapId, group, 1, "dispatch_group_wait");
        os_unfair_lock_lock(v6);
        deletePrimitiveEntry(group);
      }

      os_unfair_lock_unlock(v6);
    }

    return v9;
  }
}

uint64_t subCategoryType(char *__s1)
{
  if (!__s1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *__s1;
  if (*__s1)
  {
    v3 = __s1 + 1;
    do
    {
      *(v3 - 1) = __tolower(v2);
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  result = strncmp(__s1, "xpc on main thread", 0x12uLL);
  if (result)
  {
    if (!strncmp(__s1, "io on main thread", 0x11uLL))
    {
      return 3;
    }

    else if (!strncmp(__s1, "excessive io on any thread", 0x1AuLL))
    {
      return 0x2000;
    }

    else if (!strncmp(__s1, "conditional waiting on main thread", 0x22uLL))
    {
      return 2;
    }

    else if (!strncmp(__s1, "timed conditional waiting on main thread", 0x28uLL))
    {
      return 1;
    }

    else if (!strncmp(__s1, "semaphore on main thread", 0x18uLL))
    {
      return 8;
    }

    else if (!strncmp(__s1, "database access on main thread", 0x1EuLL))
    {
      return 7;
    }

    else if (!strncmp(__s1, "database read on main thread", 0x1CuLL))
    {
      return 5;
    }

    else if (!strncmp(__s1, "database write on main thread", 0x1DuLL))
    {
      return 6;
    }

    else if (!strncmp(__s1, "waiting for operation completion on main thread", 0x2FuLL))
    {
      return 4;
    }

    else if (!strncmp(__s1, "sleep", 5uLL))
    {
      return 9;
    }

    else if (!strncmp(__s1, "computer vision tasks on main thread", 0x24uLL))
    {
      return 10;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t issueType(const char **a1, int a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    v3 = a1;
    v2 = 0;
    v4 = a2;
    do
    {
      v5 = *v3;
      if (*v3)
      {
        if (!strncmp(*v3, "hang", 4uLL))
        {
          v2 = v2 | 1;
        }

        else if (!strncmp(v5, "disk write", 0xBuLL))
        {
          v2 = v2 | 2;
        }

        else if (!strncmp(v5, "launch", 6uLL))
        {
          v2 = v2 | 4;
        }

        else
        {
          v2 = v2;
        }
      }

      ++v3;
      --v4;
    }

    while (v4);
  }

  return v2;
}

uint64_t issueTypeStringList(int a1, char **a2, int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 1)
  {
    v6 = a1;
    if (a1)
    {
      *a2 = strdup("hang");
      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    if (v3 >= a3)
    {
      v3 = 1;
    }

    else if ((v6 & 2) != 0)
    {
      a2[v3] = strdup("disk write");
      v3 = (v3 + 1);
    }

    if ((v6 & 4) != 0 && v3 < a3)
    {
      a2[v3] = strdup("launch");
      return (v3 + 1);
    }
  }

  return v3;
}

uint64_t shouldFlag(unint64_t a1, int a2)
{
  if (simpleFlaggingPolicy_onceToken != -1)
  {
    shouldFlag_cold_1();
  }

  if (a2 >= 0x10000)
  {
    shouldFlag_cold_3();
  }

  totalDuration[a2] += a1;
  ++totalInstances[a2];
  if (maxDuration[a2] < a1)
  {
    maxDuration[a2] = a1;
  }

  if (a2 > 0x11)
  {
    goto LABEL_15;
  }

  if (((1 << a2) & 0x2669A) != 0)
  {
LABEL_11:
    ++flagged[a2];
    return 1;
  }

  if (((1 << a2) & 0x1944) != 0)
  {
    v4 = &envGlobalWaitThreshold;
    goto LABEL_10;
  }

  if (a2 == 5)
  {
    v4 = &envSevereHangRiskThreshold;
  }

  else
  {
LABEL_15:
    if (a2)
    {
      shouldFlag_cold_2();
    }

    v4 = &envXPCWaitThreshold;
  }

LABEL_10:
  if (*v4 < a1)
  {
    goto LABEL_11;
  }

  return 0;
}

size_t printStatistics()
{
  fprintf(__stderrp, "%-35s %-25s %-25s %-25s %-25s %-25s %-25s\n", "Category type", "Thresholds (ns)", "Flagged", "Total instances", "Flagged percentage", "Average duration (ns)", "Max duration (ns)");
  for (i = 0; i != 0x10000; ++i)
  {
    if (totalInstances[i])
    {
      v1 = __stderrp;
      v2 = logTypeString(i);
      v3 = threshold[i];
      fprintf(v1, "%-35s %-25llu %-25llu %-25llu %-25llu %-25llu %-25llu\n", v2, v3, flagged[i], totalInstances[i], (100 * flagged[i]) / totalInstances[i], totalDuration[i] / totalInstances[i], maxDuration[i]);
    }
  }

  v4 = __stderrp;

  return fwrite("=================================================================\n", 0x42uLL, 1uLL, v4);
}

void prepareInstanceMethodSwizzler(objc_class *a1, const char *a2, const char *a3)
{
  InstanceMethod = class_getInstanceMethod(a1, a2);
  v7 = class_getInstanceMethod(a1, a3);
  Implementation = method_getImplementation(v7);
  TypeEncoding = method_getTypeEncoding(v7);
  if (class_addMethod(a1, a2, Implementation, TypeEncoding))
  {
    v10 = method_getImplementation(InstanceMethod);
    v11 = method_getTypeEncoding(InstanceMethod);

    class_replaceMethod(a1, a3, v10, v11);
  }

  else
  {

    method_exchangeImplementations(InstanceMethod, v7);
  }
}

void prepareClassMethodSwizzler(objc_class *a1, const char *a2, const char *a3)
{
  ClassMethod = class_getClassMethod(a1, a2);
  v7 = class_getClassMethod(a1, a3);
  Implementation = method_getImplementation(v7);
  TypeEncoding = method_getTypeEncoding(v7);
  if (class_addMethod(a1, a2, Implementation, TypeEncoding))
  {
    v10 = method_getImplementation(ClassMethod);
    v11 = method_getTypeEncoding(ClassMethod);

    class_replaceMethod(a1, a3, v10, v11);
  }

  else
  {

    method_exchangeImplementations(ClassMethod, v7);
  }
}

uint64_t getNumCPU()
{
  if (getNumCPU_onceToken != -1)
  {
    getNumCPU_cold_1();
  }

  return getNumCPU_ncpu;
}

void __getNumCPU_block_invoke(id a1)
{
  v2 = 4;
  v1 = 0;
  sysctlbyname("hw.ncpu", &v1, &v2, 0, 0);
  getNumCPU_ncpu = v1;
}

BOOL isSystemFrame(const char *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!strncmp(a1, "/System", 7uLL) || !strncmp(a1, "/Developer", 0xAuLL) || !strncmp(a1, "/usr", 4uLL))
  {
    return 1;
  }

  v2 = strlen(a1);
  return strnstr(a1, "XCTestCore", v2) != 0;
}

unint64_t ticks_to_ns(uint64_t a1)
{
  if (ticks_to_ns_onceToken != -1)
  {
    ticks_to_ns_cold_1();
  }

  if (!dword_4E4DE0)
  {
    ticks_to_ns_cold_2();
  }

  return ticks_to_ns_local_info * a1 / dword_4E4DE0;
}

uint64_t isAppleInternal()
{
  if (isAppleInternal_onceToken != -1)
  {
    isAppleInternal_cold_1();
  }

  v0 = atomic_load(is_real_ai);
  return v0 & 1;
}

void __isAppleInternal_block_invoke(id a1)
{
  if (envIgnoreCallersFromSlashSystem)
  {
    envDisableTimeChecks = 1;
  }

  else
  {
    if ((os_variant_has_internal_diagnostics() & 1) != 0 || (os_variant_has_internal_content() & 1) != 0 || os_variant_has_internal_ui())
    {
      if (envDisableBacktraceOverride == 1)
      {
        envLogBacktraceToStderr = 0;
      }

      v1 = envDisableTimeChecks ^ 1;
    }

    else
    {
      v1 = 0;
      envDisableTimeChecks = 1;
    }

    atomic_store(v1 & 1, is_real_ai);
  }
}

void __simpleFlaggingPolicy_block_invoke(id a1)
{
  threshold = envXPCWaitThreshold;
  *algn_2E4DD8 = envTimeoutThreshold;
  qword_2E4DE0 = envGlobalWaitThreshold;
  qword_2E4DF8 = envGlobalWaitThreshold;
  unk_2E4E00 = envGlobalWaitThreshold;
  qword_2E4E08 = envGlobalWaitThreshold;
  unk_2E4E10 = envGlobalWaitThreshold;
  qword_2E4E28 = envGlobalWaitThreshold;
  unk_2E4E30 = envGlobalWaitThreshold;
}

void updateEntry(unint64_t a1, int a2)
{
  v7 = a1;
  switch(a2)
  {
    case 1:
      v2 = &duplicate_hangs_bt_map_ptr;
      break;
    case 4:
      v2 = &duplicate_launches_bt_map_ptr;
      break;
    case 2:
      v2 = &duplicate_diskwrites_bt_map_ptr;
      break;
    default:
      updateEntry_cold_2();
  }

  v3 = *v2;
  if (*v2)
  {
    os_unfair_lock_lock(&unfair_lock);
    if (!std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::find<long>(v3, &v7))
    {
      updateEntry_cold_1();
    }

    v4 = mach_absolute_time();
    v5 = ticks_to_ns(v4);
    v8 = &v7;
    std::__hash_table<std::__hash_value_type<long,hashed_addr_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,hashed_addr_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,hashed_addr_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,hashed_addr_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v3, &v7)[7] = v5;
    v8 = &v7;
    v6 = std::__hash_table<std::__hash_value_type<long,hashed_addr_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,hashed_addr_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,hashed_addr_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,hashed_addr_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v3, &v7);
    ++*(v6 + 12);
    os_unfair_lock_unlock(&unfair_lock);
  }
}

BOOL runningSumOfAddr(_BOOL8 result, void *a2, int a3, const char *a4)
{
  v5 = result;
  if ((a3 - 1) < 5)
  {
    goto LABEL_2;
  }

  if ((a3 - 6) <= 4)
  {
    result = isSystemFrame(a4);
    if (!result)
    {
      return result;
    }

LABEL_2:
    *a2 += v5;
    return result;
  }

  if ((a3 - 11) <= 4)
  {
    result = isSystemFrame(a4);
    if (!result)
    {
      goto LABEL_2;
    }
  }

  return result;
}

BOOL isFrameworkSupplementedDuplicateDetectionPolicy(int a1)
{
  v1 = a1 == 5 || a1 == 3;
  v2 = a1 & 0xFFFFFFFD;
  return v1 || v2 == 8 || v2 == 13;
}

void *addStringToSum(void *result, char *__s, unsigned int a3)
{
  if (__s && a3 <= 0xF && ((1 << a3) & 0xF7BC) != 0 && *__s)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    do
    {
      v6 += __s[v5];
      *v4 = v6;
      ++v5;
      result = strlen(__s);
    }

    while (result > v5);
  }

  return result;
}

void storeAddressHash(unint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v29[0] = a1;
  switch(a5)
  {
    case 1:
      v10 = &duplicate_hangs_bt_map_ptr;
      break;
    case 4:
      v10 = &duplicate_launches_bt_map_ptr;
      break;
    case 2:
      v10 = &duplicate_diskwrites_bt_map_ptr;
      break;
    default:
      updateEntry_cold_2();
  }

  v11 = *v10;
  if (!*v10)
  {
    v17 = mach_absolute_time();
    if (ticks_to_ns(v17 - dylibInitializationStartTime) <= envOverrideStartupThresholdValue)
    {
      return;
    }

    initializeDuplicateBTMap();
    if (a5 == 4)
    {
      v11 = duplicate_launches_bt_map_ptr;
    }

    else if (a5 == 2)
    {
      v11 = duplicate_diskwrites_bt_map_ptr;
    }

    else
    {
      v11 = duplicate_hangs_bt_map_ptr;
    }
  }

  v12 = mach_absolute_time();
  v13 = ticks_to_ns(v12);
  v14 = &maxDuration[65094];
  if (v13 - last_cleanup_event_timestamp > envOverrideCleanupThresholdValue)
  {
    v15 = v13;
    if (a5 == 1)
    {
      v16 = &duplicate_hangs_bt_map_ptr;
    }

    else if (a5 == 4)
    {
      v16 = &duplicate_launches_bt_map_ptr;
    }

    else
    {
      v16 = &duplicate_diskwrites_bt_map_ptr;
    }

    v18 = *v16;
    if (*v16)
    {
      os_unfair_lock_lock(&unfair_lock);
      v19 = v18[2];
      if (!v19)
      {
        goto LABEL_27;
      }

      v20 = 0;
      do
      {
        while (!*(v19 + 48) && v15 - *(v19 + 56) > 0x1C9C380)
        {
          v19 = std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::erase(v18, v19);
          ++v20;
          if (!v19)
          {
            goto LABEL_26;
          }
        }

        v19 = *v19;
      }

      while (v19);
LABEL_26:
      v14 = &maxDuration[65094];
      if (!v20)
      {
LABEL_27:
        if (v18[3] >= 0xC8uLL)
        {
          if (envRPACDebug == 1)
          {
            fprintf(__stderrp, "%s: Aggressive cleanup triggered\n", "cleanupEntriesInDuplicateTable");
          }

          os_unfair_lock_unlock(&unfair_lock);
          if (a5 == 1)
          {
            v21 = &duplicate_hangs_bt_map_ptr;
          }

          else if (a5 == 4)
          {
            v21 = &duplicate_launches_bt_map_ptr;
          }

          else
          {
            v21 = &duplicate_diskwrites_bt_map_ptr;
          }

          v22 = *v21;
          if (!*v21)
          {
            goto LABEL_50;
          }

          os_unfair_lock_lock(&unfair_lock);
          v23 = v22[2];
          if (v23)
          {
            v24 = 0;
            do
            {
              if (v15 - v23[7] <= 0x1C9C380)
              {
                v23 = *v23;
              }

              else
              {
                v23 = std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::erase(v22, v23);
                ++v24;
              }
            }

            while (v23);
            v25 = v24 == 0;
            v14 = maxDuration + 520752;
          }

          else
          {
            v25 = 1;
          }

          if (envRPACDebug == 1 && v25)
          {
            fprintf(__stderrp, "%s: No frames removed from duplicate bt map", "aggressiveCleanup");
          }
        }
      }

      os_unfair_lock_unlock(&unfair_lock);
    }

LABEL_50:
    v14[450] = v15;
  }

  if (duplicate_fun_ptr(a1, a5))
  {
    storeAddressHash_cold_2();
  }

  v26 = mach_absolute_time();
  v27 = ticks_to_ns(v26);
  os_unfair_lock_lock(&unfair_lock);
  v29[2] = v29;
  v28 = std::__hash_table<std::__hash_value_type<long,hashed_addr_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,hashed_addr_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,hashed_addr_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,hashed_addr_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v11, v29);
  v28[3] = a1;
  v28[4] = a2;
  *(v28 + 10) = a3;
  *(v28 + 11) = a4;
  v28[6] = 0;
  v28[7] = v27;
  os_unfair_lock_unlock(&unfair_lock);
}

void initializeDuplicateBTMap(void)
{
  if (initializeDuplicateBTMap(void)::onceToken != -1)
  {
    dispatch_once(&initializeDuplicateBTMap(void)::onceToken, &__block_literal_global_2);
  }
}

uint64_t getDuplicateMapSize(int a1)
{
  switch(a1)
  {
    case 1:
      v1 = &duplicate_hangs_bt_map_ptr;
      break;
    case 4:
      v1 = &duplicate_launches_bt_map_ptr;
      break;
    case 2:
      v1 = &duplicate_diskwrites_bt_map_ptr;
      break;
    default:
      updateEntry_cold_2();
  }

  v2 = *v1;
  if (*v1)
  {
    os_unfair_lock_lock(&unfair_lock);
    v2 = *(v2 + 24);
    os_unfair_lock_unlock(&unfair_lock);
  }

  return v2;
}

BOOL preInitializationDuplicationCheck(unint64_t a1, int a2)
{
  switch(a2)
  {
    case 1:
      v4 = &duplicate_hangs_bt_map_ptr;
      break;
    case 4:
      v4 = &duplicate_launches_bt_map_ptr;
      break;
    case 2:
      v4 = &duplicate_diskwrites_bt_map_ptr;
      break;
    default:
      updateEntry_cold_2();
  }

  if (!*v4)
  {
    v5 = mach_absolute_time();
    if (ticks_to_ns(v5 - dylibInitializationStartTime) <= envOverrideStartupThresholdValue)
    {
      return 1;
    }

    initializeDuplicateBTMap();
  }

  os_unfair_lock_lock(&unfair_lock);
  duplicate_fun_ptr = postInitializationDuplicationCheck;
  os_unfair_lock_unlock(&unfair_lock);

  return postInitializationDuplicationCheck(a1, a2);
}

BOOL postInitializationDuplicationCheck(unint64_t a1, int a2)
{
  v6 = a1;
  os_unfair_lock_lock(&unfair_lock);
  switch(a2)
  {
    case 1:
      v3 = &duplicate_hangs_bt_map_ptr;
      break;
    case 4:
      v3 = &duplicate_launches_bt_map_ptr;
      break;
    case 2:
      v3 = &duplicate_diskwrites_bt_map_ptr;
      break;
    default:
      updateEntry_cold_2();
  }

  v4 = std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::find<long>(*v3, &v6) != 0;
  os_unfair_lock_unlock(&unfair_lock);
  return v4;
}

void *std::__hash_table<std::__hash_value_type<long,hashed_addr_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,hashed_addr_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,hashed_addr_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,hashed_addr_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

BOOL jsonVerified()
{
  v0 = [NSString stringWithCString:rules_json_array encoding:1];
  v1 = [v0 dataUsingEncoding:4];
  if (!v1)
  {
    jsonVerified_cold_1();
  }

  v2 = v1;
  v6 = 0;
  v3 = [NSJSONSerialization JSONObjectWithData:v1 options:0 error:&v6];
  v4 = v3 != 0;

  return v4;
}

void swizzleAPIsForHangDetection(int a1)
{
  v1 = [NSString stringWithCString:rules_json_array encoding:1];
  NSLog(@"%@\n", v1);
  v2 = [v1 dataUsingEncoding:4];
  if (v2)
  {
    *&v188 = 0;
    v3 = [NSJSONSerialization JSONObjectWithData:v2 options:0 error:&v188];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      NSLog(@"%s JSON Error", "initHangRules");
    }
  }

  else
  {
    NSLog(@"%s NSData Error", "initHangRules");
    v4 = 0;
  }

  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  obj = v4;
  v128 = [obj countByEnumeratingWithState:&v179 objects:v228 count:16];
  if (v128)
  {
    v127 = *v180;
    do
    {
      v6 = 0;
      do
      {
        if (*v180 != v127)
        {
          objc_enumerationMutation(obj);
        }

        v129 = v6;
        v7 = *(*(&v179 + 1) + 8 * v6);
        v8 = [v7 objectForKey:@"framework"];

        if (!v8)
        {
          goto LABEL_252;
        }

        v9 = [v7 objectForKeyedSubscript:@"framework"];
        v10 = [v7 objectForKey:@"swizzle"];

        if (!v10)
        {
          goto LABEL_251;
        }

        v11 = [v7 objectForKeyedSubscript:@"swizzle"];
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        v136 = v11;
        v144 = [v136 countByEnumeratingWithState:&v175 objects:v227 count:16];
        if (!v144)
        {
          goto LABEL_250;
        }

        v143 = *v176;
        v140 = v9;
        do
        {
          v12 = 0;
          do
          {
            if (*v176 != v143)
            {
              objc_enumerationMutation(v136);
            }

            v13 = *(*(&v175 + 1) + 8 * v12);
            v14 = [v13 objectForKey:@"class"];

            v15 = v13;
            if (v14)
            {
              v16 = [v13 objectForKeyedSubscript:@"class"];
            }

            else
            {
              v16 = 0;
            }

            v17 = envEnableAGPCClassSkip != 1 || agpcSuppressionClassString == 0;
            if (!v17 && strstr(agpcSuppressionClassString, [v16 cStringUsingEncoding:4]))
            {
              goto LABEL_248;
            }

            v18 = v9;
            v19 = v16;
            if (skipSwizzle_onceToken != -1)
            {
              swizzleAPIsForHangDetection_cold_1();
            }

            v145 = v16;
            v146 = v12;
            if (v9 && !v19)
            {
              if ((envEnableAGPCAudioVideoChecks & 1) == 0)
              {
                v20 = [skipSwizzle_audioVideoFrameworks containsObject:v18];
                v21 = 0;
                v22 = v18;
                if (v20)
                {
                  goto LABEL_246;
                }
              }

              goto LABEL_247;
            }

            if (!v9 && v19)
            {
              if ((envEnableAGPCAudioVideoChecks & 1) == 0)
              {
LABEL_37:
                if ([skipSwizzle_audioVideoClasses containsObject:v19])
                {
                  v21 = v19;
                  v22 = v18;
                  goto LABEL_246;
                }
              }

LABEL_43:

              goto LABEL_45;
            }

            if (v9 && v19)
            {
              if ((envEnableAGPCAudioVideoChecks & 1) == 0 && [skipSwizzle_audioVideoFrameworks containsObject:v18])
              {
                goto LABEL_37;
              }

              goto LABEL_43;
            }

            if (!v19)
            {
              goto LABEL_248;
            }

LABEL_45:
            v134 = v18;
            v135 = v19;
            v23 = [v15 objectForKey:@"antipattern type"];

            if (v23)
            {
              v22 = [v15 objectForKeyedSubscript:@"antipattern type"];
            }

            else
            {
              v22 = 0;
            }

            v24 = [v15 objectForKey:@"performance issue type"];

            if (v24)
            {
              v139 = [v15 objectForKeyedSubscript:@"performance issue type"];
            }

            else
            {
              v139 = 0;
            }

            v25 = [v15 objectForKey:@"duplicate detection type"];

            if (v25)
            {
              v138 = [v15 objectForKeyedSubscript:@"duplicate detection type"];
            }

            else
            {
              v138 = 0;
            }

            v141 = v15;
            v137 = [v15 objectForKeyedSubscript:@"methods"];
            v26 = [v137 objectForKey:@"prefixes"];

            v27 = v26 != 0;
            if (v26)
            {
              v195 = 0u;
              v194 = 0u;
              v193 = 0u;
              v192 = 0u;
              v191 = 0u;
              v190 = 0u;
              v189 = 0u;
              v188 = 0u;
              *&v188 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
              if (v188)
              {
                v28 = 1;
                do
                {
                  if (v28 == 16)
                  {
                    v31 = [v137 objectForKeyedSubscript:@"prefixes"];
                    v171 = 0u;
                    v172 = 0u;
                    v173 = 0u;
                    v174 = 0u;
                    v32 = v31;
                    v33 = [v32 countByEnumeratingWithState:&v171 objects:v226 count:16];
                    if (v33)
                    {
                      v34 = v33;
                      v35 = 0;
                      v36 = *v172;
                      do
                      {
                        for (i = 0; i != v34; i = i + 1)
                        {
                          if (*v172 != v36)
                          {
                            objc_enumerationMutation(v32);
                          }

                          v38 = *(*(&v171 + 1) + 8 * i);
                          v39 = envEnableAGPCMethodSkip != 1 || agpcSuppressionMethodString == 0;
                          if (v39 || !strstr(agpcSuppressionMethodString, [v38 cStringUsingEncoding:4]))
                          {
                            strcpy(*(&v188 + v35++), [v38 UTF8String]);
                          }
                        }

                        v34 = [v32 countByEnumeratingWithState:&v171 objects:v226 count:16];
                      }

                      while (v34);

                      if (v35 >= 1)
                      {
                        if (envRPACTrampolineSwizzleDebug == 1)
                        {
                          fprintf(__stderrp, "%s: Swizzle all methods of %s with a particular prefix\n", "swizzleAPIsForHangDetection", [v135 UTF8String]);
                        }

                        v225 = 0;
                        v224 = 0xFFFFFFFFLL;
                        v40 = [v22 objectAtIndexedSubscript:0];
                        LODWORD(v224) = subCategoryType([v40 UTF8String]);

                        if (v139)
                        {
                          v222 = 0;
                          v221 = 0;
                          v223 = 0;
                          v167 = 0u;
                          v168 = 0u;
                          v169 = 0u;
                          v170 = 0u;
                          v41 = v139;
                          v42 = [v41 countByEnumeratingWithState:&v167 objects:v220 count:16];
                          if (v42)
                          {
                            v43 = v42;
                            v130 = v27;
                            LODWORD(v44) = 0;
                            v45 = *v168;
                            do
                            {
                              v46 = 0;
                              v44 = v44;
                              do
                              {
                                if (*v168 != v45)
                                {
                                  objc_enumerationMutation(v41);
                                }

                                *(&v221 + v44) = [*(*(&v167 + 1) + 8 * v46) cStringUsingEncoding:4];
                                v47 = [v22 objectAtIndexedSubscript:v44];
                                *(&v224 + v44) = subCategoryType([v47 UTF8String]);

                                ++v44;
                                v46 = v46 + 1;
                              }

                              while (v43 != v46);
                              v43 = [v41 countByEnumeratingWithState:&v167 objects:v220 count:16];
                            }

                            while (v43);
                            v27 = v130;
                          }

                          else
                          {
                            LODWORD(v44) = 0;
                          }

                          if (v138)
                          {
                            v48 = duplicateDetectionPolicy([v138 cStringUsingEncoding:4]);
                          }

                          else
                          {
                            v48 = 1;
                          }

                          v49 = issueType(&v221, v44);
                          if (!v49)
                          {
                            if (envRPACTrampolineSwizzleDebug == 1)
                            {
                              fprintf(__stderrp, "%s: issueType invalid for class %s\n", "swizzleAPIsForHangDetection", [v135 UTF8String]);
                            }

                            v49 = 1;
                            LODWORD(v44) = 1;
                          }

                          v131 = v49;
                        }

                        else
                        {
                          v131 = 1;
                          v48 = 1;
                          LODWORD(v44) = 1;
                        }

                        Class = objc_getClass([v135 UTF8String]);
                        swizzleAllMethods(Class, [v134 UTF8String], objc_msgSend(v135, "UTF8String"), a1, &v188, v35, 0, 0, 0x11u, &v224, v131, v44, v48);
                      }
                    }

                    else
                    {
                    }

                    v30 = 0;
                    goto LABEL_99;
                  }

                  v29 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
                  *(&v188 + v28++) = v29;
                }

                while (v29);
                v30 = (v28 - 2) < 0xF;
              }

              else
              {
                v30 = 1;
              }

LABEL_99:
              v51 = 0;
              v52 = !v30;
              while (1)
              {
                v53 = *(&v188 + v51);
                if (v53)
                {
                  free(v53);
                  if (v51 > 0xE)
                  {
                    break;
                  }
                }

                else if (v51 >= 0xF || !v52)
                {
                  break;
                }

                ++v51;
              }
            }

            v55 = [v141 objectForKey:@"instance methods"];

            if (!v55)
            {
              goto LABEL_166;
            }

            v56 = [v141 objectForKeyedSubscript:@"instance methods"];
            v57 = [v56 objectForKey:@"names"];

            if (!v57)
            {
              goto LABEL_165;
            }

            v219 = 0u;
            v218 = 0u;
            v217 = 0u;
            v216 = 0u;
            v215 = 0u;
            v214 = 0u;
            v213 = 0u;
            v212 = 0u;
            v211 = 0u;
            v210 = 0u;
            v209 = 0u;
            v208 = 0u;
            v207 = 0u;
            v206 = 0u;
            v205 = 0u;
            v204 = 0u;
            v203 = 0u;
            v202 = 0u;
            v201 = 0u;
            v200 = 0u;
            v199 = 0u;
            v198 = 0u;
            v197 = 0u;
            v196 = 0u;
            v195 = 0u;
            v194 = 0u;
            v193 = 0u;
            v192 = 0u;
            v191 = 0u;
            v190 = 0u;
            v189 = 0u;
            v188 = 0u;
            *&v188 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
            if (v188)
            {
              v58 = 1;
              while (v58 != 128)
              {
                v59 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
                *(&v188 + v58++) = v59;
                if (!v59)
                {
                  v60 = (v58 - 2) < 0x7F;
                  goto LABEL_155;
                }
              }

              v132 = v56;
              v61 = [v56 objectForKeyedSubscript:@"names"];
              v163 = 0u;
              v164 = 0u;
              v165 = 0u;
              v166 = 0u;
              v62 = v61;
              v63 = [v62 countByEnumeratingWithState:&v163 objects:v187 count:16];
              if (v63)
              {
                v64 = v63;
                v65 = 0;
                v66 = *v164;
                do
                {
                  for (j = 0; j != v64; j = j + 1)
                  {
                    if (*v164 != v66)
                    {
                      objc_enumerationMutation(v62);
                    }

                    v68 = *(*(&v163 + 1) + 8 * j);
                    v69 = envEnableAGPCMethodSkip != 1 || agpcSuppressionMethodString == 0;
                    if (v69 || !strstr(agpcSuppressionMethodString, [v68 cStringUsingEncoding:4]))
                    {
                      strcpy(*(&v188 + v65++), [v68 UTF8String]);
                    }
                  }

                  v64 = [v62 countByEnumeratingWithState:&v163 objects:v187 count:16];
                }

                while (v64);

                if (v65 >= 1)
                {
                  if (envRPACTrampolineSwizzleDebug == 1)
                  {
                    fprintf(__stderrp, "%s: Swizzle instance methods of %s with a particular method name\n", "swizzleAPIsForHangDetection", [v135 UTF8String]);
                  }

                  v225 = 0;
                  v224 = 0xFFFFFFFFLL;
                  v70 = [v22 objectAtIndexedSubscript:0];
                  LODWORD(v224) = subCategoryType([v70 UTF8String]);

                  if (!v139)
                  {
                    v78 = 1;
                    v79 = 1;
                    goto LABEL_152;
                  }

                  v222 = 0;
                  v221 = 0;
                  v223 = 0;
                  v159 = 0u;
                  v160 = 0u;
                  v161 = 0u;
                  v162 = 0u;
                  v71 = v139;
                  v72 = [v71 countByEnumeratingWithState:&v159 objects:v186 count:16];
                  if (v72)
                  {
                    v73 = v72;
                    LODWORD(v74) = 0;
                    v75 = *v160;
                    do
                    {
                      v76 = 0;
                      v74 = v74;
                      do
                      {
                        if (*v160 != v75)
                        {
                          objc_enumerationMutation(v71);
                        }

                        *(&v221 + v74) = [*(*(&v159 + 1) + 8 * v76) cStringUsingEncoding:4];
                        v77 = [v22 objectAtIndexedSubscript:v74];
                        *(&v224 + v74) = subCategoryType([v77 UTF8String]);

                        ++v74;
                        v76 = v76 + 1;
                      }

                      while (v73 != v76);
                      v73 = [v71 countByEnumeratingWithState:&v159 objects:v186 count:16];
                    }

                    while (v73);
                  }

                  else
                  {
                    LODWORD(v74) = 0;
                  }

                  if (v138)
                  {
                    v79 = duplicateDetectionPolicy([v138 cStringUsingEncoding:4]);
                  }

                  else
                  {
                    v79 = 1;
                  }

                  v78 = issueType(&v221, v74);
                  if (!v78)
                  {
                    if (envRPACTrampolineSwizzleDebug == 1)
                    {
                      fprintf(__stderrp, "%s: issueType invalid for class %s\n", "swizzleAPIsForHangDetection", [v135 UTF8String]);
                    }

                    v78 = 1;
LABEL_152:
                    LODWORD(v74) = 1;
                  }

                  v80 = objc_getClass([v135 UTF8String]);
                  swizzleMethods(v80, [v134 UTF8String], objc_msgSend(v135, "UTF8String"), &v188, v65, 1, a1, 0x11u, &v224, v78, v74, v79);
                }
              }

              else
              {
              }

              v60 = 0;
              v56 = v132;
              goto LABEL_155;
            }

            v60 = 1;
LABEL_155:
            v81 = 0;
            v82 = !v60;
            while (1)
            {
              v83 = *(&v188 + v81);
              if (!v83)
              {
                break;
              }

              free(v83);
              if (v81 > 0x7E)
              {
                goto LABEL_164;
              }

LABEL_163:
              ++v81;
            }

            if (v81 < 0x7F && v82)
            {
              goto LABEL_163;
            }

LABEL_164:
            v27 = 1;
LABEL_165:

LABEL_166:
            v85 = [v141 objectForKey:@"class methods"];

            if (!v85)
            {
              goto LABEL_174;
            }

            v86 = [v141 objectForKeyedSubscript:@"class methods"];
            v87 = [v86 objectForKey:@"names"];

            if (!v87)
            {

LABEL_174:
              if (v27)
              {
                goto LABEL_245;
              }

              if (envRPACTrampolineSwizzleDebug == 1)
              {
                fprintf(__stderrp, "%s: Swizzle all methods of %s\n", "swizzleAPIsForHangDetection", [v135 UTF8String]);
              }

              LODWORD(v222) = 0;
              v221 = 0xFFFFFFFFLL;
              v91 = [v22 objectAtIndexedSubscript:0];
              LODWORD(v221) = subCategoryType([v91 UTF8String]);

              if (v139)
              {
                v188 = 0uLL;
                *&v189 = 0;
                v147 = 0u;
                v148 = 0u;
                v149 = 0u;
                v150 = 0u;
                v92 = v139;
                v93 = [v92 countByEnumeratingWithState:&v147 objects:v183 count:16];
                if (v93)
                {
                  v94 = v93;
                  LODWORD(v95) = 0;
                  v96 = *v148;
                  do
                  {
                    v97 = 0;
                    v95 = v95;
                    do
                    {
                      if (*v148 != v96)
                      {
                        objc_enumerationMutation(v92);
                      }

                      *(&v188 + v95) = [*(*(&v147 + 1) + 8 * v97) cStringUsingEncoding:4];
                      v98 = [v22 objectAtIndexedSubscript:v95];
                      *(&v221 + v95) = subCategoryType([v98 UTF8String]);

                      ++v95;
                      v97 = v97 + 1;
                    }

                    while (v94 != v97);
                    v94 = [v92 countByEnumeratingWithState:&v147 objects:v183 count:16];
                  }

                  while (v94);
                }

                else
                {
                  LODWORD(v95) = 0;
                }

                if (v138)
                {
                  v117 = duplicateDetectionPolicy([v138 cStringUsingEncoding:4]);
                }

                else
                {
                  v117 = 1;
                }

                v116 = issueType(&v188, v95);
                if (!v116)
                {
                  if (envRPACTrampolineSwizzleDebug == 1)
                  {
                    fprintf(__stderrp, "%s: issueType invalid for class %s\n", "swizzleAPIsForHangDetection", [v135 UTF8String]);
                  }

                  v116 = 1;
LABEL_221:
                  LODWORD(v95) = 1;
                }

                v118 = objc_getClass([v135 UTF8String]);
                swizzleAllMethods(v118, [v134 UTF8String], objc_msgSend(v135, "UTF8String"), a1, 0, 0, 0, 0, 0x11u, &v221, v116, v95, v117);
                goto LABEL_245;
              }

              v116 = 1;
              v117 = 1;
              goto LABEL_221;
            }

            v219 = 0u;
            v218 = 0u;
            v217 = 0u;
            v216 = 0u;
            v215 = 0u;
            v214 = 0u;
            v213 = 0u;
            v212 = 0u;
            v211 = 0u;
            v210 = 0u;
            v209 = 0u;
            v208 = 0u;
            v207 = 0u;
            v206 = 0u;
            v205 = 0u;
            v204 = 0u;
            v203 = 0u;
            v202 = 0u;
            v201 = 0u;
            v200 = 0u;
            v199 = 0u;
            v198 = 0u;
            v197 = 0u;
            v196 = 0u;
            v195 = 0u;
            v194 = 0u;
            v193 = 0u;
            v192 = 0u;
            v191 = 0u;
            v190 = 0u;
            v189 = 0u;
            v188 = 0u;
            *&v188 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
            if (v188)
            {
              v88 = 1;
              while (v88 != 128)
              {
                v89 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
                *(&v188 + v88++) = v89;
                if (!v89)
                {
                  v90 = (v88 - 2) < 0x7F;
                  goto LABEL_235;
                }
              }

              v142 = v86;
              v99 = [v86 objectForKeyedSubscript:@"names"];
              v155 = 0u;
              v156 = 0u;
              v157 = 0u;
              v158 = 0u;
              v100 = v99;
              v101 = [v100 countByEnumeratingWithState:&v155 objects:v185 count:16];
              if (v101)
              {
                v102 = v101;
                v103 = 0;
                v104 = *v156;
                do
                {
                  for (k = 0; k != v102; k = k + 1)
                  {
                    if (*v156 != v104)
                    {
                      objc_enumerationMutation(v100);
                    }

                    v106 = *(*(&v155 + 1) + 8 * k);
                    v107 = envEnableAGPCMethodSkip != 1 || agpcSuppressionMethodString == 0;
                    if (v107 || !strstr(agpcSuppressionMethodString, [v106 cStringUsingEncoding:4]))
                    {
                      strcpy(*(&v188 + v103++), [v106 UTF8String]);
                    }
                  }

                  v102 = [v100 countByEnumeratingWithState:&v155 objects:v185 count:16];
                }

                while (v102);

                if (v103 >= 1)
                {
                  if (envRPACTrampolineSwizzleDebug == 1)
                  {
                    fprintf(__stderrp, "%s: Swizzle class methods of %s with a particular name\n", "swizzleAPIsForHangDetection", [v135 UTF8String]);
                  }

                  v225 = 0;
                  v224 = 0xFFFFFFFFLL;
                  v108 = [v22 objectAtIndexedSubscript:0];
                  LODWORD(v224) = subCategoryType([v108 UTF8String]);

                  if (v139)
                  {
                    v222 = 0;
                    v221 = 0;
                    v223 = 0;
                    v151 = 0u;
                    v152 = 0u;
                    v153 = 0u;
                    v154 = 0u;
                    v109 = v139;
                    v110 = [v109 countByEnumeratingWithState:&v151 objects:v184 count:16];
                    if (v110)
                    {
                      v111 = v110;
                      LODWORD(v112) = 0;
                      v113 = *v152;
                      do
                      {
                        v114 = 0;
                        v112 = v112;
                        do
                        {
                          if (*v152 != v113)
                          {
                            objc_enumerationMutation(v109);
                          }

                          *(&v221 + v112) = [*(*(&v151 + 1) + 8 * v114) cStringUsingEncoding:4];
                          v115 = [v22 objectAtIndexedSubscript:v112];
                          *(&v224 + v112) = subCategoryType([v115 UTF8String]);

                          ++v112;
                          v114 = v114 + 1;
                        }

                        while (v111 != v114);
                        v111 = [v109 countByEnumeratingWithState:&v151 objects:v184 count:16];
                      }

                      while (v111);
                    }

                    else
                    {
                      LODWORD(v112) = 0;
                    }

                    if (v138)
                    {
                      v120 = duplicateDetectionPolicy([v138 cStringUsingEncoding:4]);
                    }

                    else
                    {
                      v120 = 1;
                    }

                    v119 = issueType(&v221, v112);
                    if (!v119)
                    {
                      if (envRPACTrampolineSwizzleDebug == 1)
                      {
                        fprintf(__stderrp, "%s: issueType invalid for class %s\n", "swizzleAPIsForHangDetection", [v135 UTF8String]);
                      }

                      v119 = 1;
                    }
                  }

                  else
                  {
                    v119 = 1;
                    v120 = 1;
                    LODWORD(v112) = 1;
                  }

                  v121 = objc_getClass([v135 UTF8String]);
                  swizzleMethods(v121, [v134 UTF8String], objc_msgSend(v135, "UTF8String"), &v188, v103, 0, a1, 0x11u, &v224, v119, v112, v120);
                }
              }

              else
              {
              }

              v90 = 0;
              v86 = v142;
            }

            else
            {
              v90 = 1;
            }

LABEL_235:
            v122 = 0;
            v123 = !v90;
            while (2)
            {
              v124 = *(&v188 + v122);
              if (v124)
              {
                free(v124);
                if (v122 > 0x7E)
                {
                  break;
                }

                goto LABEL_243;
              }

              if (v122 < 0x7F && v123)
              {
LABEL_243:
                ++v122;
                continue;
              }

              break;
            }

LABEL_245:
            v21 = v139;
LABEL_246:

            v18 = v22;
LABEL_247:

            v9 = v140;
            v16 = v145;
            v12 = v146;
LABEL_248:

            v12 = v12 + 1;
          }

          while (v12 != v144);
          v144 = [v136 countByEnumeratingWithState:&v175 objects:v227 count:16];
        }

        while (v144);
LABEL_250:

LABEL_251:
LABEL_252:
        v6 = v129 + 1;
      }

      while ((v129 + 1) != v128);
      v128 = [obj countByEnumeratingWithState:&v179 objects:v228 count:16];
    }

    while (v128);
  }
}

uint64_t duplicateDetectionPolicy(const char *a1)
{
  if (!strncmp(a1, "AllFramesClassSupplemented", 0x1AuLL))
  {
    return 2;
  }

  if (!strncmp(a1, "AllFramesFrameworkSupplemented", 0x1EuLL))
  {
    return 3;
  }

  if (!strncmp(a1, "AllFramesAntipatternSupplemented", 0x20uLL))
  {
    return 4;
  }

  if (!strncmp(a1, "AllFramesSupplemented", 0x15uLL))
  {
    return 5;
  }

  if (!strncmp(a1, "AllFrames", 9uLL))
  {
    return 1;
  }

  if (!strncmp(a1, "SystemFramesOnlyClassSupplemented", 0x21uLL))
  {
    return 7;
  }

  if (!strncmp(a1, "SystemFramesOnlyFrameworkSupplemented", 0x25uLL))
  {
    return 8;
  }

  if (!strncmp(a1, "SystemFramesOnlyAntipatternSupplemented", 0x27uLL))
  {
    return 9;
  }

  if (!strncmp(a1, "SystemFramesOnlySupplemented", 0x1CuLL))
  {
    return 10;
  }

  if (!strncmp(a1, "SystemFramesOnly", 0x10uLL))
  {
    return 6;
  }

  if (!strncmp(a1, "NonSystemFramesOnlyClassSupplemented", 0x24uLL))
  {
    return 12;
  }

  if (!strncmp(a1, "NonSystemFramesOnlyFrameworkSupplemented", 0x28uLL))
  {
    return 13;
  }

  if (!strncmp(a1, "NonSystemFramesOnlyAntipatternSupplemented", 0x2AuLL))
  {
    return 14;
  }

  if (!strncmp(a1, "NonSystemFramesOnlySupplemented", 0x1FuLL))
  {
    return 15;
  }

  if (!strncmp(a1, "NonSystemFramesOnly", 0x13uLL))
  {
    return 11;
  }

  return 1;
}

void __skipSwizzle_block_invoke(id a1)
{
  v1 = [NSSet setWithArray:&off_9CD78];
  v2 = skipSwizzle_audioVideoFrameworks;
  skipSwizzle_audioVideoFrameworks = v1;

  skipSwizzle_audioVideoClasses = [NSSet setWithArray:&off_9CD90];

  _objc_release_x1();
}

uint64_t interposed_dlclose(void *__handle)
{
  if (envRPACDebug == 1)
  {
    fwrite("libRPAC.dylib: interposed_dlclose invoked", 0x29uLL, 1uLL, __stderrp);
  }

  if (interposed_dlclose_dlclose_count <= 99)
  {
    checkAndGenerateBT("dlclose", &_dlclose, 4, 17, -1, -1, 3, 1);
    ++interposed_dlclose_dlclose_count;
  }

  return dlclose(__handle);
}

void *interposed_dlopen(char *__path, int __mode)
{
  if (envRPACDebug == 1)
  {
    fwrite("libRPAC.dylib: interposed_dlopen invoked", 0x28uLL, 1uLL, __stderrp);
  }

  if (interposed_dlopen_dlopen_count <= 99)
  {
    checkAndGenerateBT("dlopen", &_dlopen, 4, 17, -1, -1, 3, 1);
    ++interposed_dlopen_dlopen_count;
  }

  return dlopen(__path, __mode);
}

uint64_t _interposed_dyld_register_for_image_loads(uint64_t a1)
{
  if (envRPACDebug == 1)
  {
    fwrite("libRPAC.dylib: _interposed_dyld_register_for_image_loads\n", 0x39uLL, 1uLL, __stderrp);
  }

  if (_interposed_dyld_register_for_image_loads_dyld_register_for_image_loads_count <= 99)
  {
    checkAndGenerateBT("_dyld_register_for_image_loads", &__dyld_register_for_image_loads, 4, 17, -1, -1, 13, 1);
    ++_interposed_dyld_register_for_image_loads_dyld_register_for_image_loads_count;
  }

  return __dyld_register_for_image_loads(a1);
}

uint64_t _interposed_dyld_register_for_bulk_image_loads(uint64_t a1)
{
  if (envRPACDebug == 1)
  {
    fwrite("libRPAC.dylib: _interposed_dyld_register_for_bulk_image_loads\n", 0x3EuLL, 1uLL, __stderrp);
  }

  if (_interposed_dyld_register_for_bulk_image_loads_dyld_register_for_bulk_image_loads_count <= 99)
  {
    checkAndGenerateBT("_dyld_register_for_bulk_image_loads", &__dyld_register_for_bulk_image_loads, 4, 17, -1, -1, 13, 1);
    ++_interposed_dyld_register_for_bulk_image_loads_dyld_register_for_bulk_image_loads_count;
  }

  return __dyld_register_for_bulk_image_loads(a1);
}

void _interposed_dyld_register_func_for_add_image(void (__cdecl *func)(const mach_header *, intptr_t))
{
  if (envRPACDebug == 1)
  {
    fwrite("libRPAC.dylib: _interposed_dyld_register_func_for_add_image\n", 0x3CuLL, 1uLL, __stderrp);
  }

  if (_interposed_dyld_register_func_for_add_image_dyld_register_func_for_add_image_count <= 99)
  {
    checkAndGenerateBT("_dyld_register_func_for_add_image", &__dyld_register_func_for_add_image, 4, 17, -1, -1, 13, 1);
    ++_interposed_dyld_register_func_for_add_image_dyld_register_func_for_add_image_count;
  }

  _dyld_register_func_for_add_image(func);
}

void _interposed_dyld_register_func_for_remove_image(void (__cdecl *func)(const mach_header *, intptr_t))
{
  if (envRPACDebug == 1)
  {
    fwrite("libRPAC.dylib: _interposed_dyld_register_func_for_remove_image\n", 0x3FuLL, 1uLL, __stderrp);
  }

  if (_interposed_dyld_register_func_for_remove_image_dyld_register_func_for_remove_image_count <= 99)
  {
    checkAndGenerateBT("_dyld_register_func_for_remove_image", &__dyld_register_func_for_remove_image, 4, 17, -1, -1, 13, 1);
    ++_interposed_dyld_register_func_for_remove_image_dyld_register_func_for_remove_image_count;
  }

  _dyld_register_func_for_remove_image(func);
}

uint64_t setNSURLSessionTaskResumedOnMainThread(uint64_t result, uint64_t a2)
{
  nsurlSessionTaskResumedOnMainThread = result;
  resumeTimestamp = a2;
  return result;
}

xpc_object_t custom_xpc_connection_send_message_with_reply_sync(xpc_connection_t connection, xpc_object_t message)
{
  if (envDisableXPCChecks != 1 && isAppleInternalNoIO() && pthread_main_np() == 1)
  {
    v4 = mach_absolute_time();
    v5 = xpc_connection_send_message_with_reply_sync(connection, message);
    v6 = mach_absolute_time();
    v7 = ticks_to_ns(v6 - v4);
    GetThreadLocalData()[1] = v6;
    custom_xpc_connection_send_message_with_reply_sync_total_duration += v7;
    checkUnconditionally(v7, custom_xpc_connection_send_message_with_reply_sync_total_duration, ++custom_xpc_connection_send_message_with_reply_sync_total_instances, "xpc_connection_send_message_with_reply_sync", shouldFlag, 0);
    return v5;
  }

  else
  {

    return xpc_connection_send_message_with_reply_sync(connection, message);
  }
}

uint64_t swizzleMethods(objc_class *a1, const char *a2, const char *a3, const char **a4, unsigned int a5, int a6, int a7, unsigned int a8, int *a9, unsigned int a10, unsigned int a11, int a12)
{
  if (!a4)
  {
    swizzleMethods_cold_1();
  }

  if (!a1)
  {
    if (envRPACTrampolineSwizzleDebug == 1)
    {
      fprintf(__stderrp, "%s: unrealizedClass is NULL\n");
    }

    return 0;
  }

  if (!a5)
  {
    if (envRPACTrampolineSwizzleDebug == 1)
    {
      fprintf(__stderrp, "%s: methodCount is <= 0\n");
    }

    return 0;
  }

  v14 = a4;
  methodsToSwizzle_1 = 0;
  Name = class_getName(a1);
  if (!Name)
  {
    if (envRPACTrampolineSwizzleDebug == 1)
    {
      fprintf(__stderrp, "%s: clsName is NULL\n");
    }

    return 0;
  }

  v17 = Name;
  Class = objc_getClass(Name);
  v19 = a5;
  v20 = "%s: Swizzling +[%s %s]\n";
  if (a6)
  {
    v20 = "%s: Swizzling [%s %s]\n";
  }

  v28 = v20;
  do
  {
    if (*v14)
    {
      v21 = sel_registerName(*v14);
      if (a6)
      {
        InstanceMethod = class_getInstanceMethod(Class, v21);
      }

      else
      {
        InstanceMethod = class_getClassMethod(Class, v21);
      }

      v23 = InstanceMethod;
      v24 = method_getName(InstanceMethod);
      v25 = sel_getName(v24);
      if (*v25 != 95)
      {
        v26 = v25;
        if (!strcmp(v25, *v14))
        {
          if (envRPACTrampolineSwizzleDebug == 1)
          {
            fprintf(__stderrp, v28, "swizzleMethods", v17, v26);
          }

          v32[0] = v24;
          v32[1] = prepareSwizzler(a2, a3, v17, v23, v24, a7, a6, a8, a9, a10, a11, a12);
          v32[2] = method_getTypeEncoding(v23);
          ma_Append(v32);
        }
      }
    }

    else if (envRPACTrampolineSwizzleDebug == 1)
    {
      fprintf(__stderrp, "%s: m_name_list[methodIndex] is NULL\n", "swizzleMethods");
    }

    ++v14;
    --v19;
  }

  while (v19);
  if (methodsToSwizzle_1)
  {
    if (!a6)
    {
      objc_getMetaClass(v17);
    }

    class_replaceMethodsBulk();
  }

  return 1;
}

uint64_t prepareSwizzler(const char *a1, const char *a2, int a3, objc_method *a4, SEL sel, int a6, int a7, uint64_t a8, int *a9, unsigned int a10, unsigned int a11, int a12)
{
  if (!sel_getName(sel))
  {
    prepareSwizzler_cold_3();
  }

  if (a7)
  {
    v18 = snprintf(__str, 0x200uLL, "[%s %s]");
  }

  else
  {
    v18 = snprintf(__str, 0x200uLL, "+[%s %s]");
  }

  if (v18 >= 512)
  {
    prepareSwizzler_cold_2();
  }

  v19 = add_trampoline_one_callback;
  if (a6)
  {
    if (a6 != 1)
    {
      prepareSwizzler_cold_1();
    }

    v19 = add_trampoline_two_callbacks;
  }

  v20 = v19;
  Implementation = method_getImplementation(a4);
  return v20(Implementation, __str, a1, a2, a8, a9, a10, a11, a12);
}

void *ma_Append(void *result)
{
  v1 = result;
  v2 = methodsToSwizzle_1;
  if (methodsToSwizzle_1 == methodsToSwizzle_0)
  {
    if ((2 * methodsToSwizzle_1) > 0x8000)
    {
      ma_Append_cold_1();
    }

    result = ma_GrowCapacity(2 * methodsToSwizzle_1);
    v2 = methodsToSwizzle_1;
  }

  *(methodsToSwizzle_2 + 8 * v2) = *v1;
  *(methodsToSwizzle_3 + 8 * v2) = v1[1];
  methodsToSwizzle_1 = v2 + 1;
  *(methodsToSwizzle_4 + 8 * v2) = v1[2];
  return result;
}

uint64_t swizzleAllMethods(objc_class *a1, const char *a2, const char *a3, int a4, const char **a5, uint64_t a6, const char **a7, uint64_t a8, unsigned int a9, int *a10, unsigned int a11, unsigned int a12, int a13)
{
  if (a1)
  {
    v13 = a7;
    v15 = &maxDuration[65094];
    methodsToSwizzle_1 = 0;
    if (!a5 && a6)
    {
      swizzleAllMethods_cold_2();
    }

    if (!a7 && a8)
    {
      swizzleAllMethods_cold_1();
    }

    Name = class_getName(a1);
    if (Name)
    {
      v17 = Name;
      Class = objc_getClass(Name);
      if (Class)
      {
        v47 = a5;
        if (v13)
        {
          v18 = a8 == 0;
        }

        else
        {
          v18 = 1;
        }

        v19 = v18;
        v39 = v19;
        v20 = 1;
        *v44 = v17;
        while (1)
        {
          v21 = v20;
          outCount[0] = 0;
          if (v20)
          {
            v22 = Class;
          }

          else
          {
            v22 = object_getClass(Class);
          }

          v23 = class_copyMethodList(v22, outCount);
          if (v23)
          {
            v49 = v21;
            if (outCount[0])
            {
              v24 = 0;
              v25 = "%s: Swizzling +[%s %s] for issue type %d\n";
              if (v21)
              {
                v25 = "%s: Swizzling [%s %s] for issue type %d\n";
              }

              v45 = v25;
              while (1)
              {
                v26 = v23[v24];
                v27 = method_getName(v26);
                v28 = sel_getName(v27);
                if (*v28 != 95)
                {
                  v29 = v28;
                  if (strcmp(v28, "retain"))
                  {
                    if (strcmp(v29, "release") && strcmp(v29, "autorelease") && strcmp(v29, "retainCount") && strcmp(v29, "dealloc") && strcmp(v29, ".cxx_destruct"))
                    {
                      v30 = v15;
                      v31 = v13;
                      if (v47)
                      {
                        v32 = a6;
                        v33 = v47;
                        if (!a6)
                        {
LABEL_34:
                          v35 = a8;
                          v13 = v31;
                          v36 = v31;
                          v15 = v30;
                          v17 = *v44;
                          if ((v39 & 1) == 0)
                          {
                            break;
                          }

                          goto LABEL_44;
                        }

                        while (1)
                        {
                          v34 = strlen(*v33);
                          if (!strncmp(v29, *v33, v34))
                          {
                            break;
                          }

                          ++v33;
                          if (!--v32)
                          {
                            goto LABEL_34;
                          }
                        }
                      }

                      v13 = v31;
                      v15 = v30;
                      v17 = *v44;
                      if (!v13)
                      {
                        goto LABEL_41;
                      }

                      v35 = a8;
                      v36 = v13;
                      if (a8)
                      {
                        break;
                      }
                    }
                  }
                }

LABEL_44:
                if (++v24 >= outCount[0])
                {
                  goto LABEL_45;
                }
              }

              while (!strstr(v29, *v36))
              {
                ++v36;
                if (!--v35)
                {
                  goto LABEL_44;
                }
              }

LABEL_41:
              if (envRPACTrampolineSwizzleDebug == 1)
              {
                fprintf(__stderrp, v45, "swizzleAllMethods", v17, v29, a11);
              }

              v50[0] = v27;
              v50[1] = prepareSwizzler(a2, a3, v17, v26, v27, a4, 1, a9, a10, a11, a12, a13);
              v50[2] = method_getTypeEncoding(v26);
              ma_Append(v50);
              goto LABEL_44;
            }

LABEL_45:
            free(v23);
            v21 = v49;
            if (*(v15 + 934))
            {
              if ((v49 & 1) == 0)
              {
                objc_getMetaClass(v17);
                v37 = *(v15 + 934);
              }

              class_replaceMethodsBulk();
            }

            *(v15 + 934) = 0;
          }

          else if (envRPACTrampolineSwizzleDebug == 1)
          {
            fprintf(__stderrp, "%s: allMethods is NULL\n", "swizzleAllMethods");
          }

          v20 = 0;
          if ((v21 & 1) == 0)
          {
            return 1;
          }
        }
      }

      if (envRPACTrampolineSwizzleDebug == 1)
      {
        fprintf(__stderrp, "%s: cls is NULL\n");
      }
    }

    else if (envRPACTrampolineSwizzleDebug == 1)
    {
      fprintf(__stderrp, "%s: clsName is NULL\n");
    }
  }

  else if (envRPACTrampolineSwizzleDebug == 1)
  {
    fprintf(__stderrp, "%s: unrealizedClass is NULL\n");
  }

  return 0;
}

void main_thread_general_check(uint64_t a1)
{
  v2 = dyld_image_path_containing_address();
  v3 = strrchr(v2, 47);
  if (!v3 || strcmp(v3 + 1, "libRPAC.dylib"))
  {
    if (pthread_main_np())
    {
      if (*(a1 + 48))
      {
        invokeGenerateCulledBacktraceForEachIssue(a1, 1);
        if (envRPACTrampolineSwizzleDebug == 1)
        {
          fprintf(__stderrp, "%s: main_thread_general_check hang check triggered on main thread when calling %s for issue type %d\n", "main_thread_general_check", *(a1 + 8), 1);
        }
      }

      if (envEnableAGPCDiskwritesLaunchChecks == 1 && (*(a1 + 48) & 4) != 0)
      {
        invokeGenerateCulledBacktraceForEachIssue(a1, 4);
        if (envRPACTrampolineSwizzleDebug == 1)
        {
          fprintf(__stderrp, "%s: main_thread_general_check slow launch check triggered on main thread when calling %s for issue type %d\n", "main_thread_general_check", *(a1 + 8), 4);
        }
      }
    }

    if (((envEnableAGPCDiskwritesChecks & 1) != 0 || envEnableAGPCDiskwritesLaunchChecks == 1) && (*(a1 + 48) & 2) != 0)
    {
      invokeGenerateCulledBacktraceForEachIssue(a1, 2);
      if (envRPACTrampolineSwizzleDebug == 1)
      {
        fprintf(__stderrp, "%s: main_thread_general_check triggered on main thread when calling %s for issue type %d\n", "main_thread_general_check", *(a1 + 8), 2);
      }
    }
  }
}

void invokeGenerateCulledBacktraceForEachIssue(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 4:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      v4 = *(a1 + 32);
      v5 = *(a1 + 44);
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 52);
      v9 = 4;
      goto LABEL_7;
    case 2:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      v4 = *(a1 + 32);
      v5 = *(a1 + 36);
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 52);
      v9 = 2;
      goto LABEL_7;
    case 1:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 52);
      v9 = 1;
LABEL_7:
      generateCulledBacktrace(v7, v2, v3, 0, v4, v5, 0, v6, v9, v8);
      return;
  }

  if (envRPACTrampolineSwizzleDebug == 1)
  {
    fprintf(__stderrp, "%s: Wrong issue type\n", "invokeGenerateCulledBacktraceForEachIssue");
  }
}

void initializeTrampolineBasedSwizzling(int a1)
{
  v2 = main_thread_general_check;
  initialize_trampolines(&v2, 0);
  ma_GrowCapacity(0x80u);
  swizzleAPIsForHangDetection(a1);
  free(methodsToSwizzle_2);
  free(methodsToSwizzle_3);
  free(methodsToSwizzle_4);
}

void *ma_GrowCapacity(unsigned int a1)
{
  if (methodsToSwizzle_0 >= a1)
  {
    ma_GrowCapacity_cold_1();
  }

  methodsToSwizzle_0 = a1;
  v1 = 8 * a1;
  methodsToSwizzle_2 = malloc_type_realloc(methodsToSwizzle_2, v1, 0x2004093837F09uLL);
  methodsToSwizzle_3 = malloc_type_realloc(methodsToSwizzle_3, v1, 0x80040B8603338uLL);
  result = malloc_type_realloc(methodsToSwizzle_4, v1, 0x50040EE9192B6uLL);
  methodsToSwizzle_4 = result;
  return result;
}

uint64_t trampoline_c_2(uint64_t a1, uint64_t a2)
{
  v3 = &data_0 + 56 * ((a1 - first_trampoline_0 + (a1 - first_trampoline_0 < 0 ? 7uLL : 0)) >> 3);
  registered_callbacks_0(v3);
  registered_callbacks_1(v3, a2);
  return *v3;
}

uint64_t initialize_trampolines_with_two_callbacks(uint64_t result)
{
  v1 = *(result + 8);
  registered_callbacks_0 = *result;
  registered_callbacks_1 = v1;
  first_trampoline_0 = __trampolines_two_callbacks;
  if (__trampolines_two_callbacks_end - __trampolines_two_callbacks != 0x40000)
  {
    initialize_trampolines_with_two_callbacks_cold_1();
  }

  return result;
}

uint64_t add_trampoline_two_callbacks(uint64_t a1, char *__s1, const char *a3, const char *a4, int a5, int *a6, int a7, unsigned int a8, int a9)
{
  v9 = trampolines_used_0;
  if (trampolines_used_0 >= 0x8000)
  {
    add_trampoline_two_callbacks_cold_2();
  }

  if (a8 - 4 <= 0xFFFFFFFC)
  {
    add_trampoline_two_callbacks_cold_1();
  }

  ++trampolines_used_0;
  v20 = v9;
  v16 = &data_0 + 56 * v9;
  *v16 = a1;
  *(v16 + 1) = strdup(__s1);
  *(v16 + 8) = a5;
  *(v16 + 2) = strdup(a4);
  *(v16 + 3) = strdup(a3);
  v17 = a8;
  *(v16 + 36) = -1;
  *(v16 + 11) = -1;
  *(v16 + 13) = a9;
  do
  {
    if ((a7 & 1) != 0 && *(v16 + 10) == -1 && isHangSubCategory(*a6))
    {
      *(v16 + 10) = *a6;
      if (envRPACTrampolineSwizzleDebug == 1)
      {
        fprintf(__stderrp, "HangSubCategory: %d\n");
      }
    }

    else if ((a7 & 2) != 0 && *(v16 + 9) == -1 && isExcessiveDiskWritesSubCategory(*a6))
    {
      *(v16 + 9) = *a6;
      if (envRPACTrampolineSwizzleDebug == 1)
      {
        fprintf(__stderrp, "ExcessiveDiskWritesSubCategory: %d\n");
      }
    }

    else if ((a7 & 4) != 0 && *(v16 + 11) == -1 && isHangSubCategory(*a6))
    {
      *(v16 + 11) = *a6;
      if (envRPACTrampolineSwizzleDebug == 1)
      {
        fprintf(__stderrp, "launchSubCategory: %d\n");
      }
    }

    else if (envRPACTrampolineSwizzleDebug == 1)
    {
      v18 = *a6;
      fprintf(__stderrp, "%s: Called with invalid log sub type %d\n");
    }

    ++a6;
    --v17;
  }

  while (v17);
  *(v16 + 12) = a7;
  return first_trampoline_0 + 8 * v20;
}

void _replacement_NSCondition_wait(void *a1, uint64_t a2)
{
  v3 = a1;
  v12 = v3;
  if (envDisablePriorityInversions == 1 || (v4 = GetThreadLocalData()[3], v3 = v12, v4 == v12))
  {
    __original_NSCondition_wait(v3, a2);
  }

  else
  {
    MapId = getMapId(v12);
    v6 = (&unfair_lock + 4 * MapId);
    os_unfair_lock_lock(v6);
    if (findPrimitiveInfoNoAssert(v12))
    {
      PrimitiveEntry = 0;
    }

    else
    {
      PrimitiveEntry = createPrimitiveEntry(v12, 0, 33, 0);
    }

    GetThreadLocalData()[3] = v12;
    os_unfair_lock_unlock(v6);
    v8 = mach_absolute_time();
    __original_NSCondition_wait(v12, a2);
    v9 = mach_absolute_time();
    if (PrimitiveEntry)
    {
      v10 = v9;
      os_unfair_lock_lock(v6);
      v11 = qos_class_self();
      updatePrimitiveWaiterQoSInfo(v12, v11, v8, v10);
      if (updateAndGetWaiterCountValue(v12, 0) == -1)
      {
        qosWaiterSignallerInvariantCheck(unlockLockInNSConditionLockMap, MapId, v12, 1, "[NSCondition wait]");
        os_unfair_lock_lock(v6);
        deletePrimitiveEntry(v12);
      }

      os_unfair_lock_unlock(v6);
    }
  }
}

uint64_t _replacement_NSCondition_waitUntilDate(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (envDisablePriorityInversions == 1 || GetThreadLocalData()[3] == v5)
  {
    v7 = __original_NSCondition_waitUntilDate(v5, a2, v6);
  }

  else
  {
    MapId = getMapId(v5);
    v10 = (&unfair_lock + 4 * MapId);
    os_unfair_lock_lock(v10);
    if (findPrimitiveInfoNoAssert(v5))
    {
      PrimitiveEntry = 0;
    }

    else
    {
      PrimitiveEntry = createPrimitiveEntry(v5, 0, 33, 0);
    }

    GetThreadLocalData()[3] = v5;
    os_unfair_lock_unlock(v10);
    v12 = mach_absolute_time();
    v7 = __original_NSCondition_waitUntilDate(v5, a2, v6);
    v13 = mach_absolute_time();
    if (PrimitiveEntry)
    {
      v14 = v13;
      os_unfair_lock_lock(v10);
      v15 = qos_class_self();
      updatePrimitiveWaiterQoSInfo(v5, v15, v12, v14);
      if (updateAndGetWaiterCountValue(v5, 0) == -1)
      {
        qosWaiterSignallerInvariantCheck(unlockLockInNSConditionLockMap, MapId, v5, 1, "[NSCondition waitUntilDate:]");
        os_unfair_lock_lock(v10);
        deletePrimitiveEntry(v5);
      }

      os_unfair_lock_unlock(v10);
    }
  }

  return v7;
}

void _replacement_NSCondition_signal(void *a1, uint64_t a2)
{
  if (envDisablePriorityInversions == 1)
  {
    v3 = __original_NSCondition_signal;
    v4 = a1;
  }

  else
  {
    v5 = a1;
    v6 = (&unfair_lock + 4 * getMapId(a1));
    os_unfair_lock_lock(v6);
    if (findPrimitiveInfoNoAssert(a1))
    {
      v7 = *GetThreadLocalData();
      v8 = GetThreadLocalData()[1];
      v9 = *(GetThreadLocalData() + 4);
      v10 = qos_class_self();
      updatePrimitiveSignallerQoSInfo(a1, v10, v7, v8, v9);
    }

    os_unfair_lock_unlock(v6);
    v3 = __original_NSCondition_signal;
  }

  v3(a1, a2);
}

void _replacement_NSCondition_broadcast(void *a1, uint64_t a2)
{
  if (envDisablePriorityInversions == 1)
  {
    v3 = __original_NSCondition_broadcast;
    v4 = a1;
  }

  else
  {
    v5 = a1;
    v6 = (&unfair_lock + 4 * getMapId(a1));
    os_unfair_lock_lock(v6);
    if (findPrimitiveInfoNoAssert(a1))
    {
      v7 = *GetThreadLocalData();
      v8 = GetThreadLocalData()[1];
      v9 = *(GetThreadLocalData() + 4);
      v10 = qos_class_self();
      updatePrimitiveSignallerQoSInfo(a1, v10, v7, v8, v9);
    }

    os_unfair_lock_unlock(v6);
    v3 = __original_NSCondition_broadcast;
  }

  v3(a1, a2);
}

void initializeNSConditionSwizzling()
{
  if ((envDisablePriorityInversions & 1) == 0 && (envDisableNSConditionChecks & 1) == 0)
  {
    Class = objc_getClass("NSCondition");
    if (Class)
    {
      v1 = Class;
      InstanceMethod = class_getInstanceMethod(Class, "wait");
      __original_NSCondition_wait = method_setImplementation(InstanceMethod, _replacement_NSCondition_wait);
      v3 = class_getInstanceMethod(v1, "waitUntilDate:");
      __original_NSCondition_waitUntilDate = method_setImplementation(v3, _replacement_NSCondition_waitUntilDate);
      v4 = class_getInstanceMethod(v1, "signal");
      __original_NSCondition_signal = method_setImplementation(v4, _replacement_NSCondition_signal);
      v5 = class_getInstanceMethod(v1, "broadcast");
      __original_NSCondition_broadcast = method_setImplementation(v5, _replacement_NSCondition_broadcast);
    }
  }
}

uint64_t getMapId(uint64_t a1)
{
  if (a1 >> 3 <= 0)
  {
    return -(-(a1 >> 3) & 0x1F);
  }

  else
  {
    return (a1 >> 3) & 0x1F;
  }
}

BOOL initializePrimitiveMap(void)
{
  if (initializePrimitiveMap(void)::onceToken != -1)
  {
    initializePrimitiveMap();
  }

  return (initializePrimitiveMap(void)::initialization_success & 1) == 0;
}

uint64_t createPrimitiveEntry(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v12[0] = a1;
  if (initializePrimitiveMap(void)::onceToken != -1)
  {
    initializePrimitiveMap();
  }

  if (initializePrimitiveMap(void)::initialization_success)
  {
    return 0;
  }

  v9 = (a1 >> 3) & 0x1F;
  if (a1 >> 3 <= 0)
  {
    v9 = -(-(a1 >> 3) & 0x1F);
  }

  v10 = primitive_map[v9];
  v12[2] = v12;
  v11 = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v10, v12);
  *(v11 + 6) = a2;
  *(v11 + 7) = a3;
  v11[4] = a4;
  *(v11 + 5) = 0u;
  *(v11 + 7) = 0u;
  v11[9] = 0;
  return 1;
}

uint64_t *deletePrimitiveEntry(uint64_t a1)
{
  v3 = a1;
  if (a1 >> 3 <= 0)
  {
    v1 = -(-(a1 >> 3) & 0x1F);
  }

  else
  {
    v1 = (a1 >> 3) & 0x1F;
  }

  result = std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::find<long>(primitive_map[v1], &v3);
  if (result)
  {
    return std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::__erase_unique<long>(primitive_map[v1], &v3);
  }

  return result;
}

void *findPrimitiveInfoNoAssert(uint64_t a1)
{
  v5[0] = a1;
  if (initializePrimitiveMap(void)::onceToken != -1)
  {
    initializePrimitiveMap();
  }

  if (initializePrimitiveMap(void)::initialization_success)
  {
    return 0;
  }

  if (a1 >> 3 <= 0)
  {
    v3 = -(-(a1 >> 3) & 0x1F);
  }

  else
  {
    v3 = (a1 >> 3) & 0x1F;
  }

  result = std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::find<long>(primitive_map[v3], v5);
  if (result)
  {
    v4 = primitive_map[v3];
    v5[2] = v5;
    return std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v4, v5) + 3;
  }

  return result;
}

void *findSemaphoreInfo(uint64_t a1)
{
  v4[0] = a1;
  if (a1 >> 3 <= 0)
  {
    v1 = -(-(a1 >> 3) & 0x1F);
  }

  else
  {
    v1 = (a1 >> 3) & 0x1F;
  }

  if (!std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::find<long>(primitive_map[v1], v4))
  {
    findSemaphoreInfo();
  }

  v2 = primitive_map[v1];
  v4[2] = v4;
  return std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v2, v4) + 3;
}

void *updatePrimitiveWaiterQoSInfoUnconditionally(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  if (a1 >> 3 <= 0)
  {
    v6 = -(-(a1 >> 3) & 0x1F);
  }

  else
  {
    v6 = (a1 >> 3) & 0x1F;
  }

  v7 = primitive_map[v6];
  v12 = &v11;
  *(std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v7, &v11) + 6) = a2;
  v8 = primitive_map[v6];
  v12 = &v11;
  std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v8, &v11)[5] = a3;
  v9 = primitive_map[v6];
  v12 = &v11;
  result = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v9, &v11);
  result[6] = a4;
  return result;
}

void *updatePrimitiveWaiterQoSInfo(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  if (a1 >> 3 <= 0)
  {
    v7 = -(-(a1 >> 3) & 0x1F);
  }

  else
  {
    v7 = (a1 >> 3) & 0x1F;
  }

  v8 = primitive_map[v7];
  v14 = &v13;
  result = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v8, &v13);
  if (*(result + 6) < a2)
  {
    v10 = primitive_map[v7];
    v14 = &v13;
    *(std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v10, &v13) + 6) = a2;
    v11 = primitive_map[v7];
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v11, &v13)[5] = a3;
    v12 = primitive_map[v7];
    v14 = &v13;
    result = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v12, &v13);
    result[6] = a4;
  }

  return result;
}

void *updateWaiterCountValueUnconditionally(uint64_t a1, uint64_t a2)
{
  v6[0] = a1;
  v3 = (a1 >> 3) & 0x1F;
  if (a1 >> 3 <= 0)
  {
    v3 = -(-(a1 >> 3) & 0x1F);
  }

  v4 = primitive_map[v3];
  v6[2] = v6;
  result = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v4, v6);
  result[4] = a2;
  return result;
}

uint64_t getWaiterCountValue(uint64_t a1)
{
  v4[0] = a1;
  v1 = (a1 >> 3) & 0x1F;
  if (a1 >> 3 <= 0)
  {
    v1 = -(-(a1 >> 3) & 0x1F);
  }

  v2 = primitive_map[v1];
  v4[2] = v4;
  return std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v2, v4)[4];
}

uint64_t updateAndGetWaiterCountValue(uint64_t a1, int a2)
{
  v9 = a1;
  v2 = (a1 >> 3) & 0x1F;
  if (a1 >> 3 <= 0)
  {
    v2 = -(-(a1 >> 3) & 0x1F);
  }

  v3 = v2;
  v4 = primitive_map[v2];
  v10 = &v9;
  if (a2)
  {
    v5 = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v4, &v9);
    v6 = 1;
  }

  else
  {
    v5 = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v4, &v9);
    v6 = -1;
  }

  v5[4] += v6;
  v7 = primitive_map[v3];
  v10 = &v9;
  return std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v7, &v9)[4];
}

void *updatePrimitiveSignallerQoSInfoUnconditionally(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a1;
  if (a1 >> 3 <= 0)
  {
    v9 = -(-(a1 >> 3) & 0x1F);
  }

  else
  {
    v9 = (a1 >> 3) & 0x1F;
  }

  if (!std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::find<long>(primitive_map[v9], &v15))
  {
    updatePrimitiveSignallerQoSInfoUnconditionally_cold_1();
  }

  v10 = primitive_map[v9];
  v16 = &v15;
  *(std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v10, &v15) + 7) = a2;
  v11 = primitive_map[v9];
  v16 = &v15;
  std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v11, &v15)[8] = a3;
  v12 = primitive_map[v9];
  v16 = &v15;
  std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v12, &v15)[7] = a4;
  v13 = primitive_map[v9];
  v16 = &v15;
  result = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v13, &v15);
  *(result + 18) = a5;
  return result;
}

void *updatePrimitiveSignallerQoSInfo(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = a1;
  if (a1 >> 3 <= 0)
  {
    v9 = -(-(a1 >> 3) & 0x1F);
  }

  else
  {
    v9 = (a1 >> 3) & 0x1F;
  }

  if (!std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::find<long>(primitive_map[v9], &v16))
  {
    updatePrimitiveSignallerQoSInfo_cold_1();
  }

  v10 = primitive_map[v9];
  v17 = &v16;
  result = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v10, &v16);
  if (*(result + 7) > a2)
  {
    v12 = primitive_map[v9];
    v17 = &v16;
    *(std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v12, &v16) + 7) = a2;
    v13 = primitive_map[v9];
    v17 = &v16;
    std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v13, &v16)[8] = a3;
    v14 = primitive_map[v9];
    v17 = &v16;
    std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v14, &v16)[7] = a4;
    v15 = primitive_map[v9];
    v17 = &v16;
    result = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v15, &v16);
    *(result + 18) = a5;
  }

  return result;
}

void *qosWaiterSignallerInvariantCheck(uint64_t (*a1)(uint64_t), unsigned int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v49 = a3;
  if (a5 && (envRPACDebug & 1) != 0)
  {
    fprintf(__stderrp, "Inversion detection for %s\n", a5);
  }

  if (*(GetThreadLocalData() + 52) != 1)
  {
    *__str = a3;
    v9 = (a3 >> 3) & 0x1F;
    if (a3 >> 3 <= 0)
    {
      v9 = -(-(a3 >> 3) & 0x1F);
    }

    v10 = primitive_map[v9];
    *__s1 = __str;
    if (*(std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v10, __str) + 18) > 62 || envProfileModeEnabled == 1 && envPriorityInversionDetectionOnMainThreadOnly == 1 && pthread_main_np() != 1)
    {
      return a1(a2);
    }

    *(GetThreadLocalData() + 52) = 1;
    if (!std::__hash_table<std::__hash_value_type<long,sqliteDBState_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,sqliteDBState_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,sqliteDBState_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,sqliteDBState_t>>>::find<long>(primitive_map[a2], &v49))
    {
      qosWaiterSignallerInvariantCheck_cold_2();
    }

    v11 = a2;
    v12 = primitive_map[a2];
    *__s1 = &v49;
    v13 = *(std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v12, &v49) + 6);
    v14 = primitive_map[a2];
    *__s1 = &v49;
    v15 = *(std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v14, &v49) + 7);
    v16 = primitive_map[a2];
    *__s1 = &v49;
    v17 = *(std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v16, &v49) + 18);
    bzero(__s1, 0x400uLL);
    *__str = 0u;
    v54 = 0u;
    snprintf(__str, 0x20uLL, "(base priority %d)", v17);
    v18 = primitive_map[a2];
    *__s2 = &v49;
    v19 = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v18, &v49)[6];
    v20 = primitive_map[v11];
    *__s2 = &v49;
    v21 = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v20, &v49);
    v47 = ticks_to_ns(v19 - v21[5]);
    if (envExtraTimeInfo == 1 && isAppleInternalNoIO())
    {
      *__s2 = 0u;
      v52 = 0u;
      strcat(__s1, a5);
      strcat(__s1, " blocked thread for ");
      if (v47 >= 0xF4240)
      {
        snprintf(__s2, 0x20uLL, "%llu", v47 / 0xF4240);
        strcat(__s1, __s2);
        strcat(__s1, " ms. ");
      }

      else
      {
        snprintf(__s2, 0x20uLL, "%llu", v47 / 0x3E8uLL);
        strcat(__s1, __s2);
        v22 = &__s1[strlen(__s1)];
        *v22 = 1941291552;
        *(v22 + 3) = 2109043;
      }
    }

    v23 = 0;
    v24 = &unk_988EA;
    if (v13 > 20)
    {
      switch(v13)
      {
        case 21:
          v23 = 0;
          v24 = "Default quality-of-service class";
          break;
        case 25:
          if ((v15 - 1) >= 0x18)
          {
            if (v15)
            {
              v25 = 0;
            }

            else
            {
              v25 = v17 < 37;
            }

            v23 = v25;
          }

          else
          {
            v23 = 1;
          }

          v24 = "User-initiated quality-of-service class";
          break;
        case 33:
          if (((envAggressiveDeterministicFlagging & 1) != 0 || v15 == 25 || (v15 - 33) <= 0xFFFFFFDF) && (!envAggressiveDeterministicFlagging || (v15 - 1) >= 0x20))
          {
            if (v15)
            {
              v26 = 0;
            }

            else
            {
              v26 = v17 < 47;
            }

            v23 = v26;
          }

          else
          {
            v23 = 1;
          }

          v24 = "User-interactive quality-of-service class";
          break;
      }
    }

    else if (v13)
    {
      if (v13 == 9)
      {
        v23 = 0;
        v24 = "Background quality-of-service class";
      }

      else if (v13 == 17)
      {
        v23 = 0;
        v24 = "Utility quality-of-service class";
      }
    }

    else
    {
      v23 = 0;
      v24 = "Unspecified quality-of-service class";
    }

    v50 = v49;
    if (v49 >> 3 <= 0)
    {
      v27 = -(-(v49 >> 3) & 0x1F);
    }

    else
    {
      v27 = (v49 >> 3) & 0x1F;
    }

    v28 = primitive_map[v27];
    *__s2 = &v50;
    v29 = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v28, &v50)[5];
    v30 = primitive_map[v27];
    *__s2 = &v50;
    v34 = 0;
    if (v29 <= std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v30, &v50)[7])
    {
      v31 = primitive_map[v27];
      *__s2 = &v50;
      v32 = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v31, &v50)[7];
      v33 = primitive_map[v27];
      *__s2 = &v50;
      if (v32 <= std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v33, &v50)[6])
      {
        v34 = 1;
      }
    }

    v50 = v49;
    if (v49 >> 3 <= 0)
    {
      v35 = -(-(v49 >> 3) & 0x1F);
    }

    else
    {
      v35 = (v49 >> 3) & 0x1F;
    }

    v36 = primitive_map[v35];
    *__s2 = &v50;
    v37 = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v36, &v50)[5];
    v38 = primitive_map[v35];
    *__s2 = &v50;
    v42 = 0;
    if (v37 <= std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v38, &v50)[8])
    {
      v39 = primitive_map[v35];
      *__s2 = &v50;
      v40 = std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v39, &v50)[8];
      v41 = primitive_map[v35];
      *__s2 = &v50;
      if (v40 <= std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v41, &v50)[6])
      {
        v42 = 1;
      }
    }

    a1(v11);
    if (!v23)
    {
      goto LABEL_104;
    }

    strcat(__s1, "Thread running at ");
    strcat(__s1, v24);
    v43 = &unk_988EA;
    if (v15 > 20)
    {
      switch(v15)
      {
        case 21:
          v43 = "Default quality-of-service class";
          break;
        case 25:
          v43 = "User-initiated quality-of-service class";
          break;
        case 33:
          v43 = "User-interactive quality-of-service class";
          break;
      }
    }

    else
    {
      switch(v15)
      {
        case 0:
          strcat(__s1, " waiting on a thread without a QoS class specified ");
          v43 = __str;
LABEL_83:
          strcat(__s1, v43);
          if (v34)
          {
            strcat(__s1, " that performed synchronous XPC");
            if (v42)
            {
              strcat(__s1, " and networking");
            }

            strcat(__s1, " which can incur variable delays");
          }

          else if (v42)
          {
            strcat(__s1, " that performed synchronous networking which can incur variable delays");
          }

          strcat(__s1, ". Investigate ways to avoid priority inversions");
          if (isAppleInternalNoIO())
          {
            if (v42)
            {
              v44 = 4;
              shouldFlag(0, 4);
            }

            else
            {
              v44 = 3;
              shouldFlag(0, 3);
            }

            v46 = -1;
            v45 = v47;
          }

          else if (v42)
          {
            shouldFlag(0, 4);
            v45 = 0;
            if (envEnableAGPCChecks)
            {
              v46 = 8;
            }

            else
            {
              v46 = -1;
            }

            v44 = 4;
          }

          else
          {
            shouldFlag(0, 3);
            v45 = 0;
            if (envEnableAGPCChecks)
            {
              v46 = 8;
            }

            else
            {
              v46 = -1;
            }

            v44 = 3;
          }

          generateCulledBacktrace(a5, 0, 0, __s1, v44, v46, v45, 0, 1, 1);
LABEL_104:
          result = GetThreadLocalData();
          *(result + 52) = 0;
          return result;
        case 9:
          v43 = "Background quality-of-service class";
          break;
        case 17:
          v43 = "Utility quality-of-service class";
          break;
      }
    }

    strcat(__s1, " waiting on a lower QoS thread running at ");
    goto LABEL_83;
  }

  return a1(a2);
}

void sub_8F4A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (envRPACDebug == 1)
    {
      qosWaiterSignallerInvariantCheck_cold_1();
    }

    __cxa_end_catch();
    JUMPOUT(0x8F458);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long,qos_info_t>,std::__unordered_map_hasher<long,std::__hash_value_type<long,qos_info_t>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,qos_info_t>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,qos_info_t>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

const char *checkAndGenerateBT(const char *result, uint64_t a2, char a3, int a4, int a5, int a6, int a7, int a8)
{
  if (envEnableAGPCChecks == 1)
  {
    v15 = result;
    result = GetThreadLocalData();
    if ((result[52] & 1) == 0)
    {
      *(GetThreadLocalData() + 52) = 1;
      if (a8 == 1)
      {
        v16 = pthread_main_np();
        if (a3 & 2) != 0 && (envEnableAGPCDiskwritesChecks)
        {
          generateCulledBacktrace(v15, 0, 0, 0, a4, a6, 0, a2, 2, 1);
        }

        if (v16)
        {
          if (a3)
          {
            generateCulledBacktrace(v15, 0, 0, 0, a4, a5, 0, a2, 1, 1);
          }

          if ((a3 & 4) != 0)
          {
            generateCulledBacktrace(v15, 0, 0, 0, a4, a7, 0, a2, 4, 1);
          }
        }
      }

      else
      {
        fwrite("BUG in libRPAC.dylib: checkAndGenerateBT method currently does not support a policy other than AllFrames", 0x68uLL, 1uLL, __stderrp);
      }

      result = GetThreadLocalData();
      *(result + 52) = 0;
    }
  }

  return result;
}

void generateCulledBacktrace(const char *a1, const char *a2, const char *a3, const char *a4, int a5, int a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  if ((envDisableBacktrace & 1) == 0)
  {
    if ((a9 - 1) >= 2 && a9 != 4)
    {
      generateCulledBacktrace_cold_1();
    }

    os_unfair_lock_lock(&unfair_lock_0);
    v18 = generateCulledBacktrace_inflight_issues;
    v19 = generateCulledBacktrace_max_limit;
    os_unfair_lock_unlock(&unfair_lock_0);
    if (v18 <= v19)
    {
      v20 = a7;
      v21 = a5;
      v39 = v20;
      v22 = malloc_type_calloc(1uLL, 0x200uLL, 0x79B0F5B8uLL);
      if (a2)
      {
        v23 = malloc_type_calloc(1uLL, 0x200uLL, 0xB3B54BC7uLL);
        strncpy(v23, a2, 0x200uLL);
      }

      else
      {
        v23 = 0;
      }

      v37 = a6;
      if (a3)
      {
        v24 = malloc_type_calloc(1uLL, 0x200uLL, 0x66A3279BuLL);
        strncpy(v24, a3, 0x200uLL);
      }

      else
      {
        v24 = 0;
      }

      strncpy(v22, a1, 0x200uLL);
      if (a4)
      {
        v25 = malloc_type_calloc(1uLL, 0x200uLL, 0x74A6CF2FuLL);
        strncpy(v25, a4, 0x200uLL);
      }

      else
      {
        v25 = 0;
      }

      v26 = malloc_type_calloc(0x80uLL, 8uLL, 0x80040B8603338uLL);
      v27 = getpid();
      v55[0] = 0;
      pthread_threadid_np(0, v55);
      v53[0] = 0;
      v53[1] = v53;
      v53[2] = 0x2020000000;
      v54 = v21;
      v51[0] = 0;
      v51[1] = v51;
      v51[2] = 0x2020000000;
      v52 = a10;
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = __generateCulledBacktrace_block_invoke;
      v48[3] = &__block_descriptor_40_e5_v8__0l;
      v49 = v21;
      v50 = a9;
      v38 = v23;
      v28 = backtrace(v26, 128);
      v29 = v22;
      if (generateCulledBacktrace_onceToken != -1)
      {
        dispatch_once(&generateCulledBacktrace_onceToken, v48);
      }

      v30 = generateCulledBacktrace_startingQoSClass;
      if (v21 == 17)
      {
        v30 = 9;
      }

      qos_class = v30;
      os_unfair_lock_lock(&unfair_lock_0);
      v31 = v37 == 8 || v21 == 17;
      ++generateCulledBacktrace_inflight_issues;
      v32 = &generateCulledBacktrace_inflight_other_issues;
      if (v31)
      {
        v32 = &generateCulledBacktrace_inflight_agpc_issues;
      }

      ++*v32;
      os_unfair_lock_unlock(&unfair_lock_0);
      v33 = generateCulledBacktrace_dispatch_method;
      v34 = generateCulledBacktrace_issueQueueOrWorkloop;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __generateCulledBacktrace_block_invoke_2;
      block[3] = &unk_9CA90;
      v42 = v21;
      v43 = v28;
      block[6] = v26;
      block[7] = v29;
      block[8] = v25;
      block[9] = v39;
      v44 = v37;
      v45 = a9;
      v46 = v27;
      v47 = a10;
      block[10] = v55[0];
      block[11] = a8;
      block[4] = v53;
      block[5] = v51;
      block[12] = v38;
      block[13] = v24;
      v35 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qos_class, 0, block);
      v33(v34, v35);

      _Block_object_dispose(v51, 8);
      _Block_object_dispose(v53, 8);
    }
  }
}

void sub_8FC4C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void culledOsLogFault(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = __chkstk_darwin();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v29 = v22;
  v23 = v9;
  memset(v36, 0, 512);
  bzero(__str, 0x800uLL);
  if (culledOsLogFault_onceToken != -1)
  {
    culledOsLogFault_cold_1();
  }

  if (v21 != 3)
  {
    if (v21 == 4)
    {
      goto LABEL_12;
    }

    if (v21 == 17)
    {
      v24 = 5;
      if (a9 != 4)
      {
        v24 = 0;
      }

      if (a9 == 2)
      {
        v24 = 4;
      }

      goto LABEL_13;
    }

    if (envSevereHangRiskThreshold < v17)
    {
LABEL_12:
      v24 = 1;
LABEL_13:
      v28 = v24;
      goto LABEL_15;
    }
  }

  v28 = 0;
LABEL_15:
  v30 = 0;
  if (envEnableDiagnosticMessageBreakdown == 1)
  {
    memset(buf, 0, sizeof(buf));
    memset(v33, 0, sizeof(v33));
    memset(v32, 0, sizeof(v32));
    memset(v31, 0, sizeof(v31));
    issueDescription(v23, v29, v21, v19, v17, v36, v11, 1, &v30, buf, v33, v32, v31, a9);
    v25 = parseableExtendedIssueDescription(v36, __str, v23, 0, 0, 0, 0, 0x800uLL, &v30, v21, v19, buf, v33, v32, v31, a9);
  }

  else
  {
    issueDescription(v23, v29, v21, v19, v17, v36, v11, 1, &v30, 0, 0, 0, 0, a9);
    v25 = parseableExtendedIssueDescription(v36, __str, v23, 0, 0, 0, 0, 0x800uLL, &v30, v21, v19, 0, 0, 0, 0, a9);
  }

  if (v25)
  {
    v26 = culledOsLogFault_logRPAC[v28];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = __str;
      WORD6(buf[0]) = 1040;
      *(buf + 14) = v15;
      WORD1(buf[1]) = 2096;
      *(&buf[1] + 4) = v13;
      _os_log_fault_impl(&dword_0, v26, OS_LOG_TYPE_FAULT, "%s%{xcode:text-backtrace}.*P", buf, 0x1Cu);
    }

    if (!jsonVerified())
    {
      culledOsLogFault_cold_2();
    }
  }

  else
  {
    v27 = culledOsLogFault_logRPAC[v28];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = v36;
      WORD6(buf[0]) = 1040;
      *(buf + 14) = v15;
      WORD1(buf[1]) = 2096;
      *(&buf[1] + 4) = v13;
      _os_log_fault_impl(&dword_0, v27, OS_LOG_TYPE_FAULT, "%s%{xcode:text-backtrace}.*P", buf, 0x1Cu);
    }
  }
}

void __culledOsLogFault_block_invoke(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "Hang Risk");
  v2 = culledOsLogFault_logRPAC[0];
  culledOsLogFault_logRPAC[0] = v1;

  v3 = os_log_create("com.apple.runtime-issues", "Severe Hang Risk");
  v4 = qword_6A4FF0;
  qword_6A4FF0 = v3;

  v5 = os_log_create("com.apple.runtime-issues", "Suboptimal UI API usage detected");
  v6 = qword_6A4FF8;
  qword_6A4FF8 = v5;

  v7 = os_log_create("com.apple.runtime-issues", "Exceedingly big UIImage memory footprint");
  v8 = qword_6A5000;
  qword_6A5000 = v7;

  v9 = os_log_create("com.apple.runtime-issues", "High Disk Writes Risk");
  v10 = qword_6A5008;
  qword_6A5008 = v9;

  qword_6A5010 = os_log_create("com.apple.runtime-issues", "Slow Launch Risk");

  _objc_release_x1();
}

void __generateCulledBacktrace_block_invoke(uint64_t a1)
{
  if (envProfileModeEnabled == 1)
  {
    generateCulledBacktrace_dispatch_method = &dispatch_sync;
    generateCulledBacktrace_startingQoSClass = 33;
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v3 = dispatch_queue_create("TPC issue queue", v2);
    v4 = generateCulledBacktrace_issueQueueOrWorkloop;
    generateCulledBacktrace_issueQueueOrWorkloop = v3;
  }

  else
  {
    generateCulledBacktrace_dispatch_method = &dispatch_async;
    generateCulledBacktrace_startingQoSClass = 25;
    v5 = dispatch_workloop_create("TPC issue queue");
    v2 = generateCulledBacktrace_issueQueueOrWorkloop;
    generateCulledBacktrace_issueQueueOrWorkloop = v5;
  }

  if (envFlagCallersFromBuiltBundleOnly == 1)
  {
    v6 = copyMainBundleExecutableDirectory();
    if (!v6)
    {
      v6 = copyMainBundleDirectory();
    }

    v7 = CFURLGetString(v6);
    generateCulledBacktrace_mainBundleURL = CFStringGetCStringPtr(v7, 0x8000100u);
  }

  v8 = *(a1 + 36);
  generateCulledBacktrace_prevLogType = *(a1 + 32);
  generateCulledBacktrace_prevIssueType = v8;
}

void __generateCulledBacktrace_block_invoke_2(uint64_t a1)
{
  if (envRPACDebug == 1)
  {
    v2 = __stderrp;
    v3 = *(a1 + 112);
    v4 = qos_class_self();
    fprintf(v2, "Log type: %d; QoS class of thread: %d\n", v3, v4);
  }

  v5 = malloc_type_calloc(1uLL, 0x3FDCuLL, 0x168DEF08uLL);
  v122 = malloc_type_calloc(0x80uLL, 0x14uLL, 0x1000040A86A77D5uLL);
  v6 = &qword_6A5000;
  v7 = generateCulledBacktrace_prevCallstack != 0;
  if ((envRPACDebug & 1) != 0 || (envLogAGPCReportsToStderr & 1) != 0 || *(*(*(a1 + 32) + 8) + 24) != 17)
  {
    v8 = backtrace_symbols(*(a1 + 48), *(a1 + 116));
  }

  else
  {
    v8 = 0;
  }

  backtrace_image_offsets(*(a1 + 48), image_offsets, *(a1 + 116));
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  *v128 = 0u;
  v129 = 0u;
  v9 = *(*(*(a1 + 32) + 8) + 24);
  v123 = v8;
  if (v9 == 17 && envLogAGPCReportsToStderr != 1)
  {
    LODWORD(v17) = 16347;
    v15 = v5;
    goto LABEL_55;
  }

  LOBYTE(v126.dli_fname) = 0;
  issueDescription(*(a1 + 56), *(a1 + 64), v9, *(a1 + 120), *(a1 + 72), v128, 0, 0, &v126, 0, 0, 0, 0, *(a1 + 124));
  v10 = snprintf(v5, 0x3FDBuLL, "Thread Performance Checker: %s", v128);
  v12 = v10 == -1 || v10 > 16347;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = (16347 - v10);
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  v15 = &v5[v14];
  if (envLogBacktraceToStderr == 1)
  {
    if (v13 >= 1)
    {
      v16 = snprintf(v15, v13, "\nPID: %d, TID: %llu\n", *(a1 + 128), *(a1 + 80));
      LODWORD(v17) = 0;
      if (v16 == -1 || v13 < v16)
      {
        goto LABEL_55;
      }

      v15 += v16;
      v13 = (v13 - v16);
      if (v13 >= 1)
      {
        v18 = snprintf(v15, v13, "Backtrace\n");
        LODWORD(v17) = 0;
        if (v18 == -1)
        {
          goto LABEL_55;
        }

        if (v13 < v18)
        {
          goto LABEL_55;
        }

        v15 += v18;
        v17 = (v13 - v18);
        if (v17 < 1)
        {
          goto LABEL_55;
        }

        v19 = snprintf(v15, v17, "=================================================================\n");
        v21 = v19 == -1 || v17 < v19;
        v22 = v19;
        v23 = v17 - v19;
        goto LABEL_45;
      }
    }

LABEL_52:
    LODWORD(v17) = v13;
    goto LABEL_55;
  }

  if (v13 < 1)
  {
    goto LABEL_52;
  }

  v24 = snprintf(v15, v13, ". Set environment variable 'PERFC_LOG_BACKTRACE_TO_STDERR' to 1 to see backtrace\n");
  v21 = v24 == -1 || v13 < v24;
  v22 = v24;
  v23 = v13 - v24;
LABEL_45:
  if (v21)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    LODWORD(v17) = v23;
  }

  if (v21)
  {
    v26 = 0;
  }

  else
  {
    v26 = v22;
  }

  v15 += v26;
LABEL_55:
  v127 = 0;
  if (envIgnoreCallersFromSlashSystem == 1 && (envEnableAGPCChecks & 1) == 0)
  {
    if (*(a1 + 116) < 1)
    {
      goto LABEL_214;
    }

    v115 = v5;
    __sizea = v17;
    v110 = 0;
    __stra = v15;
    v52 = v7;
    v53 = 0;
    v121 = 0;
    v54 = 0;
    v125 = 0;
    v55 = 0;
    v56 = 1;
    v57 = image_offsets;
    while (1)
    {
      memset(&v126, 0, sizeof(v126));
      v58 = *(*(a1 + 48) + 8 * v53);
      if (dyld_image_header_containing_address() != MyOwnMachHeader && dladdr(*(*(a1 + 48) + 8 * v53), &v126) && v126.dli_sname)
      {
        if (suppressionCheck(v126.dli_fname, v126.dli_sname, *(*(*(a1 + 32) + 8) + 24)))
        {
          v124 = v54;
          v100 = *(*(a1 + 32) + 8);
          if (*(v100 + 24) != 6)
          {
            goto LABEL_223;
          }

          v51 = 0;
          *(v100 + 24) = 8;
LABEL_224:
          v6 = &qword_6A5000;
          v5 = v115;
          LODWORD(v7) = v52;
          goto LABEL_228;
        }

        v59 = *(*(a1 + 48) + 8 * v53);
        v60 = dyld_image_path_containing_address();
        if (v55)
        {
LABEL_132:
          v55 = 1;
          if (v56)
          {
            goto LABEL_133;
          }

LABEL_139:
          v56 = 0;
          v64 = v54;
LABEL_140:
          v66 = isSystemFrame(v60);
          offset = v57->offset;
          v68 = &v122[20 * v54];
          *v68 = *v57->uuid;
          *(v68 + 4) = offset;
          v69 = v64 + 1;
          v54 = v69;
          if (v123 && envLogBacktraceToStderr == 1 && v69 < *(a1 + 116))
          {
            adjustFrameNumber(v123[v53], v69);
            if (__sizea >= 1)
            {
              v70 = snprintf(__stra, __sizea, "%s\n", v123[v53]);
              v72 = v70 == -1 || __sizea < v70;
              v73 = !v72;
              if (v72)
              {
                v74 = 0;
              }

              else
              {
                v74 = __sizea - v70;
              }

              __sizea = v74;
              if (v73)
              {
                v75 = v70;
              }

              else
              {
                v75 = 0;
              }

              __stra += v75;
            }

            v54 = v69;
          }

          v125 += !v66;
          if (v52)
          {
            v52 = 0;
            if (generateCulledBacktrace_prevLogType == *(*(*(a1 + 32) + 8) + 24) && generateCulledBacktrace_prevCallstack)
            {
              if (*(generateCulledBacktrace_prevCallstack + 8 * v53) == *(*(a1 + 48) + 8 * v53))
              {
                v52 = generateCulledBacktrace_prevIssueType == *(a1 + 124);
              }

              else
              {
                ++v110;
                v52 = 100 * v110 / *(a1 + 116) < 6;
              }
            }
          }

          else
          {
            v52 = 0;
          }

          goto LABEL_164;
        }

        if ((*(*(*(a1 + 32) + 8) + 24) - 3) > 1)
        {
          v55 = 0;
          if ((v56 & 1) == 0)
          {
            goto LABEL_139;
          }

LABEL_133:
          if (!v60)
          {
            v124 = v54;
LABEL_223:
            v51 = 1;
            goto LABEL_224;
          }

          v63 = isSystemFrame(v60);
          v56 = v63;
          v64 = v54;
          v65 = envMaxAntipatternDistance == v54 && v63;
          v121 |= v65;
          goto LABEL_140;
        }

        v61 = strrchr(v126.dli_fname, 47);
        if (v61)
        {
          v62 = v61 + 1;
        }

        else
        {
          v62 = v60;
        }

        if (strncmp(v62, "libswiftDispatch.dylib", 0x16uLL))
        {
          goto LABEL_132;
        }

        v55 = 1;
      }

LABEL_164:
      ++v53;
      ++v57;
      if (v53 >= *(a1 + 116))
      {
        v124 = v54;
        v51 = 0;
        v6 = &qword_6A5000;
        v5 = v115;
        v8 = v123;
        LODWORD(v7) = v52;
        goto LABEL_229;
      }
    }
  }

  if (envFlagCallersFromBuiltBundleOnly == 1 && (envEnableAGPCChecks & 1) == 0)
  {
    if (*(a1 + 116) < 1)
    {
      goto LABEL_214;
    }

    v116 = v5;
    __sizeb = v17;
    __strb = v15;
    v76 = 0;
    v124 = 0;
    v125 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 1;
    v80 = image_offsets;
    while (1)
    {
      memset(&v126, 0, sizeof(v126));
      v81 = *(*(a1 + 48) + 8 * v76);
      if (dyld_image_header_containing_address() == MyOwnMachHeader || !dladdr(*(*(a1 + 48) + 8 * v76), &v126) || !v126.dli_sname)
      {
        goto LABEL_212;
      }

      if (suppressionCheck(v126.dli_fname, v126.dli_sname, *(*(*(a1 + 32) + 8) + 24)))
      {
        v101 = *(*(a1 + 32) + 8);
        if (*(v101 + 24) == 6)
        {
          v51 = 0;
          *(v101 + 24) = 8;
        }

        else
        {
          v51 = 1;
        }

        v6 = &qword_6A5000;
        v5 = v116;
        goto LABEL_227;
      }

      v82 = v7;
      v83 = *(*(a1 + 48) + 8 * v76);
      v84 = dyld_image_path_containing_address();
      if ((v77 & 1) == 0)
      {
        if ((*(*(*(a1 + 32) + 8) + 24) - 3) > 1)
        {
          v77 = 0;
          goto LABEL_182;
        }

        v85 = strrchr(v126.dli_fname, 47);
        if (v85)
        {
          v86 = v85 + 1;
        }

        else
        {
          v86 = v84;
        }

        if (!strncmp(v86, "libswiftDispatch.dylib", 0x16uLL))
        {
          v77 = 1;
          v7 = v82;
          goto LABEL_212;
        }
      }

      v77 = 1;
LABEL_182:
      if (!generateCulledBacktrace_mainBundleURL)
      {
        goto LABEL_219;
      }

      if (v79)
      {
        if (!v84)
        {
LABEL_219:
          v51 = 1;
          v6 = &qword_6A5000;
          v5 = v116;
          LODWORD(v7) = v82;
LABEL_227:
          v121 = 0;
          goto LABEL_228;
        }

        v87 = strlen(generateCulledBacktrace_mainBundleURL);
        if (strncmp(v84, (generateCulledBacktrace_mainBundleURL + 7), v87 - 7))
        {
          v121 = 0;
          v51 = 1;
          v6 = &qword_6A5000;
          v5 = v116;
          LODWORD(v7) = v82;
          goto LABEL_229;
        }
      }

      v88 = isSystemFrame(v84);
      v89 = v80->offset;
      v90 = &v122[20 * v124];
      *v90 = *v80->uuid;
      *(v90 + 4) = v89;
      v91 = ++v124;
      if (v8)
      {
        if (envLogBacktraceToStderr == 1 && v91 < *(a1 + 116))
        {
          adjustFrameNumber(v8[v76], v91);
          if (__sizeb >= 1)
          {
            v92 = snprintf(__strb, __sizeb, "%s\n", v8[v76]);
            v94 = v92 == -1 || __sizeb < v92;
            v95 = !v94;
            if (v94)
            {
              v96 = 0;
            }

            else
            {
              v96 = __sizeb - v92;
            }

            __sizeb = v96;
            if (v95)
            {
              v97 = v92;
            }

            else
            {
              v97 = 0;
            }

            __strb += v97;
          }
        }
      }

      v125 += !v88;
      v79 = 0;
      if (v82)
      {
        if (generateCulledBacktrace_prevLogType == *(*(*(a1 + 32) + 8) + 24) && generateCulledBacktrace_prevCallstack)
        {
          v79 = 0;
          if (*(generateCulledBacktrace_prevCallstack + 8 * v76) == *(*(a1 + 48) + 8 * v76))
          {
            v7 = generateCulledBacktrace_prevIssueType == *(a1 + 124);
          }

          else
          {
            ++v78;
            v7 = 100 * v78 / *(a1 + 116) < 6;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

LABEL_212:
      ++v76;
      ++v80;
      if (v76 >= *(a1 + 116))
      {
        v121 = 0;
        v51 = 0;
        v6 = &qword_6A5000;
        v5 = v116;
LABEL_228:
        v8 = v123;
        goto LABEL_229;
      }
    }
  }

  if (*(a1 + 116) < 1)
  {
LABEL_214:
    v124 = 0;
    v125 = 0;
    v121 = 0;
    v51 = 0;
    goto LABEL_229;
  }

  v114 = v5;
  __size = v17;
  v109 = 0;
  __str = v15;
  v27 = 0;
  v28 = 0;
  v124 = 0;
  v125 = 0;
  v29 = 0;
  v120 = 1;
  while (1)
  {
    memset(&v126, 0, sizeof(v126));
    v30 = *(*(a1 + 48) + 8 * v27);
    if (dyld_image_header_containing_address() == MyOwnMachHeader || !dladdr(*(*(a1 + 48) + 8 * v27), &v126) || !v126.dli_sname)
    {
      goto LABEL_113;
    }

    if (suppressionCheck(v126.dli_fname, v126.dli_sname, *(*(*(a1 + 32) + 8) + 24)))
    {
      break;
    }

    v31 = v7;
    v32 = *(*(a1 + 48) + 8 * v27);
    v33 = dyld_image_path_containing_address();
    if (v29)
    {
      goto LABEL_71;
    }

    if ((*(*(*(a1 + 32) + 8) + 24) - 3) > 1)
    {
      v29 = 0;
      goto LABEL_73;
    }

    v34 = strrchr(v126.dli_fname, 47);
    if (v34)
    {
      v35 = v34 + 1;
    }

    else
    {
      v35 = v33;
    }

    if (strncmp(v35, "libswiftDispatch.dylib", 0x16uLL))
    {
LABEL_71:
      v29 = 1;
LABEL_73:
      if (v120)
      {
        if (v33)
        {
          v36 = isSystemFrame(v33);
          if (v36)
          {
            v28 |= envMaxAntipatternDistance == v124;
          }

          v120 = v36 & (v28 ^ 1);
        }

        else
        {
          v120 = 0;
          v28 = 1;
        }
      }

      else
      {
        v120 = 0;
      }

      if (envEnableDuplicateDetection == 1)
      {
        v37 = 0;
        while (1)
        {
          v38 = strlen(generateCulledBacktrace_prefix[v37]);
          if (!strncmp(generateCulledBacktrace_prefix[v37], v33, v38))
          {
            break;
          }

          if (++v37 == 3)
          {
            runningSumOfAddr(v126.dli_saddr, &v127, *(a1 + 132), v33);
            break;
          }
        }
      }

      if (envRPACDebug == 1 && envEnableDuplicateDetection == 1 && envLogAGPCReportsToStderr == 1)
      {
        fprintf(__stderrp, "Running sum: %zd\n", v127);
      }

      v39 = isSystemFrame(v33);
      v40 = &image_offsets[v27];
      v41 = v40->offset;
      v42 = *v40->uuid;
      v8 = v123;
      v43 = &v122[20 * v124];
      *v43 = v42;
      *(v43 + 4) = v41;
      ++v124;
      if (v123)
      {
        if (envLogBacktraceToStderr == 1 && v124 < *(a1 + 116))
        {
          adjustFrameNumber(v123[v27], v124);
          if (__size >= 1)
          {
            v44 = snprintf(__str, __size, "%s\n", v123[v27]);
            v46 = v44 == -1 || __size < v44;
            v47 = !v46;
            if (v46)
            {
              v48 = 0;
            }

            else
            {
              v48 = __size - v44;
            }

            __size = v48;
            if (v47)
            {
              v49 = v44;
            }

            else
            {
              v49 = 0;
            }

            __str += v49;
            v8 = v123;
          }
        }
      }

      v125 += !v39;
      if (!v31 || (generateCulledBacktrace_prevLogType == *(*(*(a1 + 32) + 8) + 24) ? (v50 = generateCulledBacktrace_prevCallstack == 0) : (v50 = 1), v50))
      {
        v7 = 0;
      }

      else if (*(generateCulledBacktrace_prevCallstack + 8 * v27) == *(*(a1 + 48) + 8 * v27))
      {
        v7 = generateCulledBacktrace_prevIssueType == *(a1 + 124);
      }

      else
      {
        ++v109;
        v7 = 100 * v109 / *(a1 + 116) < 6;
      }

      goto LABEL_113;
    }

    v29 = 1;
    v7 = v31;
LABEL_113:
    if (++v27 >= *(a1 + 116))
    {
      v121 = v28;
      v51 = 0;
      goto LABEL_119;
    }
  }

  v121 = v28;
  v98 = *(*(a1 + 32) + 8);
  v99 = *(v98 + 24);
  v51 = v99 != 6;
  if (v99 == 6)
  {
    *(v98 + 24) = 8;
  }

LABEL_119:
  v6 = &qword_6A5000;
  v5 = v114;
LABEL_229:
  suppressionCheck(0, 0, 0x10000);
  if (*(a1 + 124) == 2)
  {
    if (envEnableDuplicateDetection == 1)
    {
      runningSumOfAddr(*(a1 + 88) + *(a1 + 120), &v127, 1, 0);
    }
  }

  else if (*(a1 + 112) == 17 && envEnableDuplicateDetection == 1)
  {
    if (isAntipatternSupplementedDuplicateDetectionPolicy(*(*(*(a1 + 40) + 8) + 24)))
    {
      runningSumOfAddr(*(a1 + 88), &v127, *(*(*(a1 + 40) + 8) + 24), 0);
    }

    if (isFrameworkSupplementedDuplicateDetectionPolicy(*(*(*(a1 + 40) + 8) + 24)))
    {
      addStringToSum(&v127, *(a1 + 96), *(*(*(a1 + 40) + 8) + 24));
    }

    if (isClassSupplementedDuplicateDetectionPolicy(*(*(*(a1 + 40) + 8) + 24)))
    {
      addStringToSum(&v127, *(a1 + 104), *(*(*(a1 + 40) + 8) + 24));
    }
  }

  if (!v51)
  {
    v102 = shouldSuppressForActionability(*(a1 + 116), v125, *(a1 + 124));
    if (v102 || v7)
    {
      goto LABEL_243;
    }

    if (envEnableDuplicateDetection == 1)
    {
      if (isDuplicate(v127, *(a1 + 124)))
      {
        updateEntry(v127, *(a1 + 124));
        if ((envRPACDebug & 1) != 0 && envEnableDuplicateDetection == 1)
        {
          fprintf(__stderrp, "Duplication stats == Framework : %s, Class : %s, API : %s, Sum address : %zd, Log type : %d, Policy : %d, NonSystemFrames : %d\n", *(a1 + 96), *(a1 + 104), *(a1 + 56), v127, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), v125);
          fwrite("Duplicate being suppressed\n", 0x1BuLL, 1uLL, __stderrp);
          if (envLogReportsToStderr == 1)
          {
            fputs(v5, __stderrp);
          }
        }

        goto LABEL_269;
      }

      storeAddressHash(v127, v124, *(*(*(a1 + 32) + 8) + 24), *(a1 + 120), *(a1 + 124));
    }

    if (envRPACDebug == 1 && envEnableDuplicateDetection == 1 && envLogAGPCReportsToStderr == 1)
    {
      fprintf(__stderrp, "No duplicate stats == %s : %s : %s : %zd : Log type : %d Policy : %d NonSystemFrames : %d\n", *(a1 + 96), *(a1 + 104), *(a1 + 56), v127, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), v125);
    }

    if (envLogReportsToStderr != 1)
    {
      goto LABEL_266;
    }

    v103 = *(*(*(a1 + 32) + 8) + 24);
    if (envLogAGPCReportsToStderr)
    {
      if (v103 == 17 || ((v121 ^ 1) & 1) != 0)
      {
        goto LABEL_265;
      }
    }

    else if (!((v103 == 17) | v121 & 1))
    {
LABEL_265:
      fputs(v5, __stderrp);
    }

LABEL_266:
    if (envLogReportsToOsLog == 1 && v125)
    {
      culledOsLogFault(*(a1 + 56), *(a1 + 64), *(*(*(a1 + 32) + 8) + 24), *(a1 + 120), *(a1 + 72), (20 * v124 + 20), v122, v121 & 1, *(a1 + 124));
    }

    goto LABEL_269;
  }

  v102 = 1;
LABEL_243:
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "Framework : %s, Class : %s, API : %s, Sum address : %zd, Log type : %d, Policy : %d, NonSystemFrames : %d\n", *(a1 + 96), *(a1 + 104), *(a1 + 56), v127, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), v125);
    if (v7)
    {
      fwrite("Gobbling up issue due to rate limiter engagement\n", 0x31uLL, 1uLL, __stderrp);
    }

    if (v102)
    {
      fwrite("Gobbling up issue because of suppression engagement\n", 0x34uLL, 1uLL, __stderrp);
    }
  }

LABEL_269:
  if (v8)
  {
    free(v8);
  }

  free(*(a1 + 56));
  v104 = *(a1 + 64);
  if (v104)
  {
    free(v104);
  }

  v105 = *(a1 + 96);
  if (v105)
  {
    free(v105);
  }

  v106 = *(a1 + 104);
  if (v106)
  {
    free(v106);
  }

  free(v122);
  free(v5);
  v107 = v6[6];
  if (v107)
  {
    free(v107);
  }

  generateCulledBacktrace_prevLogType = *(*(*(a1 + 32) + 8) + 24);
  v6[6] = *(a1 + 48);
  generateCulledBacktrace_prevIssueType = *(a1 + 124);
  os_unfair_lock_lock(&unfair_lock_0);
  --generateCulledBacktrace_inflight_issues;
  if (*(a1 + 112) == 17 || *(a1 + 120) == 8)
  {
    --generateCulledBacktrace_inflight_agpc_issues;
    if (envRPACDebug == 1)
    {
      fprintf(__stderrp, "Inflight AGPC issues: %d\n");
    }
  }

  else
  {
    --generateCulledBacktrace_inflight_other_issues;
    if (envRPACDebug == 1)
    {
      fprintf(__stderrp, "Inflight other issues: %d\n");
    }
  }

  if (generateCulledBacktrace_inflight_issues >= generateCulledBacktrace_max_limit)
  {
    if (generateCulledBacktrace_inflight_issues > 99)
    {
      v108 = 50;
      goto LABEL_292;
    }

    if (generateCulledBacktrace_inflight_issues > 49)
    {
      v108 = 30;
      goto LABEL_292;
    }

    if (generateCulledBacktrace_inflight_issues >= 30)
    {
      v108 = 15;
LABEL_292:
      generateCulledBacktrace_max_limit = v108;
    }

    if (envRPACDebug == 1)
    {
      fprintf(__stderrp, "Inflight AGPC issues: %d\n", generateCulledBacktrace_inflight_agpc_issues);
      fprintf(__stderrp, "Inflight other issues: %d\n", generateCulledBacktrace_inflight_other_issues);
      fprintf(__stderrp, "Inflight all issues: %d\n", generateCulledBacktrace_inflight_issues);
    }
  }

  os_unfair_lock_unlock(&unfair_lock_0);
}