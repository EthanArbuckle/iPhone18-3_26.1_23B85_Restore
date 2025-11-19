void NetCacheEntryDestroy(uint64_t *a1)
{
  NetCacheEntryLog("Destroy: ", a1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    *(v2 + 8) = v3;
  }

  *v3 = v2;
  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[8];
  if (v8)
  {
    CFRelease(v8);
  }

  free(a1);
}

void NetCacheEntryLog(const char *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  logger = mysyslog_get_logger();
  v6 = _SC_syslog_os_log_mapping();
  v7 = os_log_type_enabled(logger, v6);
  if (v4)
  {
    if (v7)
    {
      v8 = *(a2 + 16);
      v9 = "";
      v11 = *(a2 + 40);
      v10 = *(a2 + 48);
      if (a1)
      {
        v9 = a1;
      }

      v12 = *(a2 + 32);
      v22 = 136316418;
      v23 = v9;
      v24 = 2048;
      v25 = a2;
      v26 = 2048;
      v27 = v8;
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v11;
      v13 = "%s<%p> %0.09g DisplayID %@ SSID=%@ Signatures=%@";
      v14 = logger;
      v15 = v6;
      v16 = 62;
LABEL_10:
      _os_log_impl(&dword_277237000, v14, v15, v13, &v22, v16);
    }
  }

  else if (v7)
  {
    v17 = *(a2 + 16);
    v18 = "";
    if (a1)
    {
      v18 = a1;
    }

    v19 = *(a2 + 32);
    v20 = *(a2 + 40);
    v22 = 136316162;
    v23 = v18;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v17;
    v28 = 2112;
    v29 = v19;
    v30 = 2112;
    v31 = v20;
    v13 = "%s<%p> %0.09g Not Captive SSID=%@ Signatures=%@";
    v14 = logger;
    v15 = v6;
    v16 = 52;
    goto LABEL_10;
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t NetCacheEntryGetRedirectionURL(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  result = *(a1 + 64);
  *a2 = *(v3 + 8);
  return result;
}

void *NetCacheCreate()
{
  result = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  *result = 0;
  return result;
}

void *NetCacheApplyFunction(void **a1, uint64_t (*a2)(void))
{
  result = *a1;
  do
  {
    if (!result)
    {
      break;
    }

    v4 = *result;
    v5 = a2();
    result = v4;
  }

  while (v5);
  return result;
}

uint64_t *NetCacheLookupEntry(uint64_t **a1, const __CFArray *a2, const void *a3, double a4)
{
  if (a2)
  {
    v4 = *a1;
    if (*a1)
    {
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = v4;
          v4 = *v4;
          if (!v8)
          {
            break;
          }

LABEL_5:
          NetCacheEntryDestroy(v9);
          if (!v4)
          {
            return 0;
          }
        }

        if (*(v9 + 2) + 259200.0 <= a4)
        {
          v8 = 1;
          goto LABEL_5;
        }

        if (my_CFEqual(a3, v9[4]) && my_CFArrayContainsAnyArrayValues(v9[5], a2))
        {
          return v9;
        }

        v8 = 0;
      }

      while (v4);
    }
  }

  return 0;
}

void *NetCacheUpdateEntry(uint64_t **a1, CFArrayRef theArray, const void *a3, char a4, const void *a5, double a6)
{
  if (!theArray || !CFArrayGetCount(theArray))
  {
    return 0;
  }

  v12 = NetCacheLookupEntry(a1, theArray, a3, a6);
  if (v12)
  {
    NetCacheEntryLog("Remove: ", v12);
    v13 = *v12;
    v14 = v12[1];
    if (*v12)
    {
      *(v13 + 8) = v14;
    }

    *v14 = v13;
    v15 = v12;
  }

  else
  {
    v15 = malloc_type_malloc(0x50uLL, 0x10E00407254A7C1uLL);
    *v15 = 0u;
    *(v15 + 1) = 0u;
    *(v15 + 3) = 0u;
    *(v15 + 4) = 0u;
    *(v15 + 2) = 0u;
    my_FieldSetRetainedCFType(v15 + 4, a3);
  }

  my_FieldSetRetainedCFType(v15 + 5, theArray);
  *(v15 + 2) = a6;
  *(v15 + 24) = a4;
  my_FieldSetRetainedCFType(v15 + 6, a5);
  v16 = *a1;
  *v15 = *a1;
  if (v16)
  {
    v16[1] = v15;
  }

  *a1 = v15;
  *(v15 + 1) = a1;
  if (v12)
  {
    v17 = "Add: ";
  }

  else
  {
    v17 = "New: ";
  }

  NetCacheEntryLog(v17, v15);
  return v15;
}

uint64_t CNSServer_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 28047727) >= 0xFFFFFFE6)
  {
    return *(&CNSServerCNSServer_subsystem + 5 * (v1 - 28047701) + 5);
  }

  else
  {
    return 0;
  }
}

const char *_XParsePost(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 16453) < 0xFFFFBFFF)
  {
    goto LABEL_28;
  }

  v5 = *(result + 10);
  if (v5 > 0x1000)
  {
    goto LABEL_28;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 68 < v5 || v4 < v6 + 68)
  {
    goto LABEL_28;
  }

  v8 = &result[v6];
  v9 = *(v8 + 12);
  if (v9 > 0x1000)
  {
    goto LABEL_28;
  }

  v10 = v4 - v6;
  v11 = (v9 + 3) & 0xFFFFFFFC;
  if (v10 - 68 < v9 || v10 < v11 + 68)
  {
    goto LABEL_28;
  }

  v13 = v8 - 4096;
  v14 = &v8[v11 - 4096];
  v15 = *(v14 + 4152);
  if (v15 > 0x1000)
  {
    goto LABEL_28;
  }

  v16 = v10 - v11;
  v17 = (v15 + 3) & 0xFFFFFFFC;
  if (v16 - 68 < v15 || v16 < v17 + 68)
  {
    goto LABEL_28;
  }

  v19 = v14 - 4096;
  v20 = v16 - v17;
  v21 = v14 - 4096 + v17;
  v22 = *(v21 + 8256);
  v23 = v22 <= 0x1000 && v20 - 68 >= v22;
  v24 = ((v22 + 3) & 0x3FFC) + 68;
  if (!v23 || v20 != v24)
  {
    goto LABEL_28;
  }

  v27 = 4140;
  if (v4 < 0x102C)
  {
    v27 = *(result + 1);
  }

  result = memchr((result + 44), 0, v27 - 44);
  if (!result)
  {
    goto LABEL_28;
  }

  v28 = &v3[v4];
  v29 = v13 + 4148;
  v30 = &v3[v4] - v29 >= 4096 ? 4096 : &v3[v4] - v29;
  result = memchr(v29, 0, v30);
  if (!result || ((v31 = (v19 + 8252), v28 - v31 >= 4096) ? (v32 = 4096) : (v32 = v28 - v31), (result = memchr(v31, 0, v32)) == 0 || ((v33 = (v21 + 8260), v28 - v33 >= 4096) ? (v34 = 4096) : (v34 = v28 - v33), (result = memchr(v33, 0, v34)) == 0)))
  {
LABEL_28:
    v26 = -304;
LABEL_29:
    *(a2 + 32) = v26;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v35 = &v3[(v4 + 3) & 0xFFFC];
  if (*v35 || *(v35 + 1) <= 0x1Fu)
  {
    v26 = -309;
    goto LABEL_29;
  }

  v36 = *(v35 + 20);
  v37 = *(v35 + 36);
  result = CNSServerParsePost(*(v3 + 3), *(v3 + 8), v3 + 44, v29, v31, v33, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XLogoff(const char *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = *(a1 + 1);
    if ((v6 - 4137) >= 0xFFFFEFFF)
    {
      v7 = *(a1 + 9);
      v8 = v7 <= 0x1000 && v6 - 40 >= v7;
      if (v8 && v6 == ((v7 + 3) & 0x3FFC) + 40)
      {
        if (memchr((a1 + 40), 0, v6 - 40))
        {
          v9 = &a1[(v6 + 3) & 0x3FFC];
          if (*v9 || *(v9 + 1) < 0x20u)
          {
            result = 4294966987;
          }

          else
          {
            v10 = *(v9 + 20);
            v11 = *(v9 + 36);
            result = CNSServerLogoff(*(a1 + 3), *(a1 + 2), a1 + 40);
          }
        }

        else
        {
          result = 4294966992;
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XForgetNetwork(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = *(result + 4), (v3 - 1061) >= 0xFFFFFBFF) && ((v4 = *(result + 32), v4 <= 0x400) ? (v5 = v3 - 36 >= v4) : (v5 = 0), v5 ? (v6 = v3 == ((v4 + 3) & 0xFFC) + 36) : (v6 = 0), v6))
  {
    v8 = ((v3 + 3) & 0xFFC) + result;
    if (!*v8 && *(v8 + 4) > 0x1Fu)
    {
      v9 = *(v8 + 20);
      v10 = *(v8 + 36);
      result = CNSServerForgetNetwork(*(result + 12), (result + 36), v4);
      *(a2 + 32) = result;
      return result;
    }

    v7 = -309;
  }

  else
  {
    v7 = -304;
  }

  *(a2 + 32) = v7;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XPurgeAccountRecord(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = *(result + 4), (v3 - 1061) >= 0xFFFFFBFF) && ((v4 = *(result + 32), v4 <= 0x400) ? (v5 = v3 - 36 >= v4) : (v5 = 0), v5 ? (v6 = v3 == ((v4 + 3) & 0xFFC) + 36) : (v6 = 0), v6))
  {
    v8 = ((v3 + 3) & 0xFFC) + result;
    if (!*v8 && *(v8 + 4) > 0x1Fu)
    {
      v9 = *(v8 + 20);
      v10 = *(v8 + 36);
      result = CNSServerPurgeAccountRecord(*(result + 12), (result + 36), v4);
      *(a2 + 32) = result;
      return result;
    }

    v7 = -309;
  }

  else
  {
    v7 = -304;
  }

  *(a2 + 32) = v7;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XDebugLaunchWebsheet(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 56) || *(result + 60) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v5 = *(result + 12);
  v6 = *(result + 28);
  v7 = *(result + 92);
  v8[0] = *(result + 76);
  v8[1] = v7;
  result = CNSServerDebugLaunchWebsheet(v5, v6, v3, (a2 + 36), v8);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XDumpState(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    v3 = result[3];
    result = CNSServerDumpState();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _XCopySupportedInterfaces(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 24) || *(result + 28) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 44);
  v5 = *(result + 60);
  result = CNSServerCopySupportedInterfaces(*(result + 12), (a2 + 28), (a2 + 52), (a2 + 56));
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x277D85EF8];
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

_DWORD *_XCopyCurrentNetworkInfo(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 4141) < 0xFFFFEFFF) || ((v5 = result[10], v5 <= 0x1000) ? (v6 = v4 - 44 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x3FFC) + 44, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 11, 0, v4 - 44)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    goto LABEL_12;
  }

  v10 = v3 + ((v4 + 3) & 0x3FFC);
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  v11 = *(v10 + 20);
  v12 = *(v10 + 36);
  result = CNSServerCopyCurrentNetworkInfo(v3[3], v3[8], (v3 + 11), (a2 + 28), (a2 + 52), (a2 + 56));
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x277D85EF8];
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_12:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XCopyAccountList(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 24) || *(result + 28) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 44);
  v5 = *(result + 60);
  result = CNSServerCopyAccountList(*(result + 12), (a2 + 28), (a2 + 52), (a2 + 56));
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x277D85EF8];
    *a2 |= 0x80000000;
    *(a2 + 4) = 60;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

const char *_XAddAccount(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 13377) < 0xFFFFCBFF)
  {
    goto LABEL_41;
  }

  v5 = *(result + 9);
  if (v5 > 0x1000)
  {
    goto LABEL_41;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 64 < v5 || v4 < v6 + 64)
  {
    goto LABEL_41;
  }

  v8 = &result[v6];
  v9 = *(v8 + 10);
  if (v9 > 0x400)
  {
    goto LABEL_41;
  }

  v10 = v4 - v6;
  v11 = (v9 + 3) & 0xFFFFFFFC;
  if (v10 - 64 < v9 || v10 < v11 + 64)
  {
    goto LABEL_41;
  }

  v13 = v8 - 4096;
  v14 = &v8[v11 - 4096];
  v15 = *(v14 + 4144);
  if (v15 > 0x1000)
  {
    goto LABEL_41;
  }

  v16 = v10 - v11;
  v17 = (v15 + 3) & 0xFFFFFFFC;
  if (v16 - 64 < v15 || v16 < v17 + 64)
  {
    goto LABEL_41;
  }

  v19 = v14 - 1024;
  v20 = v14 - 1024 + v17;
  v21 = *(v20 + 5176);
  if (v21 > 0x1000)
  {
    goto LABEL_41;
  }

  v22 = (v21 + 3) & 0xFFFFFFFC;
  v23 = v16 - v17;
  if (v23 - 64 < v21 || v23 != v22 + 64)
  {
    goto LABEL_41;
  }

  v25 = 4136;
  if (v4 < 0x1028)
  {
    v25 = *(result + 1);
  }

  result = memchr((result + 40), 0, v25 - 40);
  if (!result)
  {
    goto LABEL_41;
  }

  v26 = &v3[v4];
  v27 = (v19 + 5172);
  v28 = &v3[v4] - v27 >= 4096 ? 4096 : &v3[v4] - v27;
  result = memchr(v27, 0, v28);
  if (!result || ((v29 = v20 - 4096, v30 = (v20 + 5180), v26 - v30 >= 4096) ? (v31 = 4096) : (v31 = v26 - v30), (result = memchr(v30, 0, v31)) == 0))
  {
LABEL_41:
    v33 = -304;
    goto LABEL_42;
  }

  v32 = &v3[(v4 + 3) & 0x7FFC];
  if (*v32 || *(v32 + 1) <= 0x1Fu)
  {
    v33 = -309;
LABEL_42:
    *(a2 + 32) = v33;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v34 = *(v3 + 3);
  v35 = *(v29 + v22 + 9276);
  v36 = *(v32 + 36);
  v37[0] = *(v32 + 20);
  v37[1] = v36;
  result = CNSServerAddAccount(v34, v3 + 40, v13 + 4140, v9, v27, v30, v35, (a2 + 36), v37);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XResolveAccount(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 4137) < 0xFFFFEFFF) || ((v5 = result[9], v5 <= 0x1000) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x3FFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 10, 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v10 = v3 + ((v4 + 3) & 0x3FFC);
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  v11 = *(v10 + 20);
  v12 = *(v10 + 36);
  result = CNSServerResolveAccount(v3[3], (v3 + 10), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XAuthenticateUsing(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 4);
  if (*(result + 24) != 1 || (v4 - 8257) < 0xFFFFDFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 38) << 16 != 1179648)
  {
    v6 = -300;
    goto LABEL_7;
  }

  v7 = *(result + 52);
  if (v7 > 0x1000)
  {
    goto LABEL_6;
  }

  v6 = -304;
  if (v4 - 64 < v7)
  {
    goto LABEL_7;
  }

  v8 = (v7 + 3) & 0xFFFFFFFC;
  if (v4 < v8 + 64)
  {
    goto LABEL_7;
  }

  v9 = v4 - v8;
  v10 = result + v8;
  v11 = *(v10 + 60);
  v12 = v11 <= 0x1000 && v9 - 64 >= v11;
  if (!v12 || v9 != ((v11 + 3) & 0x3FFC) + 64)
  {
    goto LABEL_6;
  }

  v13 = 4152;
  if (v4 < 0x1038)
  {
    v13 = *(result + 4);
  }

  result = memchr((result + 56), 0, v13 - 56);
  if (!result || ((v14 = (v10 + 64), (v3 + v4 - v14) >= 4096) ? (v15 = 4096) : (v15 = v3 + v4 - v14), (result = memchr(v14, 0, v15)) == 0))
  {
LABEL_6:
    v6 = -304;
LABEL_7:
    *(a2 + 32) = v6;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v16 = ((v4 + 3) & 0x7FFC) + v3;
  if (*v16 || *(v16 + 4) <= 0x1Fu)
  {
    v6 = -309;
    goto LABEL_7;
  }

  v17 = *(v16 + 20);
  v18 = *(v16 + 36);
  result = CNSServerAuthenticateUsing(*(v3 + 12), (v3 + 56), v14, (a2 + 36), *(v3 + 28));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XAuthenticateUsingToken(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 4);
  if (*(result + 24) != 1 || v4 - 5181 < 0xFFFFEBFF)
  {
    goto LABEL_6;
  }

  if (*(result + 38) << 16 != 1179648)
  {
    v6 = -300;
    goto LABEL_7;
  }

  v7 = *(result + 52);
  if (v7 > 0x1000)
  {
    goto LABEL_6;
  }

  v6 = -304;
  if (v4 - 60 < v7)
  {
    goto LABEL_7;
  }

  v8 = (v7 + 3) & 0xFFFFFFFC;
  if (v4 < v8 + 60)
  {
    goto LABEL_7;
  }

  v9 = v4 - v8;
  v10 = result + v8;
  v11 = *(v10 + 56);
  v12 = v4 - v8 - 60;
  v13 = v11 <= 0x400 && v12 >= v11;
  if (!v13 || v9 != ((v11 + 3) & 0xFFC) + 60 || (v4 >= 0x1038 ? (v14 = 4152) : (v14 = v4), (result = memchr((result + 56), 0, v14 - 56)) == 0))
  {
LABEL_6:
    v6 = -304;
LABEL_7:
    *(a2 + 32) = v6;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v15 = ((v4 + 3) & 0x3FFC) + v3;
  if (*v15 || *(v15 + 4) <= 0x1Fu)
  {
    v6 = -309;
    goto LABEL_7;
  }

  v16 = *(v3 + 12);
  v17 = *(v3 + 28);
  v18 = *(v15 + 36);
  v19[0] = *(v15 + 20);
  v19[1] = v18;
  result = CNSServerAuthenticateUsingToken(v16, (v3 + 56), (v10 + 60), v11, (a2 + 36), v17, v19);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XConnectionEstablish(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 68)
  {
    v3 = -304;
    goto LABEL_11;
  }

  if (*(result + 39) != 1 || *(result + 54) << 16 != 1114112 || *(result + 40) != *(result + 64))
  {
    v3 = -300;
    goto LABEL_11;
  }

  if (*(result + 68) || *(result + 72) <= 0x1Fu)
  {
    v3 = -309;
LABEL_11:
    *(a2 + 32) = v3;
    goto LABEL_12;
  }

  *(a2 + 32) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 44);
  v8 = *(result + 104);
  v9[0] = *(result + 88);
  v9[1] = v8;
  result = CNSServerConnectionEstablish(v4, v5, v6, v7, (a2 + 28), (a2 + 48), v9);
  if (!result)
  {
    *(a2 + 40) = *MEMORY[0x277D85EF8];
    *a2 |= 0x80000000;
    *(a2 + 4) = 52;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_12:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

_DWORD *_XConnectionGetCommandInfo(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = CNSServerConnectionGetCommandInfo(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x277D85EF8];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XConnectionProvideResponse(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = CNSServerConnectionProvideResponse(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XConnectionSendCmdAck(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = CNSServerConnectionSendCmdAck(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XCopyLandingPageURL(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = CNSServerCopyLandingPageURL(result[3], (a2 + 28), (a2 + 52), (a2 + 56), (a2 + 64));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x277D85EF8];
  *a2 |= 0x80000000;
  *(a2 + 4) = 68;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XConnectionProcessControl(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = CNSServerConnectionProcessControl(*(result + 12), *(result + 28), *(result + 40), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = *MEMORY[0x277D85EF8];
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *_XUserInteractionIsRequired(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = CNSServerUserInteractionIsRequired(v5, (a2 + 36), (a2 + 40), v7);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t CNSServer_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 28047727) >= 0xFFFFFFE6 && (v5 = *(&CNSServerCNSServer_subsystem + 5 * (v4 - 28047701) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t LogoffReply(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 18;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 28047703;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
}

uint64_t AuthenticateUsingReply(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 18;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 28047705;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}