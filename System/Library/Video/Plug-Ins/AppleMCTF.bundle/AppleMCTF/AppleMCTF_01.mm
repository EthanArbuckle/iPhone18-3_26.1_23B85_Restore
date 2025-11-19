uint64_t sub_16D00(uint64_t a1, const char **a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      *a5 = CFRetain(*(a1 + 48));
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v12 = sub_56AD0(0x1Eu);
        v13 = sub_66A18();
        v14 = sub_56B04(7);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v13, 30, v14, a1, *(a1 + 24), *a2, v10);
          v13 = sub_66A18();
          sub_56B04(7);
          v16 = *(a1 + 24);
        }

        v26 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v13);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v21 = sub_56AD0(0x1Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get dictionary %p %lld %p %p %p %p %p\n", v22, 30, v23, "AVE_Prop_MCTF_GetFilterSourcePixelBufferAttributes", 407, "pDict != __null", a1, *(a1 + 24), a2, a3, a4, a5, 0);
          v22 = sub_66A18();
          v23 = sub_56B04(4);
          v24 = *(a1 + 24);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get dictionary %p %lld %p %p %p %p %p", v22, 30, v23, "AVE_Prop_MCTF_GetFilterSourcePixelBufferAttributes", 407, "pDict != __null", a1);
      }

      return 4294966296;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v17 = sub_56AD0(0x1Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_MCTF_GetFilterSourcePixelBufferAttributes", 399, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_MCTF_GetFilterSourcePixelBufferAttributes", 399);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_MCTF_GetFilterSourcePixelBufferAttributes", 399);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_17008(uint64_t a1, const char **a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      *a5 = CFRetain(*(a1 + 56));
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v12 = sub_56AD0(0x1Eu);
        v13 = sub_66A18();
        v14 = sub_56B04(7);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v13, 30, v14, a1, *(a1 + 24), *a2, v10);
          v13 = sub_66A18();
          sub_56B04(7);
          v16 = *(a1 + 24);
        }

        v26 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v13);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v21 = sub_56AD0(0x1Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get dictionary %p %lld %p %p %p %p %p\n", v22, 30, v23, "AVE_Prop_MCTF_GetFilterDestinationPixelBufferAttributes", 448, "pDict != __null", a1, *(a1 + 24), a2, a3, a4, a5, 0);
          v22 = sub_66A18();
          v23 = sub_56B04(4);
          v24 = *(a1 + 24);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get dictionary %p %lld %p %p %p %p %p", v22, 30, v23, "AVE_Prop_MCTF_GetFilterDestinationPixelBufferAttributes", 448, "pDict != __null", a1);
      }

      return 4294966296;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v17 = sub_56AD0(0x1Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_MCTF_GetFilterDestinationPixelBufferAttributes", 440, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_MCTF_GetFilterDestinationPixelBufferAttributes", 440);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_MCTF_GetFilterDestinationPixelBufferAttributes", 440);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_17310(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 87916);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
          v16 = *(a1 + 24);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v21 = sub_56AD0(0x1Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_MCTF_GetMaxLookBehind", 492, "pNum != __null", a1, *(a1 + 24), a2, allocator, a4, a5, valuePtr);
          v22 = sub_66A18();
          v23 = sub_56B04(4);
          v24 = *(a1 + 24);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_MCTF_GetMaxLookBehind", 492, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v17 = sub_56AD0(0x1Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_MCTF_GetMaxLookBehind", 482, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_MCTF_GetMaxLookBehind", 482);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_MCTF_GetMaxLookBehind", 482);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_17648(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 87912);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
          v16 = *(a1 + 24);
          v26 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v21 = sub_56AD0(0x1Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_MCTF_GetMaxLookAhead", 536, "pNum != __null", a1, *(a1 + 24), a2, allocator, a4, a5, valuePtr);
          v22 = sub_66A18();
          v23 = sub_56B04(4);
          v24 = *(a1 + 24);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_MCTF_GetMaxLookAhead", 536, "pNum != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v17 = sub_56AD0(0x1Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_MCTF_GetMaxLookAhead", 526, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_MCTF_GetMaxLookAhead", 526);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_MCTF_GetMaxLookAhead", 526);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_17980(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = -2;
  if (!a1 || !a2 || !a3)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v13 = sub_56AD0(0x1Eu);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_MCTF_SetFilterStrength", 571, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v16 = sub_66A18();
        v76 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v76, "AVE_Prop_MCTF_SetFilterStrength");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_MCTF_SetFilterStrength");
      }
    }

    return 4294966295;
  }

  if (!a4)
  {
    return 0;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    v9 = CFArrayGetTypeID();
    if (v9 != CFGetTypeID(a4))
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v36 = sub_56AD0(0x1Eu);
        v37 = sub_66A18();
        v38 = sub_56B04(4);
        v39 = *(a1 + 24);
        v40 = CFGetTypeID(a4);
        if (v36)
        {
          v82 = v39;
          v41 = 584;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v37, 30, v38, "AVE_Prop_MCTF_SetFilterStrength", 584, "CFNumberGetTypeID() == CFGetTypeID(pValue) || CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v82, a2, a3, a4, v40);
          v42 = sub_66A18();
          v43 = sub_56B04(4);
          v44 = *(a1 + 24);
          CFGetTypeID(a4);
          v45 = "CFNumberGetTypeID() == CFGetTypeID(pValue) || CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_33:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v42, 30, v43, "AVE_Prop_MCTF_SetFilterStrength", v41, v45);
        }

        else
        {
          v62 = "CFNumberGetTypeID() == CFGetTypeID(pValue) || CFArrayGetTypeID() == CFGetTypeID(pValue)";
          v63 = 584;
LABEL_47:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v37, 30, v38, "AVE_Prop_MCTF_SetFilterStrength", v63, v62);
        }
      }

      return 4294965293;
    }
  }

  v10 = CFNumberGetTypeID();
  if (v10 != CFGetTypeID(a4))
  {
    v18 = CFArrayGetTypeID();
    if (v18 == CFGetTypeID(a4))
    {
      Count = CFArrayGetCount(a4);
      v20 = Count;
      if ((Count - 1) < 2)
      {
        v21 = 0;
        *(a1 + 1400) |= 0x2000000uLL;
        v22 = a1 + 10496;
        v23 = Count & 0x7FFFFFFF;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v21);
          if (!ValueAtIndex)
          {
            if (!sub_56A8C(0x1Eu, 4))
            {
              return 4294965292;
            }

            v66 = sub_56AD0(0x1Eu);
            v47 = sub_66A18();
            v67 = sub_56B04(4);
            if (v66)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v47, 30, v67, "AVE_Prop_MCTF_SetFilterStrength", 648, "pNum != __null", a1, *(a1 + 24), a2, a3, a4);
              v68 = sub_66A18();
              v69 = sub_56B04(4);
              v70 = *(a1 + 24);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v68, 30, v69, "AVE_Prop_MCTF_SetFilterStrength", 648);
              return 4294965292;
            }

            v87 = a3;
            v88 = a4;
            v84 = *(a1 + 24);
            v86 = a2;
            v80 = "pNum != __null";
            v81 = a1;
            v78 = 648;
            v77 = v67;
            v65 = "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p";
            goto LABEL_64;
          }

          v25 = ValueAtIndex;
          v26 = CFNumberGetTypeID();
          if (v26 != CFGetTypeID(v25))
          {
            if (!sub_56A8C(0x1Eu, 4))
            {
              return 4294965293;
            }

            v71 = sub_56AD0(0x1Eu);
            v37 = sub_66A18();
            v38 = sub_56B04(4);
            v72 = *(a1 + 24);
            v73 = CFGetTypeID(a4);
            if (v71)
            {
              v85 = v72;
              v41 = 654;
              printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v37, 30, v38, "AVE_Prop_MCTF_SetFilterStrength", 654, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v85, a2, a3, a4, v73);
              v42 = sub_66A18();
              v43 = sub_56B04(4);
              v74 = *(a1 + 24);
              CFGetTypeID(a4);
              v45 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
              goto LABEL_33;
            }

            v62 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
            v63 = 654;
            goto LABEL_47;
          }

          CFNumberGetValue(v25, kCFNumberSInt32Type, &valuePtr);
          v27 = valuePtr;
          if (valuePtr + 1 >= 0x66)
          {
            break;
          }

          if (valuePtr != -1)
          {
            *(a1 + 1400) &= ~0x2000000uLL;
            *(a1 + 87228 + 4 * v21) = v27;
            *(v22 + 4 * v21) = (5243 * ((8 * ((3 * v27) & 0x1FFFu)) >> 2)) >> 17;
          }

          if (sub_56A8C(0x1Eu, 7))
          {
            v28 = sub_56AD0(0x1Eu);
            v29 = sub_66A18();
            v30 = sub_56B04(7);
            v31 = *(a1 + 24);
            v32 = *a2;
            v33 = *(v22 + 4 * v21);
            if (v28)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s[%d]: %d %d\n", v29, 30, v30, a1, v31, v32, v21, valuePtr, v33);
              v34 = sub_66A18();
              v35 = sub_56B04(7);
              syslog(3, "%lld %d AVE %s: %p %lld SetProp %s[%d]: %d %d", v34, 30, v35, a1, *(a1 + 24), *a2, v21, valuePtr, *(v22 + 4 * v21));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %p %lld SetProp %s[%d]: %d %d", v29, 30, v30, a1, v31, v32, v21, valuePtr, v33);
            }
          }

          result = 0;
          if (v23 == ++v21)
          {
            return result;
          }
        }

        if (!sub_56A8C(0x1Eu, 4))
        {
          return 4294965292;
        }

        v75 = sub_56AD0(0x1Eu);
        v47 = sub_66A18();
        v48 = sub_56B04(4);
        if (v75)
        {
          v49 = 667;
          printf("%lld %d AVE %s: %s:%d %s | invalid FilterStrength  %p %lld %p %p %p %d [%d, %d]\n", v47, 30, v48, "AVE_Prop_MCTF_SetFilterStrength", 667, "(0 <= iFilterStrength && iFilterStrength <= 100) || iFilterStrength == -1", a1, *(a1 + 24), a2, a3, a4, valuePtr, 0, 100);
          goto LABEL_37;
        }

        v90 = 0;
        v91 = 100;
        v88 = a4;
        v89 = valuePtr;
        v86 = a2;
        v87 = a3;
        v81 = a1;
        v84 = *(a1 + 24);
        v64 = 667;
LABEL_50:
        v78 = v64;
        v80 = "(0 <= iFilterStrength && iFilterStrength <= 100) || iFilterStrength == -1";
        v77 = v48;
        v65 = "%lld %d AVE %s: %s:%d %s | invalid FilterStrength  %p %lld %p %p %p %d [%d, %d]";
LABEL_64:
        syslog(3, v65, v47, 30, v77, "AVE_Prop_MCTF_SetFilterStrength", v78, v80, v81, v84, v86, v87, v88, v89, v90, v91);
        return 4294965292;
      }

      if (sub_56A8C(0x1Eu, 4))
      {
        v53 = sub_56AD0(0x1Eu);
        v47 = sub_66A18();
        v54 = sub_56B04(4);
        if (!v53)
        {
          v90 = 0;
          v91 = 2;
          v88 = a4;
          v89 = v20;
          v86 = a2;
          v87 = a3;
          v81 = a1;
          v84 = *(a1 + 24);
          v78 = 639;
          v80 = "0 < iNum && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))";
          v77 = v54;
          v65 = "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]";
          goto LABEL_64;
        }

        printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v47, 30, v54, "AVE_Prop_MCTF_SetFilterStrength", 639, "0 < iNum && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, *(a1 + 24), a2, a3, a4, v20, 0, 2);
        v55 = sub_66A18();
        v56 = sub_56B04(4);
        v57 = *(a1 + 24);
        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v55, 30, v56, "AVE_Prop_MCTF_SetFilterStrength", 639, "0 < iNum && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1);
      }

      return 4294965292;
    }

    return 0;
  }

  CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
  v11 = valuePtr;
  if (valuePtr + 1 >= 0x66)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v46 = sub_56AD0(0x1Eu);
      v47 = sub_66A18();
      v48 = sub_56B04(4);
      if (v46)
      {
        v49 = 598;
        printf("%lld %d AVE %s: %s:%d %s | invalid FilterStrength  %p %lld %p %p %p %d [%d, %d]\n", v47, 30, v48, "AVE_Prop_MCTF_SetFilterStrength", 598, "(0 <= iFilterStrength && iFilterStrength <= 100) || iFilterStrength == -1", a1, *(a1 + 24), a2, a3, a4, valuePtr, 0, 100);
LABEL_37:
        v50 = sub_66A18();
        v51 = sub_56B04(4);
        v52 = *(a1 + 24);
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid FilterStrength  %p %lld %p %p %p %d [%d, %d]", v50, 30, v51, "AVE_Prop_MCTF_SetFilterStrength", v49, "(0 <= iFilterStrength && iFilterStrength <= 100) || iFilterStrength == -1", a1);
        return 4294965292;
      }

      v90 = 0;
      v91 = 100;
      v88 = a4;
      v89 = valuePtr;
      v86 = a2;
      v87 = a3;
      v81 = a1;
      v84 = *(a1 + 24);
      v64 = 598;
      goto LABEL_50;
    }

    return 4294965292;
  }

  v12 = *(a1 + 1400);
  if (valuePtr == -1)
  {
    *(a1 + 1400) = v12 | 0x2000000;
  }

  else
  {
    *(a1 + 1400) = v12 & 0xFFFFFFFFFDFFFFFFLL;
    *(a1 + 87228) = v11;
    *(a1 + 10496) = (5243 * ((8 * ((3 * v11) & 0x1FFFu)) >> 2)) >> 17;
  }

  *(a1 + 87232) = -1;
  *(a1 + 10500) = -1;
  result = sub_56A8C(0x1Eu, 7);
  if (result)
  {
    v58 = sub_56AD0(0x1Eu);
    v59 = sub_66A18();
    v60 = sub_56B04(7);
    if (v58)
    {
      printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d\n", v59, 30, v60, a1, *(a1 + 24), *a2, valuePtr, *(a1 + 10496));
      v59 = sub_66A18();
      sub_56B04(7);
      v61 = *(a1 + 24);
      v83 = *(a1 + 10496);
      v79 = *a2;
    }

    syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d", v59);
    return 0;
  }

  return result;
}

uint64_t sub_18344(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if ((*(a1 + 87232) & 0x80000000) != 0)
    {
      valuePtr = *(a1 + 10496);
      v29 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      if (v29)
      {
        v30 = v29;
        *a5 = v29;
        result = sub_56A8C(0x1Eu, 7);
        if (!result)
        {
          return result;
        }

        v31 = sub_56AD0(0x1Eu);
        v19 = sub_66A18();
        v32 = sub_56B04(7);
        if (v31)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v19, 30, v32, a1, *(a1 + 24), *a2, valuePtr, v30);
          v19 = sub_66A18();
          sub_56B04(7);
          v33 = *(a1 + 24);
          v34 = *a2;
        }

        goto LABEL_29;
      }

      if (sub_56A8C(0x1Eu, 4))
      {
        v41 = sub_56AD0(0x1Eu);
        v36 = sub_66A18();
        v42 = sub_56B04(4);
        if (v41)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v36, 30, v42, "AVE_Prop_MCTF_GetFilterStrength", 763, "pFilterStrength != __null", a1, *(a1 + 24), a2, allocator, a4, a5, valuePtr);
          v43 = sub_66A18();
          v44 = sub_56B04(4);
          v45 = *(a1 + 24);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v43, 30, v44, "AVE_Prop_MCTF_GetFilterStrength", 763, "pFilterStrength != __null", a1);
          return 4294966293;
        }

        v60 = a5;
        v61 = valuePtr;
        v58 = allocator;
        v59 = a4;
        v56 = *(a1 + 24);
        v57 = a2;
        v53 = "pFilterStrength != __null";
        v54 = a1;
        v52 = 763;
        v51 = v42;
        v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d";
        goto LABEL_36;
      }
    }

    else
    {
      Mutable = CFArrayCreateMutable(allocator, *(a1 + 10508), &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v11 = Mutable;
        if (*(a1 + 10508))
        {
          v12 = 2624;
          v13 = 10496;
          while (1)
          {
            v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, (a1 + v13));
            if (!v14)
            {
              break;
            }

            v15 = v14;
            CFArrayAppendValue(v11, v14);
            CFRelease(v15);
            v16 = v12 - 2623;
            ++v12;
            v13 += 4;
            if (v16 >= *(a1 + 10508))
            {
              goto LABEL_11;
            }
          }

          if (sub_56A8C(0x1Eu, 4))
          {
            v46 = sub_56AD0(0x1Eu);
            v47 = sub_66A18();
            v48 = sub_56B04(4);
            if (v46)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v47, 30, v48, "AVE_Prop_MCTF_GetFilterStrength", 741, "pNum != __null", a1, *(a1 + 24), a2, allocator, a4, a5, v12 - 2624, *(a1 + 4 * v12));
              v47 = sub_66A18();
              v48 = sub_56B04(4);
              v62 = *(a1 + 4 * v12);
              v55 = *(a1 + 24);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v47, 30, v48, "AVE_Prop_MCTF_GetFilterStrength", 741, "pNum != __null", a1);
          }

          CFRelease(v11);
          return 4294966293;
        }

LABEL_11:
        *a5 = v11;
        result = sub_56A8C(0x1Eu, 7);
        if (!result)
        {
          return result;
        }

        v18 = sub_56AD0(0x1Eu);
        v19 = sub_66A18();
        v20 = sub_56B04(7);
        v21 = *(a1 + 10508);
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v19, 30, v20, a1, *(a1 + 24), *a2, *(a1 + 10508), v11);
          v19 = sub_66A18();
          sub_56B04(7);
          v22 = *(a1 + 24);
          v23 = *a2;
          v24 = *(a1 + 10508);
        }

LABEL_29:
        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v19, 30);
        return 0;
      }

      if (sub_56A8C(0x1Eu, 4))
      {
        v35 = sub_56AD0(0x1Eu);
        v36 = sub_66A18();
        v37 = sub_56B04(4);
        if (v35)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v36, 30, v37, "AVE_Prop_MCTF_GetFilterStrength", 732, "pArray != __null", a1, *(a1 + 24), a2, allocator, a4, a5, 2);
          v38 = sub_66A18();
          v39 = sub_56B04(4);
          v40 = *(a1 + 24);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v38, 30, v39, "AVE_Prop_MCTF_GetFilterStrength", 732, "pArray != __null", a1);
          return 4294966293;
        }

        v60 = a5;
        v61 = 2;
        v58 = allocator;
        v59 = a4;
        v56 = *(a1 + 24);
        v57 = a2;
        v53 = "pArray != __null";
        v54 = a1;
        v52 = 732;
        v51 = v37;
        v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d";
LABEL_36:
        syslog(3, v49, v36, 30, v51, "AVE_Prop_MCTF_GetFilterStrength", v52, v53, v54, v56, v57, v58, v59, v60, v61);
      }
    }

    return 4294966293;
  }

  if (sub_56A8C(0x1Eu, 4))
  {
    v25 = sub_56AD0(0x1Eu);
    v26 = sub_66A18();
    v27 = sub_56B04(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v26, 30, v27, "AVE_Prop_MCTF_GetFilterStrength", 721, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v28 = sub_66A18();
      v50 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v28, 30, v50, "AVE_Prop_MCTF_GetFilterStrength", 721);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v26, 30, v27, "AVE_Prop_MCTF_GetFilterStrength", 721);
    }
  }

  return 4294966295;
}

uint64_t sub_18980(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v13 = sub_56AD0(0x1Eu);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_MCTF_SetLatencyMode", 809, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = sub_66A18();
        v47 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v47, "AVE_Prop_MCTF_SetLatencyMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_MCTF_SetLatencyMode");
      }
    }

    return 4294966295;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a4) || (v9 = CFNumberGetTypeID(), v9 == CFGetTypeID(a4)))
  {
    v10 = CFStringGetTypeID();
    if (v10 == CFGetTypeID(a4))
    {
      v11 = @"Low";
      if (CFEqual(a4, @"Low"))
      {
        v12 = 1;
        goto LABEL_26;
      }

      v11 = @"Medium";
      if (CFEqual(a4, @"Medium") || CFEqual(a4, @"Auto"))
      {
        v12 = 2;
LABEL_26:
        v25 = sub_4765C(v11, (a1 + 87240), 128);
        sub_63330((a1 + 87240), 128, "%s", v26, v27, v28, v29, v30, v25);
        if (sub_56A8C(0x1Eu, 7))
        {
          v31 = sub_56AD0(0x1Eu);
          v32 = sub_66A18();
          v33 = sub_56B04(7);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d iaVTMCTFMode = %s\n", v32, 30, v33, "AVE_Prop_MCTF_SetLatencyMode", 851, (a1 + 87240));
            v34 = sub_66A18();
            v48 = sub_56B04(7);
            syslog(3, "%lld %d AVE %s: %s:%d iaVTMCTFMode = %s", v34, 30, v48, "AVE_Prop_MCTF_SetLatencyMode", 851, (a1 + 87240));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d iaVTMCTFMode = %s", v32, 30, v33, "AVE_Prop_MCTF_SetLatencyMode", 851, (a1 + 87240));
          }
        }

        goto LABEL_34;
      }

      if (sub_56A8C(0x10u, 4))
      {
        v44 = sub_56AD0(0x10u);
        v45 = sub_66A18();
        v46 = sub_56B04(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid LatencyMode\n", v45, 16, v46, "AVE_Prop_MCTF_SetLatencyMode", 844, "false");
          sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid LatencyMode");
      }

      return 4294966295;
    }

    v17 = CFNumberGetTypeID();
    if (v17 != CFGetTypeID(a4))
    {
      v12 = 0;
LABEL_34:
      *(a1 + 10504) = v12;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v39 = sub_56AD0(0x1Eu);
        v40 = sub_66A18();
        v41 = sub_56B04(7);
        v42 = *a2;
        if (v39)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v40, 30, v41, a1, *(a1 + 24), *a2, v12);
          v40 = sub_66A18();
          sub_56B04(7);
          v43 = *(a1 + 24);
        }

        v49 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v40);
        return 0;
      }

      return result;
    }

    valuePtr = 0;
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    v12 = valuePtr;
    if ((valuePtr - 1) < 2)
    {
      *(a1 + 87236) = valuePtr;
      goto LABEL_34;
    }

    if (sub_56A8C(0x1Eu, 4))
    {
      v35 = sub_56AD0(0x1Eu);
      v36 = sub_66A18();
      v37 = sub_56B04(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p %d (%d, %d)\n", v36, 30, v37, "AVE_Prop_MCTF_SetLatencyMode", 865, "AVE_MCTF_Mode_Invalid < eMCTFMode && eMCTFMode < AVE_MCTF_Mode_Max", a1, *(a1 + 24), a2, a3, a4, v12, 0, 3);
        v36 = sub_66A18();
        v37 = sub_56B04(4);
        v38 = *(a1 + 24);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p %d (%d, %d)", v36, 30, v37, "AVE_Prop_MCTF_SetLatencyMode", 865, "AVE_MCTF_Mode_Invalid < eMCTFMode && eMCTFMode < AVE_MCTF_Mode_Max", a1);
    }

    return 4294965292;
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v19 = sub_56AD0(0x1Eu);
      v20 = sub_66A18();
      v21 = sub_56B04(4);
      v22 = *(a1 + 24);
      v23 = CFGetTypeID(a4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_MCTF_SetLatencyMode", 820, "CFStringGetTypeID() == CFGetTypeID(pValue) || CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        v24 = *(a1 + 24);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_MCTF_SetLatencyMode", 820, "CFStringGetTypeID() == CFGetTypeID(pValue) || CFNumberGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }
}

uint64_t sub_1900C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, const __CFString **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10504);
    valuePtr = v10;
    if (*(a1 + 87240))
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 == 0;
    }

    if (v11)
    {
      if (v10 == 1)
      {
        v16 = @"Low";
      }

      else if (v10 == 2)
      {
        v16 = @"Medium";
      }

      else
      {
        v16 = CFStringCreateWithCString(0, &unk_7EA33, 0);
      }
    }

    else
    {
      v16 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      if (!v16)
      {
        if (sub_56A8C(0x1Eu, 4))
        {
          v17 = sub_56AD0(0x1Eu);
          v18 = sub_66A18();
          v19 = sub_56B04(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v18, 30, v19, "AVE_Prop_MCTF_GetLatencyMode", 918, "pNum != __null", a1, *(a1 + 24), a2, allocator, a4, a5, valuePtr);
            v18 = sub_66A18();
            v19 = sub_56B04(4);
            v20 = *(a1 + 24);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v18, 30, v19, "AVE_Prop_MCTF_GetLatencyMode", 918, "pNum != __null", a1);
        }

        return 4294966293;
      }
    }

    *a5 = v16;
    result = sub_56A8C(0x1Eu, 7);
    if (result)
    {
      v22 = sub_56AD0(0x1Eu);
      v23 = sub_66A18();
      v24 = sub_56B04(7);
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v23, 30, v24, a1, *(a1 + 24), *a2, valuePtr, a5);
        v23 = sub_66A18();
        sub_56B04(7);
        v25 = *(a1 + 24);
        v27 = *a2;
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v23, 30);
      return 0;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v12 = sub_56AD0(0x1Eu);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v13, 30, v14, "AVE_Prop_MCTF_GetLatencyMode", 905, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v15 = sub_66A18();
        v26 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v15, 30, v26, "AVE_Prop_MCTF_GetLatencyMode", 905);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v13, 30, v14, "AVE_Prop_MCTF_GetLatencyMode", 905);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1938C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      *(a1 + 87368) = Value;
      *(a1 + 640) = *(a1 + 640) & 0xFFFFFDFF | ((Value != 0) << 9);
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v11 = sub_56AD0(0x1Eu);
        v12 = sub_66A18();
        v13 = sub_56B04(7);
        v14 = *a2;
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 24), *a2, Value);
          v12 = sub_66A18();
          sub_56B04(7);
          v15 = *(a1 + 24);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v20 = sub_56AD0(0x1Eu);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        v23 = *(a1 + 24);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_MCTF_SetOutputCopy", 978, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_66A18();
          v22 = sub_56B04(4);
          v25 = *(a1 + 24);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_MCTF_SetOutputCopy", 978, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v16 = sub_56AD0(0x1Eu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_MCTF_SetOutputCopy", 968, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_66A18();
        v26 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v26, "AVE_Prop_MCTF_SetOutputCopy");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_MCTF_SetOutputCopy");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_196D8(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 640) & 0x200;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_56A8C(0x1Eu, 7);
    if (result)
    {
      v13 = sub_56AD0(0x1Eu);
      v14 = sub_66A18();
      v15 = sub_56B04(7);
      v16 = *a2;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 24), *a2, v10);
        v14 = sub_66A18();
        sub_56B04(7);
        v17 = *(a1 + 24);
      }

      v23 = *a2;
      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v18 = sub_56AD0(0x1Eu);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_MCTF_GetOutputCopy", 1017, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_MCTF_GetOutputCopy", 1017);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_MCTF_GetOutputCopy", 1017);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_198F8(uint64_t a1, const void *a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v11 = sub_56AD0(0x1Eu);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_MCTF_SetPerfFeatureOff", 1055, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v24, "AVE_Prop_MCTF_SetPerfFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_MCTF_SetPerfFeatureOff");
      }
    }

    return 4294966295;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    v9 = valuePtr;
    if (valuePtr)
    {
      result = 0;
      *(a1 + 87372) = valuePtr;
      *(a1 + 640) &= ~v9;
      return result;
    }

    if (sub_56A8C(0x1Eu, 4))
    {
      v21 = sub_56AD0(0x1Eu);
      v22 = sub_66A18();
      v23 = sub_56B04(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_PERF_FEATURE_OFF 0x%x\n", v22, 30, v23, "AVE_Prop_MCTF_SetPerfFeatureOff", 1072, "iFeature > 0", valuePtr);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_PERF_FEATURE_OFF 0x%x", v22, 30, v23, "AVE_Prop_MCTF_SetPerfFeatureOff", 1072, "iFeature > 0", valuePtr);
    }

    return 4294966295;
  }

  if (sub_56A8C(0x1Eu, 4))
  {
    v15 = sub_56AD0(0x1Eu);
    v16 = sub_66A18();
    v17 = sub_56B04(4);
    v18 = *(a1 + 24);
    v19 = CFGetTypeID(a4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_MCTF_SetPerfFeatureOff", 1065, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      v20 = *(a1 + 24);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_MCTF_SetPerfFeatureOff", 1065, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t sub_19C6C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 87372);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
          v16 = *(a1 + 24);
          v27 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v21 = sub_56AD0(0x1Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_MCTF_GetPerfFeatureOff", 1119, "pNum != __null", a1, allocator, a4, a5, valuePtr);
          v24 = sub_66A18();
          v26 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x", v24, 30, v26, "AVE_Prop_MCTF_GetPerfFeatureOff", 1119);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_MCTF_GetPerfFeatureOff", 1119);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v17 = sub_56AD0(0x1Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_MCTF_GetPerfFeatureOff", 1108, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_MCTF_GetPerfFeatureOff", 1108);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_MCTF_GetPerfFeatureOff", 1108);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_19F90(uint64_t a1, const void *a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v11 = sub_56AD0(0x1Eu);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_MCTF_SetPerfFeatureOn", 1151, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v24, "AVE_Prop_MCTF_SetPerfFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_MCTF_SetPerfFeatureOn");
      }
    }

    return 4294966295;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    v9 = valuePtr;
    if (valuePtr)
    {
      result = 0;
      *(a1 + 87376) = valuePtr;
      *(a1 + 640) |= v9;
      return result;
    }

    if (sub_56A8C(0x1Eu, 4))
    {
      v21 = sub_56AD0(0x1Eu);
      v22 = sub_66A18();
      v23 = sub_56B04(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_PERF_FEATURE_ON 0x%x\n", v22, 30, v23, "AVE_Prop_MCTF_SetPerfFeatureOn", 1168, "iFeature > 0", valuePtr);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_PERF_FEATURE_ON 0x%x", v22, 30, v23, "AVE_Prop_MCTF_SetPerfFeatureOn", 1168, "iFeature > 0", valuePtr);
    }

    return 4294966295;
  }

  if (sub_56A8C(0x1Eu, 4))
  {
    v15 = sub_56AD0(0x1Eu);
    v16 = sub_66A18();
    v17 = sub_56B04(4);
    v18 = *(a1 + 24);
    v19 = CFGetTypeID(a4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_MCTF_SetPerfFeatureOn", 1161, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      v20 = *(a1 + 24);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_MCTF_SetPerfFeatureOn", 1161, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t sub_1A304(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 87376);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
          v16 = *(a1 + 24);
          v27 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v21 = sub_56AD0(0x1Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x\n", v22, 30, v23, "AVE_Prop_MCTF_GetPerfFeatureOn", 1215, "pNum != __null", a1, allocator, a4, a5, valuePtr);
          v24 = sub_66A18();
          v26 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x", v24, 30, v26, "AVE_Prop_MCTF_GetPerfFeatureOn", 1215);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x", v22, 30, v23, "AVE_Prop_MCTF_GetPerfFeatureOn", 1215);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v17 = sub_56AD0(0x1Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_MCTF_GetPerfFeatureOn", 1204, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_MCTF_GetPerfFeatureOn", 1204);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_MCTF_GetPerfFeatureOn", 1204);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1A628(void *a1, const void *a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v11 = sub_56AD0(0x1Eu);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_MCTF_SetDebugFeature", 1247, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v24, "AVE_Prop_MCTF_SetDebugFeature");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_MCTF_SetDebugFeature");
      }
    }

    return 4294966295;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
    v9 = valuePtr;
    if (valuePtr)
    {
      result = 0;
      a1[10923] = valuePtr;
      a1[82] = v9;
      return result;
    }

    if (sub_56A8C(0x1Eu, 4))
    {
      v21 = sub_56AD0(0x1Eu);
      v22 = sub_66A18();
      v23 = sub_56B04(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_DEBUG_FEATURE 0x%llx\n", v22, 30, v23, "AVE_Prop_MCTF_SetDebugFeature", 1264, "iDebugFeature > 0", valuePtr);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_DEBUG_FEATURE 0x%llx", v22, 30, v23, "AVE_Prop_MCTF_SetDebugFeature", 1264, "iDebugFeature > 0", valuePtr);
    }

    return 4294966295;
  }

  if (sub_56A8C(0x1Eu, 4))
  {
    v15 = sub_56AD0(0x1Eu);
    v16 = sub_66A18();
    v17 = sub_56B04(4);
    v18 = a1[3];
    v19 = CFGetTypeID(a4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_MCTF_SetDebugFeature", 1257, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      v20 = a1[3];
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_MCTF_SetDebugFeature", 1257, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t sub_1A994(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[10923];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %lld %p\n", v14, 30, v15, a1, a1[3], *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
          v16 = a1[3];
          v27 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v21 = sub_56AD0(0x1Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %lld\n", v22, 30, v23, "AVE_Prop_MCTF_GetDebugFeature", 1309, "pNum != __null", a1, allocator, a4, a5, valuePtr);
          v24 = sub_66A18();
          v26 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %lld", v24, 30, v26, "AVE_Prop_MCTF_GetDebugFeature", 1309);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %lld", v22, 30, v23, "AVE_Prop_MCTF_GetDebugFeature", 1309);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v17 = sub_56AD0(0x1Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_MCTF_GetDebugFeature", 1298, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_MCTF_GetDebugFeature", 1298);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_MCTF_GetDebugFeature", 1298);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1ACB8(uint64_t a1, const char **a2, const void *a3, const __CFString *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = sub_4765C(a4, (a1 + 87392), 512);
      sub_63330((a1 + 87392), 512, "%s", v10, v11, v12, v13, v14, v9);
      strcpy((a1 + 112), (a1 + 87392));
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v16 = sub_56AD0(0x1Eu);
        v17 = sub_66A18();
        v18 = sub_56B04(7);
        v19 = *a2;
        if (v16)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %s\n", v17, 30, v18, a1, *(a1 + 24), *a2, (a1 + 87392));
          v17 = sub_66A18();
          sub_56B04(7);
          v20 = *(a1 + 24);
        }

        v32 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %s", v17);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v25 = sub_56AD0(0x1Eu);
        v26 = sub_66A18();
        v27 = sub_56B04(4);
        v28 = *(a1 + 24);
        v29 = CFGetTypeID(a4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_MCTF_SetSessionName", 1351, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
          v26 = sub_66A18();
          v27 = sub_56B04(4);
          v30 = *(a1 + 24);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_MCTF_SetSessionName", 1351, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v21 = sub_56AD0(0x1Eu);
      v22 = sub_66A18();
      v23 = sub_56B04(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_MCTF_SetSessionName", 1341, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = sub_66A18();
        v31 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v31, "AVE_Prop_MCTF_SetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v23, "AVE_Prop_MCTF_SetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1B014(uint64_t a1, const char **a2, CFAllocatorRef alloc, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = CFStringCreateWithCString(alloc, (a1 + 87392), 0);
    if (v10)
    {
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v12 = sub_56AD0(0x1Eu);
        v13 = sub_66A18();
        v14 = sub_56B04(7);
        v15 = *a2;
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %s\n", v13, 30, v14, a1, *(a1 + 24), *a2, (a1 + 87392));
          v13 = sub_66A18();
          sub_56B04(7);
          v16 = *(a1 + 24);
        }

        v27 = *a2;
        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %s", v13);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v21 = sub_56AD0(0x1Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s\n", v22, 30, v23, "AVE_Prop_MCTF_GetSessionName", 1401, "pStr != __null", a1, alloc, a4, a5, (a1 + 87392));
          v24 = sub_66A18();
          v26 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v24, 30, v26, "AVE_Prop_MCTF_GetSessionName", 1401);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v22, 30, v23, "AVE_Prop_MCTF_GetSessionName", 1401);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v17 = sub_56AD0(0x1Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v18, 30, v19, "AVE_Prop_MCTF_GetSessionName", 1392, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a4, a5);
        v20 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v25, "AVE_Prop_MCTF_GetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v19, "AVE_Prop_MCTF_GetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1B310(uint64_t a1, const void *a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt8Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr - 1 >= 2)
      {
        if (sub_56A8C(0x1Eu, 4))
        {
          v21 = sub_56AD0(0x1Eu);
          v22 = sub_66A18();
          v23 = sub_56B04(4);
          if (v21)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid FilterGroupSize  %p %lld %p %p %p %d (%d, %d]\n", v22, 30, v23, "AVE_Prop_MCTF_SetFilterGroupSize", 1453, "0 < iFilterGroupSize && iFilterGroupSize <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, *(a1 + 24), a2, a3, a4, valuePtr, 0, 2);
            v22 = sub_66A18();
            v23 = sub_56B04(4);
            v24 = *(a1 + 24);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid FilterGroupSize  %p %lld %p %p %p %d (%d, %d]", v22, 30, v23, "AVE_Prop_MCTF_SetFilterGroupSize", 1453, "0 < iFilterGroupSize && iFilterGroupSize <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1);
        }

        return 4294965292;
      }

      else
      {
        result = 0;
        *(a1 + 87904) = valuePtr;
        *(a1 + 10508) = v9;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v15 = sub_56AD0(0x1Eu);
        v16 = sub_66A18();
        v17 = sub_56B04(4);
        v18 = *(a1 + 24);
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_MCTF_SetFilterGroupSize", 1443, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = sub_66A18();
          v17 = sub_56B04(4);
          v20 = *(a1 + 24);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_MCTF_SetFilterGroupSize", 1443, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v11 = sub_56AD0(0x1Eu);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_MCTF_SetFilterGroupSize", 1433, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v25, "AVE_Prop_MCTF_SetFilterGroupSize");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_MCTF_SetFilterGroupSize");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1B6C8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 87904);
    v10 = CFNumberCreate(allocator, kCFNumberSInt8Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
          v16 = *(a1 + 24);
          v27 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v21 = sub_56AD0(0x1Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_MCTF_GetFilterGroupSize", 1498, "pNum != __null", a1, allocator, a4, a5, valuePtr);
          v24 = sub_66A18();
          v26 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %d", v24, 30, v26, "AVE_Prop_MCTF_GetFilterGroupSize", 1498);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %d", v22, 30, v23, "AVE_Prop_MCTF_GetFilterGroupSize", 1498);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v17 = sub_56AD0(0x1Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_MCTF_GetFilterGroupSize", 1487, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_MCTF_GetFilterGroupSize", 1487);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_MCTF_GetFilterGroupSize", 1487);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1B9EC(uint64_t a1, uint64_t a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a2;
  v7 = a1;
  if ((a1 - 1) > 0x21 || a4 == 0)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v9 = sub_56AD0(0x1Eu);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p\n", v10, 30, v11, "AVE_Prop_MCTF_MakeDict", 1556, "AVE_DevID_None < devID && devID < AVE_DevID_Max && pDict != __null", v7, v6, a3, a4);
        v12 = sub_66A18();
        v20 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", v12, 30, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", v10, 30, v11);
      }
    }

    return 4294966295;
  }

  else
  {
    v13 = sub_14048(&off_BCB98, 15, a1, a2, a3, a4);
    v14 = v13;
    if (v13 && sub_56A8C(0x1Eu, 4))
    {
      v15 = sub_56AD0(0x1Eu);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d\n", v16, 30, v17, "AVE_Prop_MCTF_MakeDict", 1563, "ret == 0", v7, v6, a3, a4, v14);
        v18 = sub_66A18();
        v21 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v18, 30, v21, "AVE_Prop_MCTF_MakeDict");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v16, 30, v17, "AVE_Prop_MCTF_MakeDict");
      }
    }
  }

  return v14;
}

uint64_t sub_1BC4C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v6 = sub_146B0(&off_BCB98, 15, *(a1 + 32), 0, a1, *(a1 + 24), a2, a3);
  if (v6 && sub_56A8C(0x1Eu, 4))
  {
    v7 = sub_56AD0(0x1Eu);
    v8 = sub_66A18();
    v9 = sub_56B04(4);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d\n", v8, 30, v9, "AVE_Prop_MCTF_SetProperty", 1588, "ret == 0", a1, *(a1 + 24), 0, *(a1 + 32), a2, a3, v6);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      v10 = *(a1 + 24);
      v12 = *(a1 + 32);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d", v8, 30, v9, "AVE_Prop_MCTF_SetProperty", 1588, "ret == 0");
  }

  return v6;
}

uint64_t sub_1BDCC(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  v8 = sub_14C24(&off_BCB98, 15, *(a1 + 32), 0, a1, *(a1 + 24), a2, a3, a4);
  if (v8 && sub_56A8C(0x1Eu, 4))
  {
    v9 = sub_56AD0(0x1Eu);
    v10 = sub_66A18();
    v11 = sub_56B04(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d\n", v10, 30, v11, "AVE_Prop_MCTF_GetProperty", 1614, "ret == 0", a1, *(a1 + 24), 0, *(a1 + 32), a2, a3, a4, v8);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      v12 = *(a1 + 24);
      v14 = *(a1 + 32);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d", v10, 30, v11, "AVE_Prop_MCTF_GetProperty", 1614, "ret == 0", a1);
  }

  return v8;
}

uint64_t *sub_1BF5C(uint64_t *result, _DWORD *a2, int a3, int a4)
{
  v4 = (*result + a3 - 1) & -a3;
  *a2 = (*result + *a2 - v4) & -a4;
  *result = v4;
  return result;
}

_BYTE *sub_1BF94(_BYTE *result, char *a2, int a3)
{
  if (a3 >= 1)
  {
    do
    {
      v3 = *a2++;
      *result++ = v3;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t sub_1BFB8(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a4;
  v11 = sub_63330(a3, a4, " in %s", a4, a5, a6, a7, a8, a1);
  v17 = v11;
  if (a2)
  {
    return sub_63330(&a3[v11], v8 - v11, ":%d", v12, v13, v14, v15, v16, a2) + v11;
  }

  return v17;
}

void *sub_1C03C(void *result)
{
  if (!result)
  {
    sub_76484();
  }

  *result = result;
  result[1] = result;
  result[2] = 0;
  return result;
}

uint64_t sub_1C05C(uint64_t result)
{
  if (!result)
  {
    sub_764B0();
  }

  *result = result;
  *(result + 8) = result;
  *(result + 24) = 0;
  *(result + 16) = result;
  return result;
}

BOOL sub_1C080(void *a1)
{
  if (!a1)
  {
    sub_76534();
  }

  if (!*a1)
  {
    sub_76508();
  }

  v1 = a1[1];
  if (!v1)
  {
    sub_764DC();
  }

  return *a1 == a1 || v1 == a1;
}

BOOL sub_1C0C0(uint64_t a1)
{
  if (!a1)
  {
    sub_765B8();
  }

  if (!*a1)
  {
    sub_7658C();
  }

  if (!*(a1 + 8))
  {
    sub_76560();
  }

  result = sub_1C080(a1);
  if (!result)
  {
    v3 = *(a1 + 8);
    v4 = v3[1];
    *(a1 + 8) = v4;
    *v4 = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 24);
  }

  return result;
}

uint64_t sub_1C130(uint64_t a1)
{
  if (!a1)
  {
    sub_765E4();
  }

  return *a1;
}

uint64_t sub_1C14C(uint64_t a1)
{
  if (!a1)
  {
    sub_76610();
  }

  return *(a1 + 8);
}

uint64_t *sub_1C168(uint64_t *result)
{
  if (!result)
  {
    sub_76694();
  }

  v1 = *result;
  if (!*result)
  {
    sub_76668();
  }

  v2 = result[1];
  if (!v2)
  {
    sub_7663C();
  }

  *(v1 + 8) = v2;
  v3 = result[2];
  *result[1] = v1;
  *result = result;
  result[1] = result;
  if (v3)
  {
    --*(v3 + 24);
    result[2] = 0;
  }

  return result;
}

uint64_t sub_1C1C0(void *a1)
{
  if (!a1)
  {
    sub_766C0();
  }

  if (sub_1C080(a1))
  {
    return 0;
  }

  else
  {
    return a1[1];
  }
}

uint64_t sub_1C1FC(void *a1)
{
  if (!a1)
  {
    sub_766EC();
  }

  if (sub_1C080(a1))
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_1C238(uint64_t result, void *a2)
{
  if (!result)
  {
    sub_7679C();
  }

  if (!a2)
  {
    sub_76770();
  }

  if (!*result)
  {
    sub_76744();
  }

  if (!*(result + 8))
  {
    sub_76718();
  }

  *a2 = *result;
  a2[1] = result;
  *(*result + 8) = a2;
  *result = a2;
  a2[2] = result;
  ++*(result + 24);
  return result;
}

BOOL sub_1C294(void **a1)
{
  if (!a1)
  {
    sub_76820();
  }

  if (!*a1)
  {
    sub_767F4();
  }

  if (!a1[1])
  {
    sub_767C8();
  }

  result = sub_1C080(a1);
  if (!result)
  {
    v3 = *a1;
    v4 = **a1;
    *a1 = v4;
    v4[1] = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 6);
  }

  return result;
}

uint64_t sub_1C304(uint64_t a1)
{
  if (!a1)
  {
    sub_7684C();
  }

  return *(a1 + 8);
}

uint64_t sub_1C320(uint64_t result)
{
  if (!result)
  {
    sub_76878();
  }

  return result;
}

uint64_t sub_1C338(uint64_t a1)
{
  if (!a1)
  {
    sub_768A4();
  }

  return *a1;
}

uint64_t sub_1C354(uint64_t result)
{
  if (!result)
  {
    sub_768D0();
  }

  return result;
}

uint64_t sub_1C36C(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  *(a1 + 160) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  v10 = a1 + 128;
  *(a1 + 96) = 0u;
  v11 = a1 + 96;
  bzero(a2, 24 * a4);
  sub_1C03C(a1);
  *(a1 + 64) = a3;
  *(a1 + 72) = a5 * a4;
  *(a1 + 76) = a4;
  *(a1 + 80) = a5;
  *(a1 + 88) = a2;
  sub_1C05C(v11);
  sub_1C05C(v10);
  if (a4 >= 1)
  {
    v12 = 0;
    do
    {
      sub_1C238(v11, (*(a1 + 88) + v12));
      v12 += 24;
    }

    while (24 * a4 != v12);
  }

  *(a1 + 164) = a4;
  return 0;
}

uint64_t sub_1C450(int a1, int a2, unsigned int a3, uint64_t *a4)
{
  result = 4294966295;
  if (a1 >= 1 && a2 >= 1)
  {
    v6 = a3;
    if (a3 <= 0x40)
    {
      if (a3)
      {
        if (!a4 || ((a3 + 127) & a3) != 0)
        {
          return result;
        }
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        v6 = 64;
      }

      *a4 = 0;
      v8 = (v6 - 1 + a2) & -v6;
      v9 = (v6 - 1 + v8) & -v6;
      if (0x7FFFFFFF / v9 <= a1)
      {
        return 4294966281;
      }

      else
      {
        v10 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
        if (v10)
        {
          v11 = v10;
          v12 = malloc_type_malloc(24 * a1, 0x20040960023A9uLL);
          if (v12)
          {
            v13 = v12;
            v14 = v6 - 1 + v9 * a1;
            v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
            if (v15)
            {
              v16 = v15;
              sub_1C36C(v11, v13, (v15 + v6 - 1) & -v6, a1, v8);
              result = 0;
              *(v11 + 24) = v11;
              *(v11 + 32) = v13;
              *(v11 + 48) = 168;
              *(v11 + 52) = 24 * a1;
              *(v11 + 40) = v16;
              *(v11 + 56) = v14;
              *a4 = v11;
              return result;
            }

            free(v11);
            v17 = v13;
          }

          else
          {
            v17 = v11;
          }

          free(v17);
        }

        return 4294966293;
      }
    }
  }

  return result;
}

uint64_t sub_1C5D8(uint64_t a1, int a2, int a3, int a4, unsigned int a5, uint64_t *a6)
{
  v16 = a1;
  v15 = a2;
  result = 4294966295;
  if (a2 >= 1 && a3 >= 1 && a4 >= 1 && a5 <= 0x40)
  {
    if (a5)
    {
      if (!a6 || ((a5 + 127) & a5) != 0)
      {
        return result;
      }
    }

    else
    {
      if (!a6)
      {
        return result;
      }

      a5 = 64;
    }

    *a6 = 0;
    v9 = (a4 + a5 - 1) & -a5;
    sub_1BF5C(&v16, &v15, a5, a5);
    if (v15 / v9 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = v15 / v9;
    }

    v11 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
    if (v11)
    {
      v12 = v11;
      v13 = malloc_type_malloc(24 * v10, 0x20040960023A9uLL);
      if (v13)
      {
        v14 = v13;
        sub_1C36C(v12, v13, v16, v10, v9);
        result = 0;
        *(v12 + 24) = v12;
        *(v12 + 32) = v14;
        *(v12 + 48) = 168;
        *(v12 + 52) = 24 * v10;
        *a6 = v12;
        return result;
      }

      free(v12);
    }

    return 4294966293;
  }

  return result;
}

uint64_t sub_1C71C(void *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (!sub_1C080(a1 + 16))
  {
    return 4294966280;
  }

  v2 = a1[5];
  if (v2)
  {
    free(v2);
    a1[5] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  result = a1[3];
  if (result)
  {
    free(result);
    return 0;
  }

  return result;
}

BOOL sub_1C790(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2 <= a2 && v2 + *(a1 + 72) > a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1C7C0(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1 && a2)
  {
    *a2 = 0;
    v7 = sub_1C1C0((a1 + 96));
    if (v7)
    {
      v8 = v7;
      sub_1C0C0(a1 + 96);
      sub_1C238(a1 + 128, v8);
      v9 = *(a1 + 80);
      *a2 = *(a1 + 64) + (-1431655765 * ((v8 - *(a1 + 88)) >> 3) * v9);
      if (a3)
      {
        *a3 = v9;
      }

      result = 0;
      --*(a1 + 164);
    }

    else
    {
      return 4294966289;
    }
  }

  return result;
}

uint64_t sub_1C870(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 4294966295;
  }

  v3 = *(a1 + 64);
  if (a2 < v3 || v3 + *(a1 + 72) <= a2)
  {
    return 4294966295;
  }

  v4 = (*(a1 + 88) + 24 * ((a2 - v3) / *(a1 + 80)));
  sub_1C168(v4);
  sub_1C238(a1 + 96, v4);
  result = 0;
  ++*(a1 + 164);
  return result;
}

BOOL sub_1C910(_BOOL8 result)
{
  if (result)
  {
    return !sub_1C080((result + 96));
  }

  return result;
}

uint64_t sub_1C93C(uint64_t a1, int a2, void *a3)
{
  if (!a1)
  {
    return 4294966295;
  }

  result = 4294966295;
  if (a3)
  {
    if (*(a1 + 76) > a2)
    {
      result = 0;
      *a3 = *(a1 + 64) + *(a1 + 80) * a2;
    }
  }

  return result;
}

uint64_t sub_1C978(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1)
  {
    if (a3)
    {
      v5 = *(a1 + 64);
      if (a2 >= v5 && v5 + *(a1 + 72) > a2)
      {
        result = 0;
        *a3 = (a2 - v5) / *(a1 + 80);
      }
    }
  }

  return result;
}

uint64_t sub_1C9B8(int *a1, int a2, unsigned int a3, unsigned int *a4, _DWORD *a5)
{
  if (sub_56A8C(0x10u, 6))
  {
    v10 = sub_56AD0(0x10u);
    v11 = sub_66A18();
    v12 = sub_56B04(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p %p\n", v11, 16, v12, "AVE_MCTF_AdjustStrength", a1, a2, a3, a4, a5);
      v13 = sub_66A18();
      v59 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p %p", v13, 16, v59);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p %p", v11, 16, v12);
    }
  }

  if (a3 - 1 <= 2 && (a2 - 1) <= 0x1F && a1 && a4 && a5)
  {
    if ((a2 & 0x38) == 0x18)
    {
      v14 = qword_BCF58[a2];
      v15 = sub_4C960();
      if (v15[274] <= 0)
      {
        v16 = *(v14 + 8 * a3);
      }

      else
      {
        v16 = v15 + 274;
        *(v14 + 8 * a3) = v16;
      }

      v26 = sub_282B0(v16, a1[16]);
      if (v26)
      {
        v27 = v26;
        v68 = a5;
        sub_286EC(v26, 16, 6, "MCTF_SMap");
        v28 = qword_BD060[v27[1]](a1);
        v29 = *a4;
        if (sub_56A8C(0x10u, 6))
        {
          v30 = sub_56AD0(0x10u);
          v31 = sub_66A18();
          v32 = sub_56B04(6);
          if (v30)
          {
            printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v31, 16, v32, "AVE_MCTF_FindRangeIdx", v27, v29, v28, a4);
            v31 = sub_66A18();
            sub_56B04(6);
          }

          syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v31, 16);
        }

        if (v29 >= 1)
        {
          v37 = v29 + 1;
          do
          {
            v38 = sub_282E0(v27, v37 - 2);
            if (!v38)
            {
              break;
            }

            if (*(v38 + 4) < v28)
            {
              break;
            }

            *a4 = v37 - 2;
            --v37;
          }

          while (v37 > 1);
        }

        if (*a4 == v29)
        {
          for (i = v29 + 1; i < v27[2]; ++i)
          {
            v40 = sub_282E0(v27, i);
            if (!v40 || *v40 > v28)
            {
              break;
            }

            *a4 = i;
          }
        }

        if (sub_56A8C(0x10u, 6))
        {
          v41 = sub_56AD0(0x10u);
          v42 = sub_66A18();
          v43 = sub_56B04(6);
          if (v41)
          {
            printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v42, 16, v43, "AVE_MCTF_FindRangeIdx", v27, v29, v28, a4, 0);
            v44 = sub_66A18();
            v61 = sub_56B04(6);
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v44, 16, v61);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v42, 16, v43);
          }
        }

        a5 = v68;
        if (sub_28300(v27, *a4, v68))
        {
          if (sub_56A8C(0x10u, 4))
          {
            v45 = sub_56AD0(0x10u);
            v46 = sub_66A18();
            v47 = sub_56B04(4);
            if (v45)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get strength level for rangeIdx %p %d\n", v46, 16, v47, "AVE_MCTF_AdjustStrength", 799, "ret == 0", v27, *a4);
              v46 = sub_66A18();
              sub_56B04(4);
              v48 = *a4;
              a5 = v68;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get strength level for rangeIdx %p %d", v46, 16);
          }

          v25 = 4294966296;
        }

        else
        {
          if (sub_56A8C(0x10u, 8))
          {
            v49 = sub_56AD0(0x10u);
            v50 = sub_66A18();
            v51 = sub_56B04(8);
            v52 = *a4;
            if (v49)
            {
              printf("%lld %d AVE %s: %s:%d %p sID 0x%x noise level %d rIdx %d s %d\n", v50, 16, v51, "AVE_MCTF_AdjustStrength", 802, a1, a1[16], v28, *a4, *v68);
              v50 = sub_66A18();
              sub_56B04(8);
              v53 = a1[16];
              v65 = *a4;
              v67 = *v68;
            }

            else
            {
              v66 = *a4;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %p sID 0x%x noise level %d rIdx %d s %d", v50, 16);
          }

          v25 = 0;
        }

        goto LABEL_62;
      }

      if (sub_56A8C(0x10u, 5))
      {
        v33 = sub_56AD0(0x10u);
        v34 = sub_66A18();
        v35 = sub_56B04(5);
        v36 = a1[16];
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | SensorID not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d\n", v34, 16, v35, "AVE_MCTF_AdjustStrength", 783, "pMap != NULL", a2, a1[16], a3);
          v34 = sub_66A18();
          sub_56B04(5);
        }

        v64 = a1[16];
        syslog(3, "%lld %d AVE %s: %s:%d %s | SensorID not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d", v34, 16);
      }
    }

    else if (sub_56A8C(0x10u, 5))
    {
      v21 = sub_56AD0(0x10u);
      v22 = sub_66A18();
      v23 = sub_56B04(5);
      v24 = a1[16];
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | Device not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d\n", v22, 16, v23, "AVE_MCTF_AdjustStrength", 771, "paMCTF_StrengthMapSet != NULL", a2, a1[16], a3);
        v22 = sub_66A18();
        sub_56B04(5);
      }

      v63 = a1[16];
      syslog(3, "%lld %d AVE %s: %s:%d %s | Device not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d", v22, 16);
    }

    v25 = 4294966294;
    goto LABEL_62;
  }

  if (sub_56A8C(0x10u, 4))
  {
    v17 = sub_56AD0(0x10u);
    v18 = sub_66A18();
    v19 = sub_56B04(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p\n", v18, 16, v19, "AVE_MCTF_AdjustStrength", 764, "(psData != __null) && (piRangeIdx != __null) && (piStrength != __null) && eDevType > AVE_DevType_None && eDevType < AVE_DevType_Max && eMCTFWorkMode > AVE_MCTF_WorkMode_None && eMCTFWorkMode < AVE_MCTF_WorkMode_Max", a1, a2, a3, a4, a5);
      v20 = sub_66A18();
      v60 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p", v20, 16, v60, "AVE_MCTF_AdjustStrength");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p", v18, 16, v19, "AVE_MCTF_AdjustStrength");
    }
  }

  v25 = 4294966295;
LABEL_62:
  if (sub_56A8C(0x10u, 6))
  {
    v54 = sub_56AD0(0x10u);
    v55 = sub_66A18();
    v56 = sub_56B04(6);
    if (v54)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %p %d\n", v55, 16, v56, "AVE_MCTF_AdjustStrength", a1, a2, a3, a4, a5, v25);
      v57 = sub_66A18();
      v62 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %p %d", v57, 16, v62, "AVE_MCTF_AdjustStrength");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %p %d", v55, 16, v56, "AVE_MCTF_AdjustStrength");
    }
  }

  return v25;
}

uint64_t sub_1D314(uint64_t a1)
{
  v1 = vdupq_lane_s64(0x4170000000000000, 0);
  v1.f64[0] = *(a1 + 24);
  v2 = vmulq_f64(*(a1 + 40), v1);
  return (*(a1 + 32) * v2.f64[0] / v2.f64[1]);
}

uint64_t sub_1D348(_DWORD *a1)
{
  v2 = vdupq_lane_s64(0x4170000000000000, 0);
  v2.f64[0] = *(a1 + 3);
  v3 = vmulq_f64(*(a1 + 10), v2);
  v4 = (*(a1 + 4) * v3.f64[0] / v3.f64[1]);
  v5 = (*a1 + 0.5);
  if (v5 >= 21)
  {
    v5 = 21;
  }

  if (*a1 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v4 >= 15)
  {
    v7 = (36 - v6);
  }

  else
  {
    v7 = v4;
  }

  if (sub_56A8C(0x10u, 8))
  {
    v8 = sub_56AD0(0x10u);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %p sID 0x%x gain %d snr %d noise level %d\n", v9, 16, v10, "AVE_MCTF_CalculateNoiseLevel_TotalGainSNR", 607, a1, a1[16], v4, v6, v7);
      v9 = sub_66A18();
      sub_56B04(8);
      v11 = a1[16];
    }

    syslog(3, "%lld %d AVE %s: %s:%d %p sID 0x%x gain %d snr %d noise level %d", v9, 16);
  }

  return v7;
}

uint64_t sub_1D4C0(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 0xB)
  {
    return 0;
  }

  else
  {
    return *(a1 + 96 * (a3 > 0) + 8 * a2 + 48);
  }
}

uint64_t sub_1D4EC(uint64_t a1, void *a2)
{
  if (sub_56A8C(0x3Du, 7))
  {
    v4 = sub_56AD0(0x3Du);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %lld %p\n", v5, 61, v6, "AVE_Dump_Create", a1, a2);
      v7 = sub_66A18();
      v20 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", v7, 61, v20, "AVE_Dump_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", v5, 61, v6, "AVE_Dump_Create", a1, a2);
    }
  }

  if (a2)
  {
    v8 = malloc_type_malloc(0xF0uLL, 0x1020040FC94C6CFuLL);
    if (v8)
    {
      v9 = 0;
      *(v8 + 29) = 0;
      *(v8 + 216) = 0u;
      *(v8 + 200) = 0u;
      *(v8 + 184) = 0u;
      *(v8 + 168) = 0u;
      *(v8 + 152) = 0u;
      *(v8 + 136) = 0u;
      *(v8 + 120) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 8) = 0u;
      *v8 = a1;
      *a2 = v8;
    }

    else
    {
      if (sub_56A8C(0x3Du, 4))
      {
        v13 = sub_56AD0(0x3Du);
        v14 = sub_66A18();
        v15 = sub_56B04(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p\n", v14, 61, v15, "AVE_Dump_Create", 89, "pDump != __null", a1, a2);
          v14 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p", v14, 61);
      }

      v9 = 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v10 = sub_56AD0(0x3Du);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p\n", v11, 61, v12, "AVE_Dump_Create", 85, "ppDump != __null", a1, 0);
        v11 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 7))
  {
    v16 = sub_56AD0(0x3Du);
    v17 = sub_66A18();
    v18 = sub_56B04(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %lld %p %d\n", v17, 61, v18, "AVE_Dump_Create", a1, a2, v9);
      v17 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %lld %p %d", v17);
  }

  return v9;
}

uint64_t sub_1D898(void *a1)
{
  if (sub_56A8C(0x3Du, 7))
  {
    v2 = sub_56AD0(0x3Du);
    v3 = sub_66A18();
    v4 = sub_56B04(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 61, v4, "AVE_Dump_Destroy", a1);
      v5 = sub_66A18();
      v11 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v11, "AVE_Dump_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 61, v4, "AVE_Dump_Destroy", a1);
    }
  }

  if (a1)
  {
    free(a1);
  }

  if (sub_56A8C(0x3Du, 7))
  {
    v6 = sub_56AD0(0x3Du);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
      v9 = sub_66A18();
      v12 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v9, 61, v12, "AVE_Dump_Destroy", 0, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
    }
  }

  return 0;
}

uint64_t sub_1DA10(uint64_t a1, unsigned int a2, int a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  memset(v45, 0, sizeof(v45));
  v43 = off_C4108[*(a1 + 32)];
  v44 = *(a1 + 36);
  v40 = *(a1 + 24);
  v42 = *(a1 + 28);
  v38 = *(&off_C4128 + *(a1 + 16));
  v14 = sub_63330(v45, 128, "%lld-%s-%dx%d-%s-%d", a4, a5, a6, a7, a8, *a1);
  v20 = v14;
  if ((a3 & 0x80000000) == 0)
  {
    v20 = sub_63330(v45 + v14, 128 - v14, "-MP%d", v15, v16, v17, v18, v19, a3) + v14;
  }

  if (*(a1 + 16) == 1)
  {
    v39 = *(a1 + 44);
    v20 += sub_63330(v45 + v20, 128 - v20, "-%s-%d", v15, v16, v17, v18, v19, *(&off_C4158 + *(a1 + 20)));
  }

  v21 = pthread_self();
  v22 = &off_BD078[12 * a2];
  rand();
  v41 = *v22;
  v28 = sub_63330(v45 + v20, 128 - v20, "-%lu-%d-%s", v23, v24, v25, v26, v27, v21);
  if (a2 == 1)
  {
    v34 = *(a1 + 16);
    if (v34 == 1)
    {
      v35 = &v22[*(a1 + 20)];
    }

    else
    {
      v35 = &v22[v34 + 2];
    }

    goto LABEL_12;
  }

  if (((*(a1 + 12) >> a2) & 1) == 0 || (v36 = v22[2]) == 0)
  {
    v35 = v22 + 1;
LABEL_12:
    v36 = *v35;
  }

  sub_63330(v45 + v20 + v28, 128 - (v20 + v28), ".%s", v29, v30, v31, v32, v33, v36);
  return sub_66794(a4, 0, v45, a5, v8);
}

uint64_t sub_1DC64(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *__filename = 0u;
  v39 = 0u;
  if (a1[10] >= 1)
  {
    v8 = a2;
    v10 = 0;
    v37 = 0;
    for (i = a1 + 12; ; i += 24)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        if ((a1[2] & (1 << v13)) != 0 && !*&i[2 * v13])
        {
          if (a1[10] <= 1)
          {
            v14 = -1;
          }

          else
          {
            v14 = v10;
          }

          v37 = sub_1DA10(a1, v13, v14, v8, __filename, 256, a7, a8);
          v15 = (a1[3] & (1 << v13)) != 0 && v12 == 36;
          v16 = 8;
          if (v15)
          {
            v16 = 9;
          }

          v17 = (&off_BD078[v12])[v16];
          v18 = fopen(__filename, v17);
          *&i[2 * v13] = v18;
          if (v18)
          {
            if (!sub_56A8C(0x3Du, 6))
            {
              goto LABEL_26;
            }

            v19 = sub_56AD0(0x3Du);
            v20 = sub_66A18();
            v21 = sub_56B04(6);
            if (v19)
            {
              printf("%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s\n", v20, 61, v21, "AVE_Dump_OpenFiles", 262, a1, *a1, v10, v13, __filename, v17);
              v22 = sub_66A18();
              v23 = sub_56B04(6);
              v34 = *a1;
              v32 = v23;
              v30 = v22;
            }

            else
            {
              v32 = v21;
              v30 = v20;
            }

            syslog(3, "%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s", v30, 61, v32, "AVE_Dump_OpenFiles");
          }

          else
          {
            if (!sub_56A8C(0x3Du, 4))
            {
              goto LABEL_26;
            }

            v24 = sub_56AD0(0x3Du);
            v25 = sub_66A18();
            v26 = sub_56B04(4);
            if (v24)
            {
              printf("%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s\n", v25, 61, v26, "AVE_Dump_OpenFiles", 257, a1, *a1, v10, v13, __filename, v17);
              v27 = sub_66A18();
              v28 = sub_56B04(4);
              v35 = *a1;
              v33 = v28;
              v31 = v27;
            }

            else
            {
              v33 = v26;
              v31 = v25;
            }

            syslog(3, "%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s", v31, 61, v33, "AVE_Dump_OpenFiles");
          }

          v8 = a2;
        }

LABEL_26:
        ++v13;
        v12 += 12;
      }

      while (v12 != 144);
      if (++v10 >= a1[10])
      {
        return v37;
      }
    }
  }

  return 0;
}

uint64_t sub_1DFD0(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 48;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = v4 + 96 * v2;
    v9 = -2;
    do
    {
      if (*(v8 + v6))
      {
        v10 = v9 > 8;
      }

      else
      {
        v10 = 1;
      }

      if (!v10 && ((0x1C1u >> v9) & 1) != 0)
      {
        if (fprintf(*(v8 + v6), off_BD4F8[v9]) <= 0)
        {
          result = 4294965296;
        }

        else
        {
          result = 0;
        }
      }

      v6 += 8;
      ++v9;
    }

    while (v6 != 96);
    v5 = 0;
    v2 = 1;
  }

  while ((v7 & 1) != 0);
  return result;
}

uint64_t sub_1E094(uint64_t a1, const void *a2, int a3, int a4, int a5, int a6, void *a7, int a8, int a9, int a10, int a11)
{
  v11 = a8;
  v16 = a10;
  v17 = a11;
  if (sub_56A8C(0x3Du, 7))
  {
    v24 = sub_56AD0(0x3Du);
    v25 = sub_66A18();
    v26 = sub_56B04(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", v25, 61, v26, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      v46 = sub_66A18();
      v11 = a8;
      v43 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v46, 61, v43, "AVE_Dump_Init", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v25, 61, v26, "AVE_Dump_Init", a1);
    }
  }

  if (a1 && a7)
  {
    *(a1 + 8) = a5;
    *(a1 + 12) = a6;
    *(a1 + 16) = a3;
    *(a1 + 20) = a4;
    *(a1 + 24) = *a7;
    *(a1 + 32) = a9;
    *(a1 + 36) = a10;
    *(a1 + 40) = v11;
    *(a1 + 44) = a11;
    v27 = sub_1DC64(a1, a2, v18, v19, v20, v21, v22, v23);
    if (!v27)
    {
      sub_1DFD0(a1);
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (sub_56A8C(0x3Du, 4))
  {
    v28 = sub_56AD0(0x3Du);
    v29 = sub_66A18();
    v30 = sub_56B04(4);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", v29, 61, v30, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1, a2, a3, a4, a5, a6, a7, v11, a9, a10, a11);
      v45 = sub_66A18();
      v11 = a8;
      v44 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v45, 61, v44, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v29, 61, v30, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1);
    }
  }

  v27 = 4294966295;
  if (a1)
  {
LABEL_14:
    v31 = 0;
    v32 = 1;
    do
    {
      v33 = 0;
      v34 = v32;
      v35 = a1 + 48 + 96 * v31;
      do
      {
        v36 = *(v35 + v33);
        if (v36)
        {
          fclose(v36);
          *(v35 + v33) = 0;
        }

        v33 += 8;
      }

      while (v33 != 96);
      v32 = 0;
      v31 = 1;
    }

    while ((v34 & 1) != 0);
    v16 = a10;
    v17 = a11;
    v11 = a8;
  }

LABEL_21:
  if (sub_56A8C(0x3Du, 7))
  {
    v37 = sub_56AD0(0x3Du);
    v38 = sub_66A18();
    v39 = sub_56B04(7);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d\n", v38, 61, v39, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, v11, a9, v16, v17, v27);
      v40 = sub_66A18();
      v41 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v40, 61, v41, "AVE_Dump_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v38, 61, v39, "AVE_Dump_Init", a1, a2);
    }
  }

  return v27;
}

uint64_t sub_1E5F0(const void *a1)
{
  if (sub_56A8C(0x3Du, 7))
  {
    v2 = sub_56AD0(0x3Du);
    v3 = sub_66A18();
    v4 = sub_56B04(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 61, v4, "AVE_Dump_Uninit", a1);
      v5 = sub_66A18();
      v17 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v17, "AVE_Dump_Uninit", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 61, v4, "AVE_Dump_Uninit", a1);
    }
  }

  if (a1)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = 0;
      v9 = v7;
      v10 = a1 + 96 * v6 + 48;
      do
      {
        v11 = *(v10 + v8);
        if (v11)
        {
          fclose(v11);
          *(v10 + v8) = 0;
        }

        v8 += 8;
      }

      while (v8 != 96);
      v7 = 0;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
  }

  if (sub_56A8C(0x3Du, 7))
  {
    v12 = sub_56AD0(0x3Du);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
      v15 = sub_66A18();
      v18 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 61, v18, "AVE_Dump_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
    }
  }

  return 0;
}

uint64_t sub_1E7AC(_DWORD *a1, int a2, __CVBuffer *a3)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v6 = sub_56AD0(0x3Du);
    v7 = sub_66A18();
    v8 = sub_56B04(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", v7, 61, v8, "AVE_Dump_WriteInput", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", v7);
  }

  if (a1)
  {
    v9 = *&a1[24 * (a2 > 0) + 12];
    if (v9)
    {
      if (a3)
      {
        v10 = sub_52DBC(a3, a1[3] & 1, v9);
      }

      else
      {
        v10 = 4294966287;
      }
    }

    else
    {
      v10 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v11 = sub_56AD0(0x3Du);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 61, v13, "AVE_Dump_WriteInput", 533, "pDump != __null", 0, a2, a3);
        v14 = sub_66A18();
        v20 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 61, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 61, v13);
      }
    }

    v10 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v15 = sub_56AD0(0x3Du);
    v16 = sub_66A18();
    v17 = sub_56B04(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v16, 61, v17, "AVE_Dump_WriteInput", a1, a2, a3, v10);
      v18 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v18, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v16, 61);
    }
  }

  return v10;
}

uint64_t sub_1EA8C(void *a1, int a2, const void *a3, int a4)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v8 = sub_56AD0(0x3Du);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", v9, 61, v10, "AVE_Dump_WriteOutput", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", v9, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 7];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (sub_56A8C(0x3Du, 8))
        {
          v14 = sub_56AD0(0x3Du);
          v15 = sub_66A18();
          v16 = sub_56B04(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteOutput", 596, a1, a2, a3, a4, v13);
            v17 = sub_66A18();
            v27 = sub_56B04(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v18 = sub_56AD0(0x3Du);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteOutput", 578, "pDump != __null", 0, a2, a3, a4);
        v21 = sub_66A18();
        v28 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteOutput");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteOutput");
      }
    }

    v12 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v22 = sub_56AD0(0x3Du);
    v23 = sub_66A18();
    v24 = sub_56B04(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteOutput", a1, a2, a3, a4, v12);
      v25 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t sub_1EE88(void *a1, int a2, const void *a3, int a4)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v8 = sub_56AD0(0x3Du);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", v9, 61, v10, "AVE_Dump_WriteMBStats", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", v9, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 9];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (sub_56A8C(0x3Du, 8))
        {
          v14 = sub_56AD0(0x3Du);
          v15 = sub_66A18();
          v16 = sub_56B04(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteMBStats", 735, a1, a2, a3, a4, v13);
            v17 = sub_66A18();
            v27 = sub_56B04(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v18 = sub_56AD0(0x3Du);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteMBStats", 717, "pDump != __null", 0, a2, a3, a4);
        v21 = sub_66A18();
        v28 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteMBStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteMBStats");
      }
    }

    v12 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v22 = sub_56AD0(0x3Du);
    v23 = sub_66A18();
    v24 = sub_56B04(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteMBStats", a1, a2, a3, a4, v12);
      v25 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t sub_1F284(void *a1, int a2, int *a3)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v6 = sub_56AD0(0x3Du);
    v7 = sub_66A18();
    v8 = sub_56B04(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", v7, 61, v8, "AVE_Dump_WriteHwEventTrace", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", v7);
  }

  if (a1)
  {
    v9 = a1[12 * (a2 > 0) + 14];
    if (v9)
    {
      if (a3)
      {
        if (*a3 < 2)
        {
          v13 = 0;
        }

        else
        {
          v10 = a3 + 19;
          v11 = 1;
          do
          {
            v12 = fprintf(v9, "%6d, %d, %d, %d, %8lld, 0x%x, 0x%x, 0x%x, 0x%x\n", v11++, *(v10 - 8), *(v10 - 9), *(v10 - 7), *(v10 - 5), *(v10 - 3), *(v10 - 2), *(v10 - 1), *v10);
            v10 += 10;
          }

          while (v11 < *a3);
          if (v12 <= 0)
          {
            v13 = 4294965296;
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v13 = 4294966287;
      }
    }

    else
    {
      v13 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v14 = sub_56AD0(0x3Du);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v15, 61, v16, "AVE_Dump_WriteHwEventTrace", 763, "pDump != __null", 0, a2, a3);
        v17 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v17, 61, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v15, 61, v16);
      }
    }

    v13 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v18 = sub_56AD0(0x3Du);
    v19 = sub_66A18();
    v20 = sub_56B04(8);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteHwEventTrace", a1, a2, a3, v13);
      v21 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v21, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v19, 61);
    }
  }

  return v13;
}

uint64_t sub_1F5C8(void *a1, int a2, int a3, double *a4)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v8 = sub_56AD0(0x3Du);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v9, 61, v10, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v9, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 15];
    if (v11)
    {
      if (a4)
      {
        v12 = a4[5];
        v13 = a4[1];
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[3], a4[4], v12, *a4, v13, a4[2]) <= 0)
        {
          v14 = 4294965296;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 4294966287;
      }
    }

    else
    {
      v14 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v15 = sub_56AD0(0x3Du);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v16, 61, v17, "AVE_Dump_WriteVQMetrics", 815, "pDump != __null", 0, a2, a3, a4);
        v18 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v18, 61, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v17);
      }
    }

    v14 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v19 = sub_56AD0(0x3Du);
    v20 = sub_66A18();
    v21 = sub_56B04(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v20, 61, v21, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4, v14);
      v22 = sub_66A18();
      v25 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v22, 61, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v21);
    }
  }

  return v14;
}

uint64_t sub_1F904(void *a1, int a2, int a3, double *a4)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v8 = sub_56AD0(0x3Du);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v9, 61, v10, "AVE_Dump_WriteFPS", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v9, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 16];
    if (v11)
    {
      if (a4)
      {
        v12 = a4[3];
        v13 = a4[7];
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[2], a4[1], *a4, a4[5], a4[4], v12, a4[8], v13, a4[6]) <= 0)
        {
          v14 = 4294965296;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 4294966287;
      }
    }

    else
    {
      v14 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v15 = sub_56AD0(0x3Du);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v16, 61, v17, "AVE_Dump_WriteFPS", 863, "pDump != __null", 0, a2, a3, a4);
        v18 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v18, 61, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v17);
      }
    }

    v14 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v19 = sub_56AD0(0x3Du);
    v20 = sub_66A18();
    v21 = sub_56B04(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v20, 61, v21, "AVE_Dump_WriteFPS", a1, a2, a3, a4, v14);
      v22 = sub_66A18();
      v25 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v22, 61, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v21);
    }
  }

  return v14;
}

uint64_t sub_1FC4C(uint64_t a1, __CVBuffer *a2)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v4 = sub_56AD0(0x3Du);
    v5 = sub_66A18();
    v6 = sub_56B04(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 61, v6, "AVE_Dump_WriteRecon", a1, a2);
      v7 = sub_66A18();
      v17 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 61, v17, "AVE_Dump_WriteRecon", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 61, v6, "AVE_Dump_WriteRecon", a1, a2);
    }
  }

  if (a1)
  {
    v8 = *(a1 + 136);
    if (v8)
    {
      if (a2)
      {
        v9 = sub_52DBC(a2, (*(a1 + 12) >> 11) & 1, v8);
      }

      else
      {
        v9 = 4294966287;
      }
    }

    else
    {
      v9 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v10 = sub_56AD0(0x3Du);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", v11, 61, v12, "AVE_Dump_WriteRecon", 907, "pDump != __null", 0, a2);
        v11 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v13 = sub_56AD0(0x3Du);
    v14 = sub_66A18();
    v15 = sub_56B04(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v14, 61, v15, "AVE_Dump_WriteRecon", a1, a2, v9);
      v14 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v14);
  }

  return v9;
}

uint64_t sub_1FEEC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (sub_56A8C(0x3Cu, 7))
  {
    v6 = sub_56AD0(0x3Cu);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", v7, 60, v8, "AVE_TimeStats_AddEndTime", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", v7);
  }

  if (!a1 || a2 > 8 || a3 < 0)
  {
    if (sub_56A8C(0x3Cu, 4))
    {
      v11 = sub_56AD0(0x3Cu);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld\n", v12, 60, v13, "AVE_TimeStats_AddEndTime", 282, "pTS != __null && 0 <= pos && pos < AVE_TimeStats_Pos_Max && ts >= 0", a1, a2, a3);
        v14 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v14, 60, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v12, 60, v13);
      }
    }

    v10 = 4294966295;
  }

  else
  {
    sub_422D8(*(a1 + 176));
    v9 = *(a1 + 16);
    if (v9)
    {
      if (a2 == 5)
      {
        *(v9 + 16 * (*(a1 + 24) % *(a1 + 8)) + 8) = a3;
      }

      v10 = 0;
      *(a1 + 16 * a2 + 40) = a3;
    }

    else
    {
      if (sub_56A8C(0x3Cu, 4))
      {
        v15 = sub_56AD0(0x3Cu);
        v16 = sub_66A18();
        v17 = sub_56B04(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld\n", v16, 60, v17, "AVE_TimeStats_AddEndTime", 287, "pTS->psTP != __null", a1, a2, a3);
          v18 = sub_66A18();
          v25 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v18, 60, v25);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v16, 60, v17);
        }
      }

      v10 = 4294966285;
    }

    sub_4230C(*(a1 + 176));
  }

  if (sub_56A8C(0x3Cu, 7))
  {
    v19 = sub_56AD0(0x3Cu);
    v20 = sub_66A18();
    v21 = sub_56B04(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d\n", v20, 60, v21, "AVE_TimeStats_AddEndTime", a1, a2, a3, v10);
      v22 = sub_66A18();
      sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v22, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v20, 60);
    }
  }

  return v10;
}

char *sub_202BC(int a1)
{
  if (a1 >= 35)
  {
    return 0;
  }

  else
  {
    return &unk_BD540 + 72 * a1;
  }
}

uint64_t sub_202D8(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_BD540[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 24);
  }

  return v3;
}

uint64_t sub_20380(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_BD540[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 32);
  }

  return v3;
}

uint64_t sub_20428(const void *a1, const void *a2, const void *a3)
{
  v19 = 0;
  if (sub_56A8C(0x2Eu, 7))
  {
    v6 = sub_56AD0(0x2Eu);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 46, v8, "AVE_FrameStats_PrintStatFrame", a2, a1, a3);
      v7 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2)
  {
    if (a3)
    {
      operator new[]();
    }

    v13 = 4294966288;
  }

  else
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v9 = sub_56AD0(0x2Eu);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 46, v11, "AVE_FrameStats_PrintStatFrame", 265, "(psFrame != __null) && (psMgr != __null)", a2, a1, a3);
        v12 = sub_66A18();
        v18 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 46, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 46, v11);
      }
    }

    v13 = 4294966295;
  }

  if (sub_56A8C(0x74u, 7))
  {
    v14 = sub_56AD0(0x74u);
    v15 = sub_66A18();
    v16 = sub_56B04(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 116, v16, "AVE_FrameStats_PrintStatFrame", a2, a1, a3, v13);
      v15 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 116);
  }

  return v13;
}

uint64_t sub_20E10(char *a1, int a2)
{
  v4 = NSTemporaryDirectory();
  v5 = [v4 UTF8String];

  return sub_63330(a1, a2, "%s", v6, v7, v8, v9, v10, v5);
}

uint64_t sub_20E88(__CVBuffer *a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v11 = BaseAddressOfPlane;
  if (!BaseAddressOfPlane || (BaseAddressOfPlane & 0x3F) != 0)
  {
    if (sub_56A8C(3u, 4))
    {
      v13 = sub_56AD0(3u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx\n", v14, 3, v15, "AVE_ImgBuf_VerifyUncompressed", 81, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v11);
        v14 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx", v14);
    }

    goto LABEL_39;
  }

  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  if (a5)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    v12 = (extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight);
    v18 = (extraRowsOnTop + HeightOfPlane + extraRowsOnBottom);
    if (v12 < a2 || v18 < a3)
    {
      if (!sub_56A8C(3u, 4))
      {
        goto LABEL_39;
      }

      v35 = sub_56AD0(3u);
      v36 = sub_66A18();
      v37 = sub_56B04(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 93, "width >= videoWidth && height >= videoHeight", v12, v18, a2, a3);
        v36 = sub_66A18();
        v61 = a2;
        v62 = a3;
        v59 = v12;
        v60 = v18;
        v57 = 93;
        v58 = "width >= videoWidth && height >= videoHeight";
        v56 = sub_56B04(4);
LABEL_51:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v36, 3, v56, "AVE_ImgBuf_VerifyUncompressed", v57, v58, v59, v60, v61, v62);
        goto LABEL_39;
      }

      v61 = a2;
      v62 = a3;
      v59 = v12;
      v60 = v18;
      v50 = "width >= videoWidth && height >= videoHeight";
      v51 = 93;
      goto LABEL_50;
    }
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v20 = BytesPerRowOfPlane;
  if (a4[6] == 1)
  {
    v21 = (2 * ((2863311531u * (v12 + 2)) >> 32)) & 0xFFFFFFFC;
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v12 << (a4[1] != 8);
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  if ((BytesPerRowOfPlane & 0x3F) != 0 || v21 > BytesPerRowOfPlane)
  {
LABEL_23:
    if (sub_56A8C(3u, 4))
    {
      v32 = sub_56AD0(3u);
      v33 = sub_66A18();
      v34 = sub_56B04(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v33, 3, v34, "AVE_ImgBuf_VerifyUncompressed", 101, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v20, v21);
        v33 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v33);
    }

    goto LABEL_39;
  }

  if (!a4[3])
  {
    if ((a5 & 1) != 0 || (v38 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v39 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), !(v38 | v39)))
    {
      v40 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      if (v40)
      {
        if (sub_56A8C(3u, 4))
        {
          v41 = sub_56AD0(3u);
          v42 = sub_66A18();
          v43 = sub_56B04(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride %x\n", v42, 3, v43, "AVE_ImgBuf_VerifyUncompressed", 120, "stride == 0", v40);
            v42 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride %x", v42);
        }

        goto LABEL_39;
      }

      goto LABEL_45;
    }

    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_39;
    }

    v54 = sub_56AD0(3u);
    v36 = sub_66A18();
    v37 = sub_56B04(4);
    if (v54)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 114, "width == 0 && height == 0", v38, v39, a2, a3);
      v55 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v55, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v38;
    v60 = v39;
    v50 = "width == 0 && height == 0";
    v51 = 114;
LABEL_50:
    v57 = v51;
    v58 = v50;
    v56 = v37;
    goto LABEL_51;
  }

  if ((a5 & 1) != 0 || (v22 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v23 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), v24 = a4[4] >> 1, v25 = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), v26 = a4[5] >> 1, v27 = (extraRowsOnBottom >> v26) + v23 + (extraRowsOnTop >> v26), a2 >> v24 <= v25) && (LODWORD(v12) = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), a3 >> v26 <= v27))
  {
    v28 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v29 = v28;
    v30 = (2 * v12) >> (a4[4] >> 1);
    if (a4[6] == 1)
    {
      v31 = (2 * ((2863311531u * (v30 + 2)) >> 32)) & 0xFFFFFFFC;
    }

    else
    {
      v31 = v30 << (a4[1] != 8);
    }

    if (!v28 || (v28 & 0x3F) != 0 || v31 > v28)
    {
      if (sub_56A8C(3u, 4))
      {
        v46 = sub_56AD0(3u);
        v47 = sub_66A18();
        v48 = sub_56B04(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v47, 3, v48, "AVE_ImgBuf_VerifyUncompressed", 144, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v29, v31);
          v49 = sub_66A18();
          sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v49);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v47);
        }
      }

      goto LABEL_39;
    }

LABEL_45:
    v44 = 0;
    goto LABEL_40;
  }

  if (sub_56A8C(3u, 4))
  {
    v52 = sub_56AD0(3u);
    v36 = sub_66A18();
    v37 = sub_56B04(4);
    if (v52)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 134, "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))", v25, v27, a2, a3);
      v53 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v53, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v25;
    v60 = v27;
    v50 = "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))";
    v51 = 134;
    goto LABEL_50;
  }

LABEL_39:
  v44 = 4294954394;
LABEL_40:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v44;
}

uint64_t sub_21684(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
  if (!BaseAddressOfCompressedTileHeaderRegionOfPlane || (BaseAddressOfCompressedTileHeaderRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v22 = sub_56AD0(3u);
    v23 = sub_66A18();
    v24 = sub_56B04(4);
    if (v22)
    {
      v25 = 186;
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v23, 3, v24, "AVE_ImgBuf_VerifyHTPC", 186, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v5);
LABEL_20:
      v23 = sub_66A18();
      v63 = v5;
      v61 = v25;
      v59 = sub_56B04(4);
LABEL_27:
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", v23, 3, v59, "AVE_ImgBuf_VerifyHTPC", v61, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v63);
      goto LABEL_49;
    }

    v63 = v5;
    v30 = 186;
LABEL_26:
    v61 = v30;
    v59 = v24;
    goto LABEL_27;
  }

  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v7 = BaseAddressOfCompressedTileDataRegionOfPlane;
  if (!BaseAddressOfCompressedTileDataRegionOfPlane || (BaseAddressOfCompressedTileDataRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v26 = sub_56AD0(3u);
    v27 = sub_66A18();
    v28 = sub_56B04(4);
    if (v26)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v27, 3, v28, "AVE_ImgBuf_VerifyHTPC", 190, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v7);
LABEL_24:
      v29 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v29);
      goto LABEL_49;
    }

LABEL_31:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v27);
    goto LABEL_49;
  }

  BytesPerCompressedTileHeaderOfPlane = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v13 = extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight;
  v14 = extraRowsOnTop + HeightOfPlane + extraRowsOnBottom;
  v15 = (v13 & 0xF) == 0;
  v16 = v13 >> 4;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if ((v14 & 7) != 0)
  {
    v18 = (v14 >> 3) + 1;
  }

  else
  {
    v18 = v14 >> 3;
  }

  if (v17 != WidthInCompressedTilesOfPlane || v18 != HeightInCompressedTilesOfPlane)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v31 = sub_56AD0(3u);
    v32 = sub_66A18();
    v33 = sub_56B04(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v32, 3, v33, "AVE_ImgBuf_VerifyHTPC", 214, "width == neededWidth && height == neededHeight", WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, v17, v18);
      v34 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v34, 3);
      goto LABEL_49;
    }

LABEL_48:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v32, 3);
    goto LABEL_49;
  }

  if ((WidthInCompressedTilesOfPlane * BytesPerCompressedTileHeaderOfPlane * HeightInCompressedTilesOfPlane) + v5 > v7)
  {
    if (sub_56A8C(3u, 4))
    {
      v19 = sub_56AD0(3u);
      v20 = sub_66A18();
      v21 = sub_56B04(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d\n", v20, 3, v21, "AVE_ImgBuf_VerifyHTPC", 218, "dataBaseAddr >= (baseAddr + width * height * size)", v7, v5, WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, BytesPerCompressedTileHeaderOfPlane);
        v20 = sub_66A18();
        v66 = HeightInCompressedTilesOfPlane;
        v67 = BytesPerCompressedTileHeaderOfPlane;
        v64 = v5;
        v65 = WidthInCompressedTilesOfPlane;
        v62 = v7;
        v60 = 218;
        v58 = sub_56B04(4);
LABEL_57:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d", v20, 3, v58, "AVE_ImgBuf_VerifyHTPC", v60, "dataBaseAddr >= (baseAddr + width * height * size)", v62, v64, v65, v66, v67);
        goto LABEL_49;
      }

      v66 = HeightInCompressedTilesOfPlane;
      v67 = BytesPerCompressedTileHeaderOfPlane;
      v64 = v5;
      v65 = WidthInCompressedTilesOfPlane;
      v62 = v7;
      v52 = 218;
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  if (!a2[3])
  {
LABEL_51:
    v49 = 0;
    goto LABEL_50;
  }

  v35 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = v35;
  if (!v35 || (v35 & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v51 = sub_56AD0(3u);
    v23 = sub_66A18();
    v24 = sub_56B04(4);
    if (v51)
    {
      v25 = 227;
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v23, 3, v24, "AVE_ImgBuf_VerifyHTPC", 227, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v5);
      goto LABEL_20;
    }

    v63 = v5;
    v30 = 227;
    goto LABEL_26;
  }

  v36 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v37 = v36;
  if (!v36 || (v36 & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v53 = sub_56AD0(3u);
    v27 = sub_66A18();
    v54 = sub_56B04(4);
    if (v53)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v27, 3, v54, "AVE_ImgBuf_VerifyHTPC", 231, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v37);
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  v38 = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
  v39 = IOSurfaceGetWidthInCompressedTilesOfPlane();
  v40 = IOSurfaceGetHeightInCompressedTilesOfPlane();
  v41 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  v42 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  v43 = (extraColumnsOnLeft >> (a2[4] >> 1)) + v41 + (extraColumnsOnRight >> (a2[4] >> 1));
  v44 = (extraRowsOnTop >> (a2[5] >> 1)) + v42 + (extraRowsOnBottom >> (a2[5] >> 1));
  v15 = (v43 & 7) == 0;
  v45 = v43 >> 3;
  if (v15)
  {
    v46 = v45;
  }

  else
  {
    v46 = v45 + 1;
  }

  if ((v44 & 7) != 0)
  {
    v47 = (v44 >> 3) + 1;
  }

  else
  {
    v47 = v44 >> 3;
  }

  if (v46 != v39)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v55 = sub_56AD0(3u);
    v32 = sub_66A18();
    v56 = sub_56B04(4);
    if (v55)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v32, 3, v56, "AVE_ImgBuf_VerifyHTPC", 261, "width == neededWidth", v39, v40, v46, v47);
      v57 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v57, 3);
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if ((v39 * v38 * v40) + v5 <= v37)
  {
    goto LABEL_51;
  }

  if (sub_56A8C(3u, 4))
  {
    v48 = sub_56AD0(3u);
    v20 = sub_66A18();
    v21 = sub_56B04(4);
    if (v48)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d\n", v20, 3, v21, "AVE_ImgBuf_VerifyHTPC", 266, "dataBaseAddr >= (baseAddr + width * height * size)", v37, v5, v39, v40, v38);
      v20 = sub_66A18();
      v66 = v40;
      v67 = v38;
      v64 = v5;
      v65 = v39;
      v62 = v37;
      v60 = 266;
      v58 = sub_56B04(4);
      goto LABEL_57;
    }

    v66 = v40;
    v67 = v38;
    v64 = v5;
    v65 = v39;
    v62 = v37;
    v52 = 266;
LABEL_56:
    v60 = v52;
    v58 = v21;
    goto LABEL_57;
  }

LABEL_49:
  v49 = 4294954394;
LABEL_50:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v49;
}

uint64_t sub_21E50(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
  if (!BaseAddressOfCompressedTileHeaderRegionOfPlane || (BaseAddressOfCompressedTileHeaderRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_44;
    }

    v32 = sub_56AD0(3u);
    v33 = sub_66A18();
    v34 = sub_56B04(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v33, 3, v34, "AVE_ImgBuf_VerifyInterchange", 308, "hdrBaseAddr != 0 && (hdrBaseAddr & 0x3F) == 0", v5);
LABEL_29:
      v35 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", v35);
      goto LABEL_44;
    }

LABEL_34:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", v33);
    goto LABEL_44;
  }

  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v7 = BaseAddressOfCompressedTileDataRegionOfPlane;
  if (!BaseAddressOfCompressedTileDataRegionOfPlane || (BaseAddressOfCompressedTileDataRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_44;
    }

    v36 = sub_56AD0(3u);
    v37 = sub_66A18();
    v38 = sub_56B04(4);
    if (v36)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v37, 3, v38, "AVE_ImgBuf_VerifyInterchange", 312, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v7);
LABEL_33:
      v39 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v39);
      goto LABEL_44;
    }

LABEL_39:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v37);
    goto LABEL_44;
  }

  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v12 = extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight;
  v13 = extraRowsOnTop + HeightOfPlane + extraRowsOnBottom;
  v14 = (v12 & 0x1F) == 0;
  v15 = v12 >> 5;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  if ((v13 & 0x1F) != 0)
  {
    v17 = (v13 >> 5) + 1;
  }

  else
  {
    v17 = v13 >> 5;
  }

  if (v16 != WidthInCompressedTilesOfPlane || v17 != HeightInCompressedTilesOfPlane)
  {
    if (sub_56A8C(3u, 4))
    {
      v40 = sub_56AD0(3u);
      v41 = sub_66A18();
      v42 = sub_56B04(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid Luma buffer dimension %d %d %d %d.\n", v41, 3, v42, "AVE_ImgBuf_VerifyInterchange", 332, "width == neededWidth && height == neededHeight", WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, v16, v17);
        v41 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid Luma buffer dimension %d %d %d %d.", v41, 3);
    }

    goto LABEL_44;
  }

  if (a2[3])
  {
    v18 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    v19 = v18;
    if (v18 && (v18 & 0x3F) == 0)
    {
      v20 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      v21 = v20;
      if (v20 && (v20 & 0x3F) == 0)
      {
        v22 = IOSurfaceGetWidthInCompressedTilesOfPlane();
        v23 = IOSurfaceGetHeightInCompressedTilesOfPlane();
        v24 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
        v25 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
        v26 = (extraColumnsOnLeft >> (a2[4] >> 1)) + v24 + (extraColumnsOnRight >> (a2[4] >> 1));
        v27 = (extraRowsOnTop >> (a2[5] >> 1)) + v25 + (extraRowsOnBottom >> (a2[5] >> 1));
        v14 = (v26 & 0xF) == 0;
        v28 = v26 >> 4;
        if (v14)
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 + 1;
        }

        if ((v27 & 0xF) != 0)
        {
          v30 = (v27 >> 4) + 1;
        }

        else
        {
          v30 = v27 >> 4;
        }

        if (v29 == v22)
        {
          goto LABEL_25;
        }

        if (sub_56A8C(3u, 4))
        {
          v48 = sub_56AD0(3u);
          v49 = sub_66A18();
          v50 = sub_56B04(4);
          if (v48)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid Chroma buffer dimension %d %d %d %d\n", v49, 3, v50, "AVE_ImgBuf_VerifyInterchange", 371, "width == neededWidth", v22, v23, v29, v30);
            v49 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid Chroma buffer dimension %d %d %d %d", v49, 3);
        }

LABEL_44:
        v31 = 4294954394;
        goto LABEL_45;
      }

      if (!sub_56A8C(3u, 4))
      {
        goto LABEL_44;
      }

      v46 = sub_56AD0(3u);
      v37 = sub_66A18();
      v47 = sub_56B04(4);
      if (v46)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v37, 3, v47, "AVE_ImgBuf_VerifyInterchange", 345, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v21);
        goto LABEL_33;
      }

      goto LABEL_39;
    }

    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_44;
    }

    v43 = sub_56AD0(3u);
    v33 = sub_66A18();
    v44 = sub_56B04(4);
    if (v43)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v33, 3, v44, "AVE_ImgBuf_VerifyInterchange", 341, "hdrBaseAddr != 0 && (hdrBaseAddr & 0x3F) == 0", v19);
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_25:
  v31 = 0;
LABEL_45:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v31;
}

uint64_t sub_228D4(unsigned int *a1, const void **a2, CVPixelBufferPoolRef *a3)
{
  pixelBufferOut = 0;
  poolOut = 0;
  if (!a3 || !*a2)
  {
    if (sub_56A8C(3u, 4))
    {
      v15 = sub_56AD0(3u);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      v18 = *a2;
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", v16, 3, v17, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
        v16 = sub_66A18();
        v17 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", v16, 3, v17, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
    }

    goto LABEL_43;
  }

  CVPixelBufferRetain(*a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  v7 = sub_5D820(PixelFormatType);
  if (!v7)
  {
    if (sub_56A8C(3u, 4))
    {
      v19 = sub_56AD0(3u);
      v20 = sub_66A18();
      v21 = sub_56B04(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | pixel format is not supported %d\n", v20, 3, v21, "AVE_VerifyImageBuffer", 483, "pPixelFmt != __null", PixelFormatType);
        v20 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pixel format is not supported %d", v20);
    }

    goto LABEL_43;
  }

  v8 = v7;
  v9 = sub_4E31C(*a2, v7, a1[2], a1[6], *(a1 + 52), a1[14], a1[7], a1 + 8, a1[12]);
  if (sub_56A8C(0x12u, 7))
  {
    v10 = sub_56AD0(0x12u);
    v11 = sub_66A18();
    v12 = sub_56B04(7);
    v13 = *(v8 + 24);
    if (v10)
    {
      printf("%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d\n", v11, 18, v12, PixelFormatType, *(v8 + 4), *(v8 + 8), *(v8 + 12), *(v8 + 16), *(v8 + 20), *(v8 + 24), *(v8 + 28));
      v11 = sub_66A18();
      v12 = sub_56B04(7);
      v14 = *(v8 + 4);
      v120 = *(v8 + 24);
      v122 = *(v8 + 28);
      v117 = *(v8 + 16);
      v119 = *(v8 + 20);
      v113 = *(v8 + 8);
      v114 = *(v8 + 12);
    }

    else
    {
      v121 = *(v8 + 24);
    }

    syslog(3, "%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d", v11, 18, v12);
  }

  if (sub_56A8C(0x12u, 7))
  {
    v22 = sub_56AD0(0x12u);
    v23 = sub_66A18();
    v24 = sub_56B04(7);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
    if (v22)
    {
      printf("%lld %d AVE %s: Pixel Buffer Width %d Height %d\n", v23, 18, v24, WidthOfPlane, HeightOfPlane);
      v27 = sub_66A18();
      v28 = sub_56B04(7);
      v29 = CVPixelBufferGetWidthOfPlane(*a2, 0);
      v111 = CVPixelBufferGetHeightOfPlane(*a2, 0);
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v27, 18, v28, v29, v111);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v23, 18, v24, WidthOfPlane, HeightOfPlane);
    }
  }

  if ((v9 & 2) == 0)
  {
    v30 = *a2;
    v31 = a1[2];
    v32 = a1[3];
    v33 = a1[4];
    v34 = a1[5];
    v35 = *a1;
    v36 = a1[1];
    v37 = *(a1 + 147);
    sub_22450();
  }

  v38 = *a3;
  if (!*a3)
  {
    v45 = CVPixelBufferGetWidthOfPlane(*a2, 0);
    v46 = CVPixelBufferGetHeightOfPlane(*a2, 0);
    v47 = sub_51164(a1[2], a1[3], a1[4], a1[5], v45, v46, *a1, a1[1], PixelFormatType, &poolOut);
    if (v47)
    {
      v48 = v47;
      if (sub_56A8C(3u, 4))
      {
        v49 = sub_56AD0(3u);
        v50 = sub_66A18();
        v51 = sub_56B04(4);
        if (!v49)
        {
          v115 = v48;
          v112 = 511;
          v110 = v51;
          v109 = "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d";
          goto LABEL_75;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d\n", v50, 3, v51, "AVE_VerifyImageBuffer", 511, "rc == noErr", v48);
        v52 = sub_66A18();
        sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d", v52);
      }

LABEL_44:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      if (poolOut)
      {
        CFRelease(poolOut);
        poolOut = 0;
      }

      goto LABEL_48;
    }

    v38 = *a3;
  }

  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = poolOut;
  }

  v40 = CVPixelBufferPoolCreatePixelBuffer(0, v39, &pixelBufferOut);
  if (v40)
  {
    v41 = v40;
    if (sub_56A8C(3u, 4))
    {
      v42 = sub_56AD0(3u);
      v43 = sub_66A18();
      v44 = sub_56B04(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d\n", v43, 3, v44, "AVE_VerifyImageBuffer", 517, "cvrc == kCVReturnSuccess", v41);
        v43 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d", v43);
    }

LABEL_43:
    v48 = 4294954394;
    goto LABEL_44;
  }

  v53 = sub_521E0(*a2, pixelBufferOut);
  if (v53)
  {
    v48 = v53;
    if (sub_56A8C(3u, 4))
    {
      v54 = sub_56AD0(3u);
      v50 = sub_66A18();
      v55 = sub_56B04(4);
      if (v54)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d\n", v50, 3, v55, "AVE_VerifyImageBuffer", 521, "rc == noErr", *a2, pixelBufferOut, v48);
        v56 = sub_66A18();
        v57 = sub_56B04(4);
        v58 = *a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d", v56, 3, v57);
        goto LABEL_44;
      }

      v116 = pixelBufferOut;
      v118 = v48;
      v115 = *a2;
      v112 = 521;
      v110 = v55;
      v109 = "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d";
LABEL_75:
      syslog(3, v109, v50, 3, v110, "AVE_VerifyImageBuffer", v112, "rc == noErr", v115, v116, v118);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  CVPixelBufferRelease(*a2);
  v60 = pixelBufferOut;
  *a2 = pixelBufferOut;
  pixelBufferOut = 0;
  v61 = v9 & 2;
  sub_4E9B8(v60, v9, v8);
  if (sub_56A8C(0x12u, 7))
  {
    v62 = sub_56AD0(0x12u);
    v150 = sub_66A18();
    v63 = sub_56B04(7);
    v64 = a1[1];
    v147 = *a1;
    v148 = v63;
    v65 = a1[2];
    v66 = a1[3];
    v67 = a1[4];
    v68 = a1[5];
    v69 = a1[6];
    v70 = *(a1 + 145);
    if (v62)
    {
      printf("%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v150, 18, v148, "AVE_VerifyImageBuffer", 541, v147, v64, v65, v66, v67, v68, v69, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v151 = sub_66A18();
      v149 = sub_56B04(7);
      v71 = a1[7];
      v72 = a1[12];
      v73 = a1[14];
      v74 = a1[26];
      v75 = a1[27];
      v76 = a1[32];
      v143 = *(a1 + 145);
      v139 = *(a1 + 146);
      v141 = *(a1 + 144);
      v135 = a1[28];
      v137 = a1[29];
      v131 = a1[30];
      v133 = a1[31];
      v127 = a1[34];
      v129 = a1[35];
      v125 = a1[33];
      v123 = *(a1 + 52);
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v151, 18, v149, "AVE_VerifyImageBuffer", 541, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      v144 = *(a1 + 145);
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v150, 18, v148, "AVE_VerifyImageBuffer", 541, v147, v64, v65, v66, v67, v68, v69);
    }

    v61 = v9 & 2;
  }

  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(*a2, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v77 = CVPixelBufferGetWidthOfPlane(*a2, 0);
  v78 = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v79 = extraColumnsOnLeft;
  v80 = extraColumnsOnRight;
  v81 = extraColumnsOnLeft + extraColumnsOnRight + v77;
  v82 = extraRowsOnTop;
  v83 = extraRowsOnBottom;
  v84 = extraRowsOnTop + extraRowsOnBottom + v78;
  v85 = *(v8 + 28);
  v86 = *(v8 + 16);
  *(a1 + 15) = *v8;
  *(a1 + 19) = v86;
  *(a1 + 22) = v85;
  a1[26] = v81;
  a1[27] = v84;
  a1[32] = v79;
  a1[33] = v80;
  a1[34] = v82;
  a1[35] = v83;
  a1[30] = CVPixelBufferGetBytesPerRowOfPlane(*a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*a2, 1uLL);
  a1[31] = BytesPerRowOfPlane;
  if (*(v8 + 12))
  {
    v88 = BytesPerRowOfPlane;
  }

  else
  {
    v88 = 0;
  }

  a1[28] = a1[30];
  a1[29] = v88;
  v89 = v9 & 1;
  if ((v9 & 0x10) != 0)
  {
    v89 = 1;
  }

  *(a1 + 146) = v89;
  *(a1 + 144) = v61 >> 1;
  if ((~v9 & 0x500) != 0)
  {
    v90 = 0;
  }

  else
  {
    v90 = 5;
  }

  if ((~v9 & 0x50000) == 0)
  {
    v90 |= 0xAu;
  }

  *(a1 + 145) = v90;
  if (poolOut)
  {
    *a3 = poolOut;
  }

  if (sub_56A8C(0x12u, 7))
  {
    v91 = sub_56AD0(0x12u);
    v152 = sub_66A18();
    v92 = sub_56B04(7);
    v93 = *a1;
    v94 = a1[1];
    v95 = a1[2];
    v96 = a1[3];
    v97 = a1[4];
    v98 = a1[5];
    v99 = a1[6];
    v100 = *(a1 + 145);
    if (v91)
    {
      printf("%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v152, 18, v92, "AVE_VerifyImageBuffer", 616, v93, v94, v95, v96, v97, v98, v99, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v101 = sub_66A18();
      v102 = sub_56B04(7);
      v103 = a1[7];
      v104 = a1[12];
      v105 = a1[14];
      v106 = a1[26];
      v107 = a1[27];
      v108 = a1[32];
      v145 = *(a1 + 145);
      v140 = *(a1 + 146);
      v142 = *(a1 + 144);
      v136 = a1[28];
      v138 = a1[29];
      v132 = a1[30];
      v134 = a1[31];
      v128 = a1[34];
      v130 = a1[35];
      v126 = a1[33];
      v124 = *(a1 + 52);
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v101, 18, v102, "AVE_VerifyImageBuffer", 616, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      v146 = *(a1 + 145);
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v152, 18, v92, "AVE_VerifyImageBuffer", 616, v93, v94, v95, v96, v97, v98, v99);
    }
  }

  v48 = 0;
LABEL_48:
  if ((a1[36] & 1) == 0)
  {
    CVPixelBufferRelease(*a2);
  }

  return v48;
}

uint64_t sub_235F0(unsigned int *a1, CVPixelBufferRef *a2, CVPixelBufferPoolRef *a3, uint64_t a4)
{
  pixelBufferOut = 0;
  CVPixelBufferRetain(*a2);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v10 = *a3;
  if (*a3)
  {
LABEL_2:
    v11 = CVPixelBufferPoolCreatePixelBuffer(0, v10, &pixelBufferOut);
    if (v11)
    {
      v12 = v11;
      if (sub_56A8C(3u, 4))
      {
        v13 = sub_56AD0(3u);
        v14 = sub_66A18();
        v15 = sub_56B04(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to crete pixel buffer from a pool %d\n", v14, 3, v15, "AVE_ImageBuf_Transfer", 758, "err == kCVReturnSuccess", v12);
          v14 = sub_66A18();
          v26 = "err == kCVReturnSuccess";
          v27 = v12;
          v25 = 758;
          v24 = sub_56B04(4);
        }

        else
        {
          v27 = v12;
          v25 = 758;
          v26 = "err == kCVReturnSuccess";
          v24 = v15;
        }

        v16 = "%lld %d AVE %s: %s:%d %s | failed to crete pixel buffer from a pool %d";
LABEL_20:
        syslog(3, v16, v14, 3, v24, "AVE_ImageBuf_Transfer", v25, v26, v27);
        goto LABEL_22;
      }
    }

    else
    {
      v12 = sub_531B4(*a2, pixelBufferOut);
      if (!v12)
      {
        CVPixelBufferRelease(*a2);
        *a2 = pixelBufferOut;
        return v12;
      }

      if (sub_56A8C(3u, 4))
      {
        v20 = sub_56AD0(3u);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", v21, 3, v22, "AVE_ImageBuf_Transfer", 763, "err == noErr", *a2, a1[15], a4, v12);
          v21 = sub_66A18();
          v22 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v21, 3, v22, "AVE_ImageBuf_Transfer", 763, "err == noErr", *a2, a1[15], a4, v12);
      }
    }

    goto LABEL_22;
  }

  v17 = sub_51164(a1[2], a1[3], a1[4], a1[5], WidthOfPlane, HeightOfPlane, *a1, a1[1], a4, a3);
  if (!v17)
  {
    v10 = *a3;
    goto LABEL_2;
  }

  v12 = v17;
  if (sub_56A8C(3u, 4))
  {
    v18 = sub_56AD0(3u);
    v14 = sub_66A18();
    v19 = sub_56B04(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to create a buffer pool %d\n", v14, 3, v19, "AVE_ImageBuf_Transfer", 751, "err == noErr", v12);
      v14 = sub_66A18();
      v26 = "err == noErr";
      v27 = v12;
      v25 = 751;
      v24 = sub_56B04(4);
    }

    else
    {
      v27 = v12;
      v25 = 751;
      v26 = "err == noErr";
      v24 = v19;
    }

    v16 = "%lld %d AVE %s: %s:%d %s | failed to create a buffer pool %d";
    goto LABEL_20;
  }

LABEL_22:
  CVPixelBufferRelease(*a2);
  if (pixelBufferOut)
  {
    CVPixelBufferRelease(pixelBufferOut);
    pixelBufferOut = 0;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v12;
}

uint64_t sub_23990(uint64_t a1)
{
  v2 = sub_4C960();
  if (sub_56A8C(0xDu, 6))
  {
    v3 = sub_56AD0(0xDu);
    v4 = sub_66A18();
    v5 = sub_56B04(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v4, 13, v5, "AVE_Session_MCTF_CreatePropertyDict", a1);
      v6 = sub_66A18();
      v30 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 13, v30, "AVE_Session_MCTF_CreatePropertyDict", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 13, v5, "AVE_Session_MCTF_CreatePropertyDict", a1);
    }
  }

  if (a1)
  {
    if (v2[396])
    {
      v7 = 257;
    }

    else
    {
      v7 = 258;
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      if (sub_56A8C(0xDu, 4))
      {
        v19 = sub_56AD0(0xDu);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d\n", v20, 13, v21, "AVE_Session_MCTF_CreatePropertyDict", 60, "pDict != __null", a1, *(a1 + 24), v7, 0);
          v20 = sub_66A18();
          v21 = sub_56B04(4);
          v22 = *(a1 + 24);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d", v20, 13, v21);
      }

      v11 = 4294966293;
      goto LABEL_30;
    }

    v9 = Mutable;
    v10 = sub_1B9EC(*(a1 + 32), v7, *(a1 + 24), Mutable);
    if (v10)
    {
      v11 = v10;
      if (sub_56A8C(0xDu, 4))
      {
        v12 = sub_56AD0(0xDu);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to make MCTF Property dictionary %p %lld %p %d 0x%x %d\n", v13, 13, v14, "AVE_Session_MCTF_CreatePropertyDict", 65, "ret == 0", a1, *(a1 + 24), v9, *(a1 + 32), v7, v11);
          v13 = sub_66A18();
          v14 = sub_56B04(4);
          v15 = *(a1 + 24);
          v32 = *(a1 + 32);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make MCTF Property dictionary %p %lld %p %d 0x%x %d", v13, 13, v14, "AVE_Session_MCTF_CreatePropertyDict", 65);
      }

LABEL_30:
      v24 = *(a1 + 87144);
      if (v24)
      {
        CFRelease(v24);
        *(a1 + 87144) = 0;
      }

      goto LABEL_32;
    }

    v23 = *(a1 + 87144);
    if (v23)
    {
      CFRelease(v23);
    }

    v11 = 0;
    *(a1 + 87144) = v9;
  }

  else
  {
    if (sub_56A8C(0xDu, 4))
    {
      v16 = sub_56AD0(0xDu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v17, 13, v18, "AVE_Session_MCTF_CreatePropertyDict", 44, "pMCTF != __null", 0);
        v17 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v17);
    }

    v11 = 4294966295;
  }

LABEL_32:
  if (sub_56A8C(0xDu, 6))
  {
    v25 = sub_56AD0(0xDu);
    v26 = sub_66A18();
    v27 = sub_56B04(6);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v26, 13, v27, "AVE_Session_MCTF_CreatePropertyDict", a1, v11);
      v28 = sub_66A18();
      v31 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v28, 13, v31, "AVE_Session_MCTF_CreatePropertyDict", a1, v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 13, v27, "AVE_Session_MCTF_CreatePropertyDict", a1, v11);
    }
  }

  return v11;
}

uint64_t sub_23E64(uint64_t a1)
{
  if (sub_56A8C(0x10u, 6))
  {
    v2 = sub_56AD0(0x10u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 16, v4, "AVE_Session_MCTF_Open", a1);
      v5 = sub_66A18();
      v41 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 16, v41, "AVE_Session_MCTF_Open", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 16, v4, "AVE_Session_MCTF_Open", a1);
    }
  }

  if (a1)
  {
    if (*(a1 + 40))
    {
      v6 = 0;
      goto LABEL_19;
    }

    sub_56B34();
    sub_4E028();
    v10 = sub_4C960();
    sub_57D40((v10 + 138));
    *(a1 + 64) = 0;
    v11 = (a1 + 64);
    *(a1 + 10724) = 2;
    *(a1 + 16) = 3;
    sub_3B804(3, 2);
    if (*(a1 + 64))
    {
      if (sub_56A8C(0x10u, 6))
      {
        v12 = sub_56AD0(0x10u);
        v13 = sub_66A18();
        v14 = sub_56B04(6);
        if (v12)
        {
          printf("%lld %d AVE %s: %s pDrvInstance = %p\n", v13, 16, v14, "AVE_Session_MCTF_Open", *v11);
          v13 = sub_66A18();
          v14 = sub_56B04(6);
        }

        syslog(3, "%lld %d AVE %s: %s pDrvInstance = %p", v13, 16, v14, "AVE_Session_MCTF_Open", *v11);
      }

      *(a1 + 24) = sub_3BF14(*(a1 + 64));
      v23 = sub_3BF08(*(a1 + 64));
      *(a1 + 32) = v23;
      v24 = *(sub_202BC(v23) + 1);
      *(a1 + 36) = v24;
      if (v24 <= 16)
      {
        if (sub_56A8C(0x10u, 4))
        {
          v30 = sub_56AD0(0x10u);
          v31 = sub_66A18();
          v32 = sub_56B04(4);
          v33 = *(a1 + 36);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | device type not supporte %d < %d\n", v31, 16, v32, "AVE_Session_MCTF_Open", 143, "pMCTF->eDevType >= AVE_DevType_H15", *(a1 + 36), 17);
            v31 = sub_66A18();
            sub_56B04(4);
            v34 = *(a1 + 36);
          }

          else
          {
            v44 = *(a1 + 36);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | device type not supporte %d < %d", v31);
        }

        v6 = 4294966294;
      }

      else
      {
        sub_1D4EC(*(a1 + 24), (a1 + 104));
        v25 = *(a1 + 24);
        sub_73240((a1 + 87200), v25);
        *(a1 + 664) = v10[103];
        v6 = sub_23990(a1);
        if (!v6)
        {
          *(a1 + 72) = a1;
          *(a1 + 88) = sub_24594;
          *(a1 + 40) = 1;
          goto LABEL_19;
        }

        if (sub_56A8C(0xCu, 4))
        {
          v26 = sub_56AD0(0xCu);
          v27 = sub_66A18();
          v28 = sub_56B04(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d\n", v27, 12, v28, "AVE_Session_MCTF_Open", 157, "ret == 0", a1, v25, v6);
            v29 = sub_66A18();
            v43 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v29, 12, v43);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v27, 12, v28);
          }
        }
      }
    }

    else
    {
      if (sub_56A8C(0x10u, 4))
      {
        v20 = sub_56AD0(0x10u);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create driver instance %p %d\n", v21, 16, v22, "AVE_Session_MCTF_Open", 133, "pMCTF->pDrvInstance != __null", a1, 0);
          v21 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create driver instance %p %d", v21, 16);
      }

      v6 = 4294966296;
    }

    for (i = *v11; *v11; v6 = 4294966296)
    {
      v36 = sub_3BF20(i);
      *v11 = 0;
      if (!v36)
      {
        break;
      }

      v37 = v36;
      if (sub_56A8C(0x10u, 4))
      {
        v38 = sub_56AD0(0x10u);
        v39 = sub_66A18();
        v40 = sub_56B04(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Destroy failed %p %d\n", v39, 16, v40, "AVE_Session_MCTF_Open", 176, "res == noErr", a1, v37);
          v39 = sub_66A18();
          v40 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Destroy failed %p %d", v39, 16, v40, "AVE_Session_MCTF_Open", 176, "res == noErr", a1, v37);
      }

      i = *v11;
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v7 = sub_56AD0(0x10u);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d\n", v8, 16, v9, "AVE_Session_MCTF_Open", 110, "pMCTF != __null", 0, 0);
        v8 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d", v8, 16);
    }

    v6 = 4294966295;
  }

LABEL_19:
  if (sub_56A8C(0x10u, 6))
  {
    v15 = sub_56AD0(0x10u);
    v16 = sub_66A18();
    v17 = sub_56B04(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v16, 16, v17, "AVE_Session_MCTF_Open", a1, v6);
      v18 = sub_66A18();
      v42 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v18, 16, v42, "AVE_Session_MCTF_Open", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v16, 16, v17, "AVE_Session_MCTF_Open", a1, v6);
    }
  }

  return v6;
}

uint64_t sub_24594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_56A8C(0x10u, 6))
  {
    v6 = sub_56AD0(0x10u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d\n", v7, 16, v8, "AVE_Session_MCTF_CallBack", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d", v7);
  }

  if (a1 && a2)
  {
    v9 = *(a2 + 2568);
    v10 = *(a2 + 2584);
    if (v9)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(*(a2 + 2568));
      if (sub_56A8C(0x10u, 8))
      {
        v12 = sub_56AD0(0x10u);
        v38 = sub_66A18();
        v13 = sub_56B04(8);
        v14 = *(a1 + 24);
        Width = CVPixelBufferGetWidth(v9);
        Height = CVPixelBufferGetHeight(v9);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d: pMCTF = %p %lld, output CVPixelFormatType = %d %lu x %lu\n", v38, 16, v13, "AVE_Session_MCTF_CallBack", 1071, a1, v14, PixelFormatType, Width, Height);
          v17 = sub_66A18();
          v18 = sub_56B04(8);
          v19 = *(a1 + 24);
          CVPixelBufferGetWidth(v9);
          CVPixelBufferGetHeight(v9);
          syslog(3, "%lld %d AVE %s: %s:%d: pMCTF = %p %lld, output CVPixelFormatType = %d %lu x %lu", v17, 16, v18, "AVE_Session_MCTF_CallBack");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d: pMCTF = %p %lld, output CVPixelFormatType = %d %lu x %lu", v38, 16, v13, "AVE_Session_MCTF_CallBack");
        }
      }

      v29 = *(a1 + 87192);
      if (v29)
      {
        sub_41FA4(v29, v9);
      }

      v28 = sub_2738C(*(a1 + 8), *(a2 + 2552), a3, (a2 + 4560));
      CVPixelBufferRelease(v9);
    }

    else
    {
      if (sub_56A8C(0x10u, 4))
      {
        v24 = sub_56AD0(0x10u);
        v25 = sub_66A18();
        v26 = sub_56B04(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | pOutBuf is NULL %p %p %d\n", v25, 16, v26, "AVE_Session_MCTF_CallBack", 1076, "pOutBuf != __null", a1, a2, a3);
          v27 = sub_66A18();
          v37 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | pOutBuf is NULL %p %p %d", v27, 16, v37);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | pOutBuf is NULL %p %p %d", v25, 16, v26);
        }
      }

      v28 = 4294966295;
    }

    v30 = *(a1 + 8);
    VTTemporalFilterPluginSessionCleanUpAfterProcessing();
    if (v10)
    {
      CVPixelBufferRelease(v10);
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v20 = sub_56AD0(0x10u);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v21, 16, v22, "AVE_Session_MCTF_CallBack", 1062, "pMCTF != __null && pFrame != __null", a1, a2, a3);
        v23 = sub_66A18();
        v36 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v23, 16, v36);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v21, 16, v22);
      }
    }

    v28 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v31 = sub_56AD0(0x10u);
    v32 = sub_66A18();
    v33 = sub_56B04(6);
    if (v31)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d, ret = %d\n", v32, 16, v33, "AVE_Session_MCTF_CallBack", a1, a2, a3, v28);
      v34 = sub_66A18();
      sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d, ret = %d", v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d, ret = %d", v32);
    }
  }

  return v28;
}

uint64_t sub_24AA0(uint64_t a1)
{
  if (sub_56A8C(0x10u, 6))
  {
    v2 = sub_56AD0(0x10u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 16, v4, "AVE_Session_MCTF_Close", a1);
      v5 = sub_66A18();
      v27 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 16, v27, "AVE_Session_MCTF_Close", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 16, v4, "AVE_Session_MCTF_Close", a1);
    }
  }

  if (a1)
  {
    if (sub_56A8C(0x10u, 6))
    {
      v6 = sub_56AD0(0x10u);
      v7 = sub_66A18();
      v8 = sub_56B04(6);
      if (v6)
      {
        printf("%lld %d AVE %s: %s state %d\n", v7, 16, v8, "AVE_Session_MCTF_Close", *(a1 + 40));
        v7 = sub_66A18();
        v8 = sub_56B04(6);
      }

      syslog(3, "%lld %d AVE %s: %s state %d", v7, 16, v8, "AVE_Session_MCTF_Close", *(a1 + 40));
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      if (v12 == 2)
      {
        v29 = 0;
        sub_3E80C(*(a1 + 64), &v29, 1);
      }

      v13 = *(a1 + 104);
      if (v13)
      {
        sub_1E5F0(v13);
        sub_1D898(*(a1 + 104));
        *(a1 + 104) = 0;
      }

      if (sub_3BF20(*(a1 + 64)))
      {
        if (sub_56A8C(0x10u, 4))
        {
          v14 = sub_56AD0(0x10u);
          v15 = sub_66A18();
          v16 = sub_56B04(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Destroy failed %p %d\n", v15, 16, v16, "AVE_Session_MCTF_Close", 235, "res == noErr", a1, 0);
            v15 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Destroy failed %p %d", v15, 16);
        }

        v12 = 4294966296;
      }

      else
      {
        v12 = 0;
        *(a1 + 64) = 0;
        *(a1 + 40) = 0;
      }
    }

    sub_4E1A8();
    v17 = *(a1 + 87192);
    if (v17)
    {
      sub_41C70(v17);
      *(a1 + 87192) = 0;
    }

    v18 = *(a1 + 48);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 48) = 0;
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 56) = 0;
    }

    v20 = *(a1 + 87144);
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 87144) = 0;
    }

    v21 = *(a1 + 87928);
    if (v21)
    {
      CVPixelBufferRelease(v21);
      *(a1 + 87928) = 0;
    }

    sub_733FC((a1 + 87200));
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v9 = sub_56AD0(0x10u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d\n", v10, 16, v11, "AVE_Session_MCTF_Close", 204, "pMCTF != __null", 0, 0);
        v10 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d", v10, 16);
    }

    sub_4E1A8();
    v12 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v22 = sub_56AD0(0x10u);
    v23 = sub_66A18();
    v24 = sub_56B04(6);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v23, 16, v24, "AVE_Session_MCTF_Close", a1, v12);
      v25 = sub_66A18();
      v28 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v25, 16, v28, "AVE_Session_MCTF_Close", a1, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 16, v24, "AVE_Session_MCTF_Close", a1, v12);
    }
  }

  return v12;
}

uint64_t sub_24F28(uint32x2_t *a1, unsigned int *a2)
{
  if (sub_56A8C(0x10u, 6))
  {
    v4 = sub_56AD0(0x10u);
    v5 = sub_66A18();
    v6 = sub_56B04(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 16, v6, "AVE_Session_MCTF_Start", a1, a2);
      v7 = sub_66A18();
      v70 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 16, v70, "AVE_Session_MCTF_Start", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 16, v6, "AVE_Session_MCTF_Start", a1, a2);
    }
  }

  if (!a1 || !a2)
  {
    if (sub_56A8C(0x10u, 4))
    {
      v11 = sub_56AD0(0x10u);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v12, 16, v13, "AVE_Session_MCTF_Start", 307, "pMCTF != __null && pDimension != __null", a1, a2, 0);
        v12 = sub_66A18();
        v71 = sub_56B04(4);
      }

      else
      {
        v71 = v13;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 16, v71);
    }

    goto LABEL_23;
  }

  if (*a2 < 1 || a2[1] <= 0)
  {
    if (sub_56A8C(0x10u, 4))
    {
      v14 = sub_56AD0(0x10u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      v17 = a2[1];
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %dx%d %d\n", v15, 16, v16, "AVE_Session_MCTF_Start", 312, "pDimension->iWidth > 0 && pDimension->iHeight > 0", a1, a2, *a2, a2[1], 0);
        v15 = sub_66A18();
        v16 = sub_56B04(4);
      }

      v79 = a2[1];
      v75 = *a2;
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %dx%d %d", v15, 16, v16, "AVE_Session_MCTF_Start");
    }

LABEL_23:
    v18 = 4294966295;
    goto LABEL_24;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v8 = sub_56AD0(0x10u);
    v9 = sub_66A18();
    v10 = sub_56B04(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s state %d\n", v9, 16, v10, "AVE_Session_MCTF_Start", a1[5].i32[0]);
      v9 = sub_66A18();
      v10 = sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s state %d", v9, 16, v10, "AVE_Session_MCTF_Start", a1[5].i32[0]);
  }

  if (a1[5].i32[0] == 1)
  {
    v23 = sub_4C960();
    if ((*(v23 + 412) & 2) != 0)
    {
      v24 = &a1[10899];
      v25 = sub_41844(&a1[10899], a2);
      if (v25)
      {
        v26 = v25;
        *v24 = 0;
        if (sub_56A8C(0x10u, 5))
        {
          v27 = sub_56AD0(0x10u);
          v28 = sub_66A18();
          v29 = sub_56B04(5);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d AVE_MCTF_Dump_CreateOutputFile failed %p %p %d\n", v28, 16, v29, "AVE_Session_MCTF_Start", 336, *v24, a2, v26);
            v28 = sub_66A18();
            sub_56B04(5);
            v30 = *v24;
          }

          syslog(3, "%lld %d AVE %s: %s:%d AVE_MCTF_Dump_CreateOutputFile failed %p %p %d", v28, 16);
        }
      }
    }

    v35 = *a2;
    v36 = a2[1];
    a1[174].i32[0] = *a2;
    a1[174].i32[1] = v36;
    v37 = sub_48670(a1[4].i32[0], 3, 2, v35, v36, 1);
    if (v37)
    {
      v38 = v37;
      if (sub_56A8C(0x10u, 4))
      {
        v39 = sub_56AD0(0x10u);
        v40 = sub_66A18();
        v41 = sub_56B04(4);
        v42 = a1[174].u32[1];
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | dimensions not supported %p %p (%dx%d) %d\n", v40, 16, v41, "AVE_Session_MCTF_Start", 350, "ret == 0", a1, a2, a1[174].i32[0], a1[174].i32[1], v38);
          v40 = sub_66A18();
          v41 = sub_56B04(4);
          v43 = a1[174].u32[0];
        }

        v80 = a1[174].u32[1];
        syslog(3, "%lld %d AVE %s: %s:%d %s | dimensions not supported %p %p (%dx%d) %d", v40, 16, v41, "AVE_Session_MCTF_Start");
      }

      v18 = 4294965295;
    }

    else
    {
      v44 = sub_48758(a1[4].i32[0], 3, 2);
      v45 = a1[174];
      a1[10894] = vmax_u32(v45, *v44);
      v46 = vshr_n_u32(vadd_s32(v45, 0x1F0000001FLL), 5uLL);
      v47 = vmul_lane_s32(v46, v46, 1).u32[0];
      if (v47 >> 5 < 0xFF)
      {
        if (v47 <= 0x7F7)
        {
          v48 = &unk_B1D00;
        }

        else
        {
          v48 = &unk_B1D10;
        }
      }

      else
      {
        v48 = &unk_B1D20;
      }

      memset_pattern16(&a1[1312], v48, 8uLL);
      if (sub_56A8C(0x10u, 8))
      {
        v50 = sub_56AD0(0x10u);
        v51 = sub_66A18();
        v52 = sub_56B04(8);
        v53 = a1[1312].u32[0];
        if (v50)
        {
          printf("%lld %d AVE %s: %s:%d %p %lld Default FilterStrength %d, %d\n", v51, 16, v52, "AVE_Session_MCTF_Start", 384, a1, *&a1[3], a1[1312].i32[0], a1[1312].i32[1]);
          v51 = sub_66A18();
          sub_56B04(8);
          v54 = a1[3];
          v72 = a1[1312].u32[0];
          v76 = a1[1312].u32[1];
        }

        else
        {
          v73 = a1[1312].u32[0];
        }

        syslog(3, "%lld %d AVE %s: %s:%d %p %lld Default FilterStrength %d, %d", v51, 16);
      }

      a1[1313].i32[0] = 2;
      a1[168] = 0xFFFFFFFF00000001;
      a1[80].i32[0] |= 0x200u;
      a1[10989] = 0x100000001;
      sub_4458C(a1);
      if ((*(v23 + 35) & 4) != 0)
      {
        a1[1313].i32[0] = 1;
      }

      v55 = *(v23 + 272);
      if ((v55 & 0x80000000) == 0)
      {
        a1[168].i32[0] = v55;
      }

      v56 = *(v23 + 273);
      if ((v56 & 0x80000000) == 0)
      {
        a1[168].i32[1] = v56;
      }

      a1[80].i32[0] = (a1[80].i32[0] | *(v23 + 16) & 0x200) & (~*(v23 + 34) | 0xFFFFFDFF);
      v57 = *(v23 + 20);
      if (v57 >= -1)
      {
        a1[80].i32[1] = v57;
      }

      v58 = sub_507A8(a1[4].u32[0], a1[2].u32[0], a1[83].u32[1], 2, *a2, a2[1], a1[10894].u32[0], a1[10894].u32[1], 0x414C4C20u);
      if (v58)
      {
        v18 = v58;
        if (sub_56A8C(0x10u, 4))
        {
          v59 = sub_56AD0(0x10u);
          v60 = sub_66A18();
          v61 = sub_56B04(4);
          if (v59)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create input pixel buffer attribute %d %d 0x%x %d %dx%d %dx%d 0x%x %d\n", v60, 16, v61, "AVE_Session_MCTF_Start", 437, "ret == 0", a1[4].i32[0], a1[2].i32[0], a1[83].i32[1], 2, *a2, a2[1], a1[10894].i32[0], a1[10894].i32[1], 1095519264, v18);
            v60 = sub_66A18();
            v61 = sub_56B04(4);
            v62 = a1[4].u32[0];
            v85 = a1[10894].u32[0];
            v86 = a1[10894].u32[1];
            v83 = *a2;
            v84 = a2[1];
            v77 = a1[83].u32[1];
            v74 = a1[2].u32[0];
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create input pixel buffer attribute %d %d 0x%x %d %dx%d %dx%d 0x%x %d", v60, 16, v61, "AVE_Session_MCTF_Start", 437);
        }
      }

      else
      {
        v63 = a1[6];
        if (v63)
        {
          CFRelease(v63);
          a1[6] = 0;
        }

        a1[6] = CFRetain(0);
        v64 = a1[1];
        v18 = VTTemporalFilterPluginSessionSetInputPixelBufferAttributes();
        if (v18)
        {
          if (sub_56A8C(0x10u, 4))
          {
            v65 = sub_56AD0(0x10u);
            v66 = sub_66A18();
            v67 = sub_56B04(4);
            v68 = a1[6];
            if (v65)
            {
              printf("%lld %d AVE %s: %s:%d %s | Fail to set MCTF InputPixelBufferAttributes, %p %lld %p %p %d\n", v66, 16, v67, "AVE_Session_MCTF_Start", 450, "err == noErr", a1, *&a1[3], *&a1[1], *&a1[6], v18);
              v66 = sub_66A18();
              v67 = sub_56B04(4);
              v69 = a1[3];
              v81 = a1[6];
              v78 = a1[1];
            }

            else
            {
              v82 = a1[6];
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Fail to set MCTF InputPixelBufferAttributes, %p %lld %p %p %d", v66, 16, v67, "AVE_Session_MCTF_Start", 450);
          }

          v18 = 4294966296;
        }

        else
        {
          a1[10892].i32[0] = 0;
          a1[10991] = 0;
          a1[10992].i32[1] = 0;
          a1[5].i32[0] = 2;
        }
      }
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 5))
    {
      v31 = sub_56AD0(0x10u);
      v32 = sub_66A18();
      v33 = sub_56B04(5);
      if (v31)
      {
        printf("%lld %d AVE %s: %s:%d wrong state %p %d\n", v32, 16, v33, "AVE_Session_MCTF_Start", 321, a1, a1[5].i32[0]);
        v32 = sub_66A18();
        sub_56B04(5);
        v34 = a1[5].u32[0];
      }

      syslog(3, "%lld %d AVE %s: %s:%d wrong state %p %d", v32);
    }

    v18 = 4294966285;
  }

  if (v18)
  {
    v49 = a1[10899];
    if (v49)
    {
      sub_41C70(v49);
      a1[10899] = 0;
    }
  }

LABEL_24:
  if (sub_56A8C(0x10u, 6))
  {
    v19 = sub_56AD0(0x10u);
    v20 = sub_66A18();
    v21 = sub_56B04(6);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v20, 16, v21, "AVE_Session_MCTF_Start", a1, a2, v18);
      v20 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v20);
  }

  return v18;
}

uint64_t sub_25B38(uint64_t a1)
{
  v20 = 0;
  if (sub_56A8C(0x10u, 6))
  {
    v2 = sub_56AD0(0x10u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 16, v4, "AVE_Session_MCTF_Stop", a1);
      v5 = sub_66A18();
      v18 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 16, v18, "AVE_Session_MCTF_Stop", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 16, v4, "AVE_Session_MCTF_Stop", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      if (v6 == 2 && sub_3EF90(*(a1 + 64), &v20))
      {
        if (sub_56A8C(0x10u, 4))
        {
          v7 = sub_56AD0(0x10u);
          v8 = sub_66A18();
          v9 = sub_56B04(4);
          if (v7)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Complete %s:%d failed.\n", v8, 16, v9, "AVE_Session_MCTF_Stop", 513, "res == noErr", "AVE_Session_MCTF_Stop", 513);
            v8 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Complete %s:%d failed.", v8, 16);
        }

        v6 = 4294966296;
      }

      else
      {
        v6 = 0;
        *(a1 + 40) = 1;
        *(a1 + 87920) = 0;
      }
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v10 = sub_56AD0(0x10u);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d\n", v11, 16, v12, "AVE_Session_MCTF_Stop", 498, "pMCTF != __null", 0, 0);
        v11 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d", v11, 16);
    }

    v6 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v13 = sub_56AD0(0x10u);
    v14 = sub_66A18();
    v15 = sub_56B04(6);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v14, 16, v15, "AVE_Session_MCTF_Stop", a1, v6);
      v16 = sub_66A18();
      v19 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v16, 16, v19, "AVE_Session_MCTF_Stop", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v14, 16, v15, "AVE_Session_MCTF_Stop", a1, v6);
    }
  }

  return v6;
}

uint64_t sub_25E98()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  buffer = v5;
  v174 = 0;
  v10 = v0 + 86016;
  v173 = 0;
  v172 = 0;
  pixelBuffer = 0;
  v170 = 0;
  memset(v169, 0, sizeof(v169));
  v11 = *(v0 + 87136);
  v12 = *(v0 + 10508);
  if (sub_56A8C(0x10u, 8))
  {
    v13 = sub_56AD0(0x10u);
    v14 = sub_66A18();
    v15 = sub_56B04(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p\n", v14, 16, v15, "AVE_Session_MCTF_Process", v9, v8, v6, v4, v2);
      v16 = sub_66A18();
      v129 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v16, 16, v129);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v14, 16, v15);
    }
  }

  v17 = buffer;
  if (v4 && v8 && buffer)
  {
    if (*(v9 + 40) != 2)
    {
      if (sub_56A8C(0x10u, 5))
      {
        v34 = sub_56AD0(0x10u);
        v35 = sub_66A18();
        v36 = sub_56B04(5);
        if (v34)
        {
          printf("%lld %d AVE %s: %s:%d wrong state %p %d\n", v35, 16, v36, "AVE_Session_MCTF_Process", 636, v9, *(v9 + 40));
          v35 = sub_66A18();
          sub_56B04(5);
          v37 = *(v9 + 40);
        }

        syslog(3, "%lld %d AVE %s: %s:%d wrong state %p %d", v35);
      }

      v38 = 4294966285;
      goto LABEL_92;
    }

    if (!*(v10 + 1120))
    {
      v18 = sub_4C960();
      *&v177[0] = *(v9 + 1392);
      PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
      v20 = sub_5D820(PixelFormatType);
      if (!v20)
      {
        if (sub_56A8C(3u, 4))
        {
          v68 = sub_56AD0(3u);
          v69 = sub_66A18();
          v70 = sub_56B04(4);
          v71 = *(v9 + 24);
          v72 = CVPixelBufferGetPixelFormatType(buffer);
          if (v68)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v69, 3, v70, "AVE_Session_MCTF_Process", 651, "pPixelFmt != __null", v9, v71, v72);
            v69 = sub_66A18();
            v70 = sub_56B04(4);
            v73 = v2;
            v74 = *(v9 + 24);
            CVPixelBufferGetPixelFormatType(buffer);
            v2 = v73;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v69, 3, v70);
        }

        v38 = 4294966288;
        goto LABEL_92;
      }

      if (v18[420])
      {
        v21 = v18 + 420;
      }

      else
      {
        v21 = 0;
      }

      sub_1E094(*(v9 + 104), v21, *(v9 + 16), 4, *(v18 + 103), *(v18 + 104), v177, 1, *(v20 + 3), *(v20 + 1), 0);
      v17 = buffer;
    }

    sub_1E7AC(*(v9 + 104), 0, v17);
    if ((*(v10 + 1904) & 1) == 0)
    {
      v39 = sub_44184(v9, &buffer, &v174, &v173, &v172 + 1, &v172, 1);
      if (v39)
      {
        v40 = v39;
        if (sub_56A8C(0x10u, 4))
        {
          v41 = sub_56AD0(0x10u);
          v42 = sub_66A18();
          v43 = sub_56B04(4);
          v44 = *(v9 + 8);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_VerifyImageBuffer failed, ret = %d, pMCTF = %p, %p, %lld\n", v42, 16, v43, "AVE_Session_MCTF_Process", 682, "ret == noErr", v40, v9, *(v9 + 8), *(v9 + 24));
            v42 = sub_66A18();
            v43 = sub_56B04(4);
            v45 = *(v9 + 8);
          }

          v141 = *(v9 + 8);
          v152 = *(v9 + 24);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_VerifyImageBuffer failed, ret = %d, pMCTF = %p, %p, %lld", v42, 16, v43, "AVE_Session_MCTF_Process");
        }

        goto LABEL_91;
      }

      bzero(&v177[1] + 8, 0x1080uLL);
      *&v177[0] = v9 + 624;
      *(&v177[0] + 1) = v9 + 1392;
      v60 = *(v9 + 104);
      *&v177[1] = v9 + 10704;
      *&v177[2] = v60;
      memcpy(v178, (v9 + 87200), sizeof(v178));
      v180 = v9 + 11952;
      v181 = v9 + 24188;
      v182 = v9 + 31992;
      v183 = v9 + 41624;
      v184 = v9 + 63112;
      v61 = sub_3C464(*(v9 + 64), v177, v9 + 72, 1, 0, 0, 0, v9 + 112, (v9 + 11724), 0);
      if (v61)
      {
        v62 = v61;
        if (sub_56A8C(0x10u, 4))
        {
          v63 = sub_56AD0(0x10u);
          v64 = sub_66A18();
          v65 = sub_56B04(4);
          v66 = *(v9 + 8);
          if (v63)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Start failed, res = %d, pMCTF = %p, %p, %lld\n", v64, 16, v65, "AVE_Session_MCTF_Process", 703, "res == noErr", v62, v9, *(v9 + 8), *(v9 + 24));
            v64 = sub_66A18();
            v65 = sub_56B04(4);
            v67 = *(v9 + 8);
          }

          v143 = *(v9 + 8);
          v153 = *(v9 + 24);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Start failed, res = %d, pMCTF = %p, %p, %lld", v64, 16, v65, "AVE_Session_MCTF_Process");
        }

        goto LABEL_91;
      }

      *(v10 + 1904) = 1;
    }

    if (!*(v9 + 56))
    {
      v46 = CVPixelBufferGetPixelFormatType(buffer);
      v47 = sub_5D820(v46);
      if (*(v47 + 6) != 3)
      {
        memset(&v177[1], 0, 28);
        v177[0] = 0u;
        v48 = *(v47 + 28);
        v49 = *v47;
        v177[1] = *(v47 + 1);
        *(&v177[1] + 12) = v48;
        v177[0] = v49;
        DWORD2(v177[1]) = 3;
        v50 = sub_5D858(v177);
        if (!v50)
        {
          if (sub_56A8C(0x10u, 4))
          {
            v99 = sub_56AD0(0x10u);
            v100 = sub_66A18();
            v101 = sub_56B04(4);
            if (v99)
            {
              printf("%lld %d AVE %s: %s:%d %s | Find output pixel format failed, %p %p %lld %d %d %d %d %d %d %d\n", v100, 16, v101, "AVE_Session_MCTF_Process", 725, "inputFormat != 0", v9, *(v9 + 8), *(v9 + 24), LODWORD(v177[2]), DWORD2(v177[1]), HIDWORD(v177[0]), DWORD1(v177[0]), DWORD2(v177[0]), LODWORD(v177[1]), DWORD1(v177[1]));
              v100 = sub_66A18();
              v101 = sub_56B04(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Find output pixel format failed, %p %p %lld %d %d %d %d %d %d %d", v100, 16, v101, "AVE_Session_MCTF_Process", 725, "inputFormat != 0", v9, *(v9 + 8), *(v9 + 24), LODWORD(v177[2]), DWORD2(v177[1]), HIDWORD(v177[0]), DWORD1(v177[0]), DWORD2(v177[0]), LODWORD(v177[1]), DWORD1(v177[1]));
          }

          goto LABEL_91;
        }

        v46 = v50;
      }

      v51 = sub_4394C(v9, v46);
      if (v51)
      {
        v52 = v51;
        if (sub_56A8C(0x10u, 4))
        {
          v53 = sub_56AD0(0x10u);
          v54 = sub_66A18();
          v55 = sub_56B04(4);
          if (v53)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_Session_MCTF_BuildDestPixelBufAttributes failed, %p %p %lld 0x%x %d\n", v54, 16, v55, "AVE_Session_MCTF_Process", 731, "ret == 0", v9, *(v9 + 8), *(v9 + 24), v46, v52);
            v54 = sub_66A18();
            v55 = sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_Session_MCTF_BuildDestPixelBufAttributes failed, %p %p %lld 0x%x %d", v54, 16, v55, "AVE_Session_MCTF_Process", 731, "ret == 0", v9, *(v9 + 8), *(v9 + 24), v46, v52);
        }

        goto LABEL_91;
      }
    }

    v22 = *(v9 + 8);
    OutputPixelBuffer = VTTemporalFilterPluginSessionCreateOutputPixelBuffer();
    if (OutputPixelBuffer || !pixelBuffer)
    {
      if (sub_56A8C(0x10u, 4))
      {
        v56 = sub_56AD0(0x10u);
        v57 = sub_66A18();
        v58 = sub_56B04(4);
        if (v56)
        {
          printf("%lld %d AVE %s: %s:%d %s | VTTemporalFilterPluginSessionCreateOutputPixelBuffer failed, pMCTF = %p, %p, %lld, %d, %p\n", v57, 16, v58, "AVE_Session_MCTF_Process", 740, "res == noErr && pOutBuf!= __null", v9, *(v9 + 8), *(v9 + 24), OutputPixelBuffer, pixelBuffer);
          v57 = sub_66A18();
          v58 = sub_56B04(4);
          v59 = *(v9 + 8);
        }

        v136 = *(v9 + 8);
        v142 = *(v9 + 24);
        syslog(3, "%lld %d AVE %s: %s:%d %s | VTTemporalFilterPluginSessionCreateOutputPixelBuffer failed, pMCTF = %p, %p, %lld, %d, %p", v57, 16, v58, "AVE_Session_MCTF_Process", 740);
      }

      goto LABEL_91;
    }

    if (sub_56A8C(0x10u, 8))
    {
      v24 = sub_56AD0(0x10u);
      v157 = sub_66A18();
      v25 = sub_56B04(8);
      v26 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v27 = *(v9 + 8);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d: pOutBuf = %p, CMPixelFormatType = %d, pMCTF = %p, %p, %lld\n", v157, 16, v25, "AVE_Session_MCTF_Process", 743, pixelBuffer, v26, v9, *(v9 + 8), *(v9 + 24));
        v28 = sub_66A18();
        v29 = sub_56B04(8);
        CVPixelBufferGetPixelFormatType(pixelBuffer);
        v140 = *(v9 + 8);
        v151 = *(v9 + 24);
        syslog(3, "%lld %d AVE %s: %s:%d: pOutBuf = %p, CMPixelFormatType = %d, pMCTF = %p, %p, %lld", v28, 16, v29, "AVE_Session_MCTF_Process");
      }

      else
      {
        v144 = *(v9 + 8);
        syslog(3, "%lld %d AVE %s: %s:%d: pOutBuf = %p, CMPixelFormatType = %d, pMCTF = %p, %p, %lld", v157, 16, v25, "AVE_Session_MCTF_Process");
      }
    }

    if (*(v9 + 656))
    {
      sub_53078(pixelBuffer, 0);
    }

    v75 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
    if (v75)
    {
      v76 = v75;
      CVBufferSetAttachments(pixelBuffer, v75, kCVAttachmentMode_ShouldPropagate);
      if ((*(v9 + 1403) & 2) != 0)
      {
        sub_539B4(buffer, v169);
      }

      CFRelease(v76);
    }

    v77 = sub_44184(v9, &buffer, &v174, &v173, &v172 + 1, &v172, 0);
    if (v77)
    {
      v78 = v77;
      if (sub_56A8C(0x10u, 4))
      {
        v79 = sub_56AD0(0x10u);
        v80 = sub_66A18();
        v81 = sub_56B04(4);
        v82 = *(v9 + 8);
        if (v79)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_Session_MCTF_VerifyImageBuffer failed, ret = %d, pMCTF = %p, %p, %lld\n", v80, 16, v81, "AVE_Session_MCTF_Process", 774, "ret == noErr", v78, v9, *(v9 + 8), *(v9 + 24));
          v80 = sub_66A18();
          v81 = sub_56B04(4);
          v83 = *(v9 + 8);
        }

        v145 = *(v9 + 8);
        v154 = *(v9 + 24);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_Session_MCTF_VerifyImageBuffer failed, ret = %d, pMCTF = %p, %p, %lld", v80, 16, v81, "AVE_Session_MCTF_Process");
      }

LABEL_91:
      v38 = 4294966296;
      goto LABEL_92;
    }

    bzero(v176, 0x1738uLL);
    v167 = 0u;
    v168 = 0u;
    v166 = 0u;
    memset(v165, 0, sizeof(v165));
    v163 = 0u;
    v164 = 0u;
    v162 = 0u;
    memset(v158, 0, sizeof(v158));
    v159 = 0;
    bzero(v177, 0x4A40uLL);
    v160 = v8;
    v161 = buffer;
    v84 = pixelBuffer;
    v85 = *(v10 + 1912);
    *(&v162 + 1) = pixelBuffer;
    *(&v163 + 1) = v85;
    *&v166 = v177;
    *(&v166 + 1) = v176;
    if ((*(v9 + 641) & 2) == 0)
    {
      *(v10 + 1912) = pixelBuffer;
      CVPixelBufferRetain(v84);
    }

    *(v165 + 8) = *v4;
    v86 = v4[2];
    *(&v165[3] + 8) = *(v9 + 87176);
    *(&v165[1] + 1) = v86;
    *(&v165[4] + 1) = v158;
    sub_44808(v9, v2, v176, v177);
    v179[0] = -1;
    if ((*(v9 + 1403) & 2) != 0)
    {
      v87 = sub_1C9B8(v169, *(v9 + 36), 1u, (v9 + 87940), v179);
      if (v87)
      {
        v38 = v87;
        if (!sub_56A8C(0x10u, 4))
        {
LABEL_92:
          sub_2738C(*(v9 + 8), v8, v38, v4);
          if (pixelBuffer)
          {
            CVPixelBufferRelease(pixelBuffer);
            pixelBuffer = 0;
          }

          v102 = *(v9 + 8);
          VTTemporalFilterPluginSessionCleanUpAfterProcessing();
          goto LABEL_95;
        }

        v88 = sub_56AD0(0x10u);
        v89 = sub_66A18();
        v90 = sub_56B04(4);
        v91 = *(v9 + 24);
        if (v88)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_MCTF_AdjustStrength failed %p %p %d %d\n", v89, 16, v90, "AVE_Session_MCTF_Process", 828, "ret == 0", v9, *(v9 + 8), *(v9 + 24), v38);
          v92 = sub_66A18();
          v93 = sub_56B04(4);
          v94 = *(v9 + 8);
          v146 = *(v9 + 24);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_MCTF_AdjustStrength failed %p %p %d %d", v92, 16, v93);
          goto LABEL_92;
        }

        v139 = *(v9 + 24);
        v150 = v38;
        v135 = v9;
        v138 = *(v9 + 8);
        v133 = 828;
        v134 = "ret == 0";
        v132 = v90;
        v128 = "%lld %d AVE %s: %s:%d %s | AVE_MCTF_AdjustStrength failed %p %p %d %d";
LABEL_122:
        syslog(3, v128, v89, 16, v132, "AVE_Session_MCTF_Process", v133, v134, v135, v138, v139, v150);
        goto LABEL_92;
      }
    }

    if (sub_56A8C(0x10u, 8))
    {
      v95 = sub_56AD0(0x10u);
      v96 = sub_66A18();
      v97 = sub_56B04(8);
      if (v95)
      {
        printf("%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx %d\n", v96, 16, v97, "AVE_Session_MCTF_Process", 832, v9, *(v9 + 24), v179[0], *(v10 + 1924));
        v96 = sub_66A18();
        sub_56B04(8);
        v98 = *(v9 + 24);
        v147 = *(v10 + 1924);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx %d", v96, 16);
    }

    v108 = *(v10 + 1120);
    *(v10 + 1120) = v108 + 1;
    DWORD2(v168) = v108;
    HIDWORD(v168) = v11 % v12;
    if (v173)
    {
      v109 = buffer;
    }

    else
    {
      v109 = 0;
    }

    *(&v164 + 1) = v109;
    if (sub_56A8C(0x10u, 8))
    {
      v110 = sub_56AD0(0x10u);
      v111 = sub_66A18();
      v112 = sub_56B04(8);
      v113 = DWORD2(v168);
      v114 = CVPixelBufferGetPixelFormatType(v161);
      v115 = *(v9 + 8);
      if (v110)
      {
        printf("%lld %d AVE %s: %s:%d: input frameNumber = %d, CMPixelFormatType = %d, pMCTF = %p, %p, %lld\n", v111, 16, v112, "AVE_Session_MCTF_Process", 852, v113, v114, v9, *(v9 + 8), *(v9 + 24));
        v111 = sub_66A18();
        v112 = sub_56B04(8);
        CVPixelBufferGetPixelFormatType(v161);
        v116 = *(v9 + 8);
        v155 = *(v9 + 24);
      }

      else
      {
        v148 = *(v9 + 8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d: input frameNumber = %d, CMPixelFormatType = %d, pMCTF = %p, %p, %lld", v111, 16, v112, "AVE_Session_MCTF_Process");
    }

    v117 = sub_3F77C(*(v9 + 64), &v160);
    v38 = v117;
    if (v117)
    {
      if (v117 != -536870173)
      {
        if (sub_56A8C(0x10u, 4))
        {
          v123 = sub_56AD0(0x10u);
          v124 = sub_66A18();
          v125 = sub_56B04(4);
          v126 = *(v9 + 8);
          if (v123)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Process failed, ret = %d, pMCTF = %p, %p, %lld\n", v124, 16, v125, "AVE_Session_MCTF_Process", 865, "ret == noErr", v38, v9, *(v9 + 8), *(v9 + 24));
            v124 = sub_66A18();
            v125 = sub_56B04(4);
            v127 = *(v9 + 8);
          }

          v149 = *(v9 + 8);
          v156 = *(v9 + 24);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Process failed, ret = %d, pMCTF = %p, %p, %lld", v124, 16, v125, "AVE_Session_MCTF_Process");
        }

        goto LABEL_91;
      }

      v38 = 3758097123;
      if (!sub_56A8C(0x10u, 5))
      {
        goto LABEL_92;
      }

      v118 = sub_56AD0(0x10u);
      v89 = sub_66A18();
      v119 = sub_56B04(5);
      v120 = *(v9 + 8);
      if (v118)
      {
        printf("%lld %d AVE %s: %s:%d: device returned kIOReturnNoPower, reject the frame, pMCTF = %p, %p, %lld\n", v89, 16, v119, "AVE_Session_MCTF_Process", 859, v9, *(v9 + 8), *(v9 + 24));
        v121 = sub_66A18();
        sub_56B04(5);
        v122 = *(v9 + 8);
        v137 = *(v9 + 24);
        syslog(3, "%lld %d AVE %s: %s:%d: device returned kIOReturnNoPower, reject the frame, pMCTF = %p, %p, %lld", v121, 16);
        goto LABEL_92;
      }

      v135 = *(v9 + 8);
      v138 = *(v9 + 24);
      v133 = 859;
      v134 = v9;
      v132 = v119;
      v128 = "%lld %d AVE %s: %s:%d: device returned kIOReturnNoPower, reject the frame, pMCTF = %p, %p, %lld";
      goto LABEL_122;
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v30 = sub_56AD0(0x10u);
      v31 = sub_66A18();
      v32 = sub_56B04(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %d\n", v31, 16, v32, "AVE_Session_MCTF_Process", 629, "pMCTF != __null && pID != __null && pPixelBuf != __null && pPTS != __null", v9, v8, buffer, v4, v2, 0);
        v33 = sub_66A18();
        v130 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %d", v33, 16, v130, "AVE_Session_MCTF_Process", 629, "pMCTF != __null && pID != __null && pPixelBuf != __null && pPTS != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %d", v31, 16, v32, "AVE_Session_MCTF_Process", 629, "pMCTF != __null && pID != __null && pPixelBuf != __null && pPTS != __null");
      }
    }

    v38 = 4294966295;
  }

LABEL_95:
  if (sub_56A8C(0x10u, 8))
  {
    v103 = sub_56AD0(0x10u);
    v104 = sub_66A18();
    v105 = sub_56B04(8);
    if (v103)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %d\n", v104, 16, v105, "AVE_Session_MCTF_Process", v9, v8, buffer, v4, v2, v38);
      v106 = sub_66A18();
      v131 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v106, 16, v131, "AVE_Session_MCTF_Process");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v104, 16, v105, "AVE_Session_MCTF_Process");
    }
  }

  return v38;
}

uint64_t sub_2738C(const void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = a4[2];
  if (sub_56A8C(0x10u, 8))
  {
    v9 = sub_56AD0(0x10u);
    v10 = sub_66A18();
    v11 = sub_56B04(8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d: pSession = %p, pID = %p, PTS.value = %lld\n", v10, 16, v11, "AVE_Session_MCTF_EmitAndConclude", 557, a1, a2, v6);
      v10 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d: pSession = %p, pID = %p, PTS.value = %lld", v10, 16);
  }

  v12 = VTTemporalFilterPluginSessionEmitOutputFrame();
  if (v12)
  {
    if (sub_56A8C(0x10u, 4))
    {
      v13 = sub_56AD0(0x10u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | VTTemporalFilterPluginSessionEmitOutputFrame failed, pSession = %p, err = %d\n", v14, 16, v15, "AVE_Session_MCTF_EmitAndConclude", 563, "err == noErr", a1, v12);
        v14 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | VTTemporalFilterPluginSessionEmitOutputFrame failed, pSession = %p, err = %d", v14, 16);
    }

    v12 = 4294966296;
  }

  VTTemporalFilterPluginSessionConcludeInputFrame();
  return v12;
}

uint64_t sub_275BC(uint64_t a1)
{
  v23 = 0;
  if (sub_56A8C(0x10u, 6))
  {
    v2 = sub_56AD0(0x10u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 16, v4, "AVE_Session_MCTF_Complete", a1);
      v5 = sub_66A18();
      v21 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 16, v21, "AVE_Session_MCTF_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 16, v4, "AVE_Session_MCTF_Complete", a1);
    }
  }

  if (a1)
  {
    if (sub_56A8C(0x10u, 6))
    {
      v6 = sub_56AD0(0x10u);
      v7 = sub_66A18();
      v8 = sub_56B04(6);
      if (v6)
      {
        printf("%lld %d AVE %s: %s state %d\n", v7, 16, v8, "AVE_Session_MCTF_Complete", *(a1 + 40));
        v7 = sub_66A18();
        v8 = sub_56B04(6);
      }

      syslog(3, "%lld %d AVE %s: %s state %d", v7, 16, v8, "AVE_Session_MCTF_Complete", *(a1 + 40));
    }

    if (*(a1 + 40) == 2 && *(a1 + 87920) == 1 && sub_3EF90(*(a1 + 64), &v23))
    {
      if (sub_56A8C(0x10u, 4))
      {
        v12 = sub_56AD0(0x10u);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Complete %s:%d failed.\n", v13, 16, v14, "AVE_Session_MCTF_Complete", 918, "res == noErr", "AVE_Session_MCTF_Complete", 918);
          v13 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Complete %s:%d failed.", v13, 16);
      }

      v15 = 4294966296;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v9 = sub_56AD0(0x10u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d\n", v10, 16, v11, "AVE_Session_MCTF_Complete", 904, "pMCTF != __null", 0, 0);
        v10 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d", v10, 16);
    }

    v15 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v16 = sub_56AD0(0x10u);
    v17 = sub_66A18();
    v18 = sub_56B04(6);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v17, 16, v18, "AVE_Session_MCTF_Complete", a1, v15);
      v19 = sub_66A18();
      v22 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v19, 16, v22, "AVE_Session_MCTF_Complete", a1, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v17, 16, v18, "AVE_Session_MCTF_Complete", a1, v15);
    }
  }

  return v15;
}

uint64_t sub_279B8(uint64_t a1, void *a2)
{
  if (sub_56A8C(0xDu, 8))
  {
    v4 = sub_56AD0(0xDu);
    v5 = sub_66A18();
    v6 = sub_56B04(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 13, v6, "AVE_Session_MCTF_GetPropertyDict", a1, a2);
      v7 = sub_66A18();
      v23 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 13, v23, "AVE_Session_MCTF_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 13, v6, "AVE_Session_MCTF_GetPropertyDict", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    v8 = *(a1 + 87144);
    if (v8)
    {
      v9 = CFGetRetainCount(*(a1 + 87144));
      if (v9 != 1 && sub_56A8C(0xDu, 5))
      {
        v10 = sub_56AD0(0xDu);
        v11 = sub_66A18();
        v12 = sub_56B04(5);
        v13 = *(a1 + 24);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d\n", v11, 13, v12, "AVE_Session_MCTF_GetPropertyDict", 959, a1, *(a1 + 24), v9);
          v11 = sub_66A18();
          sub_56B04(5);
          v14 = *(a1 + 24);
        }

        else
        {
          v24 = *(a1 + 24);
        }

        syslog(3, "%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d", v11, 13);
      }

      CFRetain(v8);
      v18 = 0;
    }

    else
    {
      v18 = 4294966288;
    }

    *a2 = v8;
  }

  else
  {
    if (sub_56A8C(0xDu, 4))
    {
      v15 = sub_56AD0(0xDu);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v16, 13, v17, "AVE_Session_MCTF_GetPropertyDict", 946, "pMCTF != __null && ppDict != __null", a1, a2);
        v16 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v16, 13);
    }

    v18 = 4294966295;
  }

  if (sub_56A8C(0xDu, 8))
  {
    v19 = sub_56AD0(0xDu);
    v20 = sub_66A18();
    v21 = sub_56B04(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v20, 13, v21, "AVE_Session_MCTF_GetPropertyDict", a1, a2, v18);
      v20 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v20);
  }

  return v18;
}

uint64_t sub_27D30(const void *a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (sub_56A8C(0x10u, 6))
  {
    v8 = sub_56AD0(0x10u);
    v9 = sub_66A18();
    v10 = sub_56B04(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 16, v10, "AVE_Session_MCTF_GetProperty", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v9, 16);
  }

  if (a1 && a3 && a4)
  {
    v11 = sub_1BDCC(a1, a2, a3, a4);
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v12 = sub_56AD0(0x10u);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %d\n", v13, 16, v14, "AVE_Session_MCTF_GetProperty", 995, "pMCTF != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, 0);
        v15 = sub_66A18();
        v21 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %d", v15, 16, v21, "AVE_Session_MCTF_GetProperty", 995);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %d", v13, 16, v14, "AVE_Session_MCTF_GetProperty", 995);
      }
    }

    v11 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v16 = sub_56AD0(0x10u);
    v17 = sub_66A18();
    v18 = sub_56B04(6);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v17, 16, v18, "AVE_Session_MCTF_GetProperty", a1, a2, a3, a4, v11);
      v19 = sub_66A18();
      v22 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v19, 16, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v17, 16, v18);
    }
  }

  return v11;
}

uint64_t sub_28000(const void *a1, const __CFString *a2, const void *a3)
{
  if (sub_56A8C(0x10u, 6))
  {
    v6 = sub_56AD0(0x10u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 16, v8, "AVE_Session_MCTF_SetProperty", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    v9 = sub_1BC4C(a1, a2, a3);
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v10 = sub_56AD0(0x10u);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", v11, 16, v12, "AVE_Session_MCTF_SetProperty", 1027, "pMCTF != __null && pKey != __null && pValue != __null", a1, a2, a3, 0);
        v13 = sub_66A18();
        v18 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v13, 16, v18, "AVE_Session_MCTF_SetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v11, 16, v12, "AVE_Session_MCTF_SetProperty");
      }
    }

    v9 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v14 = sub_56AD0(0x10u);
    v15 = sub_66A18();
    v16 = sub_56B04(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 16, v16, "AVE_Session_MCTF_SetProperty", a1, a2, a3, v9);
      v15 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 16);
  }

  return v9;
}

int *sub_282B0(int *result, int a2)
{
  if (result)
  {
    v3 = *result++;
    v2 = v3;
    if (v3 < 1)
    {
      return 0;
    }

    else
    {
      while (*result != a2)
      {
        result += 24;
        if (!--v2)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_282E0(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      result += 12 * a2 + 12;
    }
  }

  return result;
}

uint64_t sub_28300(uint64_t result, int a2, _DWORD *a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 8) <= a2)
    {
      return 4294966296;
    }

    else
    {
      result = 0;
      *a3 = *(v3 + 12 * a2 + 20);
    }
  }

  return result;
}

uint64_t sub_28334(char *a1, _DWORD *a2)
{
  v2 = 4294966295;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a2 + 1;
    v6 = a2 + 4;
    do
    {
      v7 = 0;
      v5[24 * v4 + 1] = 1;
      do
      {
        *&v6[v7] = -NAN;
        v7 += 3;
      }

      while (v7 != 21);
      ++v4;
      v6 += 24;
    }

    while (v4 != 5);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v2 = 0;
    v11 = 1;
    v12 = -1;
    v13 = 0x7FFFFFFF;
    while (1)
    {
      while (1)
      {
        v14 = *a1;
        if (v14 <= 0x54)
        {
          break;
        }

        if (*a1 <= 0x6Bu)
        {
          if (v14 == 85)
          {
            goto LABEL_29;
          }

          if (v14 == 99)
          {
LABEL_31:
            v12 = 0;
            goto LABEL_38;
          }

          if (v14 != 105)
          {
            goto LABEL_36;
          }

LABEL_26:
          ++a1;
          v12 = 1;
        }

        else if (*a1 > 0x73u)
        {
          if (v14 == 116)
          {
            goto LABEL_32;
          }

          if (v14 != 117)
          {
            goto LABEL_36;
          }

LABEL_29:
          ++a1;
          v12 = 4;
        }

        else
        {
          if (v14 == 108)
          {
            goto LABEL_30;
          }

          if (v14 != 115)
          {
            goto LABEL_36;
          }

LABEL_33:
          ++a1;
          v12 = 5;
        }
      }

      if (*a1 > 0x4Bu)
      {
        switch(v14)
        {
          case 'L':
LABEL_30:
            ++a1;
            v12 = 3;
            break;
          case 'S':
            goto LABEL_33;
          case 'T':
LABEL_32:
            ++a1;
            v12 = 2;
            break;
          default:
            goto LABEL_36;
        }
      }

      else
      {
        if (*a1 > 0x42u)
        {
          if (v14 == 67)
          {
            goto LABEL_31;
          }

          if (v14 != 73)
          {
            goto LABEL_36;
          }

          goto LABEL_26;
        }

        if (v14 == 32)
        {
          goto LABEL_38;
        }

        if (!*a1)
        {
          return v2;
        }

LABEL_36:
        if (v14 - 48 < 0xA || (v14 & 0xFFFFFFDF) - 65 <= 0x19)
        {
          __endptr = 0;
          v15 = strtol(a1, &__endptr, 0);
          if (v12 > 2)
          {
            if (v12 == 3)
            {
              v10 = v15;
            }

            else if (v12 == 4)
            {
              v13 = v15;
            }

            else if (v9 > 4 || (v16 = &v5[24 * v9], v17 = v16[2], v17 > 6))
            {
              if (sub_56A8C(0x10u, 4))
              {
                v20 = sub_56AD0(0x10u);
                v21 = sub_66A18();
                v22 = sub_56B04(4);
                if (v20)
                {
                  if (v9 > 4)
                  {
                    v23 = -1;
                  }

                  else
                  {
                    v23 = v5[24 * v9 + 2];
                  }

                  printf("%lld %d AVE %s: %s:%d Invalid bounds %d %d\n", v21, 16, v22, "AVE_MCTF_SMap_Parse", 266, v9, v23);
                  v21 = sub_66A18();
                  v22 = sub_56B04(4);
                  if (v9 > 4)
                  {
                    v24 = -1;
                  }

                  else
                  {
                    v24 = v5[24 * v9 + 2];
                  }
                }

                else if (v9 > 4)
                {
                  v24 = -1;
                }

                else
                {
                  v24 = v5[24 * v9 + 2];
                }

                syslog(3, "%lld %d AVE %s: %s:%d Invalid bounds %d %d", v21, 16, v22, "AVE_MCTF_SMap_Parse", 266, v9, v24);
              }

              v2 = 4294966278;
            }

            else
            {
              *v16 = v8;
              v16[1] = v11;
              v18 = &v16[3 * v17];
              v18[3] = v10;
              v18[4] = v13;
              v18[5] = v15;
              v19 = v17 + 1;
              v16[2] = v19;
              if (*a2 <= v9)
              {
                *a2 = v9 + 1;
              }

              v10 = 0;
              if (v19 == 7)
              {
                v8 = 0;
                v11 = 1;
              }

              v13 = 0x7FFFFFFF;
            }
          }

          else if (v12)
          {
            if (v12 == 1)
            {
              if (v9 != v15)
              {
                v11 = 1;
                v10 = 0;
                v13 = 0x7FFFFFFF;
              }

              v9 = v15;
            }

            else if (v12 == 2)
            {
              v11 = v15;
            }
          }

          else
          {
            v8 = v15;
          }

          a1 = __endptr;
        }

        else
        {
LABEL_38:
          ++a1;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_286EC(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  v7 = a3;
  if (sub_56A8C(a2, a3))
  {
    v8 = *(a1 + 8);
    if (v8 >= 1)
    {
      v9 = 0;
      if (v8 >= 7)
      {
        v10 = 7;
      }

      else
      {
        v10 = v8;
      }

      v11 = (a1 + 12);
      do
      {
        if (sub_56A8C(a2, v7))
        {
          v12 = sub_56AD0(a2);
          if (a3 < 0)
          {
            if ((-a3 & 0x20) != 0)
            {
              v18 = 0;
            }

            else
            {
              v18 = v12;
            }

            v19 = v11[1];
            if (v18 == 1)
            {
              printf("\t[%p %s rI:%d/%d L:%d U:%d S:%d]\n", v11, a4, v9, *(a1 + 8), *v11, v11[1], v11[2]);
              v20 = *(a1 + 8);
              v24 = v11[1];
              v26 = v11[2];
            }

            else
            {
              v25 = v11[1];
              v28 = v11[2];
              v22 = *(a1 + 8);
            }

            v23 = *v11;
            syslog(3, "\t[%p %s rI:%d/%d L:%d U:%d S:%d]", v11);
          }

          else
          {
            v13 = v12 ^ 1;
            v14 = sub_66A18();
            v15 = sub_56B04(v7);
            v16 = v11[1];
            if ((v13 | ((a3 & 0x20) >> 5)))
            {
              v31 = v11[1];
              v33 = v11[2];
              v27 = *(a1 + 8);
            }

            else
            {
              printf("%lld %d AVE %s: \t[%p %s rI:%d/%d L:%d U:%d S:%d]\n", v14, a2, v15, v11, a4, v9, *(a1 + 8), *v11, v11[1], v11[2]);
              v14 = sub_66A18();
              sub_56B04(v7);
              v17 = *(a1 + 8);
              v30 = v11[1];
              v32 = v11[2];
            }

            v29 = *v11;
            syslog(3, "%lld %d AVE %s: \t[%p %s rI:%d/%d L:%d U:%d S:%d]", v14, a2);
          }
        }

        ++v9;
        v11 += 3;
      }

      while (v10 != v9);
    }
  }

  return 0;
}

uint64_t sub_288F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 137792;
  v5 = a1 + 25784;
  sub_3B3DC(a1 + 16);
  *(a1 + 29328) = *(a2 + 16);
  *(v5 + 3552) = *a2;
  *(a1 + 29352) = *(a2 + 32);
  *(a1 + 29312) = *(a2 + 72);
  *(v4 + 16) = *(a2 + 204);
  *(v4 + 12) = *(a2 + 200);
  *(v4 + 24) = *(a2 + 208);
  *a1 = 0;
  *(a1 + 8) = 0;
  *v4 = *(a2 + 216);
  v6 = *(a2 + 40);
  *(a1 + 29296) = *(a2 + 56);
  *(a1 + 29280) = v6;
  v7 = *(a2 + 80);
  if (v7)
  {
    memcpy((a1 + 29368), v7, 0x300uLL);
  }

  v8 = *(a2 + 88);
  if (v8)
  {
    memcpy((a1 + 30136), v8, 0x2460uLL);
  }

  memcpy((a1 + 39448), *(a2 + 96), 0x4E0uLL);
  v9 = *(a2 + 96);
  *(a1 + 40696) = *(a2 + 104);
  v10 = *(v9 + 20);
  if (v10 == 2)
  {
    v16 = *(a2 + 144);
    if (v16)
    {
      memcpy((a1 + 45152), v16, 0x2FCCuLL);
    }

    v17 = 0;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = *(a2 + 152 + 8 * v17);
      if (v20)
      {
        memcpy((a1 + 57388 + 7804 * v17), v20, 0x1E7CuLL);
      }

      v21 = *(a2 + 168 + 8 * v17);
      if (v21)
      {
        memcpy((a1 + 72996 + 9632 * v17), v21, 0x25A0uLL);
      }

      v18 = 0;
      v17 = 1;
    }

    while ((v19 & 1) != 0);
    v22 = *(a2 + 184);
    if (v22)
    {
      memcpy((a1 + 92264), v22, 0x53F0uLL);
    }

    v13 = *(a2 + 192);
    if (v13)
    {
      v14 = (a1 + 113752);
      v15 = 24024;
      goto LABEL_25;
    }
  }

  else if (v10 == 1)
  {
    v11 = *(a2 + 120);
    if (v11)
    {
      memcpy((a1 + 40712), v11, 0x6B4uLL);
    }

    v12 = *(a2 + 128);
    if (v12)
    {
      memcpy((a1 + 42428), v12, 0x180uLL);
    }

    v13 = *(a2 + 136);
    if (v13)
    {
      v14 = (a1 + 42812);
      v15 = 2340;
LABEL_25:
      memcpy(v14, v13, v15);
    }
  }

  else if (sub_56A8C(0x2Eu, 4))
  {
    if (sub_56AD0(0x2Eu))
    {
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      printf("%lld %d AVE %s: codectype not recognized! %d\n", v23, 46, v24, *(*(a2 + 96) + 20));
    }

    v25 = sub_66A18();
    v26 = sub_56B04(4);
    syslog(3, "%lld %d AVE %s: codectype not recognized! %d", v25, 46, v26, *(*(a2 + 96) + 20));
  }

  *(a1 + 29100) = 0;
  *(a1 + 29084) = 0u;
  *(a1 + 29112) = 0u;
  bzero((a1 + 28032), 0x418uLL);
  *(v5 + 3488) = -1;
  *(v5 + 3492) = 0;
  *(a1 + 29360) = 0;
  *v5 = 0;
  *(a1 + 143688) = 0;
  *(a1 + 25792) = 0u;
  *(a1 + 25808) = 0u;
  *(a1 + 25824) = 0u;
  *(a1 + 25840) = 0u;
  *(a1 + 25856) = 0u;
  *(a1 + 25872) = 0u;
  *(a1 + 25888) = 0u;
  *(a1 + 25904) = 0u;
  *(a1 + 25920) = 0u;
  *(a1 + 25936) = 0u;
  *(a1 + 25952) = 0u;
  *(a1 + 25968) = 0u;
  *(a1 + 25984) = 0u;
  *(a1 + 26000) = 0u;
  *(a1 + 26016) = 0u;
  *(a1 + 26032) = 0u;
  *(a1 + 26048) = 0u;
  *(a1 + 26064) = 0u;
  *(a1 + 26080) = 0u;
  *(a1 + 26096) = 0u;
  *(a1 + 26112) = 0u;
  *(a1 + 26128) = 0u;
  *(a1 + 26144) = 0u;
  *(a1 + 26160) = 0u;
  *(a1 + 26176) = 0u;
  *(a1 + 26192) = 0u;
  *(a1 + 26208) = 0u;
  *(a1 + 26224) = 0u;
  *(a1 + 26240) = 0u;
  *(a1 + 26256) = 0u;
  *(a1 + 26920) = 0u;
  *(a1 + 26936) = 0u;
  *(a1 + 26888) = 0u;
  *(a1 + 26904) = 0u;
  *(a1 + 26856) = 0u;
  *(a1 + 26872) = 0u;
  *(a1 + 26824) = 0u;
  *(a1 + 26840) = 0u;
  *(a1 + 26792) = 0u;
  *(a1 + 26808) = 0u;
  *(a1 + 26760) = 0u;
  *(a1 + 26776) = 0u;
  *(a1 + 26728) = 0u;
  *(a1 + 26744) = 0u;
  *(a1 + 26696) = 0u;
  *(a1 + 26712) = 0u;
  *(a1 + 26664) = 0u;
  *(a1 + 26680) = 0u;
  *(a1 + 26632) = 0u;
  *(a1 + 26648) = 0u;
  *(a1 + 26600) = 0u;
  *(a1 + 26616) = 0u;
  *(a1 + 26568) = 0u;
  *(a1 + 26584) = 0u;
  *(a1 + 26536) = 0u;
  *(a1 + 26552) = 0u;
  *(a1 + 26504) = 0u;
  *(a1 + 26520) = 0u;
  *(a1 + 26472) = 0u;
  *(a1 + 26488) = 0u;
  bzero((a1 + 27072), 0x3C0uLL);
  *(a1 + 143680) = 0;
  *(a1 + 143664) = 0u;
  *(a1 + 143696) = *(a2 + 232);
  return a1;
}

uint64_t sub_28D10(uint64_t a1)
{
  v2 = -240;
  do
  {
    v3 = a1 + v2;
    v4 = *(a1 + v2 + 26272);
    if (v4)
    {
      IOSurfaceUnlock(v4, 0, 0);
      CFRelease(*(v3 + 26272));
      *(v3 + 26272) = 0;
    }

    v5 = *(v3 + 26952);
    if (v5)
    {
      IOSurfaceUnlock(v5, 0, 0);
      CFRelease(*(v3 + 26952));
      *(v3 + 26952) = 0;
    }

    v6 = a1 + v2;
    v7 = *(a1 + v2 + 27552);
    if (v7)
    {
      IOSurfaceUnlock(v7, 0, 0);
      CFRelease(*(v6 + 27552));
      *(v6 + 27552) = 0;
    }

    v8 = *(v6 + 28032);
    if (v8)
    {
      IOSurfaceUnlock(v8, 0, 0);
      CFRelease(*(v6 + 28032));
      *(v6 + 28032) = 0;
    }

    v2 += 8;
  }

  while (v2);
  if (*(a1 + 29360))
  {
    FigFormatDescriptionRelease();
    *(a1 + 29360) = 0;
  }

  v9 = *(a1 + 29112);
  if (v9)
  {
    free(v9);
    *(a1 + 29112) = 0;
    *(a1 + 29120) = 0;
  }

  sub_3B5C0((a1 + 25448));
  sub_3B5C0((a1 + 25400));
  v10 = *(a1 + 25368);
  if (v10)
  {
    *(a1 + 25376) = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_28E2C(uint64_t a1, const void *a2, char *a3, unsigned int *a4, unsigned int *a5)
{
  v150[0] = 0;
  v148 = 0;
  v149 = 0;
  if (sub_56A8C(0x2Eu, 7))
  {
    v9 = sub_56AD0(0x2Eu);
    v10 = sub_66A18();
    v11 = sub_56B04(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %p %p %p\n", v10, 46, v11, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5);
      v12 = sub_66A18();
      v118 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", v12, 46, v118);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", v10, 46, v11);
    }
  }

  if (a5 && *a5)
  {
    v143 = a1 + 39252;
    if (sub_56A8C(0x2Eu, 8))
    {
      v13 = sub_56AD0(0x2Eu);
      v14 = sub_66A18();
      v15 = sub_56B04(8);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d\n", v14, 46, v15, "AVE_FrameRecv", "CreateVideoFormatDesc", 244, *a5);
        v14 = sub_66A18();
        sub_56B04(8);
        v16 = *a5;
      }

      else
      {
        v124 = *a5;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d", v14);
    }

    v145 = a2;
    v141 = (a1 + 30136);
    v142 = a1;
    v147 = a5;
    if (*a5 >= 1)
    {
      v27 = 0;
      v28 = (a5 + 4);
      do
      {
        if (sub_56A8C(0x2Eu, 8))
        {
          v29 = sub_56AD0(0x2Eu);
          v30 = sub_66A18();
          v31 = sub_56B04(8);
          v32 = *(v28 - 3);
          v33 = *(v28 - 2);
          v34 = *(v28 - 1);
          v35 = *v28;
          if (v29)
          {
            printf("%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d\n", v30, 46, v31, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v27, v32, v33, *(v28 - 1), v35);
            v30 = sub_66A18();
            v31 = sub_56B04(8);
            v32 = *(v28 - 3);
            v33 = *(v28 - 2);
            v34 = *(v28 - 1);
            v35 = *v28;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d", v30, 46, v31, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v27, v32, v33, v34, v35);
          a5 = v147;
        }

        ++v27;
        v28 += 4;
      }

      while (v27 < *a5);
    }

    v36 = (a1 + 39448);
    v37 = *(a1 + 39468);
    if (v37 == 1)
    {
      v46 = (a1 + 40712);
      v21 = sub_602A4(0, a3, a5, (a1 + 40712), &v149);
      a2 = v145;
      if (v149)
      {
        if (*(a1 + 41808))
        {
          CFDictionarySetValue(v149, kCMFormatDescriptionExtension_FullRangeVideo, kCFBooleanTrue);
        }

        v47 = *v141;
        v48 = *(a1 + 40748);
        if (v48 > 3)
        {
          v50 = 0;
        }

        else
        {
          v49 = (&unk_B7C54 + 8 * v48);
          v51 = *v49;
          v50 = v49[1];
          v47 -= v51 * *(a1 + 41896);
        }

        v60 = *(a1 + 30140) - *(a1 + 41904) * v50;
        if (sub_56A8C(0x2Eu, 8))
        {
          v61 = sub_56AD0(0x2Eu);
          v62 = sub_66A18();
          v63 = sub_56B04(8);
          v64 = *(a1 + 41896);
          if (v61)
          {
            printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v62, 46, v63, "AVE_FrameRecv", "CreateVideoFormatDesc", 277, *(a1 + 30136), *(a1 + 30140), v47, v60, *(a1 + 41896), *(a1 + 41904));
            v62 = sub_66A18();
            v63 = sub_56B04(8);
            v133 = *(a1 + 41896);
            v138 = *(a1 + 41904);
            v125 = *v141;
            v127 = *(a1 + 30140);
          }

          else
          {
            v134 = *(a1 + 41896);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v62, 46, v63);
          a2 = v145;
        }

        if (*v36 == 2)
        {
          VideoFormatDescription = VTTileEncoderSessionCreateVideoFormatDescription();
        }

        else
        {
          VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription();
        }

        v69 = VideoFormatDescription;
        if (!VideoFormatDescription)
        {
          v20 = 0;
LABEL_139:
          a5 = v147;
          goto LABEL_17;
        }

        if (sub_56A8C(0x2Eu, 4))
        {
          v70 = sub_56AD0(0x2Eu);
          v71 = sub_66A18();
          v72 = sub_56B04(4);
          if (v70)
          {
            a2 = v145;
            printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d\n", v71, 46, v72, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr", *v36, v145, v47, v60, v149, (a1 + 29360), v69);
            v71 = sub_66A18();
            v72 = sub_56B04(4);
            v128 = *v36;
          }

          else
          {
            a2 = v145;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d", v71, 46, v72, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr");
        }

        v20 = 0;
LABEL_110:
        v21 = 4294966296;
        goto LABEL_139;
      }

      if (sub_56A8C(0x2Eu, 4))
      {
        v56 = sub_56AD0(0x2Eu);
        v57 = sub_66A18();
        v58 = sub_56B04(4);
        if (v56)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d\n", v57, 46, v58, "AVE_FrameRecv", "CreateVideoFormatDesc", 261, "pCFDict != __null", a3, a5, v46, &v149, v21);
          v59 = sub_66A18();
          v120 = sub_56B04(4);
          a5 = v147;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v59, 46, v120, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v57, 46, v58, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }
      }

      v20 = 0;
    }

    else
    {
      a2 = v145;
      v38 = a1;
      if (v37 == 2)
      {
        v39 = *(a1 + 30144);
        v40 = sub_87A0(*(v142 + 143696), a4[10], 64);
        if (v40 >= 1)
        {
          v41 = v40;
          v42 = malloc_type_malloc(v40, 0x100004077774924uLL);
          if (!v42)
          {
            if (sub_56A8C(0x2Eu, 4))
            {
              v65 = sub_56AD0(0x2Eu);
              v66 = sub_66A18();
              v67 = sub_56B04(4);
              if (v65)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d\n", v66, 46, v67, "AVE_FrameRecv", "CreateVideoFormatDesc", 323, "piSEIData != __null", v41);
                v66 = sub_66A18();
                sub_56B04(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d", v66, 46);
            }

            v20 = 0;
            goto LABEL_116;
          }

          v20 = v42;
          if (sub_56A8C(0x2Eu, 7))
          {
            v43 = sub_56AD0(0x2Eu);
            v44 = sub_66A18();
            v45 = sub_56B04(7);
            if (v43)
            {
              printf("%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment\n", v44, 46, v45, "AVE_FrameRecv", "CreateVideoFormatDesc", 326, v41);
              v44 = sub_66A18();
              sub_56B04(7);
              v38 = v142;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment", v44);
            a5 = v147;
          }

          v73 = sub_12F4(*(v38 + 143696), a4[10], 64, v20, v41, v150);
          if (v73)
          {
            v21 = v73;
            if (!sub_56A8C(0x2Eu, 4))
            {
              goto LABEL_17;
            }

            v74 = sub_56AD0(0x2Eu);
            v75 = sub_66A18();
            v76 = sub_56B04(4);
            if (v74)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d\n", v75, 46, v76, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0", v41, v20, v36, a4, v150, v21);
              v77 = sub_66A18();
              a2 = v145;
              v121 = sub_56B04(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v77, 46, v121, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v75, 46, v76, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            goto LABEL_139;
          }

          if (v150[0])
          {
LABEL_84:
            if (*v143 >= 2u)
            {
              v78 = *(v143 + 1252);
              v79 = *(v143 + 1253);
              MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults = VTEncoderSessionCreateMVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults();
              if (sub_56A8C(0x2Eu, 4))
              {
                v94 = sub_56AD0(0x2Eu);
                v95 = sub_66A18();
                v96 = sub_56B04(4);
                if (v94)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d\n", v95, 46, v96, "AVE_FrameRecv", "CreateVideoFormatDesc", 354, "pSEI3D != __null", v145, *(v143 + 1252), *(v143 + 1253), &v148, MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults);
                  v95 = sub_66A18();
                  v96 = sub_56B04(4);
                  v97 = *(v143 + 1252);
                  v131 = *(v143 + 1253);
                  a5 = v147;
                }

                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d", v95, 46, v96, "AVE_FrameRecv", "CreateVideoFormatDesc");
              }

LABEL_116:
              v21 = 4294966293;
              goto LABEL_17;
            }

            v21 = sub_61370(0, a3, v147, v20, v150[0], 0, 0, (v38 + 57388), &v149);
            v81 = v149;
            if (v149)
            {
              if (*v143 < 2u)
              {
                a2 = v145;
                a5 = v147;
              }

              else
              {
                a5 = v147;
                v21 = sub_624F0(1, a3, v147, (v38 + 57388), v149);
                v81 = v149;
                a2 = v145;
                if (!v149)
                {
                  if (sub_56A8C(0x2Eu, 4))
                  {
                    v82 = sub_56AD0(0x2Eu);
                    v83 = sub_66A18();
                    v84 = sub_56B04(4);
                    if (v82)
                    {
                      a5 = v147;
                      printf("%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d\n", v83, 46, v84, "AVE_FrameRecv", "CreateVideoFormatDesc", 373, "pCFDict != __null", a3, v147, (v38 + 57388), v149, v21);
                      v85 = sub_66A18();
                      v122 = sub_56B04(4);
                      a2 = v145;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v85, 46, v122, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }

                    else
                    {
                      a5 = v147;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v83, 46, v84, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }
                  }

                  goto LABEL_17;
                }
              }

              if (*(v38 + 64508))
              {
                CFDictionarySetValue(v81, kCMFormatDescriptionExtension_FullRangeVideo, kCFBooleanTrue);
              }

              if ((v39 & 0x800) != 0)
              {
                v21 = sub_66118(a2, (v38 + 40676), *(v143 + 216), v149);
                if (v21)
                {
                  if (!sub_56A8C(0x2Eu, 4))
                  {
                    goto LABEL_17;
                  }

                  v91 = sub_56AD0(0x2Eu);
                  v92 = sub_66A18();
                  v93 = sub_56B04(4);
                  if (v91)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d\n", v92, 46, v93, "AVE_FrameRecv", "CreateVideoFormatDesc", 392, "ret == 0", a2, (v38 + 40676), *(v143 + 216), v149, v21);
                    v92 = sub_66A18();
                    v93 = sub_56B04(4);
                    v130 = *(v143 + 216);
                    a2 = v145;
                  }

                  else
                  {
                    v132 = *(v143 + 216);
                  }

                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d", v92, 46, v93, "AVE_FrameRecv", "CreateVideoFormatDesc", 392);
                  goto LABEL_139;
                }

                v90 = 1902671459;
              }

              else
              {
                v90 = 1752589105;
              }

              v144 = v90;
              v98 = *v141;
              v99 = *(v38 + 57840);
              if (v99 > 3)
              {
                v101 = 0;
              }

              else
              {
                v100 = (&unk_B7C54 + 8 * v99);
                v102 = *v100;
                v101 = v100[1];
                v98 -= v102 * *(v38 + 57872);
              }

              v103 = v141[1] - *(v38 + 57880) * v101;
              if (sub_56A8C(0x2Eu, 8))
              {
                v104 = sub_56AD0(0x2Eu);
                v140 = sub_66A18();
                v105 = sub_56B04(8);
                v106 = *(v38 + 57872);
                if (v104)
                {
                  printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v140, 46, v105, "AVE_FrameRecv", "CreateVideoFormatDesc", 403, *v141, v141[1], v98, v103, *(v38 + 57872), *(v38 + 57880));
                  v107 = sub_66A18();
                  v108 = sub_56B04(8);
                  v135 = *(v38 + 57872);
                  v139 = *(v38 + 57880);
                  v126 = *v141;
                  v129 = v141[1];
                  v38 = v142;
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v107, 46, v108);
                }

                else
                {
                  v136 = *(v38 + 57872);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v140, 46, v105);
                }
              }

              v109 = (v38 + 29360);
              if (*v36 == 2)
              {
                v110 = VTTileEncoderSessionCreateVideoFormatDescription();
              }

              else
              {
                v110 = VTEncoderSessionCreateVideoFormatDescription();
              }

              v111 = v110;
              if (v110)
              {
                if (sub_56A8C(0x2Eu, 4))
                {
                  v112 = sub_56AD0(0x2Eu);
                  v113 = sub_66A18();
                  v114 = sub_56B04(4);
                  v115 = *v36;
                  if (v112)
                  {
                    v137 = v98;
                    a2 = v145;
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d\n", v113, 46, v114, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v115, v145, v144, v137, v103, v149, v109, v111);
                    v116 = sub_66A18();
                    v117 = sub_56B04(4);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v116, 46, v117, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", *v36);
                  }

                  else
                  {
                    a2 = v145;
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v113, 46, v114, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v115);
                  }

                  goto LABEL_110;
                }

                v21 = 4294966296;
              }
            }

            else if (sub_56A8C(0x2Eu, 4))
            {
              v86 = sub_56AD0(0x2Eu);
              v87 = sub_66A18();
              v88 = sub_56B04(4);
              if (v86)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d\n", v87, 46, v88, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v147, v20, v150[0], 0, 0, (v38 + 57388), &v149, v21);
                v89 = sub_66A18();
                a5 = v147;
                v123 = sub_56B04(4);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v89, 46, v123, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v147, v20);
              }

              else
              {
                a5 = v147;
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v87, 46, v88, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v147, v20);
              }

              a2 = v145;
              goto LABEL_17;
            }

            a2 = v145;
            goto LABEL_139;
          }

          free(v20);
        }

        v20 = 0;
        goto LABEL_84;
      }

      if (sub_56A8C(0x2Eu, 4))
      {
        v52 = sub_56AD0(0x2Eu);
        v53 = sub_66A18();
        v54 = sub_56B04(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.\n", v53, 46, v54, "AVE_FrameRecv", "CreateVideoFormatDesc", 437, "false", *(a1 + 39468));
          v53 = sub_66A18();
          sub_56B04(4);
          v55 = *(a1 + 39468);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.", v53, 46);
      }

      v20 = 0;
      v21 = 4294966281;
    }
  }

  else
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v17 = sub_56AD0(0x2Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p\n", v18, 46, v19, "AVE_FrameRecv", "CreateVideoFormatDesc", 241, "(psInfo != __null) && (psInfo->iNum != 0)", a5);
        v18 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p", v18, 46);
    }

    v20 = 0;
    v21 = 4294966295;
  }

LABEL_17:
  if (v149)
  {
    CFRelease(v149);
    v149 = 0;
  }

  if (v20)
  {
    free(v20);
  }

  if (v148)
  {
    CFRelease(v148);
    v148 = 0;
  }

  if (sub_56A8C(0x2Eu, 7))
  {
    v22 = sub_56AD0(0x2Eu);
    v23 = sub_66A18();
    v24 = sub_56B04(7);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %p %p %p %d\n", v23, 46, v24, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5, v21);
      v25 = sub_66A18();
      v119 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v25, 46, v119, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v23, 46, v24, "AVE_FrameRecv");
    }
  }

  return v21;
}

uint64_t sub_2A568(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = *(a2 + 3180);
    if (v4 >= 0x1E)
    {
      v13 = 3758097084;
      if (sub_56A8C(0x2Eu, 4))
      {
        v17 = sub_56AD0(0x2Eu);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v18, 46, v19, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          v18 = sub_66A18();
          v19 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v18, 46, v19, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      v6 = *(a1 + 8 * v4 + 27072);
      if (v6)
      {
        if (sub_56A8C(0x2Eu, 7))
        {
          v8 = sub_56AD0(0x2Eu);
          v9 = sub_66A18();
          v10 = sub_56B04(7);
          v11 = *(a2 + 3180);
          if (v8)
          {
            printf("%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d\n", v9, 46, v10, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 483, *(a2 + 3180), *(v6 + 288));
            v9 = sub_66A18();
            sub_56B04(7);
            v12 = *(a2 + 3180);
            v28 = *(v6 + 288);
          }

          else
          {
            v27 = *(a2 + 3180);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d", v9);
        }

        sub_1F5C8(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (v6 + 45320));
        sub_1F904(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (a2 + 72664));
        v24 = sub_1D4C0(*(a1 + 40704), 7u, *(a2 + 20));
        sub_4FAFC((v6 + 42608), v24, *(a2 + 40));
        v25 = sub_1D4C0(*(a1 + 40704), 6u, *(a2 + 20));
        sub_4F1E8((v6 + 4720), (a2 + 33012), v25, *(a2 + 40), a3);
        sub_1F284(*(a1 + 40704), *(a2 + 20), (v6 + 42760));
        bzero(v6, 0xBAA8uLL);
      }

      else if (sub_56A8C(3u, 4))
      {
        v13 = sub_56AD0(3u);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        if (!v13)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL");
          return v13;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v20, 3, v21, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v22, 3, v23, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
      }

      return 0;
    }
  }

  else
  {
    v13 = 3758097084;
    if (sub_56A8C(3u, 4))
    {
      v14 = sub_56AD0(3u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL\n", v15, 3, v16, "DoneWithThisFrameFromTheHW", 473, "Frame != __null");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL");
    }
  }

  return v13;
}

uint64_t sub_2A9CC(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  if (sub_56A8C(0x2Eu, 7))
  {
    v6 = sub_56AD0(0x2Eu);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %d %d\n", v7, 46, v8, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3);
      v7 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %d %d", v7);
  }

  if (a2 >= 0x1E)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v19 = sub_56AD0(0x2Eu);
      v20 = sub_66A18();
      v21 = sub_56B04(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d\n", v20, 46, v21, "AVE_FrameRecv", "CollectSlicesInfo", 521, "0 <= iPlaneNumber && iPlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", a1, a2);
        v20 = sub_66A18();
        v51 = sub_56B04(4);
      }

      else
      {
        v51 = v21;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d", v20, 46, v51);
    }

    goto LABEL_46;
  }

  if (a3 >= 2)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v22 = sub_56AD0(0x2Eu);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d\n", v23, 46, v24, "AVE_FrameRecv", "CollectSlicesInfo", 524, "0 <= iLayerID && iLayerID < ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, a3);
        v23 = sub_66A18();
        v52 = sub_56B04(4);
      }

      else
      {
        v52 = v24;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d", v23, 46, v52);
    }

    goto LABEL_46;
  }

  v9 = *&a1[2 * a2 + 6768];
  if (!v9)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v25 = sub_56AD0(0x2Eu);
      v26 = sub_66A18();
      v27 = sub_56B04(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d\n", v26, 46, v27, "AVE_FrameRecv", "CollectSlicesInfo", 528, "codedHeader != __null", a1, a2);
        v28 = sub_66A18();
        v53 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v28, 46, v53);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v26, 46, v27);
      }
    }

    goto LABEL_46;
  }

  v10 = a1 + 7008;
  v11 = v9 + 12 * a3;
  v12 = &a1[3 * a3];
  v13 = *(v11 + 144);
  v14 = v12 + 7271;
  v12[7273] = *(v11 + 152);
  *(v12 + 7271) = v13;
  if (sub_56A8C(0x2Eu, 7))
  {
    v15 = sub_56AD0(0x2Eu);
    v16 = sub_66A18();
    v17 = sub_56B04(7);
    v18 = *(v14 + 7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d\n", v16, 46, v17, "AVE_FrameRecv", "CollectSlicesInfo", 531, a3, *(v14 + 7), v14[2]);
      v16 = sub_66A18();
      sub_56B04(7);
      v55 = *(v14 + 7);
      v57 = v14[2];
    }

    else
    {
      v56 = *(v14 + 7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d", v16, 46);
  }

  a1[7270] = 3 * *(v9 + 140);
  memcpy(a1 + 7008, (v9 + 280), 0x204uLL);
  if (sub_56A8C(0x2Eu, 7))
  {
    v29 = sub_56AD0(0x2Eu);
    v30 = sub_66A18();
    v31 = sub_56B04(7);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s:%d slice number %d\n", v30, 46, v31, "AVE_FrameRecv", "CollectSlicesInfo", 539, *v10);
      v30 = sub_66A18();
      sub_56B04(7);
      v32 = *v10;
    }

    else
    {
      v54 = *v10;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d slice number %d", v30);
  }

  if (*v10 > 0x20)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v43 = sub_56AD0(0x2Eu);
      v44 = sub_66A18();
      v45 = sub_56B04(4);
      if (v43)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d\n", v44, 46, v45, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", a1, *v10);
        v44 = sub_66A18();
        v45 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d", v44, 46, v45, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", a1, *v10);
    }

LABEL_46:
    v42 = 4294966295;
    goto LABEL_47;
  }

  if (*v10)
  {
    v33 = 0;
    v34 = a1 + 7012;
    do
    {
      if (sub_56A8C(0x2Eu, 7))
      {
        v35 = sub_56AD0(0x2Eu);
        v36 = sub_66A18();
        v37 = sub_56B04(7);
        v38 = *(v34 - 3);
        v39 = *(v34 - 2);
        v40 = *(v34 - 1);
        v41 = *v34;
        if (v35)
        {
          printf("%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d\n", v36, 46, v37, "AVE_FrameRecv", "CollectSlicesInfo", 548, v33, v38, v39, *(v34 - 1), v41);
          v36 = sub_66A18();
          v37 = sub_56B04(7);
          v38 = *(v34 - 3);
          v39 = *(v34 - 2);
          v40 = *(v34 - 1);
          v41 = *v34;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d", v36, 46, v37, "AVE_FrameRecv", "CollectSlicesInfo", 548, v33, v38, v39, v40, v41);
      }

      ++v33;
      v34 += 4;
    }

    while (v33 < *v10);
    v42 = 0;
  }

  else
  {
    v42 = 0;
  }

LABEL_47:
  if (sub_56A8C(0x2Eu, 7))
  {
    v46 = sub_56AD0(0x2Eu);
    v47 = sub_66A18();
    v48 = sub_56B04(7);
    if (v46)
    {
      printf("%lld %d AVE %s: %s::%s Exit %d %d %d\n", v47, 46, v48, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3, v42);
      v49 = sub_66A18();
      sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v49);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v47);
    }
  }

  return v42;
}