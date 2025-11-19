uint64_t OSLogCopyFormattedString(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = objc_alloc(MEMORY[0x29EDB9F30]);
  v3 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"liblog_SystemConfiguration: Not yet supported os_log formatting type: %s", a1];
  v4 = [v2 initWithString:v3];

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t OSStateCreateStringWithData(char *__s1, uint64_t a2, unsigned int *a3)
{
  v6 = 0;
  v14 = *MEMORY[0x29EDCA608];
  for (i = 1; ; i = 0)
  {
    v8 = i;
    v9 = &(&OSStateCreateStringWithData_formatters)[2 * v6];
    if (!strcmp(__s1, *v9))
    {
      break;
    }

    v6 = 1;
    if ((v8 & 1) == 0)
    {
      result = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"liblog_SystemConfiguration: Not yet supported os_state formatting type: %s", __s1];
      v11 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  v12 = v9[1];
  v13 = *MEMORY[0x29EDCA608];

  return v12(a2, a3);
}

uint64_t _SC_OSStateCopyFormattedString_dnsinfo(uint64_t a1, unsigned int *a2)
{
  v89 = *MEMORY[0x29EDCA608];
  v2 = @"No DNS configuration";
  if (!a1 || !a2)
  {
    goto LABEL_19;
  }

  if (a1 <= 0x37)
  {
    result = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"DNS configuration: size error (%u < %zu)", a1, 56];
    v5 = *MEMORY[0x29EDCA608];
    return result;
  }

  v6 = a1;
  if (bswap32(a2[12]) + 56 != a1)
  {
    v8 = _SC_LOG_DEFAULT();
    v10 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_17;
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    *MEMORY[0x29EDBCC58];
    os_log_type_enabled(v8, v10);
    v11 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v11 == &v73)
    {
      goto LABEL_17;
    }

    v12 = v11;
    goto LABEL_16;
  }

  v7 = bswap32(a2[13]);
  if (0x100000 - a1 < v7)
  {
    v8 = _SC_LOG_DEFAULT();
    v9 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v7 + a1 > 0x100000)
  {
    v8 = _SC_LOG_DEFAULT();
    v9 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_17;
    }

LABEL_14:
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    *MEMORY[0x29EDBCC58];
    os_log_type_enabled(v8, v9);
    v13 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v13 != &v73)
    {
      v12 = v13;
LABEL_16:
      free(v12);
    }

LABEL_17:

LABEL_18:
    v2 = @"DNS configuration: data error";
    goto LABEL_19;
  }

  v15 = malloc_type_malloc(v7 + a1, 0xAC30884BuLL);
  memcpy(v15, a2, v6);
  bzero(v15 + v6, v7);
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15[12];
  v17 = bswap32(v15[13]);
  v18 = bswap32(*v15);
  *v15 = v18;
  if (v17 < 8 * v18)
  {
    goto LABEL_108;
  }

  v19 = bswap32(v16);
  v20 = v15 + 14;
  v21 = 8 * v18;
  v22 = 8 * v18 ? v15 + v19 + 56 : 0;
  v23 = v17 - v21;
  *(v15 + 1) = v22;
  v24 = bswap32(v15[3]);
  v15[3] = v24;
  if (v23 < 8 * v24 || ((v25 = 8 * v24, v26 = v15 + v19 + v21 + 56, v25) ? (v27 = v26) : (v27 = 0), v28 = v23 - v25, *(v15 + 2) = v27, v29 = bswap32(v15[8]), v15[8] = v29, v28 < 8 * v29))
  {
LABEL_108:
    free(v15);
    v2 = @"DNS configuration: expansion error";
    goto LABEL_19;
  }

  v30 = 8 * v29;
  v31 = v26 + v25;
  if (8 * v29)
  {
    v32 = v26 + v25;
  }

  else
  {
    v32 = 0;
  }

  *(v15 + 9) = v32;
  if (v19 < 8)
  {
    v35 = 0;
    v34 = 0;
    v33 = 0;
    goto LABEL_89;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = v28 - v30;
  v37 = v31 + v30;
  do
  {
    v38 = bswap32(v20[1]);
    v39 = bswap32(*v20);
    if (v39 - 1 > 2)
    {
      goto LABEL_86;
    }

    if (v38 - 8 < 0x64)
    {
      goto LABEL_108;
    }

    *(v20 + 1) = 0;
    v40 = bswap32(v20[4]);
    v20[4] = v40;
    if (v36 < 8 * v40)
    {
      goto LABEL_108;
    }

    v41 = 8 * v40;
    v42 = 8 * v40 ? v37 : 0;
    v43 = v36 - v41;
    *(v20 + 5) = v42;
    *(v20 + 14) = bswap32(*(v20 + 14)) >> 16;
    v44 = bswap32(v20[8]);
    v20[8] = v44;
    if (v43 < 8 * v44)
    {
      goto LABEL_108;
    }

    v45 = 8 * v44;
    v46 = v37 + v41;
    v47 = 8 * v44 ? v46 : 0;
    v48 = v43 - v45;
    *(v20 + 9) = v47;
    v49 = bswap32(v20[11]);
    v20[11] = v49;
    if (v48 < 8 * v49)
    {
      goto LABEL_108;
    }

    v50 = 8 * v49;
    v51 = v46 + v45;
    v52 = 8 * v49 ? v51 : 0;
    *(v20 + 6) = v52;
    *(v20 + 7) = 0;
    *(v20 + 4) = vrev32q_s8(*(v20 + 4));
    *(v20 + 10) = vrev32_s8(*(v20 + 20));
    v53 = v38 - 108;
    if (v38 - 108 != bswap32(v20[26]))
    {
      goto LABEL_108;
    }

    v54 = v20 + 2;
    if (v53 < 8)
    {
      v57 = 0;
      v56 = 0;
      v55 = 0;
    }

    else
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = (v20 + 27);
      do
      {
        v59 = v58[1];
        v60 = bswap32(*v58);
        if (v60 <= 12)
        {
          switch(v60)
          {
            case 10:
              *v54 = v58 + 2;
              break;
            case 11:
              v63 = *(v20 + 5);
              if (!v63)
              {
                goto LABEL_108;
              }

              *(v63 + 8 * v57++) = v58 + 2;
              break;
            case 12:
              v61 = *(v20 + 9);
              if (!v61)
              {
                goto LABEL_108;
              }

              *(v61 + 8 * v56++) = v58 + 2;
              break;
          }
        }

        else if (v60 > 14)
        {
          if (v60 == 15)
          {
            *(v20 + 11) = v58 + 2;
          }

          else if (v60 == 16)
          {
            *(v20 + 12) = v58 + 2;
          }
        }

        else if (v60 == 13)
        {
          v62 = *(v20 + 6);
          if (!v62)
          {
            goto LABEL_108;
          }

          *(v62 + 8 * v55++) = v58 + 2;
        }

        else
        {
          *(v20 + 7) = v58 + 2;
        }

        v64 = bswap32(v59);
        v58 = (v58 + v64);
        v53 -= v64;
      }

      while (v53 > 7);
    }

    if (v57 != v40 || v56 != v44 || v55 != v49)
    {
      goto LABEL_108;
    }

    v37 = v51 + v50;
    v36 = v48 - v50;
    switch(v39)
    {
      case 3u:
        v65 = *(v15 + 9);
        if (!v65)
        {
          goto LABEL_108;
        }

        v66 = v33++;
        break;
      case 2u:
        v65 = *(v15 + 2);
        if (!v65)
        {
          goto LABEL_108;
        }

        v66 = v34++;
        break;
      case 1u:
        v65 = *(v15 + 1);
        if (!v65)
        {
          goto LABEL_108;
        }

        v66 = v35++;
        break;
      default:
        goto LABEL_86;
    }

    *(v65 + 8 * v66) = v54;
LABEL_86:
    v20 = (v20 + v38);
    v19 -= v38;
  }

  while (v19 > 7);
  v18 = *v15;
LABEL_89:
  if (v35 != v18 || v34 != v15[3] || v33 != v15[8])
  {
    goto LABEL_108;
  }

  v2 = [MEMORY[0x29EDBA050] string];
  [(__CFString *)v2 appendFormat:@"%s\n", "DNS configuration"];
  if (*v15 >= 1)
  {
    v67 = 0;
    do
    {
      v68 = *(*(v15 + 1) + 8 * v67++);
      _dns_resolver_log(v15[11], v68, v67, v2);
    }

    while (v67 < *v15);
  }

  if (v15[3] >= 1)
  {
    if (*(v15 + 2))
    {
      [(__CFString *)v2 appendFormat:@"%s\n", ""];
      [(__CFString *)v2 appendFormat:@"%s\n", "DNS configuration (for scoped queries)"];
      if (v15[3] >= 1)
      {
        v69 = 0;
        do
        {
          v70 = *(*(v15 + 2) + 8 * v69++);
          _dns_resolver_log(v15[11], v70, v69, v2);
        }

        while (v69 < v15[3]);
      }
    }
  }

  if (v15[8] >= 1)
  {
    if (*(v15 + 9))
    {
      [(__CFString *)v2 appendFormat:@"%s\n", ""];
      [(__CFString *)v2 appendFormat:@"%s\n", "DNS configuration (for service-specific queries)"];
      if (v15[8] >= 1)
      {
        v71 = 0;
        do
        {
          v72 = *(*(v15 + 9) + 8 * v71++);
          _dns_resolver_log(v15[11], v72, v71, v2);
        }

        while (v71 < v15[8]);
      }
    }
  }

  if (![(__CFString *)v2 length])
  {
    [(__CFString *)v2 appendString:@"DNS configuration: not available"];
  }

  free(v15);
LABEL_19:
  v14 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t _SC_OSStateCopyFormattedString_nwi(uint64_t a1, unsigned int *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = @"No network information";
  if (a1 && a2)
  {
    if (a1 <= 0x97)
    {
      result = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: size error (%u < %zu)", a1, 56, v23, v24];
LABEL_11:
      v8 = *MEMORY[0x29EDCA608];
      return result;
    }

    if (*a2 != 538379777)
    {
      result = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: version error (%u != %u)", *a2, 538379777, v23, v24];
      goto LABEL_11;
    }

    v5 = a2[1];
    v6 = 2 * v5;
    if (4 * v5 + 112 * (2 * v5) + 40 != a1)
    {
      result = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: size error (%u != %zu)", a1, 4 * a2[1] + 224 * a2[1] + 40, v23, v24];
      goto LABEL_11;
    }

    v7 = a2[2];
    if (v7 > v5)
    {
      result = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: ipv4 count error (%d > %d)", a2[2], a2[1], v23, v24];
      goto LABEL_11;
    }

    v9 = a2[3];
    if (v9 > v5)
    {
      result = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: ipv6 count error (%d > %d)", a2[3], a2[1], v23, v24];
      goto LABEL_11;
    }

    v10 = a2[4];
    if (v10 > v5)
    {
      result = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: if_list count error (%d > %d)", a2[4], a2[1], v23, v24];
      goto LABEL_11;
    }

    if (v7 >= 1)
    {
      v11 = 0;
      v12 = -v5;
      v13 = (a2 + 16);
      while (1)
      {
        v15 = *v13;
        v13 += 28;
        v14 = v15;
        if (v15)
        {
          if (v12 + v14 < 0 || v12 + v14 >= v9)
          {
            break;
          }
        }

        --v11;
        ++v12;
        if (-v7 == v11)
        {
          goto LABEL_22;
        }
      }

      result = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: IPv4 alias [%d] offset error (%d < 0 || %d >= %d)", -v11, (v12 + v14), (v12 + v14), a2[3]];
      goto LABEL_11;
    }

LABEL_22:
    if (v9 >= 1)
    {
      v16 = 0;
      v17 = &a2[28 * v5 + 16];
      v18 = -v9;
      while (1)
      {
        v20 = *v17;
        v17 += 28;
        v19 = v20;
        if (v20)
        {
          if ((v5 + v19) < 0 || (v5 + v19) >= v7)
          {
            break;
          }
        }

        --v16;
        LODWORD(v5) = v5 + 1;
        if (v18 == v16)
        {
          goto LABEL_28;
        }
      }

      result = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: IPv6 alias [%d] offset error (%d < 0 || %d >= %d)", -v16, v5 + v19, v5 + v19, a2[2]];
      goto LABEL_11;
    }

LABEL_28:
    if (v10 >= 1)
    {
      v21 = &a2[28 * v6 + 10];
      while (*v21 < v6)
      {
        ++v21;
        if (!--v10)
        {
          goto LABEL_32;
        }
      }

      result = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Network information: if_list index error (%d > %d)", *v21, 2 * a2[1], v23, v24];
      goto LABEL_11;
    }

LABEL_32:
    v2 = [MEMORY[0x29EDBA050] string];
    _nwi_state_log(a2, v2);
    if (![(__CFString *)v2 length])
    {
      [(__CFString *)v2 appendString:@"Network information: not available"];
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
}

void _dns_resolver_log(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v7 = a4;
  [v7 appendFormat:@"%s\n", ""];
  [v7 appendFormat:@"resolver #%d\n", a3];
  if (*a2)
  {
    [v7 appendFormat:@"  domain   : %s\n", *a2];
  }

  if (*(a2 + 24) >= 1)
  {
    v8 = 0;
    do
    {
      [v7 appendFormat:@"  search domain[%d] : %s\n", v8, *(*(a2 + 28) + 8 * v8)];
      ++v8;
    }

    while (v8 < *(a2 + 24));
  }

  if (*(a2 + 8) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 12) + 8 * v9);
      _SC_sockaddr_to_string();
      [v7 appendFormat:@"  nameserver[%d] : %s\n", v9++, __str];
    }

    while (v9 < *(a2 + 8));
  }

  if (*(a2 + 36) >= 1)
  {
    v11 = 0;
    do
    {
      inet_ntop(2, *(*(a2 + 40) + 8 * v11), __str, 0x20u);
      inet_ntop(2, (*(*(a2 + 40) + 8 * v11) + 4), v21, 0x20u);
      [v7 appendFormat:@"  sortaddr[%d] : %s/%s\n", v11++, __str, v21];
    }

    while (v11 < *(a2 + 36));
  }

  if (*(a2 + 48))
  {
    [v7 appendFormat:@"  options  : %s\n", *(a2 + 48)];
  }

  if (*(a2 + 20))
  {
    [v7 appendFormat:@"  port     : %hu\n", *(a2 + 20)];
  }

  if (*(a2 + 56))
  {
    [v7 appendFormat:@"  timeout  : %u\n", *(a2 + 56)];
  }

  if (*(a2 + 64))
  {
    if (a1 < 0x133C785)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a2 + 88);
    }

    if (!v12)
    {
      v12 = "?";
    }

    [v7 appendFormat:@"  if_index : %u (%s)\n", *(a2 + 64), v12];
  }

  if (*(a2 + 76))
  {
    [v7 appendFormat:@"  service_identifier : %u\n", *(a2 + 76)];
  }

  v13 = *(a2 + 68);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"  flags    : ");
  CFStringAppendFormat(Mutable, 0, @"0x%08x", v13);
  if (v13)
  {
    CFStringAppendFormat(Mutable, 0, @" (");
    if ((v13 & 0x1000) != 0)
    {
      v13 = v13 & 0xFFFFEFFF;
      if (v13)
      {
        v16 = ", ";
      }

      else
      {
        v16 = "";
      }

      CFStringAppendFormat(Mutable, 0, @"Scoped%s", v16);
      if ((v13 & 0x2000) == 0)
      {
LABEL_30:
        if ((v13 & 0x4000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_49;
      }
    }

    else if ((v13 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    v13 = v13 & 0xFFFFDFFF;
    if (v13)
    {
      v17 = ", ";
    }

    else
    {
      v17 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"Service-specific%s", v17);
    if ((v13 & 0x4000) == 0)
    {
LABEL_31:
      if ((v13 & 2) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_53;
    }

LABEL_49:
    v13 = v13 & 0xFFFFBFFF;
    if (v13)
    {
      v18 = ", ";
    }

    else
    {
      v18 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"Supplemental%s", v18);
    if ((v13 & 2) == 0)
    {
LABEL_32:
      if ((v13 & 4) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_57;
    }

LABEL_53:
    v13 = v13 & 0xFFFFFFFD;
    if (v13)
    {
      v19 = ", ";
    }

    else
    {
      v19 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"Request A records%s", v19);
    if ((v13 & 4) == 0)
    {
LABEL_33:
      if (!v13)
      {
LABEL_35:
        CFStringAppend(Mutable, @""));
        goto LABEL_36;
      }

LABEL_34:
      CFStringAppendFormat(Mutable, 0, @"0x%08x", v13);
      goto LABEL_35;
    }

LABEL_57:
    v13 = v13 & 0xFFFFFFFB;
    if (v13)
    {
      v20 = ", ";
    }

    else
    {
      v20 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"Request AAAA records%s", v20);
    if (!v13)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_36:
  [v7 appendFormat:@"%@\n", Mutable];
  CFRelease(Mutable);
  __SCNetworkReachability_flags_string(*(a2 + 72), __str);
  [v7 appendFormat:@"  reach    : %s\n", __str];
  if (*(a2 + 60))
  {
    [v7 appendFormat:@"  order    : %u\n", *(a2 + 60)];
  }

  if (*(a2 + 80))
  {
    [v7 appendFormat:@"  config id: %s\n", *(a2 + 80)];
  }

  v15 = *MEMORY[0x29EDCA608];
}

unint64_t __SCNetworkReachability_flags_string(unsigned int a1, char *__str)
{
  v9 = *MEMORY[0x29EDCA608];
  result = snprintf(__str, 0x64uLL, "0x%08x (", a1);
  if (a1 || result > 0x53)
  {
    v6 = result;
    v5 = result;
    v7 = a1;
    if ((a1 & 2) != 0)
    {
      v5 = result;
      v7 = a1;
      if (result <= 0x57)
      {
        result = strlcat(__str, "Reachable,", 0x63uLL);
        v5 = result;
        v7 = a1 & 0xFFFFFFFD;
      }
    }

    if ((v7 & 1) != 0 && v5 <= 0x4C)
    {
      result = strlcat(__str, "Transient Connection,", 0x63uLL);
      v5 = result;
      v7 &= ~1u;
    }

    if ((v7 & 4) != 0 && v5 <= 0x4D)
    {
      result = strlcat(__str, "Connection Required,", 0x63uLL);
      v5 = result;
      v7 &= ~4u;
    }

    if ((v7 & 8) != 0 && v5 <= 0x41)
    {
      result = strlcat(__str, "Automatic Connection On Traffic,", 0x63uLL);
      v5 = result;
      v7 &= ~8u;
    }

    if ((v7 & 0x20) != 0 && v5 <= 0x42)
    {
      result = strlcat(__str, "Automatic Connection On Demand,", 0x63uLL);
      v5 = result;
      v7 &= ~0x20u;
    }

    if ((v7 & 0x10) != 0 && v5 <= 0x4B)
    {
      result = strlcat(__str, "Intervention Required,", 0x63uLL);
      v5 = result;
      v7 &= ~0x10u;
    }

    if ((v7 & 0x10000) != 0 && v5 <= 0x53)
    {
      result = strlcat(__str, "Local Address,", 0x63uLL);
      v5 = result;
      v7 &= ~0x10000u;
    }

    if ((v7 & 0x20000) != 0 && v5 <= 0x46)
    {
      result = strlcat(__str, "Directly Reachable Address,", 0x63uLL);
      v5 = result;
      v7 &= ~0x20000u;
    }

    if ((v7 & 0x40000) != 0 && v5 <= 0x5C)
    {
      result = strlcat(__str, "WWAN,", 0x63uLL);
      v5 = result;
      v7 &= ~0x40000u;
    }

    if (v7)
    {
      if (v5 >= 0x57)
      {
        __str[v6] = 0;
        v5 = v6;
        v7 = a1;
      }

      result = snprintf(&__str[v5], 99 - v5, "0x%08x,", v7);
      v5 += result;
    }
  }

  else
  {
    result = strlcat(__str, "Not Reachable,", 0x63uLL);
    v5 = result;
  }

  if (v5)
  {
    __str[v5 - 1] = 41;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void _nwi_state_log(unsigned int *a1, void *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a2;
  [v3 appendFormat:@"Network information (generation %llu size=%lu)\n", nwi_state_get_generation(), 4 * a1[1] + 224 * a1[1] + 40];
  [v3 appendFormat:@"%s\n", "IPv4 network interface information"];
  if (a1[2] < 1)
  {
    [v3 appendFormat:@"%s\n", "   No IPv4 states found"];
  }

  else
  {
    v4 = 0;
    v5 = (a1 + 10);
    do
    {
      _nwi_ifstate_log(v5, v3);
      ++v4;
      v5 += 112;
    }

    while (v4 < a1[2]);
  }

  v6 = v3;
  reachability_flags = nwi_state_get_reachability_flags();
  __SCNetworkReachability_flags_string(reachability_flags, __str);
  [v6 appendFormat:@"   REACH : flags %s\n", __str];

  [v6 appendFormat:@"%s\n", "IPv6 network interface information"];
  if (a1[3] < 1)
  {
    [v6 appendFormat:@"%s\n", "   No IPv6 states found\n"];
  }

  else
  {
    v8 = 0;
    v9 = &a1[28 * a1[1] + 10];
    do
    {
      _nwi_ifstate_log(v9, v6);
      ++v8;
      v9 += 112;
    }

    while (v8 < a1[3]);
  }

  v10 = v6;
  v11 = nwi_state_get_reachability_flags();
  __SCNetworkReachability_flags_string(v11, __str);
  [v10 appendFormat:@"   REACH : flags %s\n", __str];

  if (nwi_state_get_interface_names())
  {
    MEMORY[0x2A1C7C4A8]();
    v14 = &v21[-v13];
    v15 = v12 >= 0x200 ? 512 : v12;
    bzero(&v21[-v13], v15);
    interface_names = nwi_state_get_interface_names();
    if (interface_names)
    {
      v17 = interface_names;
      v18 = 17 * interface_names;
      MEMORY[0x2A1C7C4A8]();
      bzero(&v21[-((v18 + 15) & 0x1FFFFFFF0)], v18);
      v19 = 0;
      do
      {
        if (v19)
        {
          strlcat(&v21[-((v18 + 15) & 0x1FFFFFFF0)], " ", v18);
        }

        strlcat(&v21[-((v18 + 15) & 0x1FFFFFFF0)], *&v14[v19], v18);
        v19 += 8;
      }

      while (8 * v17 != v19);
      [v10 appendFormat:@"Network interfaces: %s\n", &v21[-((v18 + 15) & 0x1FFFFFFF0)]];
    }
  }

  v20 = *MEMORY[0x29EDCA608];
}

void _nwi_ifstate_log(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = a2;
  flags = nwi_ifstate_get_flags();
  v5 = *(a1 + 16) & 0xEFLL;
  v6 = v5 | flags & 0xFFFFFFFFFFFFFFEFLL;
  v7 = (v5 | flags & 0xEF);
  if (v5 | flags & 0xEF)
  {
    v8 = __strlcpy_chk();
    v9 = v8;
    v10 = v7;
    if ((v6 & 1) != 0 && v8 <= 0x5C)
    {
      v9 = __strlcat_chk();
      v10 = v6 & 0xEE;
    }

    if ((v10 & 2) != 0 && v9 <= 0x5C)
    {
      v9 = __strlcat_chk();
      v10 = v10 & 0xED;
    }

    if ((v10 & 4) != 0 && v9 <= 0x5D)
    {
      v9 = __strlcat_chk();
      v10 &= ~4uLL;
    }

    if ((v10 & 0x40) != 0 && v9 <= 0x5A)
    {
      v9 = __strlcat_chk();
      v10 &= ~0x40uLL;
    }

    if ((v10 & 8) != 0 && v9 <= 0x55)
    {
      v9 = __strlcat_chk();
      v10 &= ~8uLL;
    }

    if ((v10 & 0x10) != 0 && v9 <= 0x57)
    {
      v9 = __strlcat_chk();
      v10 &= ~0x10uLL;
    }

    if ((v10 & 0x20) != 0 && v9 <= 0x53)
    {
      v9 = __strlcat_chk();
      v10 &= ~0x20uLL;
    }

    if (v10)
    {
      if (v9 >= 0x57)
      {
        v9 = __strlcpy_chk();
        v10 = v7;
      }

      v9 += snprintf(&v20[v9], 99 - v9, ",%p", v10);
    }

    if (v9)
    {
      v20[v9 - 1] = 41;
    }
  }

  else
  {
    v20[0] = 0;
  }

  ifname = nwi_ifstate_get_ifname();
  reachability_flags = nwi_ifstate_get_reachability_flags();
  if (!inet_ntop(*(a1 + 32), (a1 + 36), v21, 0x2Eu))
  {
    __strlcpy_chk();
  }

  [v3 appendFormat:@" %7s : flags      : %p %s\n", ifname, v6, v20];
  [v3 appendFormat:@"           address    : %s\n", v21];
  if (nwi_ifstate_get_vpn_server())
  {
    _SC_sockaddr_to_string();
    [v3 appendFormat:@"           VPN server : %s\n", &length[6]];
  }

  __SCNetworkReachability_flags_string(reachability_flags, &length[6]);
  [v3 appendFormat:@"           reach      : %s\n", &length[6]];
  v13 = *(a1 + 28);
  if (HIBYTE(*(a1 + 28)) > 4u)
  {
    v14 = "???";
  }

  else
  {
    v14 = *(off_29F27B430 + ((v13 >> 21) & 0x7F8));
  }

  if ((v13 & 0xFFFFFF) == 0xFFFFFF)
  {
    [v3 appendFormat:@"           rank       : 0x%08x (%s, Last)\n", *(a1 + 28), v14, v18];
  }

  else
  {
    [v3 appendFormat:@"           rank       : 0x%08x (%s, %u)\n", v13, v14, v13 & 0xFFFFFF];
  }

  signature = nwi_ifstate_get_signature();
  if (signature)
  {
    v16 = CFDataCreate(0, signature, 0);
    [v3 appendFormat:@"           signature  : %@\n", v16];
    CFRelease(v16);
  }

  [v3 appendFormat:@"           generation : %llu\n", nwi_ifstate_get_generation()];

  v17 = *MEMORY[0x29EDCA608];
}