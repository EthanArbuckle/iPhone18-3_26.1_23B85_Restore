CFTypeID ipsec_set_initial_values(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetTypeID();
  if (a2)
  {
    v5 = result;
    result = CFGetTypeID(a2);
    if (result == v5)
    {
      v6 = 0;
      result = getNumber(a2, @"LastCause", &v6);
      *(a1 + 596) = v6;
    }
  }

  return result;
}

uint64_t ipsec_user_notification_callback(uint64_t result, CFUserNotificationRef userNotification, char a3)
{
  v3 = result;
  v4 = *(result + 592);
  if ((a3 & 3) != 0)
  {
    if (v4)
    {

      return ipsec_stop(result);
    }

    else
    {
      v11 = *(result + 596);
      v12 = v11 > 0x15;
      v13 = (1 << v11) & 0x302000;
      if (!v12 && v13 != 0)
      {
        result = *(result + 584);
        if (result)
        {
          v15 = *(v3 + 144);

          return ne_sm_bridge_start_profile_janitor(result, v15);
        }
      }
    }

    return result;
  }

  if (v4 != 4)
  {
    return result;
  }

  v6 = *(result + 916);
  if ((v6 & 8) != 0)
  {
    v16 = 16529;
LABEL_22:
    v19[0] = v16;
    ResponseValue = CFUserNotificationGetResponseValue(userNotification, kCFUserNotificationTextFieldValuesKey, 0);
    v7 = 1;
    goto LABEL_23;
  }

  if ((v6 & 0x10) != 0)
  {
    v16 = 16528;
    goto LABEL_22;
  }

  if (v6)
  {
    v19[0] = 16521;
    ResponseValue = CFUserNotificationGetResponseValue(userNotification, kCFUserNotificationTextFieldValuesKey, 0);
    v6 = *(v3 + 916);
    v7 = 1;
    if ((v6 & 4) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if ((v6 & 4) != 0)
    {
LABEL_11:
      v8 = v7;
      v9 = &v19[8 * v7];
      v10 = 16523;
LABEL_30:
      *v9 = v10;
      *(v9 + 1) = CFUserNotificationGetResponseValue(userNotification, kCFUserNotificationTextFieldValuesKey, v8);
      ++v7;
      goto LABEL_23;
    }
  }

  if ((v6 & 2) != 0)
  {
    v8 = v7;
    v9 = &v19[8 * v7];
    v10 = 16522;
    goto LABEL_30;
  }

LABEL_23:
  v17 = *(v3 + 776);
  if (v17)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(v17, Current + 30.0);
  }

  sub_1EA40(v3, 3u);
  return racoon_send_cmd_xauthinfo(*(v3 + 784), *(v3 + 748), v19, v7);
}

uint64_t sub_1EA40(uint64_t result, unsigned int a2)
{
  if (*(result + 592) != a2)
  {
    v4 = result;
    *(result + 592) = a2;
    phase_changed(result, a2);
    v5 = gDynamicStore;
    v6 = *(v4 + 24);

    return publish_dictnumentry(v5, v6, kSCEntNetIPSec, kSCPropNetIPSecStatus, a2);
  }

  return result;
}

uint64_t racoon_send_cmd_xauthinfo(int a1, int a2, uint64_t a3, int a4)
{
  v8 = a4;
  if (a4 < 1)
  {
    v13 = 20;
  }

  else
  {
    v9 = (a3 + 8);
    v10 = 20;
    v11 = a4;
    do
    {
      if (*v9)
      {
        v12 = CFStringGetLength(*v9) + 4;
      }

      else
      {
        v12 = 4;
      }

      v10 += v12;
      v9 += 2;
      --v11;
    }

    while (v11);
    v13 = v10;
  }

  v14 = malloc_type_malloc(v13, 0xF03AD8B4uLL);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  *v14 = 0;
  *(v14 + 1) = 0;
  *v14 = 5120;
  *(v14 + 7) = bswap32(v13 - 16) >> 16;
  *(v14 + 4) = a2;
  if (a4 >= 1)
  {
    v16 = v14 + 20;
    v17 = (a3 + 8);
    do
    {
      usedBufLen = 0;
      if (*v17)
      {
        Length = CFStringGetLength(*v17);
      }

      else
      {
        Length = 0;
      }

      *v16 = bswap32(Length | (*(v17 - 4) << 16));
      v16 += 4;
      if (Length)
      {
        v23.location = 0;
        v23.length = Length;
        CFStringGetBytes(*v17, v23, 0x8000100u, 0, 0, v16, Length, &usedBufLen);
        v16 += Length;
      }

      v17 += 2;
      --v8;
    }

    while (v8);
  }

  sub_20920(a1, v15, v13);
  v19 = ne_log_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "IPSec sending Extended Authentication.\n", buf, 2u);
  }

  free(v15);
  return 0;
}

void sub_1EC90(uint64_t a1, int a2, int a3)
{
  v203 = 0;
  v201 = 0;
  v202 = 0;
  v198 = 0;
  v199 = 0;
  v196 = 0;
  v197 = 0;
  v195 = 0;
  *(a1 + 908) = 0;
  v4 = *(a1 + 816);
  v5 = v4;
  if (!v4)
  {
    v4 = *(a1 + 832);
    if (!v4)
    {
      return;
    }

    v5 = a1 + 848;
  }

  v200 = 0;
  v6 = bswap32(*(v5 + 14)) >> 16;
  Mutable = 0;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration started.\n", buf, 2u);
  }

  if (v6 < 0x1D)
  {
    goto LABEL_39;
  }

  v190 = 0;
  v8 = v6 - 28;
  v180 = a1;
  v188 = (a1 + 908);
  v9 = -1;
  v181 = v6 - 28;
  v10 = (v4 + 44);
  do
  {
    v11 = v10[1];
    v12 = bswap32(*v10);
    v13 = HIWORD(v12) & 0x7FFF;
    if (v13 != 28673)
    {
      if (v13 == 2)
      {
        v9 = *(v10 + 1);
        v203 = v9;
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18.s_addr = v9;
          v19 = inet_ntoa(v18);
          *buf = 136315138;
          *&buf[4] = v19;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: INTERNAL-IP4-MASK = %s.\n", buf, 0xCu);
        }
      }

      else if (v13 == 1)
      {
        v203 = *(v10 + 1);
        v14 = ne_log_obj();
        v190 = v203;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15.s_addr = v203;
          v16 = inet_ntoa(v15);
          *buf = 136315138;
          *&buf[4] = v16;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: INTERNAL-IP4-ADDRESS = %s.\n", buf, 0xCu);
        }
      }

      goto LABEL_31;
    }

    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v11 != 256;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: SAVE-PASSWORD = %d.\n", buf, 8u);
    }

    v21 = *(a1 + 916);
    if ((v11 != 256) == ((v21 & 0x40) == 0))
    {
      v22 = *(a1 + 584);
      if (v22)
      {
        ne_sm_bridge_clear_saved_password(v22);
      }

      else
      {
        if (v11 == 256)
        {
          v23 = 0;
        }

        else
        {
          v23 = kSCValNetIPSecXAuthPasswordEncryptionPrompt;
        }

        if (!UpdatePasswordPrefs(*(a1 + 24), *(a1 + 32), 4, kSCPropNetIPSecXAuthPasswordEncryption, v23))
        {
          goto LABEL_27;
        }
      }

      v24 = *(a1 + 916);
      if (v11 == 256)
      {
        *(a1 + 916) = v24 & 0xFFBF;
        CFDictionaryRemoveValue(*(a1 + 608), kSCPropNetIPSecXAuthPasswordEncryption);
        if ((v21 & 0x20) == 0)
        {
          goto LABEL_31;
        }

LABEL_30:
        if ((*(a1 + 916) & 0xC0) == 0x40)
        {
          sub_240C8(a1, a1 + 744, a1 + 760, 0);
          return;
        }

        goto LABEL_31;
      }

      *(a1 + 916) = v24 | 0x40;
      CFDictionarySetValue(*(a1 + 608), kSCPropNetIPSecXAuthPasswordEncryption, kSCValNetIPSecXAuthPasswordEncryptionPrompt);
LABEL_27:
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_31:
    v25 = __rev16(v11);
    if (v12 >> 16 >= 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v10 + v26;
    v28 = v8 - v26;
    v10 = (v27 + 4);
    v8 = v28 - 4;
  }

  while (v28 > 4);
  v29 = a1;
  if (!v190)
  {
LABEL_39:
    sub_1E1E8(3, @"IPSec Controller: Internal IP Address missing from Mode Config packet ");
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  theArray = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v168 = v9;
  if (CFDictionaryContainsKey(*(a1 + 608), @"ForceLocalAddress") && CFDictionaryGetValue(*(a1 + 608), @"ForceLocalAddress") == kCFBooleanTrue)
  {
    Value = CFDictionaryGetValue(*(a1 + 608), @"LocalAddress");
    CFDictionarySetValue(Mutable, @"LocalAddress", Value);
    memset(__s, 0, sizeof(__s));
    v193 = 0;
    v34 = v181;
    v35 = (v4 + 44);
    if (*(a1 + 760))
    {
      LOWORD(__s[0]) = 7708;
      v37 = __s;
      nw_nat64_synthesize_v6();
    }

    else
    {
      v37 = (a1 + 744);
    }

    getnameinfo(v37, *v37, buf, 0x39u, 0, 0, 10);
    AddString(Mutable, @"RemoteAddress", buf);
  }

  else
  {
    v30.s_addr = *(v4 + 20);
    v31 = inet_ntoa(v30);
    AddString(Mutable, @"LocalAddress", v31);
    v203 = *(v4 + 16);
    v32.s_addr = v203;
    v33 = inet_ntoa(v32);
    AddString(Mutable, @"RemoteAddress", v33);
    v34 = v181;
    v35 = (v4 + 44);
  }

  v175 = 0;
  v38 = 0;
  v39 = 0;
  v187 = 0;
  v40 = 0;
  v171 = 1;
  v172 = 1;
  do
  {
    v41 = v35[1];
    v42 = bswap32(*v35);
    v43 = HIWORD(v42) & 0x7FFF;
    v44 = __rev16(v41);
    if (v43 > 0x7002)
    {
      if ((HIWORD(v42) & 0x7FFF) <= 0x7005u)
      {
        if (v43 != 28675)
        {
          if (v43 != 28676)
          {
            goto LABEL_172;
          }

          if (!v35[1])
          {
            v171 = 0;
            goto LABEL_172;
          }

          v182 = v34;
          v185 = v42;
          v173 = v38;
          v176 = v44;
          v178 = v35;
          v45 = (v35 + 2);
          v46 = v203;
          v47 = (v44 - 1) / 0xEu;
          v48 = v44 + 14;
          v49 = v187;
          while (1)
          {
            v50 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFDictionarySetValue(v50, @"Mode", @"Tunnel");
            CFDictionarySetValue(v50, @"Direction", @"InOut");
            CFDictionarySetValue(v50, @"Level", @"Unique");
            v51.s_addr = v190;
            v52 = inet_ntoa(v51);
            AddString(v50, @"LocalAddress", v52);
            AddNumber(v50, @"LocalPrefix", 32);
            v53 = *v45;
            v54.s_addr = *v45;
            v55 = inet_ntoa(v54);
            AddString(v50, @"RemoteAddress", v55);
            v56 = v45[1];
            if (*v188)
            {
              if (!v56)
              {
                goto LABEL_57;
              }
            }

            else if (v56 == -1)
            {
              *v188 = v53;
            }

            else
            {
              *v188 = v53 | 0x1000000;
              if (!v56)
              {
LABEL_57:
                v57 = 0;
                goto LABEL_60;
              }
            }

            v57 = 32 - __clz(__rbit32(bswap32(v56)));
LABEL_60:
            AddNumber(v50, @"RemotePrefix", v57);
            if (!v49)
            {
              v58 = ne_log_obj();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: SPLIT-INCLUDE.\n", buf, 2u);
              }
            }

            update_service_route(v29, v190, -1, v46, 0, 0, 0, 0);
            CFArrayAppendValue(theArray, v50);
            CFRelease(v50);
            ++v49;
            v48 -= 14;
            v45 = (v45 + 14);
            if (v48 <= 14)
            {
              v171 = 0;
              v187 += v47 + 1;
              goto LABEL_164;
            }
          }
        }

        if (v198)
        {
          goto LABEL_172;
        }

        v198 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        if (!v198 || !v41)
        {
          goto LABEL_172;
        }

        v174 = v38;
        v93 = v44;
        v94 = (v35 + 2);
        v176 = v93;
        v179 = v35;
        v95 = v93;
        v184 = v34;
        v186 = v42;
LABEL_132:
        __s[0] = 0;
        v96 = CFStringCreateWithCString(0, v94, 0);
        if (!v96)
        {
          my_CFRelease(&v198);
          goto LABEL_180;
        }

        v97 = v96;
        v98 = CFStringGetLength(v96) + 2;
        v99 = malloc_type_malloc(v98, 0xF3A80EABuLL);
        __s[0] = v99;
        if (!v99)
        {
          goto LABEL_154;
        }

        v100 = v99;
        CFStringGetCString(v97, v99, v98, 0);
        v101 = __s[0];
        v102 = ",";
        if (!strchr(__s[0], 44))
        {
          v102 = ";";
          if (!strchr(v101, 59))
          {
            v102 = "\n";
            if (!strchr(v101, 10))
            {
              v102 = "\r";
              if (!strchr(v101, 13))
              {
                if (strchr(v101, 32))
                {
                  v102 = " ";
                }

                else
                {
                  v102 = &unk_2DC90;
                }
              }
            }
          }
        }

        v103 = strsep(__s, v102);
        while (1)
        {
          if (v103)
          {
            if (!*v103)
            {
              goto LABEL_150;
            }
          }

          else
          {
            v103 = __s[0];
          }

          v104 = CFStringCreateWithCString(0, v103, 0);
          if (!v104)
          {
            my_CFRelease(&v198);
LABEL_153:
            free(v100);
            v34 = v184;
            v35 = v179;
LABEL_154:
            v94 += v98;
            v95 -= v98;
            CFRelease(v97);
            v42 = v186;
            if (v95 <= 0)
            {
LABEL_180:
              v29 = v180;
              v38 = v174;
LABEL_171:
              LODWORD(v44) = v176;
              goto LABEL_172;
            }

            goto LABEL_132;
          }

          CFArrayAppendValue(v198, v104);
          v105 = ne_log_obj();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            CStringPtr = CFStringGetCStringPtr(v104, 0);
            *buf = 67109378;
            *&buf[4] = v39;
            *&buf[8] = 2080;
            *&buf[10] = CStringPtr;
            _os_log_impl(&dword_0, v105, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: SPLITDNS-NAME[%d] = %s.\n", buf, 0x12u);
          }

          CFRelease(v104);
          ++v39;
LABEL_150:
          v103 = strsep(__s, v102);
          if (!v103)
          {
            goto LABEL_153;
          }
        }
      }

      if (v43 == 28678)
      {
        if (!v35[1])
        {
          goto LABEL_172;
        }

        v182 = v34;
        v185 = v42;
        v173 = v38;
        v176 = v44;
        v178 = v35;
        v107 = (v35 + 2);
        v108 = v203;
        v109 = v44 + 14;
        do
        {
          v110 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFDictionarySetValue(v110, @"Mode", @"Tunnel");
          CFDictionarySetValue(v110, @"Direction", @"InOut");
          CFDictionarySetValue(v110, @"Level", @"None");
          v111.s_addr = v190;
          v112 = inet_ntoa(v111);
          AddString(v110, @"LocalAddress", v112);
          AddNumber(v110, @"LocalPrefix", 32);
          v113 = *v107;
          v114.s_addr = *v107;
          v115 = inet_ntoa(v114);
          AddString(v110, @"RemoteAddress", v115);
          v116 = v107[1];
          v117 = 32 - __clz(__rbit32(bswap32(v116)));
          if (v116)
          {
            v118 = v117;
          }

          else
          {
            v118 = 0;
          }

          AddNumber(v110, @"RemotePrefix", v118);
          v119 = ne_log_obj();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            v120.s_addr = v113;
            v121 = inet_ntoa(v120);
            v122.s_addr = v190;
            v123 = inet_ntoa(v122);
            *buf = 67110146;
            *&buf[4] = v187;
            *&buf[8] = 2080;
            *&buf[10] = v121;
            v205 = 1024;
            v206 = v118;
            v207 = 2080;
            v208 = v123;
            v209 = 1024;
            v210 = 32;
            _os_log_impl(&dword_0, v119, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: LOCAL-LAN[%d] = destination %s/%d -> gateway %s/%d.\n", buf, 0x28u);
          }

          update_service_route(v29, v190, -1, v108, 0, 0, 0, 0);
          CFArrayAppendValue(theArray, v110);
          CFRelease(v110);
          v109 -= 14;
          v107 = (v107 + 14);
        }

        while (v109 > 14);
LABEL_164:
        v38 = v173;
        v34 = v182;
        v35 = v178;
LABEL_170:
        v42 = v185;
        goto LABEL_171;
      }

      if (v43 != 28683)
      {
        goto LABEL_172;
      }

      if (!v35[1])
      {
        v38 = 0;
        v175 = 0;
        goto LABEL_172;
      }

      v183 = v34;
      v185 = v42;
      v175 = 0;
      v38 = 0;
      v63 = v35;
      v64 = v35;
      v176 = v44;
      v65 = v44;
      while (1)
      {
        v66 = (v64 + 4);
        v67 = bswap32(*(v64 + 2));
        v68 = HIWORD(v67) & 0x7FFF;
        v69 = __rev16(*(v64 + 3));
        if (v68 <= 4)
        {
          if ((HIWORD(v67) & 0x7FFF) > 2u)
          {
            if (v68 != 3)
            {
              if (v68 == 4)
              {
                v75 = ne_log_obj();
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *&buf[4] = v40;
                  *&buf[8] = 1024;
                  *&buf[10] = v69;
                  _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: BROWSER-PROXY[%d] = auto-detect %d.\n", buf, 0xEu);
                }

                LODWORD(v175) = v69;
              }

              goto LABEL_113;
            }

            v79 = ne_log_obj();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v40;
              *&buf[8] = 1024;
              *&buf[10] = v69;
              v72 = v79;
              v73 = "IPSec Network Configuration: BROWSER-PROXY[%d] = connection-type %d.\n";
              goto LABEL_108;
            }
          }

          else
          {
            if (v68 == 1)
            {
              v78 = ne_log_obj();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *&buf[4] = v40;
                *&buf[8] = 1024;
                *&buf[10] = v69;
                _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: BROWSER-PROXY[%d] = setting %d.\n", buf, 0xEu);
              }

              v172 = v69;
              goto LABEL_113;
            }

            if (v68 == 2)
            {
              v74 = ne_log_obj();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *&buf[4] = v40;
                *&buf[8] = 1024;
                *&buf[10] = v69;
                v72 = v74;
                v73 = "IPSec Network Configuration: BROWSER-PROXY[%d] = browser-type %d.\n";
                goto LABEL_108;
              }
            }
          }
        }

        else if ((HIWORD(v67) & 0x7FFF) <= 6u)
        {
          if (v68 != 5)
          {
            if (v68 != 6 || v196)
            {
              goto LABEL_113;
            }

            v76 = v64 + 8;
            v77 = *(v64 + 3) ? v69 - (v76[v69 - 1] == 0) : 0;
            v196 = CFStringCreateWithBytes(0, v76, v77, 0x8000100u, 0);
            v86 = ne_log_obj();
            if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_113;
            }

            v87 = CFStringGetCStringPtr(v196, 0);
            *buf = 67109378;
            *&buf[4] = v40;
            *&buf[8] = 2080;
            *&buf[10] = v87;
            v72 = v86;
            v73 = "IPSec Network Configuration: BROWSER-PROXY[%d] = server %s.\n";
LABEL_121:
            v82 = 18;
            goto LABEL_109;
          }

          v81 = ne_log_obj();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v40;
            *&buf[8] = 1024;
            *&buf[10] = v69;
            v72 = v81;
            v73 = "IPSec Network Configuration: BROWSER-PROXY[%d] = protocol %d.\n";
LABEL_108:
            v82 = 14;
LABEL_109:
            _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, v73, buf, v82);
          }
        }

        else
        {
          if (v68 == 7)
          {
            v80 = ne_log_obj();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v40;
              *&buf[8] = 1024;
              *&buf[10] = v69;
              _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: BROWSER-PROXY[%d] = port %d.\n", buf, 0xEu);
            }

            HIDWORD(v175) = v69;
            goto LABEL_113;
          }

          if (v68 == 8)
          {
            v83 = ne_log_obj();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v40;
              *&buf[8] = 1024;
              *&buf[10] = v69;
              _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: BROWSER-PROXY[%d] = bypass-local %d.\n", buf, 0xEu);
            }

            v38 = v69;
            goto LABEL_113;
          }

          if (v68 == 9 && !v195)
          {
            v195 = CFStringCreateWithBytes(0, v64 + 8, v69, 0, 0);
            v70 = ne_log_obj();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = CFStringGetCStringPtr(v195, 0);
              *buf = 67109378;
              *&buf[4] = v40;
              *&buf[8] = 2080;
              *&buf[10] = v71;
              v72 = v70;
              v73 = "IPSec Network Configuration: BROWSER-PROXY[%d] = bypass-address-list %s.\n";
              goto LABEL_121;
            }
          }
        }

LABEL_113:
        if (v67 >> 16 >= 0)
        {
          v84 = v69;
        }

        else
        {
          v84 = 0;
        }

        v85 = v65 - v84;
        v64 = v66 + v84;
        ++v40;
        v65 = v85 - 4;
        if (v85 <= 4)
        {
          v34 = v183;
          v35 = v63;
          goto LABEL_170;
        }
      }
    }

    if (v43 == 3)
    {
      if (v197 || (v197 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks)) != 0)
      {
        v88 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", *(v35 + 4), *(v35 + 5), *(v35 + 6), *(v35 + 7));
        if (v88)
        {
          v89 = v88;
          v177 = v44;
          v44 = v38;
          v90 = v42;
          CFArrayAppendValue(v197, v88);
          v91 = ne_log_obj();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v92 = CFStringGetCStringPtr(v89, 0);
            *buf = 136315138;
            *&buf[4] = v92;
            _os_log_impl(&dword_0, v91, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: INTERNAL-IP4-DNS = %s.\n", buf, 0xCu);
          }

          CFRelease(v89);
          v42 = v90;
          v38 = v44;
          LODWORD(v44) = v177;
        }
      }
    }

    else
    {
      if (v43 == 28672)
      {
        if (*(v29 + 960))
        {
          goto LABEL_172;
        }

        *(v29 + 960) = CFStringCreateWithBytes(0, v35 + 4, v44, 0, 0);
        v124 = ne_log_obj();
        if (!os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_172;
        }

        v125 = CFStringGetCStringPtr(*(v29 + 960), 0);
        *buf = 136315138;
        *&buf[4] = v125;
        v61 = v124;
        v62 = "IPSec Network Configuration: BANNER = %s.\n";
      }

      else
      {
        if (v43 != 28674)
        {
          goto LABEL_172;
        }

        if (v199)
        {
          goto LABEL_172;
        }

        v199 = CFStringCreateWithBytes(0, v35 + 4, v44, 0, 0);
        v59 = ne_log_obj();
        if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_172;
        }

        v60 = CFStringGetCStringPtr(v199, 0);
        *buf = 136315138;
        *&buf[4] = v60;
        v61 = v59;
        v62 = "IPSec Network Configuration: DEF-DOMAIN = %s.\n";
      }

      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, v62, buf, 0xCu);
    }

LABEL_172:
    if (v42 >> 16 >= 0)
    {
      v126 = v44;
    }

    else
    {
      v126 = 0;
    }

    v34 = v34 - v126 - 4;
    v35 = (v35 + v126 + 4);
  }

  while (v34 > 0);
  if (v171)
  {
    v127 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v127, @"Mode", @"Tunnel");
    CFDictionarySetValue(v127, @"Direction", @"InOut");
    CFDictionarySetValue(v127, @"Level", @"Require");
    v129 = v190;
    v128.s_addr = v190;
    v203 = v190;
    v130 = inet_ntoa(v128);
    AddString(v127, @"LocalAddress", v130);
    AddNumber(v127, @"LocalPrefix", 32);
    v131 = ne_log_obj();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      v132.s_addr = v190;
      v133 = inet_ntoa(v132);
      *buf = 136315394;
      *&buf[4] = v133;
      *&buf[12] = 1024;
      *&buf[14] = 32;
      _os_log_impl(&dword_0, v131, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: DEFAULT-ROUTE = local-address %s/%d.\n", buf, 0x12u);
    }

    *(v29 + 908) = v190;
    CFDictionarySetValue(v127, @"RemoteAddress", @"0.0.0.0");
    AddNumber(v127, @"RemotePrefix", 0);
    update_service_route(v29, v190, -1, 0, 0, 0, 0, 0);
    v134 = theArray;
    CFArrayAppendValue(theArray, v127);
    CFRelease(v127);
    v135 = v171;
  }

  else
  {
    v135 = 0;
    v129 = v190;
    v134 = theArray;
  }

  CFDictionarySetValue(Mutable, @"Policies", v134);
  CFRelease(v134);
  if (!a3)
  {
LABEL_201:
    if (!a2)
    {
      my_CFRelease(&v198);
      my_CFRelease(&v199);
      my_CFRelease(&v197);
      my_CFRelease(&v196);
      my_CFRelease(&v195);
      my_CFRelease(&v202);
      my_CFRelease(&v201);
      my_CFRelease(&Mutable);
LABEL_239:
      if (a3)
      {
        *(v29 + 876) = 1;
      }

      v167 = ne_log_obj();
      if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v167, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration established.\n", buf, 2u);
      }

      return;
    }

    flags = 0;
    v139 = SCNetworkReachabilityCreateWithAddress(0, (v29 + 744));
    v140 = SCNetworkReachabilityGetFlags(v139, &flags);
    v141 = flags;
    CFRelease(v139);
    *buf = 0;
    __s[0] = 0;
    if (v140 && (v141 & 0x20000) != 0 || !*(v29 + 940))
    {
      if (!*(v29 + 918))
      {
        v143 = 0;
LABEL_211:
        if (v171)
        {
          v147 = 0;
        }

        else
        {
          v203 = v190;
          v147 = sub_23B70(Mutable, v190);
          *buf = v147;
          if (!v147)
          {
            sub_1E1E8(3, @"IPSec Controller: create_ipv4_route_array failed");
          }
        }

        if (!*(v29 + 584))
        {
          sub_23E44(v29, &v203, v135);
        }

        v202 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        v201 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        stateaddr = create_stateaddr(gDynamicStore, *(v29 + 24), v29 + 104, *(v29 + 748), v190, v190, v168, v135, v147, v143);
        my_CFRelease(buf);
        my_CFRelease(__s);
        if (stateaddr)
        {
          CFArrayAppendValue(v201, kSCEntNetIPv4);
          CFArrayAppendValue(v202, stateaddr);
          CFRelease(stateaddr);
        }

        if (v171)
        {
          ipv6_dummy_primary = create_ipv6_dummy_primary(v29 + 104);
          if (ipv6_dummy_primary)
          {
            v150 = ipv6_dummy_primary;
            *(v29 + 892) = 1;
            CFArrayAppendValue(v201, kSCEntNetIPv6);
            CFArrayAppendValue(v202, v150);
            CFRelease(v150);
          }
        }

        if (v197)
        {
          v152 = v198;
          v151 = v199;
          if (!v198 && v199)
          {
            v153 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            v198 = v153;
            v151 = v199;
            if (v153)
            {
              CFArrayAppendValue(v153, v199);
              v152 = v198;
              v151 = v199;
            }

            else
            {
              v152 = 0;
            }
          }

          dns = create_dns(gDynamicStore, *(v29 + 24), v197, v151, v152, 0);
          if (dns)
          {
            v155 = dns;
            CFArrayAppendValue(v201, kSCEntNetDNS);
            CFArrayAppendValue(v202, v155);
            CFRelease(v155);
          }
        }

        if (v172 == 2)
        {
          v156 = gDynamicStore;
          v157 = *(v29 + 24);
          v159 = v195;
          v158 = v196;
          v160 = v198;
          v161 = v175;
          v162 = HIDWORD(v175);
          v163 = v38;
        }

        else
        {
          v160 = v198;
          if (!v198)
          {
LABEL_236:
            v166 = *(v29 + 584);
            if (v166)
            {
              ne_sm_bridge_filter_state_dictionaries(v166);
            }

            publish_multiple_dicts(gDynamicStore, *(v29 + 24), v201, v202);
            sub_1E1E8(7, @"IPSec Controller: Published dictionaries to dynamic store.");
            my_CFRelease(&v198);
            my_CFRelease(&v199);
            my_CFRelease(&v197);
            my_CFRelease(&v196);
            my_CFRelease(&v195);
            my_CFRelease(&v202);
            my_CFRelease(&v201);
            my_CFRelease(&Mutable);
            *(v29 + 872) = 1;
            goto LABEL_239;
          }

          v156 = gDynamicStore;
          v157 = *(v29 + 24);
          v161 = 0;
          v158 = 0;
          v162 = 0;
          v163 = 0;
          v159 = 0;
        }

        proxies = create_proxies(v156, v157, v161, v158, v162, v163, v159, v160);
        if (proxies)
        {
          v165 = proxies;
          CFArrayAppendValue(v201, kSCEntNetProxies);
          CFArrayAppendValue(v202, v165);
          CFRelease(v165);
        }

        goto LABEL_236;
      }

      v142 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v143 = v142;
      __s[0] = v142;
      v144 = *(v29 + 748);
      v146 = v29 + 918;
      v145 = 0;
    }

    else
    {
      v142 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v143 = v142;
      __s[0] = v142;
      v144 = *(v29 + 748);
      v145 = *(v29 + 940);
      v146 = 0;
    }

    sub_23958(v142, v144, 0xFFFFFFFF, v145, 1, v146);
    goto LABEL_211;
  }

  sub_1E1E8(7, @"IPSec Controller: Mode Config Policies %@");
  if ((IPSecInstallPolicies(Mutable, -1, &v200) & 0x80000000) != 0)
  {
    v137 = @"IPSec Controller: IPSecInstallPolicies failed '%s'";
    goto LABEL_195;
  }

  *(v29 + 880) = my_CFRetain(Mutable);
  *(v29 + 888) = v135;
  *(v29 + 896) = v129;
  *(v29 + 900) = v168;
  tun_interface = create_tun_interface((v29 + 104), 0x10u, (v29 + 120), 3, 0);
  *(v29 + 904) = tun_interface;
  if (tun_interface == -1)
  {
    v137 = @"IPSec Controller: cannot create tunnel interface";
    goto LABEL_195;
  }

  if (set_tun_delegate(tun_interface, (v29 + 918)))
  {
    v137 = @"IPSec Controller: cannot set delegate interface for tunnel interface";
    goto LABEL_195;
  }

  set_ifmtu(v29 + 104, 1280);
  set_ifaddr(v29 + 104, v129, v129, v168);
  if (!racoon_send_cmd_start_ph2(*(v29 + 784), *(v29 + 748), Mutable))
  {
    sub_2378C((v29 + 104), v188);
    goto LABEL_201;
  }

  v137 = @"IPSec Controller: racoon_send_cmd_start_ph2 failed '%s'";
LABEL_195:
  sub_1E1E8(3, v137);
  my_CFRelease(&v198);
  my_CFRelease(&v199);
  my_CFRelease(&v197);
  my_CFRelease(&v196);
  my_CFRelease(&v195);
  my_CFRelease((v29 + 960));
  my_CFRelease(&v202);
  my_CFRelease(&v201);
  my_CFRelease(&Mutable);
  v138 = *(v29 + 880);
  if (v138)
  {
    IPSecRemovePolicies(v138, -1, &v200);
    my_CFRelease((v29 + 880));
  }

  if (*(v29 + 888))
  {
    *(v29 + 888) = 0;
  }

  my_close(*(v29 + 904));
  *(v29 + 904) = -1;
}

void sub_20628(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = 0;
  if (*(a1 + 872))
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v7 = Mutable;
    CFArrayAppendValue(Mutable, kSCEntNetIPv4);
    if (*(a1 + 892))
    {
      CFArrayAppendValue(Mutable, kSCEntNetIPv6);
      *(a1 + 892) = 0;
    }

    CFArrayAppendValue(Mutable, kSCEntNetDNS);
    CFArrayAppendValue(Mutable, kSCEntNetProxies);
    unpublish_multiple_dicts(gDynamicStore, *(a1 + 24), Mutable, 1);
    my_CFRelease(&v7);
    if (*(a1 + 888))
    {
      *(a1 + 888) = 0;
    }

    my_CFRelease((a1 + 960));
    *(a1 + 872) = 0;
  }

  if (a2 && *(a1 + 876))
  {
    v5 = *(a1 + 880);
    if (v5)
    {
      if (IPSecRemovePolicies(v5, -1, &v6))
      {
        sub_1E1E8(3, @"IPSec Controller: Cannot remove mode config policies, error '%s'");
      }

      my_CFRelease((a1 + 880));
    }

    IPSecRemoveSecurityAssociations((a1 + 616), (a1 + 744));
    clear_ifaddr(a1 + 104, *(a1 + 896));
    my_close(*(a1 + 904));
    *(a1 + 904) = -1;
    free_service_routes(a1);
    *(a1 + 876) = 0;
  }
}

uint64_t ipsec_ondemand_add_service_data(uint64_t a1, __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 136), kSCPropNetIPSecOnDemandMatchDomainsAlways);
  if (isArray(Value))
  {
    CFDictionarySetValue(a2, @"OnDemandMatchDomainsAlways", Value);
  }

  v5 = CFDictionaryGetValue(*(a1 + 136), kSCPropNetIPSecOnDemandMatchDomainsOnRetry);
  if (isArray(v5))
  {
    CFDictionarySetValue(a2, @"OnDemandMatchDomainsOnRetry", v5);
  }

  v6 = CFDictionaryGetValue(*(a1 + 136), kSCPropNetIPSecOnDemandMatchDomainsNever);
  if (isArray(v6))
  {
    CFDictionarySetValue(a2, @"OnDemandMatchDomainsNever", v6);
  }

  v7 = CFDictionaryGetValue(*(a1 + 136), @"RemoteAddress");
  if (isString(v7))
  {
    CFDictionarySetValue(a2, @"RemoteAddress", v7);
  }

  return 0;
}

uint64_t racoon_send_cmd_reconnect(int a1, int a2)
{
  v4[1] = 0x400000000000000;
  v4[0] = 5888;
  v5 = a2;
  sub_1E1E8(5, @"IPSec Controller: sending RECONNECT to racoon control socket");
  sub_20920(a1, v4, 0x14uLL);
  return 0;
}

uint64_t sub_20920(int __fd, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return sub_1E1E8(5, @"Sent %zd/%zu bytes");
  }

  v6 = 0;
  while (1)
  {
    v7 = write(__fd, (a2 + v6), a3 - v6);
    if (v7 < 1)
    {
      break;
    }

    v6 += v7;
LABEL_11:
    if (v6 >= a3)
    {
      return sub_1E1E8(5, @"Sent %zd/%zu bytes");
    }
  }

  v8 = *__error();
  if (v8 != 35)
  {
    if (v8 != 4)
    {
      strerror(v8);
      v11 = @"Received write error %s";
      goto LABEL_16;
    }

    strerror(4);
    v9 = 5;
    v10 = @"Received write error %s";
    goto LABEL_10;
  }

  strerror(35);
  sub_1E1E8(3, @"Received write error %s");
  if (!write_barrier(__fd))
  {
    v9 = 6;
    v10 = @"Received writeable event";
LABEL_10:
    sub_1E1E8(v9, v10);
    goto LABEL_11;
  }

  v11 = @"Failed to write packet";
LABEL_16:
  sub_1E1E8(3, v11);
  return sub_1E1E8(5, @"Sent %zd/%zu bytes");
}

void ipsec_network_event(uint64_t a1, uint64_t a2)
{
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  v55 = 0;
  if (*(a1 + 617) == 2)
  {
    IPSecLogVPNInterfaceAddressEvent("ipsec_network_event", a2, *(a1 + 972), (a1 + 918), (a1 + 620));
  }

  if (*(a1 + 584))
  {
    if ((*(a1 + 74) & 0x20) != 0)
    {
      if (*(a1 + 934))
      {
        v60[0] = 0;
        is_cellular = primary_interface_is_cellular(v60);
        if (v60[0])
        {
          if (!is_cellular)
          {
            v5 = @"IPSec Controller: Disconnecting tunnel over cellular in favor of better interface";
            v6 = 5;
LABEL_19:
            sub_1E1E8(v6, v5);
            *(a1 + 596) = 15;
            ipsec_stop(a1);
            return;
          }
        }
      }
    }
  }

  if ((*(a2 + 20) - 1) > 2)
  {
    return;
  }

  snprintf(__str, 0x20uLL, "%s%d", (a2 + 32), *(a2 + 28));
  if (!strncmp(__str, (a1 + 918), 0x10uLL))
  {
    if (*(a2 + 24) == 6)
    {
      v5 = @"IPSec Controller: Network changed on underlying PPP interface";
      goto LABEL_18;
    }

    if (!getifaddrs(&v55))
    {
      v21 = v55;
      if (v55)
      {
        v22 = v55;
        do
        {
          ifa_name = v22->ifa_name;
          v25 = !ifa_name || (ifa_addr = v22->ifa_addr) == 0 || strncmp(ifa_name, (a1 + 918), 0x10uLL) || ifa_addr->sa_family != 2 || *(a1 + 617) != 2 || *&ifa_addr->sa_data[2] != *(a1 + 620);
          v22 = v22->ifa_next;
        }

        while (v22 && v25);
        freeifaddrs(v21);
        if (!v25)
        {
          if (*(a1 + 952))
          {
            sub_1EA40(a1, 6u);
            sub_1E1E8(3, @"IPSec Controller: Network changed, address came back on underlying interface, cancel timer");
            Current = CFRunLoopGetCurrent();
            CFRunLoopRemoveTimer(Current, *(a1 + 952), kCFRunLoopCommonModes);
            my_CFRelease((a1 + 952));
            if ((*(a1 + 73) & 4) != 0)
            {
              racoon_send_cmd_start_dpd(*(a1 + 784), *(a1 + 748));
              *(a1 + 992) = 1;
            }

            else
            {
              sub_1E1E8(5, @"IPSec Controller: asserting connection");
              racoon_send_cmd_assert(a1);
            }
          }

          return;
        }
      }

      else
      {
        freeifaddrs(0);
      }
    }

    v7 = gDynamicStore;
    if (gDynamicStore)
    {
      if ((*(a2 + 20) & 0xFFFFFFFE) != 2)
      {
        goto LABEL_45;
      }

      memset(v60, 0, 512);
      memset(v59, 0, 512);
      v8 = CFStringCreateWithCStringNoCopy(0, (a1 + 918), 0x600u, kCFAllocatorNull);
      if (v8)
      {
        v9 = v8;
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        v11 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, v9, kSCEntNetAirPort);
        CFArrayAppendValue(Mutable, NetworkInterfaceEntity);
        CFRelease(NetworkInterfaceEntity);
        v13 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v9, kSCEntNetAirPort);
        CFArrayAppendValue(Mutable, v13);
        CFRelease(v13);
        NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
        CFArrayAppendValue(v11, NetworkServiceEntity);
        CFRelease(NetworkServiceEntity);
        v15 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv4);
        CFArrayAppendValue(v11, v15);
        CFRelease(v15);
        v16 = SCDynamicStoreCopyMultiple(v7, Mutable, v11);
        CFRelease(Mutable);
        CFRelease(v11);
        if (v16)
        {
          Count = CFDictionaryGetCount(v16);
          theDict = v16;
          if (Count <= 0)
          {
            syslog(3, "%s: empty SCDynamicStore dictionary", "ipsec_network_event");
            CFRelease(v9);
            v33 = 0;
            v34 = 0;
          }

          else
          {
            v18 = Count;
            cf1 = v9;
            if (Count < 0x81)
            {
              v20 = v59;
              Typed = v60;
            }

            else
            {
              Typed = CFAllocatorAllocateTyped();
              v20 = CFAllocatorAllocateTyped();
            }

            CFDictionaryGetKeysAndValues(v16, Typed, v20);
            v52 = 0;
            for (i = 0; i != v18; ++i)
            {
              v36 = Typed[i];
              v37 = v20[i];
              TypeID = CFStringGetTypeID();
              if (v36)
              {
                if (CFGetTypeID(v36) == TypeID)
                {
                  v39 = CFDictionaryGetTypeID();
                  if (v37)
                  {
                    if (CFGetTypeID(v37) == v39)
                    {
                      if (CFStringHasSuffix(v36, kSCEntNetInterface))
                      {
                        Value = CFDictionaryGetValue(v37, kSCPropNetInterfaceDeviceName);
                        v41 = CFStringGetTypeID();
                        if (Value && CFGetTypeID(Value) == v41 && CFEqual(cf1, Value))
                        {
                          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v36, @"/");
                          if (CFArrayGetCount(ArrayBySeparatingStrings) < 4)
                          {
                            LOBYTE(v44) = 1;
                          }

                          else
                          {
                            ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
                            v44 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, ValueAtIndex, kSCEntNetIPv4);
                            if (v44)
                            {
                              v45 = CFDictionaryGetValue(theDict, v44);
                              v46 = v45 != 0;
                              if (!v45)
                              {
                                syslog(5, "%s: detected disabled IPv4 Config", "ipsec_network_event");
                              }

                              CFRelease(v44);
                              LOBYTE(v44) = v46;
                            }

                            else
                            {
                              syslog(5, "%s: detected disabled IPv4 Config", "ipsec_network_event");
                            }
                          }

                          if (ArrayBySeparatingStrings)
                          {
                            CFRelease(ArrayBySeparatingStrings);
                          }

                          v52 = 1;
                          v33 = 1;
                          if ((v44 & 1) == 0)
                          {
                            goto LABEL_95;
                          }
                        }
                      }

                      else if (CFStringHasSuffix(v36, kSCEntNetAirPort))
                      {
                        if (CFStringHasPrefix(v36, kSCDynamicStoreDomainSetup))
                        {
                          v47 = CFDictionaryGetValue(v37, @"PowerEnabled");
                          v48 = CFBooleanGetTypeID();
                          if (v47 && CFGetTypeID(v47) == v48 && CFEqual(v47, kCFBooleanFalse))
                          {
                            syslog(5, "%s: detected AirPort, PowerEnable == FALSE", "ipsec_network_event");
                            v33 = 1;
                            goto LABEL_95;
                          }
                        }

                        else if (CFStringHasPrefix(v36, kSCDynamicStoreDomainState))
                        {
                          valuePtr = 0;
                          v49 = CFDictionaryGetValue(v37, @"Power Status");
                          v50 = CFNumberGetTypeID();
                          if (v49)
                          {
                            if (CFGetTypeID(v49) == v50 && CFNumberGetValue(v49, kCFNumberShortType, &valuePtr) && !valuePtr)
                            {
                              syslog(5, "%s: detected AirPort, PowerStatus == 0", "ipsec_network_event");
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v33 = 0;
LABEL_95:
            CFRelease(cf1);
            if (Typed != v60)
            {
              CFAllocatorDeallocate(0, Typed);
              CFAllocatorDeallocate(0, v20);
            }

            v34 = v52;
          }

          CFRelease(theDict);
          if (v33 == 1 || !v34)
          {
            goto LABEL_100;
          }

LABEL_45:
          if (*(a1 + 952))
          {
            if (*(a1 + 617) == 2 && *(a1 + 592) == 8 && (*(a2 + 20) - 1) <= 1 && *(a1 + 620) != *(a2 + 48) && *(a2 + 48) != 65193)
            {
              v5 = @"IPSec Controller: the underlying interface %s address changed.";
              goto LABEL_18;
            }
          }

          else
          {
            v51 = *(a1 + 972);
            sub_1E1E8(3, @"IPSec Controller: Network changed, address disappeared on underlying interface, install timer %d secs");
            v27 = CFAbsoluteTimeGetCurrent();
            LODWORD(v28) = *(a1 + 972);
            v29 = CFRunLoopTimerCreate(0, v27 + v28, 3.1536e10, 0, 0, sub_21668, &context);
            *(a1 + 952) = v29;
            if (!v29)
            {
              v5 = @"IPSec Controller: Network changed, cannot create RunLoop timer";
              goto LABEL_18;
            }

            sub_1EA40(a1, 8u);
            v30 = CFRunLoopGetCurrent();
            CFRunLoopAddTimer(v30, *(a1 + 952), kCFRunLoopCommonModes);
            if (*(a1 + 984))
            {
              v31 = (a1 + 984);
              v32 = CFRunLoopGetCurrent();
              CFRunLoopRemoveTimer(v32, *v31, kCFRunLoopCommonModes);
              my_CFRelease(v31);
            }
          }

          return;
        }

        syslog(3, "%s: failed to initialize SCDynamicStore dictionary", "ipsec_network_event");
        CFRelease(v9);
      }

      else
      {
        syslog(3, "%s: failed to initialize interface CFString", "ipsec_network_event");
      }

LABEL_100:
      v5 = @"IPSec Controller: the underlying interface/service has changed unrecoverably.";
      goto LABEL_18;
    }

    syslog(7, "%s: invalid SCDynamicStore reference", "ipsec_network_event");
    goto LABEL_45;
  }

  if (*(a1 + 592) == 8 && *(a1 + 952) && (*(a2 + 20) - 1) <= 1 && *(a2 + 48) != -343)
  {
    v5 = @"IPSec Controller: an alternative interface %s was detected while the underlying interface %s was down.";
LABEL_18:
    v6 = 3;
    goto LABEL_19;
  }
}

uint64_t racoon_send_cmd_start_dpd(int a1, int a2)
{
  v4[1] = 0x400000000000000;
  v4[0] = 5376;
  v5 = a2;
  sub_1E1E8(5, @"IPSec Controller: sending START_DPD to racoon control socket");
  sub_20920(a1, v4, 0x14uLL);
  return 0;
}

uint64_t racoon_send_cmd_assert(uint64_t a1)
{
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  v8 = 5632;
  v9 = 0;
  v10 = 0;
  if (*(a1 + 617) == 2)
  {
    v10 = *(a1 + 620);
  }

  v11 = *(a1 + 748);
  HIWORD(v9) = 2048;
  sub_20920(*(a1 + 784), &v8, 0x18uLL);
  *(a1 + 912) = 0;
  if (*(a1 + 592) == 6)
  {
    *(a1 + 600) = 1;
  }

  v2 = *(a1 + 776);
  v3 = CFAbsoluteTimeGetCurrent() + 3.0;
  if (v2)
  {
    CFRunLoopTimerSetNextFireDate(v2, v3);
LABEL_9:
    sub_1E1E8(5, @"IPSec Controller: wait for %d secs before forcing SAs to rekey");
    return 0;
  }

  v4 = CFRunLoopTimerCreate(0, v3, 3.1536e10, 0, 0, sub_22240, &context);
  *(a1 + 776) = v4;
  if (v4)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddTimer(Current, *(a1 + 776), kCFRunLoopCommonModes);
    goto LABEL_9;
  }

  sub_1E1E8(3, @"IPSec Controller: assert cannot create RunLoop timer");
  if (!*(a1 + 596))
  {
    *(a1 + 596) = 1;
  }

  sub_1E1E8(3, @"IPSec Controller: ASSERT failed");
  ipsec_stop(a1);
  return 0xFFFFFFFFLL;
}

uint64_t sub_21668(uint64_t a1, uint64_t a2)
{
  sub_1E1E8(5, @"IPSec Controller: Network change event timer expired");
  if (*(a2 + 617) == 2)
  {
    IPSecLogVPNInterfaceAddressEvent("event_timer", 0, *(a2 + 972), (a2 + 918), (a2 + 620));
  }

  *(a2 + 596) = 15;

  return ipsec_stop(a2);
}

uint64_t racoon_send_cmd_connect(int a1, int a2)
{
  v6[1] = 0x400000000000000;
  v6[0] = 4352;
  v7 = a2;
  sub_1E1E8(5, @"IPSec Controller: sending CONNECT to racoon control socket");
  sub_20920(a1, v6, 0x14uLL);
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "IPSec Phase1 starting.\n", v5, 2u);
  }

  return 0;
}

uint64_t racoon_send_cmd_disconnect(int a1, int a2)
{
  v4[1] = 0x400000000000000;
  v4[0] = 4608;
  v5 = a2;
  sub_1E1E8(5, @"IPSec Controller: sending DISCONNECT to racoon control socket, address 0x%x");
  sub_20920(a1, v4, 0x14uLL);
  return 0;
}

uint64_t racoon_send_cmd_bind(int a1, int a2, char *__s)
{
  if (__s)
  {
    v6 = strlen(__s);
  }

  else
  {
    v6 = 0;
  }

  v9 = 0;
  HIWORD(v9) = bswap32(v6 + 8) >> 16;
  v8 = 256;
  v10 = a2;
  v11 = bswap32(v6) >> 16;
  sub_1E1E8(5, @"IPSec Controller: sending BIND to racoon control socket");
  sub_20920(a1, &v8, 0x18uLL);
  if (v6)
  {
    sub_20920(a1, __s, v6);
  }

  return 0;
}

uint64_t racoon_send_cmd_set_nat64_prefix(int a1, __int128 *a2)
{
  v4[1] = 0x1000000000000000;
  v4[0] = 6144;
  v5 = *a2;
  sub_1E1E8(5, @"IPSec Controller: sending SET_NAT64_PREFIX to racoon control socket");
  sub_20920(a1, v4, 0x20uLL);
  return 0;
}

uint64_t racoon_send_cmd_unbind(int a1, int a2)
{
  v4[1] = 0x400000000000000;
  v4[0] = 512;
  v5 = a2;
  sub_1E1E8(5, @"IPSec Controller: sending UNBIND to racoon control socket");
  sub_20920(a1, v4, 0x14uLL);
  return 0;
}

uint64_t racoon_send_cmd_start_ph2(int a1, int a2, const __CFDictionary *a3)
{
  v6 = IPSecCountPolicies(a3);
  if (v6 < 1 || (v7 = 48 * v6, (v8 = malloc_type_malloc(v7 + 88, 0xAB8A860CuLL)) == 0))
  {
    sub_1E1E8(3, @"IPSec Controller: failed to start phase2 - '%s'");
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  bzero(v8, v7 + 88);
  *v9 = 4864;
  *(v9 + 4) = a2;
  *(v9 + 5) = 269352960;
  *(v9 + 13) = 117440512;
  if (!GetStrAddrFromDict(a3, @"LocalAddress", v50, 256) || !GetStrAddrFromDict(a3, @"RemoteAddress", v49, 256) || (Value = CFDictionaryGetValue(a3, @"Policies"), !isArray(Value)) || (Count = CFArrayGetCount(Value)) == 0)
  {
LABEL_59:
    sub_1E1E8(3, @"IPSec Controller: failed to start phase2 - '%s'");
    free(v9);
    return 0xFFFFFFFFLL;
  }

  __fd = a1;
  v12 = (v9 + 16);
  if (Count >= 1)
  {
    v13 = Count;
    v14 = 0;
    v15 = 0;
    v40 = Count;
    v41 = Value;
    while (1)
    {
      v47.s_addr = 0;
      *&v46[0].s_addr = 0;
      v44 = 255;
      v45 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v14);
      if (!isDictionary(ValueAtIndex))
      {
        goto LABEL_59;
      }

      v17 = CFDictionaryGetValue(ValueAtIndex, @"Mode");
      if (isString(v17) && !CFEqual(v17, @"Tunnel"))
      {
        if (!CFEqual(v17, @"Transport"))
        {
          goto LABEL_59;
        }

        v18 = 1;
      }

      else
      {
        v18 = 0;
      }

      v19 = CFDictionaryGetValue(ValueAtIndex, @"Direction");
      if (!isString(v19))
      {
        goto LABEL_21;
      }

      if (CFEqual(v19, @"In"))
      {
        v20 = 0;
        v42 = 1;
      }

      else
      {
        if (!CFEqual(v19, @"Out"))
        {
          if (!CFEqual(v19, @"InOut"))
          {
            goto LABEL_59;
          }

LABEL_21:
          v20 = 0;
          v42 = 0;
          goto LABEL_22;
        }

        v42 = 0;
        v20 = 1;
      }

LABEL_22:
      v21 = CFDictionaryGetValue(ValueAtIndex, @"Level");
      if (isString(v21) && (CFEqual(v21, @"Unique") || CFEqual(v21, @"Require")))
      {
        if (v18)
        {
          v43 = 0;
          GetIntFromDict(ValueAtIndex, @"LocalPort", &v43, 0);
          v22 = v43;
          if (!inet_aton(v50, &v47))
          {
            goto LABEL_59;
          }

          v23 = v15;
          s_addr = v47.s_addr;
          GetIntFromDict(ValueAtIndex, @"RemotePort", &v43, 0);
          v25 = v43;
          if (!inet_aton(v49, &v46[1]))
          {
            goto LABEL_59;
          }

          v26 = bswap32(v22) >> 16;
          v27 = bswap32(v25) >> 16;
          if (s_addr)
          {
            v28 = -1;
          }

          else
          {
            v28 = 0;
          }

          if (v46[1].s_addr)
          {
            v29 = -1;
          }

          else
          {
            v29 = 0;
          }

          GetIntFromDict(ValueAtIndex, @"Protocol", &v44, 0);
LABEL_49:
          v33 = v42;
        }

        else
        {
          if (!GetStrAddrFromDict(ValueAtIndex, @"LocalAddress", v48, 256) || !inet_aton(v48, &v47))
          {
            goto LABEL_59;
          }

          GetIntFromDict(ValueAtIndex, @"LocalPrefix", v46, 32);
          v30 = v46[0].s_addr;
          if (v46[0].s_addr)
          {
            v31 = 0;
            do
            {
              v28 = (v31 >> 1) | 0x80000000;
              v31 = v28;
              --v30;
            }

            while (v30);
          }

          else
          {
            v28 = 0;
          }

          if (!GetStrAddrFromDict(ValueAtIndex, @"RemoteAddress", v48, 256) || !inet_aton(v48, &v46[1]))
          {
            goto LABEL_59;
          }

          v23 = v15;
          GetIntFromDict(ValueAtIndex, @"RemotePrefix", &v45, 32);
          v32 = v45;
          if (!v45)
          {
            LOWORD(v26) = 0;
            LOWORD(v27) = 0;
            v29 = 0;
            goto LABEL_49;
          }

          v29 = 0;
          v33 = v42;
          do
          {
            v29 = (v29 >> 1) | 0x80000000;
            --v32;
          }

          while (v32);
          LOWORD(v26) = 0;
          LOWORD(v27) = 0;
        }

        v34 = bswap32(v28);
        v35 = bswap32(v29);
        if (v33)
        {
          v15 = v23;
        }

        else
        {
          v12->s_addr = v47.s_addr;
          v12[1].s_addr = v34;
          LOWORD(v12[4].s_addr) = v26;
          v12[2].s_addr = v46[1];
          v12[3].s_addr = v35;
          HIWORD(v12[4].s_addr) = v27;
          LOWORD(v12[5].s_addr) = bswap32(v44) >> 16;
          v15 = (v23 + 1);
          v12 += 6;
        }

        v13 = v40;
        if ((v20 & 1) == 0)
        {
          v12[2].s_addr = v47.s_addr;
          v12[3].s_addr = v34;
          HIWORD(v12[4].s_addr) = v26;
          v12->s_addr = v46[1];
          v12[1].s_addr = v35;
          LOWORD(v12[4].s_addr) = v27;
          LOWORD(v12[5].s_addr) = bswap32(v44) >> 16;
          v15 = (v15 + 1);
          v12 += 6;
        }

        Value = v41;
      }

      if (++v14 == v13)
      {
        goto LABEL_62;
      }
    }
  }

  LODWORD(v15) = 0;
LABEL_62:
  v9[13] = bswap32(v15) >> 16;
  v12->s_addr = 201326592;
  LOWORD(v12[1].s_addr) = 1;
  v12[2].s_addr = 201326592;
  LOWORD(v12[3].s_addr) = 0;
  v12[4].s_addr = 50331648;
  LOWORD(v12[5].s_addr) = 0;
  v12[6].s_addr = 318767360;
  LOWORD(v12[7].s_addr) = 0;
  v12[8].s_addr = 251658496;
  LOWORD(v12[9].s_addr) = 0;
  v12[10].s_addr = 234881280;
  LOWORD(v12[11].s_addr) = 0;
  v12[12].s_addr = 419430912;
  LOWORD(v12[13].s_addr) = 0;
  v37 = 24 * v15;
  v9[7] = bswap32(v37 + 72) >> 16;
  sub_1E1E8(5, @"IPSec Controller: sending START_PH2 to racoon control socket");
  sub_20920(__fd, v9, v37 + 88);
  v38 = ne_log_obj();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v47.s_addr) = 0;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "IPSec Phase2 starting.\n", &v47, 2u);
  }

  free(v9);
  return 0;
}

intptr_t write_barrier(int a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_source_create(&_dispatch_source_type_write, a1, 0, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_221FC;
  handler[3] = &unk_39450;
  handler[4] = v2;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_retain(v3);
  dispatch_retain(v2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_22204;
  v7[3] = &unk_39470;
  v7[4] = v2;
  v7[5] = v3;
  dispatch_source_set_cancel_handler(v3, v7);
  dispatch_activate(v3);
  v4 = dispatch_time(0, 250000000);
  v5 = dispatch_semaphore_wait(v2, v4);
  dispatch_source_cancel(v3);
  dispatch_release(v3);
  dispatch_release(v2);
  return v5;
}

void sub_22204(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

void sub_22240(uint64_t a1, uint64_t a2)
{
  sub_1E1E8(5, @"IPSec Controller: racoon_timer expired");
  v3 = *(a2 + 592);
  if ((v3 - 1) > 1 || (v4 = *(a2 + 1024)) == 0)
  {
LABEL_12:
    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        v12 = 7;
        goto LABEL_23;
      }

      if (v3 == 2)
      {
        v12 = 9;
LABEL_23:
        *(a2 + 596) = v12;

        ipsec_stop(a2);
        return;
      }

LABEL_21:
      v12 = 10;
      goto LABEL_23;
    }

    if (v3 == 3)
    {
      v14 = *(a2 + 912);
      if (v14 < 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v3 != 6)
      {
        goto LABEL_21;
      }

      v13 = *(a2 + 600);
      if (v13 == 1)
      {
        v17 = *(a2 + 784);
        v18 = *(a2 + 748);
        v24 = 0x400000000000000;
        *buffer = 5888;
        v25 = v18;
        sub_1E1E8(5, @"IPSec Controller: sending RECONNECT to racoon control socket");
        sub_20920(v17, buffer, 0x14uLL);
        if (*(a2 + 592) == 6)
        {
          *(a2 + 600) = 2;
        }

        v19 = *(a2 + 776);
        if (v19)
        {
          Current = CFAbsoluteTimeGetCurrent();
          CFRunLoopTimerSetNextFireDate(v19, Current + 10.0);
        }

        return;
      }

      if (v13 != 4)
      {
        goto LABEL_21;
      }

      v14 = *(a2 + 912);
      if (v14 <= 0)
      {
        goto LABEL_21;
      }
    }

    *(a2 + 912) = v14 - 1;
    sub_2378C((a2 + 104), (a2 + 908));
    v15 = *(a2 + 776);
    if (v15)
    {
      v16 = CFAbsoluteTimeGetCurrent() + 1.0;

      CFRunLoopTimerSetNextFireDate(v15, v16);
    }

    return;
  }

  v5 = *(a2 + 1036);
  if (CFArrayGetCount(v4) <= v5)
  {
    v3 = *(a2 + 592);
    goto LABEL_12;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 1024), *(a2 + 1036));
  if (ValueAtIndex)
  {
    v7 = ValueAtIndex;
    ++*(a2 + 1036);
    Value = CFDictionaryGetValue(ValueAtIndex, @"RemoteAddress");
    if (Value)
    {
      v9 = Value;
      if (CFDataGetLength(Value) >= 0x10)
      {
        *buffer = 0;
        v24 = 0;
        v27.length = CFDataGetLength(v9);
        v27.location = 0;
        CFDataGetBytes(v9, v27, buffer);
        *v21 = 0;
        v22 = 0;
        v10 = CFDictionaryGetValue(v7, @"RemoteAddressNAT64Prefix");
        if (v10)
        {
          v11 = v10;
          if (CFDataGetLength(v10) != 16)
          {
            return;
          }

          v28.length = CFDataGetLength(v11);
          v28.location = 0;
          CFDataGetBytes(v11, v28, v21);
        }

        sub_1E1E8(5, @"IPSec Controller: racoon_timer call racoon_restart_cisco_ipsec");
        sub_240C8(a2, buffer, v21, 0);
      }
    }
  }
}

uint64_t ipsec_cellular_event(uint64_t a1, int a2)
{
  if ((a2 - 1) >= 2)
  {
    if (!a2)
    {
      return sub_2254C(a1);
    }
  }

  else
  {
    *(a1 + 596) = 18;
    return ipsec_stop(a1);
  }

  return a1;
}

uint64_t sub_2254C(uint64_t a1)
{
  GetStrFromDict(*(a1 + 136), @"RemoteAddress", v7, 255, "");
  *(a1 + 744) = 528;
  if (inet_aton(v7, (a1 + 748)))
  {
    return sub_240C8(a1, (a1 + 744), (a1 + 760), 0);
  }

  gettimeofday((a1 + 1008), 0);
  v3 = getaddrinfo_async_start();
  if (v3)
  {
    sub_26574(v3, 0, a1);
    *(a1 + 596) = 5;
    ipsec_stop(a1);
    return *(a1 + 596);
  }

  else
  {
    v4 = _SC_CFMachPortCreateWithPort();
    *(a1 + 1000) = v4;
    if (v4)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(0, v4, 0);
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopCommonModes);
      CFRelease(RunLoopSource);
    }

    return 0;
  }
}

uint64_t ipsec_start(uint64_t a1, const void *a2, int a3, int a4, mach_port_name_t a5, uint64_t a6, int a7)
{
  if (!*(a1 + 16))
  {
    *(a1 + 596) = 7;
    sub_22BB8(a1, 0, 7, 0);
    return *(a1 + 596);
  }

  sub_1E1E8(5, @"IPSec Controller: ipsec_start, ondemand flag = %d");
  if (!*(a1 + 592))
  {
    v14 = *(a1 + 168);
    if (v14)
    {
      if (a7)
      {
        v15 = *(a1 + 596);
        if (v15 <= 0x15 && ((1 << v15) & 0x302000) != 0)
        {
          v29 = *(a1 + 596);
          sub_1E1E8(3, @"IPSec Controller: ipsec_start fails cert validity, returns error %d ");
          return *(a1 + 596);
        }
      }

      CFUserNotificationCancel(v14);
      Current = CFRunLoopGetCurrent();
      CFRunLoopRemoveSource(Current, *(a1 + 176), kCFRunLoopDefaultMode);
      my_CFRelease((a1 + 168));
      my_CFRelease((a1 + 176));
    }

    sub_1EA40(a1, 1u);
    *(a1 + 600) = 0;
    *(a1 + 396) = 0;
    service_started(a1);
    *(a1 + 596) = 0;
    *(a1 + 912) = 0;
    *(a1 + 992) = 0;
    *(a1 + 1024) = 0u;
    *(a1 + 128) = a2;
    my_CFRetain(a2);
    *(a1 + 88) = a3;
    *(a1 + 92) = a4;
    scnc_bootstrap_retain(a1, a5);
    *(a1 + 72) = *(a1 + 72) & 0xFFFFF3FF | ((a7 != 0) << 10);
    v30 = *(a1 + 136);
    sub_1E1E8(7, @"IPSec Controller: IPSec System Prefs %@");
    v31 = *(a1 + 128);
    sub_1E1E8(7, @"IPSec Controller: IPSec User Options %@");
    if (GetStrFromDict(*(a1 + 136), @"RemoteAddress", cStr, 255, ""))
    {
      if (racoon_validate_cfg_str(cStr))
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *&buf.sa_len = 136315138;
          *&buf.sa_data[2] = cStr;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "IPSec connecting to server %s\n", &buf.sa_len, 0xCu);
        }

        *(a1 + 916) = 0x8000;
        Value = CFDictionaryGetValue(*(a1 + 136), kSCPropNetIPSecXAuthPasswordEncryption);
        if (isString(Value) && CFStringCompare(Value, kSCValNetIPSecXAuthPasswordEncryptionPrompt, 0) == kCFCompareEqualTo)
        {
          *(a1 + 916) |= 0x40u;
        }

        if (*(a1 + 584) || *(a1 + 800) != -1 || (event_create_socket(a1, (a1 + 800), (a1 + 808), sub_22E3C, 0) & 0x80000000) == 0)
        {
          flags = 0;
          *&buf.sa_data[6] = 0;
          *&buf.sa_len = 528;
          v19 = SCNetworkReachabilityCreateWithAddress(0, &buf);
          if (v19)
          {
            v20 = v19;
            if (SCNetworkReachabilityGetFlags(v19, &flags))
            {
              v21 = (flags & 0x40006) != 262150;
              sub_1E1E8(5, @"IPSec Controller: ipsec_start reachability flags = 0x%x, need_cellular = %d");
            }

            else
            {
              v21 = 1;
            }

            CFRelease(v20);
          }

          else
          {
            v21 = 1;
          }

          valuePtr = 1;
          v24 = CFDictionaryGetValue(*(a1 + 136), @"NattKeepAliveEnabled");
          TypeID = CFNumberGetTypeID();
          if (!v24 || CFGetTypeID(v24) != TypeID || (CFNumberGetValue(v24, kCFNumberIntType, &valuePtr), valuePtr))
          {
            if ((flags & 0x40000) != 0)
            {
              v26 = 0;
            }

            else
            {
              v26 = 60;
            }

            v33 = v26;
            v27 = CFDictionaryGetValue(*(a1 + 136), @"NattKeepAliveTimer");
            v28 = CFNumberGetTypeID();
            if (v27)
            {
              if (CFGetTypeID(v27) == v28)
              {
                CFNumberGetValue(v27, kCFNumberIntType, &v33);
              }
            }

            v32 = 4;
            sysctlbyname("net.key.natt_keepalive_interval", &gNattKeepAliveInterval, &v32, &v33, 4uLL);
          }

          if (v21)
          {
            return sub_2254C(a1);
          }

          if (bringup_cellular(a1))
          {
            return 0;
          }

          v23 = 18;
          goto LABEL_49;
        }

        v22 = @"IPSec Controller: cannot create event socket";
LABEL_30:
        sub_1E1E8(3, v22);
        if (*(a1 + 596))
        {
LABEL_50:
          sub_1E1E8(3, @"IPSec Controller: ipsec_start failed");
          ipsec_stop(a1);
          return *(a1 + 596);
        }

        v23 = 1;
LABEL_49:
        *(a1 + 596) = v23;
        goto LABEL_50;
      }

      v22 = @"IPSec Controller: invalid RemoteAddress ...";
    }

    else
    {
      v22 = @"IPSec Controller: cannot find RemoteAddress ...";
    }

    *(a1 + 596) = 2;
    goto LABEL_30;
  }

  if (my_CFEqual(a2, *(a1 + 128)))
  {
    phase_changed(a1, *(a1 + 592));
    return 0;
  }

  return 5;
}

void sub_22BB8(uint64_t a1, CFStringRef theString, uint64_t a3, int a4)
{
  v15 = 0;
  if ((*(a1 + 72) & 0x40) != 0)
  {
    error = 0;
    if (theString)
    {
      v16 = theString;
      v7 = theString;
    }

    else
    {
      if (a3 <= 0x13 && ((1 << a3) & 0xB8001) != 0)
      {
        return;
      }

      v7 = CFStringCreateWithFormat(0, 0, @"IPSec Error %d", a3);
      v16 = v7;
      if (!v7)
      {
        my_CFRelease(&v15);
LABEL_24:
        my_CFRelease(&v16);
        return;
      }
    }

    if (CFStringGetLength(v7) && (a4 != 2 || (*(a1 + 73) & 4) == 0 || !*(a1 + 1040)))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v15 = Mutable;
      if (Mutable)
      {
        v9 = Mutable;
        if (gIconURLRef)
        {
          CFDictionaryAddValue(Mutable, kCFUserNotificationIconURLKey, gIconURLRef);
        }

        if (gBundleURLRef)
        {
          CFDictionaryAddValue(v9, kCFUserNotificationLocalizationURLKey, gBundleURLRef);
        }

        CFDictionaryAddValue(v9, kCFUserNotificationAlertMessageKey, v7);
        CFDictionaryAddValue(v9, kCFUserNotificationAlertHeaderKey, @"VPN Connection");
        if (a4 == 2)
        {
          CFDictionaryAddValue(v9, kCFUserNotificationDefaultButtonTitleKey, @"Ignore");
          CFDictionaryAddValue(v9, kCFUserNotificationAlternateButtonTitleKey, @"Settings");
          *(a1 + 1040) = 1;
        }

        else if (a4 == 1)
        {
          CFDictionaryAddValue(v9, kCFUserNotificationAlternateButtonTitleKey, @"Disconnect");
        }

        v10 = *(a1 + 168);
        if (v10)
        {
          error = CFUserNotificationUpdate(v10, 0.0, 1uLL, v9);
        }

        else
        {
          v11 = CFUserNotificationCreate(0, 0.0, 1uLL, &error, v9);
          *(a1 + 168) = v11;
          if (v11)
          {
            RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v11, user_notification_callback, 0);
            *(a1 + 176) = RunLoopSource;
            if (RunLoopSource)
            {
              Current = CFRunLoopGetCurrent();
              CFRunLoopAddSource(Current, *(a1 + 176), kCFRunLoopDefaultMode);
            }

            else
            {
              my_CFRelease((a1 + 168));
            }
          }
        }
      }
    }

    my_CFRelease(&v15);
    if (!theString)
    {
      goto LABEL_24;
    }
  }
}

void sub_22E3C(__CFSocket *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Native = CFSocketGetNative(a1);
  if (recv(Native, v7, 0x100uLL, 0) != -1)
  {
    ipsec_network_event(a5, v7);
  }
}

uint64_t ipsec_getstatus_hack_notify(uint64_t a1)
{
  v1 = *(a1 + 592) - 1;
  if (v1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_2DCFC[v1];
  }
}

uint64_t sub_22EE0(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  sub_1EA40(a1, 1u);
  *(a1 + 72) |= a2;
  *(a1 + 596) = 0;
  *(a1 + 1036) = 1;
  *(a1 + 912) = 0;
  *(a1 + 992) = 0;
  v5 = *(a1 + 832);
  if (v5)
  {
    my_Deallocate(v5, *(a1 + 844) + 1);
    *(a1 + 832) = 0;
  }

  *(a1 + 840) = 0;
  v6 = *(a1 + 816);
  if (v6)
  {
    my_Deallocate(v6, *(a1 + 824));
    *(a1 + 816) = 0;
  }

  *(a1 + 824) = 0;
  if (*(a1 + 776))
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(Current, *(a1 + 776), kCFRunLoopCommonModes);
    my_CFRelease((a1 + 776));
  }

  if (*(a1 + 952))
  {
    v8 = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(v8, *(a1 + 952), kCFRunLoopCommonModes);
    my_CFRelease((a1 + 952));
  }

  if (*(a1 + 984))
  {
    v9 = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(v9, *(a1 + 984), kCFRunLoopCommonModes);
    my_CFRelease((a1 + 984));
  }

  my_CFRelease((a1 + 976));
  sub_1E1E8(5, @"IPSec Controller: reconnecting");
  my_CFRelease((a1 + 472));
  my_CFRelease((a1 + 480));
  v10 = 1;
  sub_240C8(a1, (a1 + 744), (a1 + 760), 1);
  return v10;
}

uint64_t ipsec_getstatus(uint64_t a1)
{
  v1 = *(a1 + 592) - 1;
  if (v1 > 7)
  {
    v3 = 0;
  }

  else
  {
    v2 = off_39490[v1];
    v3 = dword_2DD18[v1];
  }

  if (gSCNCVerbose)
  {
    sub_1E1E8(5, @"IPSec Controller: ipsec_getstatus = %s");
  }

  return v3;
}

uint64_t ipsec_copyextendedstatus(uint64_t a1, void *a2)
{
  v34 = 0;
  *a2 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v35 = Mutable;
  if (!Mutable || (v5 = Mutable, v6 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (v34 = v6) == 0))
  {
    v12 = 12;
    goto LABEL_36;
  }

  v7 = v6;
  AddNumber(v6, kSCPropNetIPSecStatus, *(a1 + 592));
  if (!*(a1 + 592))
  {
    goto LABEL_10;
  }

  v8.s_addr = *(a1 + 748);
  v9 = inet_ntoa(v8);
  if (v9)
  {
    AddString(v7, @"RemoteAddress", v9);
  }

  if (*(a1 + 592) != 6)
  {
LABEL_10:
    v13 = *(a1 + 596);
    v14 = @"LastCause";
    v15 = v7;
LABEL_11:
    AddNumber(v15, v14, v13);
    goto LABEL_12;
  }

  v10 = *(a1 + 584);
  if (!v10)
  {
    v13 = *(a1 + 184);
    v15 = v7;
    v14 = kSCPropNetIPSecConnectTime;
    goto LABEL_11;
  }

  connect_time = ne_sm_bridge_get_connect_time(v10);
  AddNumber64(v7, kSCPropNetIPSecConnectTime, connect_time);
LABEL_12:
  CFDictionaryAddValue(v5, kSCEntNetIPSec, v7);
  v16 = *(a1 + 592);
  if (v16 == 6)
  {
    v17 = copyEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), kSCEntNetIPv4);
    if (v17)
    {
      v18 = v17;
      CFDictionaryAddValue(v5, kSCEntNetIPv4, v17);
      CFRelease(v18);
    }

    v19 = copyEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), kSCEntNetDNS);
    if (v19)
    {
      v20 = v19;
      Value = CFDictionaryGetValue(v19, kSCPropNetDNSServerAddresses);
      TypeID = CFArrayGetTypeID();
      if (Value && CFGetTypeID(Value) == TypeID)
      {
        CFDictionarySetValue(v5, @"DNSServers", Value);
      }

      v23 = CFDictionaryGetValue(v20, kSCPropNetDNSDomainName);
      v24 = CFStringGetTypeID();
      if (v23 && CFGetTypeID(v23) == v24)
      {
        CFDictionarySetValue(v5, @"DNSDomain", v23);
      }

      v25 = CFDictionaryGetValue(v20, kSCPropNetDNSSearchDomains);
      v26 = CFArrayGetTypeID();
      if (v25 && CFGetTypeID(v25) == v26)
      {
        CFDictionarySetValue(v5, @"DNSSearchDomains", v25);
      }

      v27 = CFDictionaryGetValue(v20, kSCPropNetDNSSupplementalMatchDomains);
      v28 = CFArrayGetTypeID();
      if (v27 && CFGetTypeID(v27) == v28)
      {
        CFDictionarySetValue(v5, @"DNSSupplementalMatchDomains", v27);
      }

      CFRelease(v20);
    }

    v16 = *(a1 + 592);
  }

  v29 = v16 - 1;
  if ((v16 - 1) > 7)
  {
    v31 = 0;
  }

  else
  {
    v30 = off_39490[v29];
    v31 = dword_2DD18[v29];
  }

  if (gSCNCVerbose)
  {
    sub_1E1E8(5, @"IPSec Controller: ipsec_getstatus = %s");
  }

  AddNumber(v5, @"Status", v31);
  sub_1E1E8(7, @"IPSec Controller: Copy Extended Status %@");
  v32 = CFRetain(v5);
  v12 = 0;
  *a2 = v32;
LABEL_36:
  my_CFRelease(&v34);
  my_CFRelease(&v35);
  return v12;
}

uint64_t ipsec_getconnectdata(uint64_t a1, CFTypeRef *a2, int a3)
{
  v12 = 0;
  *a2 = 0;
  v3 = *(a1 + 128);
  if (v3)
  {
    if (!a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v3);
      v12 = MutableCopy;
      if (!MutableCopy)
      {
        return 0;
      }

      v3 = MutableCopy;
      Value = CFDictionaryGetValue(MutableCopy, kSCEntNetIPSec);
      if (Value)
      {
        v8 = Value;
        v9 = CFGetTypeID(Value);
        if (v9 == CFDictionaryGetTypeID())
        {
          v10 = CFDictionaryCreateMutableCopy(0, 0, v8);
          if (v10)
          {
            v11 = v10;
            CFDictionaryRemoveValue(v10, kSCPropNetIPSecSharedSecret);
            CFDictionarySetValue(v3, kSCEntNetIPSec, v11);
            CFRelease(v11);
          }
        }
      }
    }

    *a2 = CFRetain(v3);
    my_CFRelease(&v12);
  }

  return 0;
}

uint64_t ipsec_copystatistics(uint64_t a1, void *a2)
{
  v10 = 0;
  *a2 = 0;
  if (*(a1 + 592) != 6)
  {
    return 22;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v11 = Mutable;
  if (Mutable && (v4 = Mutable, v5 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (v10 = v5) != 0))
  {
    v6 = v5;
    AddNumber(v5, @"BytesIn", 0);
    AddNumber(v6, @"BytesOut", 0);
    AddNumber(v6, @"PacketsIn", 0);
    AddNumber(v6, @"PacketsOut", 0);
    AddNumber(v6, @"ErrorsIn", 0);
    AddNumber(v6, @"ErrorsOut", 0);
    CFDictionaryAddValue(v4, kSCEntNetIPSec, v6);
    v7 = CFRetain(v4);
    v8 = 0;
    *a2 = v7;
  }

  else
  {
    v8 = 12;
  }

  my_CFRelease(&v10);
  my_CFRelease(&v11);
  return v8;
}

uint64_t ipsec_log_out(uint64_t result)
{
  if (*(result + 592))
  {
    if ((*(result + 74) & 2) != 0)
    {
      return scnc_stop(result, 0, 15, 3);
    }
  }

  return result;
}

uint64_t ipsec_log_switch(uint64_t result)
{
  if (*(result + 592))
  {
    if ((*(result + 74) & 0x10) != 0)
    {
      return scnc_stop(result, 0, 15, 4);
    }
  }

  return result;
}

uint64_t ipsec_will_sleep(uint64_t a1, int a2)
{
  if (*(a1 + 592) && !a2 && (*(a1 + 72) & 0x40000) != 0)
  {
    scnc_stop(a1, 0, 15, 2);
  }

  return 0;
}

uint64_t ipsec_wake_up(uint64_t result)
{
  v1 = *(result + 592);
  if (v1 == 8 || v1 == 6)
  {
    return scnc_disconnectifoverslept("ipsec_wake_up", result);
  }

  return result;
}

uint64_t sub_2378C(const char *a1, _DWORD *a2)
{
  v4 = socket(2, 3, 1);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    v11 = 0;
    *&v14.sa_len = 0;
    *&v14.sa_data[6] = 0;
    v10 = if_nametoindex(a1);
    if (setsockopt(v5, 0, 25, &v10, 4u))
    {
      sub_1E1E8(3, @"racoon_trigger_phase2 failed to set IP_BOUND_IF");
      return close(v5);
    }

    v14.sa_family = 2;
    *v14.sa_data = 0;
    *&v14.sa_data[2] = *a2;
    v12 = 8;
    v13[0] = 0;
    *(v13 + 3) = 0;
    v9 = 4;
    if (sysctlbyname("net.key.blockacq_count", &v11, &v9, 0, 0))
    {
      v11 = 10;
    }

    else if (v11 < 0)
    {
      return close(v5);
    }

    v7 = -1;
    do
    {
      v8 = sendto(v5, &v12, 8uLL, 0, &v14, 0x10u);
      sub_1E1E8(3, @"racoon_trigger_phase2 sent ping, wrote %ld");
      if (v8 <= 7)
      {
        break;
      }

      ++v7;
    }

    while (v7 < v11);
    return close(v5);
  }

  return sub_1E1E8(3, @"racoon_trigger_phase2 failed to create socket");
}

void sub_23958(__CFArray *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  TypeID = CFArrayGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v19 = Mutable;
      v14 = CFDictionaryGetTypeID();
      if (Mutable)
      {
        if (CFGetTypeID(Mutable) == v14)
        {
          v15 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), HIBYTE(a2), v19);
          cf = v15;
          if (v15)
          {
            CFDictionarySetValue(Mutable, kSCPropNetIPv4RouteDestinationAddress, v15);
            my_CFRelease(&cf);
          }

          if (a3)
          {
            v16 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a3, BYTE1(a3), BYTE2(a3), HIBYTE(a3));
            cf = v16;
            if (v16)
            {
              CFDictionarySetValue(Mutable, kSCPropNetIPv4RouteSubnetMask, v16);
              my_CFRelease(&cf);
            }
          }

          if (a4)
          {
            v17 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a4, BYTE1(a4), BYTE2(a4), HIBYTE(a4));
            cf = v17;
            if (v17)
            {
              CFDictionarySetValue(Mutable, kSCPropNetIPv4RouteGatewayAddress, v17);
              my_CFRelease(&cf);
            }
          }

          if (a5 && a6)
          {
            v18 = CFStringCreateWithFormat(0, 0, @"%s", a6);
            cf = v18;
            if (v18)
            {
              CFDictionarySetValue(Mutable, kSCPropNetIPv4RouteInterfaceName, v18);
              CFRelease(cf);
            }
          }

          CFArrayAppendValue(a1, Mutable);
          my_CFRelease(&v19);
        }
      }
    }
  }
}

__CFArray *sub_23B70(const __CFDictionary *a1, unsigned int a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  Value = CFDictionaryGetValue(a1, @"Policies");
  TypeID = CFArrayGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v8 = Count;
        v9 = 0;
        v22[0] = 0;
        v22[1] = 0;
        v20 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
          if (isDictionary(ValueAtIndex))
          {
            v11 = CFDictionaryGetValue(ValueAtIndex, @"Mode");
            v12 = CFStringGetTypeID();
            if (v11)
            {
              if (CFGetTypeID(v11) == v12)
              {
                if (CFEqual(v11, @"Tunnel"))
                {
                  v13 = CFDictionaryGetValue(ValueAtIndex, @"Direction");
                  v14 = CFStringGetTypeID();
                  if (v13)
                  {
                    if (CFGetTypeID(v13) == v14 && (CFEqual(v13, @"Out") || CFEqual(v13, @"InOut")))
                    {
                      v15 = CFDictionaryGetValue(ValueAtIndex, @"Level");
                      v16 = CFStringGetTypeID();
                      if (v15)
                      {
                        if (CFGetTypeID(v15) == v16 && !CFEqual(v15, @"None") && (CFEqual(v15, @"Require") || CFEqual(v15, @"Discard") || CFEqual(v15, @"Unique")))
                        {
                          if (GetStrNetFromDict(ValueAtIndex, @"RemoteAddress", v21, 32))
                          {
                            LODWORD(v22[0]) = 528;
                            if (inet_aton(v21, v22 + 1))
                            {
                              GetIntFromDict(ValueAtIndex, @"RemotePrefix", &v20, 24);
                              v17 = v20;
                              if (v20)
                              {
                                v18 = 0;
                                do
                                {
                                  v18 = (v18 >> 1) | 0x80000000;
                                  --v17;
                                }

                                while (v17);
                                v20 = 0;
                              }

                              else
                              {
                                v18 = 0;
                              }

                              sub_23958(Mutable, HIDWORD(v22[0]), bswap32(v18), a2, 0, 0);
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

          ++v9;
        }

        while (v9 != v8);
      }
    }
  }

  return Mutable;
}

void sub_23E44(uint64_t a1, _DWORD *a2, int a3)
{
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v29 = Mutable;
  v7 = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v28 = v7;
  v8 = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v27 = v8;
  v9 = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v26 = v9;
  if (Mutable)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v8 != 0 && v9 != 0)
  {
    v13 = v9;
    for (i = *(a1 + 1048); i; i = *i)
    {
      v15 = *(i + 6);
      if (v15 == *a2)
      {
        v16 = Mutable;
      }

      else
      {
        v16 = v8;
      }

      if (v15 == *a2)
      {
        v17 = v7;
      }

      else
      {
        v17 = v13;
      }

      CFDataAppendBytes(v16, i + 16, 4);
      CFDataAppendBytes(v17, i + 20, 4);
    }

    v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v18)
    {
      v19 = v18;
      v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v20)
      {
        v21 = v20;
        if (CFDataGetLength(Mutable))
        {
          v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v22)
          {
            v23 = v22;
            CFDictionaryAddValue(v22, @"Addresses", Mutable);
            CFDictionaryAddValue(v23, @"Masks", v7);
            CFDictionaryAddValue(v21, @"IncludedRoutes", v23);
            CFRelease(v23);
          }
        }

        if (CFDataGetLength(v8))
        {
          v24 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v24)
          {
            v25 = v24;
            CFDictionaryAddValue(v24, @"Addresses", v8);
            CFDictionaryAddValue(v25, @"Masks", v13);
            CFDictionaryAddValue(v21, @"ExcludedRoutes", v25);
            CFRelease(v25);
          }
        }

        CFDictionaryAddValue(v19, @"IPv4", v21);
        CFRelease(v21);
      }

      scnc_cache_routing_table(a1, v19, 0, a3 != 0);
      CFRelease(v19);
    }
  }

  my_CFRelease(&v29);
  my_CFRelease(&v28);
  my_CFRelease(&v27);
  my_CFRelease(&v26);
}

uint64_t sub_240C8(uint64_t a1, _OWORD *a2, _OWORD *a3, int a4)
{
  v73 = 0;
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  sub_1E1E8(5, @"IPSec Controller: racoon_restart_cisco_ipsec...");
  if (a3 && *a3)
  {
    *(a1 + 760) = *a3;
    v66 = *(a1 + 760);
    sub_1E1E8(5, @"IPSec Controller: NAT64 prefix with length %d");
  }

  else
  {
    *flags = 0;
    nw_nat64_copy_prefixes();
    *(a1 + 760) = 0;
    *(a1 + 768) = 0;
  }

  if (*(a1 + 868))
  {
    if (IPSecRemovePolicies(*(a1 + 608), -1, &v73))
    {
      sub_1E1E8(3, @"IPSec Controller: Cannot remove policies, error '%s'");
    }

    IPSecRemoveSecurityAssociations((a1 + 616), (a1 + 744));
    *(a1 + 868) = 0;
  }

  v8 = *(a1 + 584);
  if (v8)
  {
    ne_sm_bridge_request_uninstall(v8);
  }

  sub_20628(a1, 1);
  if (*(a1 + 864))
  {
    if (IPSecRemoveConfigurationFile(*(a1 + 608), &v73))
    {
      sub_1E1E8(3, @"IPSec Controller: Cannot remove configuration, error '%s'");
    }

    *(a1 + 864) = 0;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 912) = 0;
  *(a1 + 744) = *a2;
  v10 = *(a1 + 128);
  if (v10)
  {
    v11 = GetStrFromDict(v10, @"OutgoingInterface", (a1 + 918), 16, "") != 0;
  }

  else
  {
    v11 = 0;
  }

  memset(v70, 0, sizeof(v70));
  v71 = 0;
  v12 = (a1 + 744);
  if (*(a1 + 760))
  {
    LOWORD(v70[0]) = 7708;
    v12 = v70;
    nw_nat64_synthesize_v6();
  }

  if (v11)
  {
    v13 = (a1 + 918);
  }

  else
  {
    v13 = 0;
  }

  if (!get_src_address((a1 + 616), v12, v13, 0))
  {
    if (!v11)
    {
      copyGateway(gDynamicStore, 2, (a1 + 918), 16, (a1 + 936), 16);
    }

    if (*(a1 + 918))
    {
      *(a1 + 934) = interface_is_cellular(a1 + 918);
      sub_1E1E8(5, @"IPSec Controller: lower interface (%s) is%s cellular");
    }

    else
    {
      flags[0] = 0;
      v16 = SCNetworkReachabilityCreateWithAddress(0, (a1 + 744));
      v17 = SCNetworkReachabilityGetFlags(v16, flags);
      v18 = (flags[0] >> 18) & 1;
      if (!v17)
      {
        LOBYTE(v18) = 0;
      }

      *(a1 + 934) = v18;
      CFRelease(v16);
    }

    if (*(a1 + 584))
    {
      if ((*(a1 + 74) & 0x20) != 0)
      {
        if (*(a1 + 934))
        {
          LOBYTE(flags[0]) = 0;
          is_cellular = primary_interface_is_cellular(flags);
          if (LOBYTE(flags[0]))
          {
            if (!is_cellular)
            {
              v14 = @"IPSec Controller: Skipping tunnel creation over cellular in favor of better interface";
              v15 = 5;
              goto LABEL_27;
            }
          }
        }
      }
    }

    *(a1 + 968) = 0;
    v20 = 5;
    if ((*(a1 + 72) & 0x400) != 0)
    {
      v21 = 5;
    }

    else
    {
      v21 = 20;
    }

    if ((*(a1 + 72) & 0x400) == 0)
    {
      v20 = 20;
    }

    v68 = v20;
    sub_1E1E8(5, @"getting interface (media %x) timeout for ipsec: %d secs");
    *(a1 + 972) = v21;
    if (check_interface_captive_and_not_ready(gDynamicStore, a1 + 918))
    {
      goto LABEL_104;
    }

    v22 = (a1 + 608);
    if (!a4 && *(a1 + 608))
    {
      getnameinfo((a1 + 616), *(a1 + 616), flags, 0x39u, 0, 0, 10);
      v23 = CFStringCreateWithCString(0, flags, 0x600u);
      if (v23)
      {
        v24 = v23;
        CFDictionarySetValue(*v22, @"LocalAddress", v23);
        CFRelease(v24);
      }

      v25 = addr2ascii(2, (a1 + 748), 4, 0);
      v26 = CFStringCreateWithCString(0, v25, 0x600u);
      if (v26)
      {
        v27 = v26;
        CFDictionarySetValue(*v22, @"RemoteAddress", v26);
        CFRelease(v27);
      }

      if (v11)
      {
        CFDictionarySetValue(*v22, @"ForceLocalAddress", kCFBooleanTrue);
      }

      goto LABEL_99;
    }

    Value = CFDictionaryGetValue(*(a1 + 136), @"AuthenticationMethod");
    v29 = @"SharedSecret";
    if (isString(Value) && !CFEqual(Value, @"SharedSecret"))
    {
      if (CFEqual(Value, @"Certificate"))
      {
        *(a1 + 72) |= 0x800u;
      }

      v29 = Value;
    }

    v30 = CFDictionaryGetValue(*(a1 + 136), @"IdentifierVerification");
    v31 = v30;
    if (v30)
    {
      isString(v30);
    }

    v32 = CFDictionaryGetValue(*(a1 + 136), @"RemoteAddress");
    if (*(a1 + 608))
    {
      my_CFRelease((a1 + 608));
    }

    if (cfstring_is_ip(v32))
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    StrFromDict = GetStrFromDict(*(a1 + 136), @"LocalIdentifier", flags, 256, "");
    CiscoDefaultConfiguration = IPSecCreateCiscoDefaultConfiguration((a1 + 616), a1 + 744, v33, v29, StrFromDict, 1, 0, v31, a4);
    *(a1 + 608) = CiscoDefaultConfiguration;
    if (!CiscoDefaultConfiguration)
    {
      v14 = @"IPSec Controller: cannot create IPSec dictionary...";
      goto LABEL_26;
    }

    CFDictionaryApplyFunction(*(a1 + 136), sub_24B84, CiscoDefaultConfiguration);
    if (v11)
    {
      CFDictionarySetValue(*v22, @"ForceLocalAddress", kCFBooleanTrue);
    }

    if ((*(a1 + 73) & 4) != 0)
    {
      valuePtr = 1;
      v36 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (v36)
      {
        v37 = v36;
        CFDictionarySetValue(*v22, @"DisconnectOnIdle", v36);
        CFRelease(v37);
      }

      valuePtr = 120;
      v38 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (v38)
      {
        v39 = v38;
        CFDictionarySetValue(*v22, @"DisconnectOnIdleTimer", v38);
        CFRelease(v39);
      }
    }

    v40 = *(a1 + 128);
    if (v40)
    {
      v41 = CFDictionaryGetValue(v40, kSCEntNetIPSec);
      v42 = v41;
      if (v41)
      {
        v43 = CFDictionaryGetValue(v41, @"XAuthName");
        if (isString(v43))
        {
          CFDictionarySetValue(*v22, @"XAuthName", v43);
        }

        v44 = CFDictionaryGetValue(v42, @"XAuthPassword");
        if (isString(v44))
        {
          CFDictionarySetValue(*v22, @"XAuthPassword", v44);
        }
      }
    }

    else
    {
      v42 = 0;
    }

    v45 = CFDictionaryGetValue(*v22, @"LocalIdentifier");
    if (isString(v45))
    {
      if (CFStringHasSuffix(v45, @"[hybrid]"))
      {
        Length = CFStringGetLength(v45);
        v75.length = Length - CFStringGetLength(@"[hybrid]");
        v75.location = 0;
        v47 = CFStringCreateWithSubstring(0, v45, v75);
        if (v47)
        {
          v48 = v47;
          CFDictionarySetValue(*v22, @"LocalIdentifier", v47);
          CFDictionarySetValue(*v22, @"AuthenticationMethod", @"Hybrid");
          CFRelease(v48);
          CFDictionarySetValue(*v22, @"RemoteIdentifier", v32);
          CFDictionarySetValue(*v22, @"IdentifierVerification", @"UseRemoteIdentifier");
        }
      }
    }

    if (!CFEqual(v29, @"SharedSecret"))
    {
LABEL_99:
      v67 = *v22;
      sub_1E1E8(7, @"IPSec Controller: Complete IPsec dictionary %@");
      v56 = CFDictionaryContainsKey(*v22, @"XAuthName");
      v57 = *v22;
      if (v56)
      {
        if (IPSecApplyConfiguration(v57, &v73))
        {
LABEL_101:
          sub_1E1E8(3, @"IPSec Controller: Cannot apply configuration, error '%s'");
LABEL_102:
          v58 = 7;
LABEL_103:
          *(a1 + 596) = v58;
          goto LABEL_104;
        }
      }

      else
      {
        CFDictionarySetValue(v57, @"XAuthName", @" ");
        v60 = IPSecApplyConfiguration(*v22, &v73);
        CFDictionaryRemoveValue(*v22, @"XAuthName");
        if (v60)
        {
          goto LABEL_101;
        }
      }

      *(a1 + 864) = 1;
      if (IPSecCountPolicies(*(a1 + 608)))
      {
        if (IPSecInstallPolicies(*v22, -1, &v73))
        {
          sub_1E1E8(3, @"IPSec Controller: Cannot install policies, error '%s'");
          v9 = 0;
          goto LABEL_102;
        }

        *(a1 + 868) = 1;
      }

      v61 = *(a1 + 784);
      if (v61 == -1)
      {
        if ((sub_24BF4(a1) & 0x80000000) != 0)
        {
          sub_1E1E8(3, @"IPSec Controller: cannot create racoon control socket");
          v9 = 0;
          v58 = 8;
          goto LABEL_103;
        }
      }

      else
      {
        racoon_send_cmd_unbind(v61, -1);
      }

      racoon_send_cmd_bind(*(a1 + 784), *(a1 + 748), gIPSecAppVersion);
      if (*(a1 + 760))
      {
        racoon_send_cmd_set_nat64_prefix(*(a1 + 784), (a1 + 760));
      }

      racoon_send_cmd_connect(*(a1 + 784), *(a1 + 748));
      v62 = *(a1 + 776);
      v63 = CFAbsoluteTimeGetCurrent() + 10.0;
      if (v62)
      {
        CFRunLoopTimerSetNextFireDate(v62, v63);
      }

      else
      {
        v64 = CFRunLoopTimerCreate(0, v63, 3.1536e10, 0, 0, sub_22240, &context);
        *(a1 + 776) = v64;
        if (!v64)
        {
          sub_1E1E8(3, @"IPSec Controller: cannot create RunLoop timer");
          v9 = 0;
          goto LABEL_104;
        }

        Current = CFRunLoopGetCurrent();
        CFRunLoopAddTimer(Current, *(a1 + 776), kCFRunLoopCommonModes);
      }

      return 0;
    }

    v49 = CFDictionaryGetValue(*v22, @"SharedSecret");
    if (!isString(v49))
    {
      goto LABEL_129;
    }

    v50 = CFDictionaryGetValue(*v22, @"SharedSecretEncryption");
    if (!my_CFEqual(v50, @"Keychain"))
    {
      goto LABEL_99;
    }

    v51 = ne_sm_bridge_copy_password_from_keychain(*(a1 + 584));
    if (!v51)
    {
LABEL_129:
      if (v42 && *(a1 + 128))
      {
        v52 = CFDictionaryGetValue(v42, @"SharedSecret");
        if (isString(v52))
        {
          CFDictionarySetValue(*v22, @"SharedSecret", v52);
          CFDictionaryRemoveValue(*v22, @"SharedSecretEncryption");
          goto LABEL_99;
        }

LABEL_124:
        *(a1 + 596) = 3;
        v14 = @"IPSec Controller: incorrect shared secret found.";
        goto LABEL_26;
      }

      v53 = CFDictionaryGetValue(*v22, @"SharedSecretEncryption");
      if (!my_CFEqual(v53, @"Keychain"))
      {
        goto LABEL_124;
      }

      v54 = CFStringCreateWithFormat(0, 0, @"%@.SS", *(a1 + 24), v68);
      if (!v54)
      {
        goto LABEL_124;
      }

      v55 = v54;
      CFDictionarySetValue(*v22, @"SharedSecret", v54);
      v51 = v55;
    }

    CFRelease(v51);
    goto LABEL_99;
  }

  *(a1 + 596) = 6;
  v14 = @"IPSec Controller: cannot get our local address...";
LABEL_26:
  v15 = 3;
LABEL_27:
  sub_1E1E8(v15, v14);
LABEL_104:
  if (!*(a1 + 596))
  {
    *(a1 + 596) = 1;
  }

  sub_1E1E8(3, @"IPSec Controller: restart failed");
  if (v9)
  {
    IPSecKickConfiguration();
  }

  ipsec_stop(a1);
  return *(a1 + 596);
}

void sub_24B84(const __CFString *a1, const void *a2, __CFDictionary *a3)
{
  if (CFStringCompare(a1, @"RemoteAddress", 0))
  {

    CFDictionarySetValue(a3, a1, a2);
  }
}

uint64_t sub_24BF4(uint64_t a1)
{
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  memset(v16, 0, 106);
  v2 = socket(1, 1, 0);
  *(a1 + 784) = v2;
  if (v2 < 0)
  {
    v13 = *__error();
    v9 = @"IPSec Controller: cannot create racoon control socket (errno = %d) ";
LABEL_11:
    sub_1E1E8(3, v9);
    goto LABEL_12;
  }

  strcpy(v16[0].sa_data, "/var/run/vpncontrol.sock");
  *&v16[0].sa_len = 256;
  memset(&v16[1].sa_data[9], 0, 79);
  if (connect(v2, v16, 0x6Au) < 0)
  {
    v14 = *__error();
    v9 = @"IPSec Controller: cannot connect racoon control socket (errno = %d)";
    goto LABEL_11;
  }

  v3 = fcntl(*(a1 + 784), 3);
  if (v3 == -1 || fcntl(*(a1 + 784), 4, v3 | 4u) == -1)
  {
    v12 = *__error();
    sub_1E1E8(3, @"IPSec Controller: Couldn't set client socket in non-blocking mode, errno = %d");
  }

  v4 = CFSocketCreateWithNative(0, *(a1 + 784), 1uLL, sub_24DEC, &context);
  *(a1 + 792) = v4;
  if (v4)
  {
    RunLoopSource = CFSocketCreateRunLoopSource(0, v4, 0);
    if (RunLoopSource)
    {
      v6 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v6, kCFRunLoopDefaultMode);
      CFRelease(v6);
      return 0;
    }
  }

LABEL_12:
  v10 = *(a1 + 792);
  if (v10)
  {
    CFSocketInvalidate(v10);
    CFRelease(*(a1 + 792));
  }

  else
  {
    v11 = *(a1 + 784);
    if ((v11 & 0x80000000) == 0)
    {
      close(v11);
    }
  }

  *(a1 + 792) = 0;
  result = 0xFFFFFFFFLL;
  *(a1 + 784) = -1;
  return result;
}

double sub_24DEC(__CFSocket *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Native = CFSocketGetNative(a1);
  v7 = Native;
  v8 = *(a5 + 840);
  if (v8 <= 0xF)
  {
    v9 = (a5 + 848);
    v10 = readn(Native, (a5 + 848 + v8), 16 - v8);
    if (v10 == -1)
    {
      v14 = 2;
    }

    else
    {
      LODWORD(v8) = *(a5 + 840) + v10;
      *(a5 + 840) = v8;
      if (v8 != 16)
      {
        v14 = 0;
        goto LABEL_11;
      }

      v12 = bswap32(*(a5 + 862)) >> 16;
      *(a5 + 844) = v12 + 16;
      v13 = my_Allocate(v12 + 17);
      *(a5 + 832) = v13;
      if (v13)
      {
        v14 = 0;
        v11 = *v9;
        *v13 = *v9;
        *(*(a5 + 832) + *(a5 + 844)) = 0;
      }

      else
      {
        v14 = 3;
      }
    }

    LODWORD(v8) = *(a5 + 840);
LABEL_11:
    if (v8 < 0x10)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v14 = 0;
LABEL_12:
  v15 = readn(v7, (*(a5 + 832) + v8), *(a5 + 844) - v8);
  if (v15 == -1)
  {
LABEL_15:
    sub_1E1E8(5, @"IPSec Controller: connection closed by client, call ipsec_stop");
    *(a5 + 596) = 1;

    ipsec_stop(a5);
    return *&v11;
  }

  v16 = *(a5 + 840) + v15;
  *(a5 + 840) = v16;
  if (v16 != *(a5 + 844))
  {
LABEL_14:
    if ((v14 - 2) >= 2)
    {
      return *&v11;
    }

    goto LABEL_15;
  }

  v171 = 0;
  v172 = 0;
  if (!gSCNCVerbose)
  {
    goto LABEL_27;
  }

  sub_1E1E8(5, @"IPSec Controller: ====================================================");
  sub_1E1E8(5, @"IPSec Controller: Process Message:");
  ipsec_msgtype_to_str(bswap32(*(a5 + 848)) >> 16);
  sub_1E1E8(5, @"IPSec Controller:\tmsg_type = 0x%x (%s)");
  *(a5 + 850);
  sub_1E1E8(5, @"IPSec Controller:\tflags = 0x%x %s");
  v137 = bswap32(*(a5 + 852));
  sub_1E1E8(5, @"IPSec Controller:\tcookie = 0x%x");
  v138 = bswap32(*(a5 + 856));
  sub_1E1E8(5, @"IPSec Controller:\treserved = 0x%x");
  v139 = bswap32(*(a5 + 860)) >> 16;
  sub_1E1E8(5, @"IPSec Controller:\tresult = 0x%x");
  v140 = bswap32(*(a5 + 862)) >> 16;
  sub_1E1E8(5, @"IPSec Controller:\tlen = %d");
  v17 = bswap32(*(a5 + 848)) >> 16;
  if (v17 <= 0x8000)
  {
    if (v17 > 0x17 || ((1 << v17) & 0x860006) == 0 && v17 != 20)
    {
      goto LABEL_26;
    }

    v18 = *(a5 + 832);
    sub_1E1E8(5, @"IPSec Controller:\t----------------------------");
    v19.s_addr = *(v18 + 16);
    inet_ntoa(v19);
    v20 = @"IPSec Controller:\taddress = %s";
    goto LABEL_24;
  }

  if (v17 <= 33024)
  {
    if (v17 != 32769)
    {
      if (v17 == 32787)
      {
        v30 = *(a5 + 832);
        v31.s_addr = *(v30 + 16);
        inet_ntoa(v31);
        sub_1E1E8(5, @"IPSec Controller:\taddress = %s");
        if ((*(v30 + 2) & 0x100) != 0)
        {
          v32 = *(a5 + 832);
          v33 = bswap32(*(a5 + 862)) >> 16;
          v34.s_addr = *(v32 + 20);
          inet_ntoa(v34);
          sub_1E1E8(5, @"IPSec Controller:\touter_local_addr = %s");
          v143 = bswap32(*(v32 + 24)) >> 16;
          sub_1E1E8(5, @"IPSec Controller:\touter_remote_port = %d");
          v144 = bswap32(*(v32 + 26)) >> 16;
          sub_1E1E8(5, @"IPSec Controller:\touter_local_port = %d");
          sub_1E1E8(5, @"IPSec Controller:\tifname = %s");
          if (v33 >= 0x1D)
          {
            v35 = v33 - 28;
            v36 = (v32 + 44);
            do
            {
              v37 = v36[1];
              v38 = bswap32(*v36);
              ipsec_modecfgtype_to_str(HIWORD(v38) & 0x7FFF);
              sub_1E1E8(5, @"IPSec Controller:\tModeConfig Attribute Type = %d (%s)");
              v39 = bswap32(v37) >> 16;
              if ((v38 & 0x80000000) != 0)
              {
                sub_1E1E8(5, @"IPSec Controller:\tModeConfig Attribute Value = %d");
              }

              else
              {
                sub_1E1E8(5, @"IPSec Controller:\tModeConfig Attribute Length = %d Value = ...");
                v35 -= v39;
                v36 = (v36 + v39);
              }

              v36 += 2;
              v40 = __OFSUB__(v35, 4);
              v35 -= 4;
            }

            while (!((v35 < 0) ^ v40 | (v35 == 0)));
          }
        }
      }

      goto LABEL_26;
    }

    v56 = *(a5 + 832);
    sub_1E1E8(5, @"IPSec Controller:\t----------------------------");
    v57.s_addr = *(v56 + 16);
    inet_ntoa(v57);
    sub_1E1E8(5, @"IPSec Controller:\taddress = %s");
    v162 = ipsec_error_to_str(bswap32(*(v56 + 20)) >> 16);
    sub_1E1E8(5, @"IPSec Controller:\tike_code = %d 0x%x (%s)");
    v153 = bswap32(*(v56 + 22)) >> 16;
    sub_1E1E8(5, @"IPSec Controller:\tfrom = %d");
    if (*(v56 + 20) != 13726)
    {
      goto LABEL_26;
    }

    v58.s_addr = *(v56 + 24);
    inet_ntoa(v58);
    v20 = @"IPSec Controller:\tredirect address = %s";
LABEL_24:
    v21 = 5;
    goto LABEL_25;
  }

  if (v17 != 33025)
  {
    if (v17 != 33027)
    {
      goto LABEL_26;
    }

    v45 = *(a5 + 832);
    sub_1E1E8(5, @"IPSec Controller:\t----------------------------");
    v46.s_addr = *(v45 + 16);
    inet_ntoa(v46);
    sub_1E1E8(5, @"IPSec Controller:\tresponse from address = %s");
    v148 = bswap32(*(v45 + 20)) >> 16;
    v20 = @"IPSec Controller:\tike_code = %d";
    goto LABEL_24;
  }

  v59 = *(a5 + 832);
  sub_1E1E8(5, @"IPSec Controller:\t----------------------------");
  v60.s_addr = *(v59 + 16);
  inet_ntoa(v60);
  sub_1E1E8(5, @"IPSec Controller:\taddress = %s");
  LODWORD(v61) = bswap32(*(a5 + 862)) >> 16;
  if (v61 < 5)
  {
    goto LABEL_26;
  }

  v62 = (*(a5 + 832) + 20);
  while (1)
  {
    v61 = (v61 - 4);
    if (v61 <= 3)
    {
      v20 = @"IPSec Controller: invalid length of isakmp data, expected %zu actual %d";
      goto LABEL_191;
    }

    v63 = *v62;
    v64 = bswap32(v63);
    v65 = __rev16(v62[1]);
    if ((v64 & 0x80000000) == 0)
    {
      break;
    }

    ipsec_xauthtype_to_str(HIWORD(v64) & 0x7FFF);
    sub_1E1E8(5, @"IPSec Controller:\tXAuth Attribute Type = %d (%s)");
    sub_1E1E8(5, @"IPSec Controller:\tXAuth Attribute Value = %d");
LABEL_108:
    v62 += 2;
    if (v61 <= 4)
    {
      goto LABEL_26;
    }
  }

  if (v65 + 4 <= v61)
  {
    ipsec_xauthtype_to_str(HIWORD(v64) & 0x7FFF);
    sub_1E1E8(5, @"IPSec Controller:\tXAuth Attribute Type = %d (%s)");
    if (v63 == 35904)
    {
      v66 = malloc_type_malloc(v65 + 1, 0xDD97CF70uLL);
      if (v66)
      {
        v67 = v66;
        memmove(v66, v62 + 2, v65);
        v67[v65] = 0;
        sub_1E1E8(5, @"IPSec Controller:\tXAuth Attribute Value = %s");
        free(v67);
      }
    }

    else
    {
      sub_1E1E8(5, @"IPSec Controller:\tXAuth Attribute Length = %d Value = ...");
    }

    LODWORD(v61) = v61 - v65;
    v62 = (v62 + v65);
    goto LABEL_108;
  }

  v20 = @"IPSec Controller: invalid length of xauth message, expected %zu actual %d";
LABEL_191:
  v21 = 3;
LABEL_25:
  sub_1E1E8(v21, v20);
LABEL_26:
  sub_1E1E8(5, @"IPSec Controller: ====================================================");
LABEL_27:
  v22 = bswap32(*(a5 + 848)) >> 16;
  if (v22 > 32800)
  {
    if (v22 <= 33024)
    {
      if (v22 == 32801)
      {
        v150 = *(a5 + 592);
        v159 = *(a5 + 600);
        sub_1E1E8(5, @"IPSec Controller: PH2 START. phase %d, assert %d");
        v50 = *(a5 + 592);
        if (v50 == 3)
        {
          v70 = *(a5 + 776);
          if (v70)
          {
            Current = CFAbsoluteTimeGetCurrent();
            CFRunLoopTimerSetNextFireDate(v70, Current + 30.0);
          }

          v24 = a5;
          v25 = 5;
LABEL_116:
          sub_1EA40(v24, v25);
          goto LABEL_286;
        }

        if (v50 != 6 || *(a5 + 600) != 4)
        {
          goto LABEL_286;
        }

        v51 = 5;
LABEL_177:
        *(a5 + 600) = v51;
        goto LABEL_286;
      }

      if (v22 != 32802)
      {
        goto LABEL_286;
      }

      v142 = *(a5 + 592);
      v155 = *(a5 + 600);
      sub_1E1E8(5, @"IPSec Controller: PH2 ESTABLISHED. phase %d, assert %d");
      v26 = *(a5 + 592);
      if (v26 != 5 && (v26 != 6 || *(a5 + 600) != 5))
      {
        goto LABEL_286;
      }

      if (*(a5 + 776))
      {
        v27 = CFRunLoopGetCurrent();
        CFRunLoopRemoveTimer(v27, *(a5 + 776), kCFRunLoopCommonModes);
      }

      my_CFRelease((a5 + 776));
      v28 = *(a5 + 592);
      if (v28 == 6)
      {
        if (*(a5 + 600) == 5)
        {
          *(a5 + 600) = 0;
        }
      }

      else if (v28 == 5)
      {
        v29 = *(a5 + 960);
        if (v29)
        {
          if ((*(a5 + 73) & 4) == 0)
          {
            sub_22BB8(a5, v29, 0, 1);
            my_CFRelease((a5 + 960));
          }
        }
      }

      sub_1EA40(a5, 6u);
      *(a5 + 396) = 1;
      v95 = ne_log_obj();
      if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_286;
      }

      *buf = 0;
      v96 = "IPSec Phase2 established.\n";
LABEL_182:
      _os_log_impl(&dword_0, v95, OS_LOG_TYPE_DEFAULT, v96, buf, 2u);
      goto LABEL_286;
    }

    if (v22 != 33025)
    {
      if (v22 == 33027)
      {
        v146 = *(a5 + 592);
        v157 = *(a5 + 600);
        sub_1E1E8(5, @"IPSec Controller: PEER RESP. phase %d, assert %d");
        v43 = *(a5 + 832);
        sub_1E1E8(5, @"IPSec Controller:\t----------------------------");
        v44.s_addr = *(v43 + 16);
        inet_ntoa(v44);
        sub_1E1E8(5, @"IPSec Controller:\tresponse from address = %s");
        v147 = bswap32(*(v43 + 20)) >> 16;
        sub_1E1E8(5, @"IPSec Controller:\tike_code = %d");
        if (!*(a5 + 992))
        {
          sub_1E1E8(3, @"IPSec Controller: unsolicited peer response notification");
        }

        *(a5 + 992) = 0;
      }

      goto LABEL_286;
    }

    v152 = *(a5 + 592);
    v161 = *(a5 + 600);
    sub_1E1E8(5, @"IPSec Controller: AUTHINFO. phase %d, assert %d");
    v55 = *(a5 + 592);
    if (v55 == 3)
    {
      sub_1EA40(a5, 4u);
    }

    else
    {
      if (v55 != 6 || *(a5 + 600) != 4)
      {
        goto LABEL_286;
      }

      if ((*(a5 + 916) & 0x40) != 0)
      {
        v42 = @"IPSec Controller: session asserting but XAuth dialog required, so connection aborted";
        goto LABEL_284;
      }
    }

    v72 = *(a5 + 776);
    if (v72)
    {
      CFRunLoopTimerSetNextFireDate(v72, 3.1536e10);
    }

    v73 = ne_log_obj();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v73, OS_LOG_TYPE_DEFAULT, "IPSec requesting Extended Authentication.\n", buf, 2u);
    }

    v74 = *(a5 + 832);
    LODWORD(v75) = bswap32(*(a5 + 862)) >> 16;
    v76 = *(a5 + 916) & 0xFFD0 | 0x20;
    *(a5 + 916) = v76;
    if (v75 >= 5)
    {
      v77 = 0;
      v78 = (v74 + 20);
      while (1)
      {
        v75 = (v75 - 4);
        if (v75 <= 3)
        {
          v135 = @"IPSec Controller: invalid length of isakmp data, expected %zu actual %d";
          goto LABEL_280;
        }

        v79 = bswap32(*v78);
        v80 = v79 >> 16;
        if (((v79 >> 16) & 0x80000000) == 0 && (bswap32(v78[1]) >> 16) + 4 > v75)
        {
          v135 = @"IPSec Controller: invalid length of xauth message, expected %zu actual %d";
          goto LABEL_280;
        }

        v81 = HIWORD(v79) & 0x7FFF;
        if (v81 > 16524)
        {
          if (v81 > 16527)
          {
            if (v81 == 16528)
            {
              v83 = *(a5 + 916) & 0xFFE0 | 0x10;
              goto LABEL_151;
            }

            if (v81 == 16529)
            {
              v83 = *(a5 + 916) & 0xFFE0 | 8;
              goto LABEL_151;
            }

            if (v81 == 32136 && v78[1] != 256)
            {
              v135 = @"IPSec Controller: Received unsupported Xauth Vendor attribute (value %d)";
              goto LABEL_280;
            }
          }

          else
          {
            if (v81 != 16526)
            {
              if (v81 == 16525)
              {
                v135 = @"IPSec Controller: Received unsupported Xauth Challenge";
              }

              else
              {
                v135 = @"IPSec Controller: Received unsupported Xauth Status";
              }

LABEL_280:
              sub_1E1E8(3, v135);
LABEL_281:
              *(a5 + 916) = 0;
              if (v77)
              {
                free(v77);
              }

              v42 = @"IPSec Controller: XAuth authentication failed";
LABEL_284:
              sub_1E1E8(3, v42);
LABEL_285:
              ipsec_stop(a5);
              goto LABEL_286;
            }

            sub_1E1E8(3, @"IPSec Controller: Ignoring unsupported Xauth Domain");
          }
        }

        else
        {
          if (v81 > 16521)
          {
            if (v81 == 16522)
            {
              v83 = *(a5 + 916) & 0xFFE1 | 2;
            }

            else
            {
              if (v81 != 16523)
              {
                if (!v77)
                {
                  v82 = malloc_type_malloc((bswap32(v78[1]) >> 16) + 1, 0x9C341DC0uLL);
                  v77 = v82;
                  if (v82)
                  {
                    memmove(v82, v78 + 2, bswap32(v78[1]) >> 16);
                    *(v77 + (bswap32(v78[1]) >> 16)) = 0;
                  }
                }

                goto LABEL_152;
              }

              v83 = *(a5 + 916) & 0xFFE1 | 4;
            }

            goto LABEL_151;
          }

          if (v81 == 16520)
          {
            if (v78[1])
            {
              v135 = @"IPSec Controller: Received unsupported Xauth Type (value %d)";
              goto LABEL_280;
            }
          }

          else if (v81 == 16521)
          {
            v83 = *(a5 + 916) & 0xFFE6 | 1;
LABEL_151:
            *(a5 + 916) = v83;
          }
        }

LABEL_152:
        if ((v80 & 0x80000000) == 0)
        {
          v84 = bswap32(v78[1]);
          LODWORD(v75) = v75 - HIWORD(v84);
          v78 = (v78 + HIWORD(v84));
        }

        v78 += 2;
        if (v75 <= 4)
        {
          v76 = *(a5 + 916);
          goto LABEL_185;
        }
      }
    }

    v77 = 0;
LABEL_185:
    if ((v76 & 0x8000) == 0 && *(a5 + 592) != 6 || (LOBYTE(v97) = v76, *(a5 + 916) = v76 & 0x7FFF, (v76 & 0x40) != 0))
    {
LABEL_215:
      v170 = 0;
      if ((*(a5 + 72) & 0x80) == 0)
      {
        goto LABEL_281;
      }

      v107 = *(a5 + 168);
      if (v107)
      {
        CFUserNotificationCancel(v107);
        v108 = CFRunLoopGetCurrent();
        CFRunLoopRemoveSource(v108, *(a5 + 176), kCFRunLoopDefaultMode);
        my_CFRelease((a5 + 168));
        my_CFRelease((a5 + 176));
      }

      if (v77)
      {
        v109 = CFStringCreateWithFormat(0, 0, @"%s", v77, v161, v162);
      }

      else
      {
        v109 = CFStringCreateWithFormat(0, 0, @"Enter your user authentication", v152, v161, v162);
      }

      v110 = v109;
      error = 0;
      *buf = v109;
      if (!v109 && !CFStringGetLength(0))
      {
        goto LABEL_279;
      }

      Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v170 = Mutable;
      if (!Mutable)
      {
        goto LABEL_279;
      }

      v112 = Mutable;
      if (gIconURLRef)
      {
        CFDictionaryAddValue(Mutable, kCFUserNotificationIconURLKey, gIconURLRef);
      }

      if (gBundleURLRef)
      {
        CFDictionaryAddValue(v112, kCFUserNotificationLocalizationURLKey, gBundleURLRef);
      }

      CFDictionaryAddValue(v112, kCFUserNotificationAlertMessageKey, v110);
      CFDictionaryAddValue(v112, kCFUserNotificationAlertHeaderKey, @"VPN Connection");
      CFDictionaryAddValue(v112, kCFUserNotificationAlternateButtonTitleKey, @"Cancel");
      v113 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (!v113)
      {
        v117 = 0;
        Count = 0;
LABEL_256:
        if (*(a5 + 916))
        {
          Value = CFDictionaryGetValue(*(a5 + 608), @"XAuthName");
          if (isString(Value))
          {
            v124 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            if (v124)
            {
              v125 = v124;
              CFArrayAppendValue(v124, Value);
              if ((*(a5 + 916) & 6) != 0)
              {
                CFArrayAppendValue(v125, &stru_3D170);
              }

              CFDictionaryAddValue(v112, kCFUserNotificationTextFieldValuesKey, v125);
              CFRelease(v125);
            }
          }
        }

        if (Count >= 1)
        {
          v126 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          v168 = v126;
          v127 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          v167 = v127;
          v165 = 1;
          valuePtr = 0;
          v128 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          v164 = v128;
          v129 = CFNumberCreate(0, kCFNumberIntType, &v165);
          v163 = v129;
          if (v126)
          {
            if (v127)
            {
              if (v128)
              {
                v130 = v129;
                if (v129)
                {
                  do
                  {
                    CFArrayAppendValue(v126, v128);
                    CFArrayAppendValue(v127, v130);
                    --Count;
                  }

                  while (Count);
                  CFDictionarySetValue(v112, @"SBUserNotificationTextAutocapitalizationType", v126);
                  CFDictionarySetValue(v112, @"SBUserNotificationTextAutocorrectionType", v127);
                }
              }
            }
          }

          my_CFRelease(&v168);
          my_CFRelease(&v167);
          my_CFRelease(&v164);
          my_CFRelease(&v163);
        }

        if (v117)
        {
          v131 = 0x8000 << v117;
        }

        else
        {
          v131 = 0;
        }

        v132 = CFUserNotificationCreate(0, 150.0, v131, &error, v112);
        *(a5 + 168) = v132;
        if (v132)
        {
          RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v132, user_notification_callback, 0);
          *(a5 + 176) = RunLoopSource;
          if (RunLoopSource)
          {
            v134 = CFRunLoopGetCurrent();
            CFRunLoopAddSource(v134, *(a5 + 176), kCFRunLoopDefaultMode);
            my_CFRelease(&v170);
            my_CFRelease(buf);
            *(a5 + 916) |= 0x80u;
LABEL_276:
            if (v77)
            {
              free(v77);
            }

            goto LABEL_286;
          }

          my_CFRelease((a5 + 168));
        }

LABEL_279:
        my_CFRelease(&v170);
        my_CFRelease(buf);
        goto LABEL_281;
      }

      v114 = v113;
      v115 = *(a5 + 916);
      if ((v115 & 8) != 0)
      {
        CFArrayAppendValue(v113, @"Answer");
      }

      else
      {
        if ((v115 & 0x10) != 0)
        {
          CFArrayAppendValue(v113, @"Next PIN");
          v117 = 1;
          goto LABEL_255;
        }

        if (v115)
        {
          CFArrayAppendValue(v113, @"Account");
          v115 = *(a5 + 916);
        }

        if ((v115 & 4) != 0)
        {
          v116 = @"Passcode";
LABEL_252:
          CFArrayAppendValue(v114, v116);
          if (*(a5 + 916))
          {
            v117 = 2;
          }

          else
          {
            v117 = 1;
          }

          goto LABEL_255;
        }

        if ((v115 & 2) != 0)
        {
          v116 = @"Password";
          goto LABEL_252;
        }
      }

      v117 = 0;
LABEL_255:
      Count = CFArrayGetCount(v114);
      CFDictionaryAddValue(v112, kCFUserNotificationTextFieldTitlesKey, v114);
      CFRelease(v114);
      goto LABEL_256;
    }

    if (v76)
    {
      v98 = CFDictionaryGetValue(*(a5 + 608), @"XAuthName");
      if (isString(v98))
      {
        Length = CFStringGetLength(v98);
        v97 = *(a5 + 916);
        if (Length)
        {
          v100 = 1;
          goto LABEL_199;
        }
      }

      else
      {
        v97 = *(a5 + 916);
      }
    }

    else
    {
      v98 = 0;
    }

    if (v97)
    {
      goto LABEL_215;
    }

    v100 = 0;
LABEL_199:
    if ((v97 & 6) == 0)
    {
      v103 = 0;
      goto LABEL_210;
    }

    v101 = CFDictionaryGetValue(*(a5 + 608), kSCPropNetIPSecXAuthPasswordEncryption);
    TypeID = CFStringGetTypeID();
    if (!v101 || CFGetTypeID(v101) != TypeID || CFStringCompare(v101, kSCValNetIPSecXAuthPasswordEncryptionKeychain, 0))
    {
      v103 = CFDictionaryGetValue(*(a5 + 608), kSCPropNetIPSecXAuthPassword);
      v104 = CFStringGetTypeID();
      if (!v103)
      {
LABEL_208:
        if (!isString(v103))
        {
LABEL_213:
          if (v103)
          {
            CFRelease(v103);
          }

          goto LABEL_215;
        }

        v100 = CFStringGetLength(v103) != 0;
LABEL_210:
        if (v100)
        {
          v105 = *(a5 + 916);
          if (v105)
          {
            *buf = 16521;
            v174 = v98;
            v106 = 1;
          }

          else
          {
            v106 = 0;
          }

          if ((v105 & 4) != 0)
          {
            v119 = 16523;
          }

          else
          {
            if ((v105 & 2) == 0)
            {
LABEL_245:
              v121 = *(a5 + 776);
              if (v121)
              {
                v122 = CFAbsoluteTimeGetCurrent();
                CFRunLoopTimerSetNextFireDate(v121, v122 + 30.0);
              }

              sub_1EA40(a5, 3u);
              racoon_send_cmd_xauthinfo(*(a5 + 784), *(a5 + 748), buf, v106);
              if (v103)
              {
                CFRelease(v103);
              }

              goto LABEL_276;
            }

            v119 = 16522;
          }

          v120 = &buf[16 * v106];
          *v120 = v119;
          *(v120 + 1) = v103;
          ++v106;
          goto LABEL_245;
        }

        goto LABEL_213;
      }

      if (CFGetTypeID(v103) == v104)
      {
        CFRetain(v103);
        goto LABEL_208;
      }
    }

    v103 = 0;
    goto LABEL_208;
  }

  if (v22 > 32785)
  {
    if (v22 == 32786)
    {
      v151 = *(a5 + 592);
      v160 = *(a5 + 600);
      sub_1E1E8(5, @"IPSec Controller: PH1 STARTPEER. phase %d, assert %d");
      v52 = *(a5 + 592);
      if (v52 != 2 && (v52 != 6 || *(a5 + 600) != 3))
      {
        goto LABEL_286;
      }

      v53 = *(a5 + 776);
      if (v53)
      {
        v54 = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(v53, v54 + 30.0);
        v52 = *(a5 + 592);
      }

      if (v52 != 6)
      {
        if (v52 != 2)
        {
          goto LABEL_286;
        }

        v24 = a5;
        v25 = 3;
        goto LABEL_116;
      }

      if (*(a5 + 600) != 3)
      {
        goto LABEL_286;
      }

      v51 = 4;
      goto LABEL_177;
    }

    if (v22 != 32787)
    {
      goto LABEL_286;
    }

    v145 = *(a5 + 592);
    v156 = *(a5 + 600);
    sub_1E1E8(5, @"IPSec Controller: PH1 ESTABLISHED. phase %d, assert %d");
    v41 = *(a5 + 592);
    if (v41 == 3)
    {
      v88 = *(a5 + 832);
      if (!*(a5 + 584))
      {
        goto LABEL_167;
      }

      v89 = *(a5 + 816);
      if (v89)
      {
        my_Deallocate(v89, *(a5 + 824));
        *(a5 + 816) = 0;
      }

      v90 = *(a5 + 844) + 1;
      *(a5 + 824) = v90;
      v91 = my_Allocate(v90);
      *(a5 + 816) = v91;
      memcpy(v91, *(a5 + 832), *(a5 + 824));
      v92 = *(a5 + 584);
      sub_26480(a5);
      LOBYTE(v92) = ne_sm_bridge_request_install(v92);
      sub_1EC90(a5, 0, 1);
      if ((v92 & 1) == 0)
      {
LABEL_167:
        if ((*(v88 + 2) & 0x100) != 0)
        {
          sub_1EC90(a5, 1, 1);
        }
      }

      *(a5 + 912) = 15;
      v93 = *(a5 + 776);
      if (v93)
      {
        v94 = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(v93, v94 + 1.0);
      }

      *(a5 + 184) = (*&gTimeScaleSeconds * mach_absolute_time());
      *(a5 + 192) = 0;
    }

    else
    {
      if (v41 != 6 || *(a5 + 600) != 4)
      {
        goto LABEL_286;
      }

      if (sub_264F4(a5))
      {
        v42 = @"IPSec Controller: unassert failed";
        goto LABEL_284;
      }
    }

    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_286;
    }

    *buf = 0;
    v96 = "IPSec Phase1 established.\n";
    goto LABEL_182;
  }

  if (v22 != 32769)
  {
    if (v22 != 32785)
    {
      goto LABEL_286;
    }

    v141 = *(a5 + 592);
    v154 = *(a5 + 600);
    sub_1E1E8(5, @"IPSec Controller: PH1 STARTUS. phase %d, assert %d");
    v23 = *(a5 + 592);
    if (v23 != 6)
    {
      if (v23 != 1)
      {
        goto LABEL_286;
      }

      v24 = a5;
      v25 = 2;
      goto LABEL_116;
    }

    v85 = *(a5 + 600);
    if (v85 != 2)
    {
      if (v85 != 1)
      {
        goto LABEL_286;
      }

      v86 = *(a5 + 776);
      if (v86)
      {
        v87 = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(v86, v87 + 10.0);
        if (*(a5 + 592) != 6)
        {
          goto LABEL_286;
        }
      }
    }

    v51 = 3;
    goto LABEL_177;
  }

  v149 = *(a5 + 592);
  v158 = *(a5 + 600);
  sub_1E1E8(3, @"IPSec Controller: IKE FAILED. phase %d, assert %d");
  v47 = *(a5 + 832);
  v48 = *(v47 + 20);
  if (v48 != 13726)
  {
    ipsec_error_to_str(__rev16(v48));
    v68 = sub_1E1E8(3, @"IPSec Controller: connection failed <IKE Error %d (0x%x) %s>");
    v69 = ipsec_error_to_status(v68, bswap32(*(v47 + 22)) >> 16, bswap32(*(v47 + 20)) >> 16);
    *(a5 + 596) = v69;
    if (v69 == 14 && *(a5 + 592) >= 5u)
    {
      *(a5 + 596) = 16;
    }

    goto LABEL_285;
  }

  v172 = 0;
  v49.s_addr = *(v47 + 24);
  LODWORD(v171) = 528;
  HIDWORD(v171) = v49;
  inet_ntoa(v49);
  sub_1E1E8(5, @"IPSec Controller: connection redirected to server '%s'...");
  sub_240C8(a5, &v171, a5 + 760, 0);
LABEL_286:
  my_Deallocate(*(a5 + 832), *(a5 + 844) + 1);
  *&v11 = 0;
  *(a5 + 832) = 0u;
  return *&v11;
}

BOOL sub_26480(uint64_t a1)
{
  v1 = bswap32(*(a1 + 862)) >> 16;
  if (v1 < 0x1D)
  {
    return 1;
  }

  v3 = v1 - 28;
  v4 = (*(a1 + 832) + 44);
  do
  {
    v5 = bswap32(*v4);
    v6 = HIWORD(v5) & 0x7FFF;
    result = v6 != 28676;
    if (v6 == 28676)
    {
      break;
    }

    v7 = bswap32(v4[1]) >> 16;
    v8 = v5 >> 16 >= 0 ? v7 : 0;
    v9 = v3 - v8;
    v4 = (v4 + v8 + 4);
    v10 = __OFSUB__(v9, 4);
    v3 = v9 - 4;
  }

  while (!((v3 < 0) ^ v10 | (v3 == 0)));
  return result;
}

uint64_t sub_264F4(uint64_t a1)
{
  if (!*(a1 + 872))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 592) != 6 || *(a1 + 600) != 4)
  {
    return 0;
  }

  v1 = (a1 + 776);
  if (*(a1 + 776))
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(Current, *v1, kCFRunLoopCommonModes);
  }

  my_CFRelease(v1);
  return 0;
}

void sub_26574(int a1, addrinfo *a2, uint64_t a3)
{
  buffer = 0uLL;
  v42 = 0uLL;
  v6 = nw_nat64_copy_prefixes();
  if (a1 || !a2)
  {
    gai_strerror(a1);
    v28 = @"IPSec Controller: dns reply: getaddrinfo() failed: %s";
    goto LABEL_39;
  }

  v7 = v6;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  theArray = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v38 = a2;
  v9 = a2;
  do
  {
    ai_addr = v9->ai_addr;
    sa_family = ai_addr->sa_family;
    if (sa_family == 2)
    {
      if (ai_addr->sa_len <= 0x10u)
      {
        v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v12)
        {
          v13 = v12;
          v14 = CFDataCreate(0, &v9->ai_addr->sa_len, v9->ai_addr->sa_len);
          if (v14)
          {
            v15 = v14;
            CFDictionarySetValue(v13, @"RemoteAddress", v14);
            CFRelease(v15);
            if (v7 < 1)
            {
              goto LABEL_25;
            }

            v16 = CFDataCreate(kCFAllocatorDefault, 0, 16);
            if (v16)
            {
              v17 = v16;
              CFDictionarySetValue(v13, @"RemoteAddressNAT64Prefix", v16);
              CFArrayAppendValue(theArray, v13);
              CFRelease(v17);
            }

            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      v18 = sa_family != 30 || v7 < 1;
      if (!v18 && ai_addr->sa_len <= 0x1Cu)
      {
        v19 = 0;
        v20 = v7;
        while (1)
        {
          v21 = &v9->ai_addr->sa_data[6];
          if (nw_nat64_extract_v4())
          {
            break;
          }

          v19 += 16;
          if (!--v20)
          {
            goto LABEL_27;
          }
        }

        if (v20)
        {
          v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v22)
          {
            v13 = v22;
            v23 = CFDataCreate(0, v19, 16);
            if (v23)
            {
              v24 = v23;
              CFDictionarySetValue(v13, @"RemoteAddressNAT64Prefix", v23);
              CFRelease(v24);
              v41 = 0;
              *v40 = 528;
              *&v40[4] = 0;
              v25 = CFDataCreate(0, v40, 16);
              if (!v25)
              {
                goto LABEL_27;
              }

              v26 = v25;
              CFDictionarySetValue(v13, @"RemoteAddress", v25);
              CFRelease(v26);
LABEL_25:
              CFArrayAppendValue(Mutable, v13);
            }

LABEL_26:
            CFRelease(v13);
          }
        }
      }
    }

LABEL_27:
    v9 = v9->ai_next;
  }

  while (v9);
  v27 = (a3 + 1024);
  my_CFRelease((a3 + 1024));
  *(a3 + 1024) = Mutable;
  *(a3 + 1032) = 0;
  if (CFArrayGetCount(Mutable) || v7 < 1)
  {
    CFRelease(theArray);
    v29 = *v27;
  }

  else
  {
    sub_1E1E8(5, @"IPSec Controller: dns reply: no synthesized IPv6 address in reply on NAT64 network");
    my_CFRelease((a3 + 1024));
    *v27 = theArray;
  }

  a2 = v38;
  a1 = 0;
  sub_1E1E8(7, @"IPSec Controller: dns reply: resolvedAddress %@");
  if (!CFArrayGetCount(*v27))
  {
    my_CFRelease((a3 + 1024));
    v28 = @"IPSec Controller: dns reply: no IPv4 address in reply";
    goto LABEL_39;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*v27, 0);
  if (!ValueAtIndex || (v31 = ValueAtIndex, (Value = CFDictionaryGetValue(ValueAtIndex, @"RemoteAddress")) == 0) || (v33 = Value, CFDataGetLength(Value) <= 0xF))
  {
    v36 = *(a3 + 1036);
    v28 = @"IPSec Controller: dns reply: failed to get elem %d from addr array";
    goto LABEL_39;
  }

  buffer = 0uLL;
  v44.length = CFDataGetLength(v33);
  v44.location = 0;
  CFDataGetBytes(v33, v44, &buffer);
  *(a3 + 1036) = 1;
  v42 = 0uLL;
  v34 = CFDictionaryGetValue(v31, @"RemoteAddressNAT64Prefix");
  if (v34)
  {
    v35 = v34;
    if (CFDataGetLength(v34) == 16)
    {
      v45.length = CFDataGetLength(v35);
      v45.location = 0;
      CFDataGetBytes(v35, v45, &v42);
      goto LABEL_46;
    }

    v37 = *(a3 + 1036);
    v28 = @"IPSec Controller: dns reply: failed to get elem %d from nat64 array";
LABEL_39:
    sub_1E1E8(3, v28);
    sub_1E1E8(5, @"IPSec Controller: dns reply: Stopping service");
    *(a3 + 596) = 5;
    ipsec_stop(a3);
    *(a3 + 1024) = CFRetain(kCFNull);
    *(a3 + 1032) = a1;
  }

  else
  {
LABEL_46:
    sub_240C8(a3, &buffer, &v42, 0);
  }

  sub_1E1E8(7, @"IPSec Controller: dns reply: done");
  if (a2)
  {
    freeaddrinfo(a2);
  }
}

__CFMachPort *sub_26A18(__CFMachPort *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a4 + 1000);
  if (result == a1)
  {
    CFMachPortInvalidate(result);
    CFRelease(*(a4 + 1000));
    *(a4 + 1000) = 0;

    return _getaddrinfo_async_handle_reply(a2);
  }

  return result;
}

void nat_port_mapping_set(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 888))
    {
      v2 = *(a1 + 64) == 1;
      SCLog();
      return;
    }

    if (*(a1 + 392))
    {
      sub_26C9C(a1);
    }

    if (*(a1 + 64) == 1)
    {
      if_nametoindex((a1 + 918));
      if (!strstr((a1 + 918), "ppp") && !strstr((a1 + 918), "utun"))
      {
        v3 = (a1 + 200);
        v4 = *(a1 + 64);
        if (!*(a1 + 200))
        {
          if (DNSServiceCreateConnection((a1 + 200)) || (v5 = *v3) == 0 || (current_queue = dispatch_get_current_queue(), DNSServiceSetDispatchQueue(v5, current_queue)))
          {
LABEL_13:
            SCLog();
            if (*v3)
            {
              DNSServiceRefDeallocate(*v3);
            }

            *(a1 + 216) = 0u;
            *(a1 + 232) = 0u;
            *v3 = 0u;
            return;
          }

          if (!*(a1 + 976))
          {
            Current = CFRunLoopGetCurrent();
            *(a1 + 976) = my_CFRetain(Current);
          }
        }

        *(a1 + 208) = *(a1 + 200);
        if (!DNSServiceNATPortMappingCreate((a1 + 208), 0x4000u, 0, 0, 0, 0, 0, sub_26DE0, a1))
        {
          *(a1 + 220) = 0;
          *(a1 + 224) = 0;
          *(a1 + 228) = 0;
          *(a1 + 232) = 0;
          SCLog();
          ++*(a1 + 392);
          return;
        }

        goto LABEL_13;
      }
    }
  }
}

void sub_26C9C(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 64);
  }

  sub_26D78(a1);
  if (*(a1 + 392))
  {
    SCLog();
    if (*(a1 + 392))
    {
      v2 = 0;
      v3 = a1 + 200;
      do
      {
        if (*v3)
        {
          DNSServiceRefDeallocate(*v3);
        }

        *(v3 + 16) = 0u;
        *(v3 + 32) = 0u;
        *v3 = 0u;
        if (v2 > 2)
        {
          break;
        }

        ++v2;
        v3 += 48;
      }

      while (v2 < *(a1 + 392));
    }

    *(a1 + 392) = 0;
  }
}

void nat_port_mapping_clear(uint64_t a1)
{
  if (a1)
  {
    sub_26C9C(a1);
  }
}

void sub_26D78(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 984);
    if (v2)
    {
      CFRunLoopRemoveTimer(*(a1 + 976), v2, kCFRunLoopCommonModes);

      my_CFRelease((a1 + 984));
    }
  }
}

void sub_26DE0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    v14 = (a10 + 64);
    if (*(a10 + 64) == 1)
    {
      v15 = *(a10 + 592) != 0;
      v16 = (a10 + 918);
      v17 = 16;
    }

    else
    {
      v15 = 0;
      v16 = "NULL";
      v17 = 4;
    }
  }

  else
  {
    v14 = (&stru_20 + 32);
    v15 = 0;
    v16 = "NULL";
    v17 = 4;
  }

  v18 = bswap32(a5);
  v19 = __rev16(a7);
  v20 = __rev16(a8);
  if (*(a10 + 888))
  {
    SCLog();
    goto LABEL_8;
  }

  v65 = v19;
  v63 = v15;
  v64 = v20;
  if (a4 != -65558 && a4)
  {
    SCLog();
    if ((a4 + 65565) > 1)
    {
      if (a4 != -65563)
      {
        return;
      }
    }

    else
    {
      LODWORD(v21) = *(a10 + 392);
      if (!v21)
      {
        return;
      }

      if (v21 >= 4)
      {
        v21 = 4;
      }

      else
      {
        v21 = v21;
      }

      for (i = (a10 + 240); *(i - 4) != a1; i += 12)
      {
        if (!--v21)
        {
          return;
        }
      }

      v54 = *(i - 2);
      v55 = *(i - 2);
      SCLog();
      if (*i && v63)
      {
        SCLog();
        v34 = *v14;
        goto LABEL_70;
      }
    }

LABEL_8:

    sub_26C9C(a10);
    return;
  }

  v62 = v18;
  v66 = 0;
  if (getifaddrs(&v66))
  {
    goto LABEL_14;
  }

  v57 = a4;
  v56 = v14;
  v23 = v66;
  if (!v66)
  {
    freeifaddrs(0);
    v58 = 0;
    goto LABEL_50;
  }

  v58 = 0;
  v24 = 0;
  do
  {
    ifa_name = v23->ifa_name;
    if (ifa_name)
    {
      ifa_addr = v23->ifa_addr;
      if (ifa_addr)
      {
        if ((!strncmp(v23->ifa_name, "utun", 4uLL) || *ifa_name == 112 && ifa_name[1] == 112 && ifa_name[2] == 112) && ifa_addr->sa_family == 2 && *&ifa_addr->sa_data[2] == a5)
        {
          SCLog();
          ifa_name = v23->ifa_name;
          if (!ifa_name)
          {
            v24 = 1;
            goto LABEL_44;
          }

          ifa_addr = v23->ifa_addr;
          v24 = 1;
          if (!ifa_addr)
          {
            goto LABEL_44;
          }
        }

        if (!strncmp(ifa_name, v16, v17) && ifa_addr->sa_family == 2 && *(a10 + 617) == 2)
        {
          v27 = v58;
          if (*&ifa_addr->sa_data[2] == *(a10 + 620))
          {
            v27 = 1;
          }

          v58 = v27;
        }
      }
    }

LABEL_44:
    v23 = v23->ifa_next;
  }

  while (v23);
  freeifaddrs(v66);
  if (v24)
  {
    return;
  }

LABEL_50:
  if_indextoname(a3, &__s1);
  if (!strncmp(&__s1, v16, v17))
  {
    v29 = v57;
    if (strstr(v16, "ppp") || strstr(v16, "utun"))
    {
      goto LABEL_14;
    }

    if (v58)
    {
      goto LABEL_56;
    }

    if (a5 && (!a7 || a8))
    {
      goto LABEL_14;
    }

    SCLog();
    v41 = *(a10 + 392);
    if (v41)
    {
      v42 = 0;
      v43 = (a10 + 240);
      do
      {
        if (*(v43 - 4) == a1)
        {
          *v43 = 0;
          SCLog();
          v41 = *(a10 + 392);
        }

        if (v42 > 2)
        {
          break;
        }

        ++v42;
        v43 += 12;
      }

      while (v42 < v41);
    }

    return;
  }

  v28 = v64 | v65;
  v29 = v57;
  if ((a6 || !a5 || v28) && (v62 | a6 || v28) && (*v56 != 1 || *(a10 + 617) != 2 || *(a10 + 620) != a5 || !v58))
  {
LABEL_14:
    SCLog();
    return;
  }

LABEL_56:
  SCLog();
  LODWORD(v30) = *(a10 + 392);
  v31 = a7;
  v32 = a3;
  if (!v30)
  {
    return;
  }

  if (v30 >= 4)
  {
    v30 = 4;
  }

  else
  {
    v30 = v30;
  }

  for (j = (a10 + 240); *(j - 4) != a1; j += 12)
  {
    if (!--v30)
    {
      return;
    }
  }

  if (*j)
  {
    v35 = a5 == 0;
  }

  else
  {
    v35 = 0;
  }

  if (v35 && a8 == 0)
  {
    SCLog();
    __s1.version = 0;
    memset(&__s1.retain, 0, 24);
    __s1.info = a10;
    if (*(a10 + 64) == 1 && !*(a10 + 952) && !*(a10 + 984))
    {
      SCLog();
      Current = CFAbsoluteTimeGetCurrent();
      v40 = CFRunLoopTimerCreate(0, Current + 20.0, 3.1536e10, 0, 0, sub_279BC, &__s1);
      *(a10 + 984) = v40;
      if (v40)
      {
        CFRunLoopAddTimer(*(a10 + 976), v40, kCFRunLoopCommonModes);
        return;
      }

      goto LABEL_141;
    }

    return;
  }

  if (*j)
  {
    sub_26D78(a10);
    v32 = a3;
    v31 = a7;
  }

  if (*v56 == 1 && *(a10 + 617) == 2 && *(a10 + 620) == a5 && v31 == a8)
  {
    SCLog();
    v32 = a3;
  }

  if (*(j - 5) == v32)
  {
    v37 = *(j - 4);
    v38 = v65;
    if (v37 == a6)
    {
      if (*(j - 6) == v65)
      {
        SCLog();
        goto LABEL_116;
      }

LABEL_113:
      if (*(j - 6) != v38)
      {
        v49 = *(j - 6);
        SCLog();
        *(j - 6) = v38;
      }

      goto LABEL_116;
    }
  }

  else
  {
    v48 = *(j - 5);
    v44 = v32;
    SCLog();
    *(j - 5) = v44;
    v37 = *(j - 4);
    v38 = v65;
  }

  if (v37 == a6)
  {
    goto LABEL_113;
  }

  SCLog();
  *(j - 4) = a6;
LABEL_116:
  v45 = *(j - 2);
  v46 = a7;
  v47 = v62;
  if (!*j)
  {
    if (v45 != v62)
    {
      v50 = *(j - 2);
      SCLog();
      v47 = v62;
      v46 = a7;
      *(j - 2) = v62;
    }

    if (*(j - 2) != v64)
    {
      v51 = *(j - 2);
      SCLog();
      v46 = a7;
      *(j - 2) = v64;
      v47 = *(j - 2);
    }

    if (v47 && (!v46 || a8))
    {
      *j = 1;
      goto LABEL_14;
    }

    return;
  }

  if (v45 != v62)
  {
    v52 = *(j - 2);
    SCLog();
    if (!v63)
    {
      *(j - 2) = v62;
      return;
    }

    if (!a7 || a5)
    {
      goto LABEL_141;
    }

    return;
  }

  if (*(j - 2) == v64)
  {
    if (v29 == -65558)
    {
      goto LABEL_14;
    }

    return;
  }

  v53 = *(j - 2);
  SCLog();
  if (!v63)
  {
    *(j - 2) = v64;
    return;
  }

  if (!a7 || a8)
  {
LABEL_141:
    SCLog();
    v34 = *v56;
LABEL_70:
    if (v34 == 1)
    {
      racoon_send_cmd_start_dpd(*(a10 + 784), *(a10 + 748));
      *(a10 + 992) = 1;
    }
  }
}

uint64_t sub_279BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64) == 1)
  {
    result = SCLog();
    if (*(a2 + 64) == 1)
    {
      result = racoon_send_cmd_start_dpd(*(a2 + 784), *(a2 + 748));
      *(a2 + 992) = 1;
    }
  }

  return result;
}

uint64_t ne_sm_bridge_logv()
{
  if (!qword_435D8 || !*qword_435D8)
  {
    return 0;
  }

  (*qword_435D8)();
  return 1;
}

uint64_t ne_sm_bridge_is_logging_at_level()
{
  if (qword_435D8 && (v0 = *(qword_435D8 + 8)) != 0)
  {
    return v0();
  }

  else
  {
    return 1;
  }
}

uint64_t ne_sm_bridge_copy_configuration(uint64_t a1)
{
  if (qword_435D8 && (v1 = *(qword_435D8 + 16)) != 0)
  {
    return v1(*(a1 + 1064));
  }

  else
  {
    return 0;
  }
}

uint64_t ne_sm_bridge_status_changed(uint64_t result)
{
  if (qword_435D8 && *(qword_435D8 + 24))
  {
    v1 = *(result + 1064);
    v3 = *(qword_435D8 + 24);
    v2 = scnc_getstatus(result + 8);

    return v3(v1, v2);
  }

  return result;
}

uint64_t ne_sm_bridge_acknowledge_sleep(uint64_t result)
{
  if (qword_435D8)
  {
    v1 = *(qword_435D8 + 32);
    if (v1)
    {
      return v1(*(result + 1064));
    }
  }

  return result;
}

uint64_t ne_sm_bridge_filter_state_dictionaries(uint64_t result)
{
  if (qword_435D8)
  {
    v1 = *(qword_435D8 + 40);
    if (v1)
    {
      return v1(*(result + 1064));
    }
  }

  return result;
}

uint64_t ne_sm_bridge_copy_password_from_keychain(uint64_t a1)
{
  if (qword_435D8 && (v1 = *(qword_435D8 + 48)) != 0)
  {
    return v1(*(a1 + 1064));
  }

  else
  {
    return 0;
  }
}

void ne_sm_bridge_allow_dispose(uint64_t a1)
{
  v1 = *(a1 + 1072);
  *(a1 + 1072) = 0;
  if (v1)
  {
    v1[2](v1);

    _Block_release(v1);
  }
}

uint64_t ne_sm_bridge_get_connect_time(uint64_t a1)
{
  if (qword_435D8 && (v1 = *(qword_435D8 + 56)) != 0)
  {
    return v1(*(a1 + 1064));
  }

  else
  {
    return 0;
  }
}

uint64_t ne_sm_bridge_request_install(uint64_t a1)
{
  if (!qword_435D8)
  {
    return 0;
  }

  v1 = *(qword_435D8 + 64);
  if (!v1)
  {
    return 0;
  }

  v1(*(a1 + 1064));
  return 1;
}

uint64_t ne_sm_bridge_request_uninstall(uint64_t a1)
{
  if (!qword_435D8)
  {
    return 0;
  }

  v1 = *(qword_435D8 + 72);
  if (!v1)
  {
    return 0;
  }

  v1(*(a1 + 1064));
  return 1;
}

uint64_t ne_sm_bridge_start_profile_janitor(uint64_t a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  result = CFStringGetCString(theString, buffer, 256, 0x8000100u);
  if (!result)
  {
    return result;
  }

  if (!qword_435D8)
  {
    return 0;
  }

  v4 = *(qword_435D8 + 80);
  if (!v4)
  {
    return 0;
  }

  v4(*(a1 + 1064), buffer);
  return 1;
}

uint64_t ne_sm_bridge_clear_saved_password(uint64_t result)
{
  if (qword_435D8)
  {
    v1 = *(qword_435D8 + 88);
    if (v1)
    {
      return v1(*(result + 1064));
    }
  }

  return result;
}

uint64_t ne_sm_bridge_copy_functions(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_27DCC;
  v3[3] = &unk_394D0;
  v3[4] = a1;
  v3[5] = a2;
  if (qword_435E0 != -1)
  {
    dispatch_once(&qword_435E0, v3);
  }

  return qword_435E8;
}

CFTypeRef sub_27DCC(uint64_t a1)
{
  v2 = malloc_type_malloc(0xB8uLL, 0x80040A224B1F7uLL);
  qword_435E8 = v2;
  *v2 = sub_27FCC;
  v2[1] = sub_281F4;
  v2[2] = sub_282B8;
  v2[3] = sub_284F0;
  v2[4] = sub_28580;
  v2[5] = sub_28600;
  v2[6] = sub_286A4;
  v2[7] = sub_28744;
  v2[8] = sub_287A4;
  v2[9] = sub_28828;
  v2[10] = sub_28908;
  v2[11] = sub_28944;
  v2[12] = sub_289BC;
  v2[13] = sub_28A34;
  v2[14] = sub_28BE8;
  v2[15] = sub_28C50;
  v2[16] = sub_28CB8;
  v2[17] = sub_28D28;
  v2[18] = sub_28D54;
  v2[19] = sub_28D80;
  v2[20] = sub_28D98;
  v2[21] = sub_28DB0;
  v2[22] = sub_28E2C;
  v3 = malloc_type_malloc(0x60uLL, 0x800408F261F10uLL);
  qword_435D8 = v3;
  v4 = *(a1 + 32);
  v5 = v4[1];
  *v3 = *v4;
  v3[1] = v5;
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[5];
  v3[4] = v4[4];
  v3[5] = v8;
  v3[2] = v6;
  v3[3] = v7;
  result = CFRetain(*(a1 + 40));
  gBundleRef = result;
  return result;
}

_BYTE *sub_27FCC(int a1, const __CFString *a2, uint64_t a3)
{
  if (qword_435F0 != -1)
  {
    sub_2C4EC();
  }

  if (byte_435F8 != 1)
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x438uLL, 0x10F2040525B70B8uLL);
  bzero(v6 + 4, 0x434uLL);
  *v6 = a1;
  *(v6 + 133) = a3;
  v7 = v6 + 8;
  *(v6 + 4) = CFRetain(a2);
  Length = CFStringGetLength(a2);
  v9 = malloc_type_malloc(Length + 1, 0x7B28E523uLL);
  *(v6 + 8) = v9;
  CFStringGetCString(a2, v9, Length + 1, 0x8000100u);
  *(v6 + 74) = v6;
  if (a1 == 1)
  {
    *(v6 + 5) = CFRetain(kSCValNetInterfaceTypeIPSec);
    *(v6 + 36) = 1;
    ipsec_new_service((v6 + 8));
    v10 = ipsec_setup_service((v6 + 8));
    if (!v10)
    {
      goto LABEL_14;
    }

    sub_28E88(3, @"bridge_create: ipsec_setup_service failed: %d", v11, v12, v13, v14, v15, v16, v10);
    goto LABEL_12;
  }

  if ((a1 & 0xFFFFFFFE) == 2)
  {
    *(v6 + 5) = CFRetain(kSCValNetInterfaceTypePPP);
    v17 = &kSCValNetInterfaceSubTypeL2TP;
    *(v6 + 36) = 0;
    if (a1 != 3)
    {
      v17 = &kSCValNetInterfaceSubTypePPTP;
    }

    v18 = CFRetain(*v17);
    *(v6 + 6) = v18;
    *(v6 + 37) = ppp_subtype(v18);
    ppp_new_service((v6 + 8));
    v19 = ppp_setup_service((v6 + 8));
    if (v19)
    {
      sub_28E88(3, @"bridge_create: ppp_setup_service failed: %d", v20, v21, v22, v23, v24, v25, v19);
LABEL_12:
      LOBYTE(a1) = 0;
      goto LABEL_14;
    }
  }

  LOBYTE(a1) = 1;
LABEL_14:
  v26 = findfreeunit(*(v6 + 36), *(v6 + 37));
  *(v6 + 38) = v26;
  if (v26 == 0xFFFF)
  {
    sub_28E88(3, @"bridge_create: findfreeunit failed", v27, v28, v29, v30, v31, v32, v36);
    v34 = qword_436E8;
    *(v6 + 1) = 0;
    *(v6 + 2) = v34;
    *v34 = v7;
    qword_436E8 = (v6 + 8);
    goto LABEL_18;
  }

  v33 = qword_436E8;
  *(v6 + 1) = 0;
  *(v6 + 2) = v33;
  *v33 = v7;
  qword_436E8 = (v6 + 8);
  if ((a1 & 1) == 0)
  {
LABEL_18:
    sub_281F4(v6);
    return 0;
  }

  v6[24] = 1;
  return v6;
}

void sub_281F4(void *a1)
{
  if ((*a1 - 2) >= 2)
  {
    if (*a1 == 1)
    {
      ipsec_dispose_service(a1 + 8);
    }
  }

  else
  {
    ppp_dispose_service(a1 + 8);
  }

  CFRelease(*(a1 + 4));
  CFRelease(*(a1 + 5));
  v2 = *(a1 + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = &service_head;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4)
  {
    v3 = *(a1 + 1);
  }

  v3[1] = v5;
  *v5 = v4;
  v6 = *(a1 + 134);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(a1 + 65);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 66);
  if (v8)
  {
    free(v8);
  }

  free(*(a1 + 8));

  free(a1);
}

void sub_282B8(_DWORD *a1, const char *a2, char a3)
{
  if (*a1 == 1 && scnc_getstatus((a1 + 2)))
  {
    memset(v40, 0, sizeof(v40));
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    if (a3)
    {
      v34 = 0;
      v35 = 512;
      v36 = 0;
      strncpy(__dst, a2, 0xFuLL);
      v6 = socket(2, 2, 0);
      v7 = ioctl(v6, 0xC0206921uLL, __dst);
      close(v6);
      if (v7 < 0)
      {
        v25 = __error();
        v26 = strerror(*v25);
        sub_28E88(3, @"ioctl(SIOCGIFADDR) failed: %s", v27, v28, v29, v30, v31, v32, v26);
        return;
      }

      LODWORD(v40[0]) = HIDWORD(v35);
    }

    v8 = -1;
    do
    {
      v9 = a2[++v8];
      if (v9)
      {
        v10 = (v9 - 58) >= 0xFFFFFFF6;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
    __strncpy_chk();
    if ((a2[v8] - 48) <= 9)
    {
      HIDWORD(v38) = strtol(&a2[v8], 0, 10);
    }

    if (v39 == 7368816)
    {
      DWORD2(v38) = 6;
    }

    if (a3)
    {
      v17 = 1;
    }

    else
    {
      v17 = 3;
    }

    DWORD1(v38) = v17;
    if (qword_435D8)
    {
      v18 = *(qword_435D8 + 8);
      if (v18)
      {
        if (!v18(7))
        {
LABEL_27:
          ipsec_network_event((a1 + 2), &v37);
          return;
        }

        v17 = DWORD1(v38);
      }
    }

    if (v17 == 3)
    {
      sub_28E88(7, @"Network change event: deleted address from interface %s%d (family %d)", v11, v12, v13, v14, v15, v16, &v39);
    }

    else if (v17 == 1)
    {
      *__dst = 0;
      v34 = 0;
      inet_ntop(2, v40, __dst, 0x10u);
      sub_28E88(7, @"Network change event: added address %s to interface %s%d (family %d)", v19, v20, v21, v22, v23, v24, __dst);
    }

    goto LABEL_27;
  }
}

BOOL sub_284F0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 - 2) >= 2)
  {
    v9 = *a1 == 1 && ipsec_will_sleep((a1 + 2), 0) != 0;
  }

  else
  {
    v9 = ppp_will_sleep((a1 + 2), 0) > 0;
  }

  sub_28E88(7, @"handle sleep for bridge type %d returning %d", a3, a4, a5, a6, a7, a8, *a1);
  return v9;
}

BOOL sub_28580(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 - 2) >= 2)
  {
    if (*a1 != 1)
    {
      v10 = 1;
      goto LABEL_7;
    }

    can_sleep = ipsec_can_sleep((a1 + 2));
  }

  else
  {
    can_sleep = ppp_can_sleep((a1 + 2));
  }

  v10 = can_sleep;
LABEL_7:
  sub_28E88(7, @"can sleep for bridge type %d returning %d", a3, a4, a5, a6, a7, a8, *a1);
  return v10;
}

uint64_t sub_28600(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_28E88(6, @"System slept for %f secs", a4, a5, a6, a7, a8, a9, *&a2);
  if ((*(a1 + 83) & 8) != 0)
  {
    result = sub_28E88(6, @"Session is configured to disconnect on wake if slept for more than %f seconds", v12, v13, v14, v15, v16, v17, 0);
    *(a1 + 200) += a2;
    if (a2 > 0.0)
    {

      return scnc_idle_disconnect(a1 + 8);
    }
  }

  return result;
}

_DWORD *sub_286A4(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_28E88(5, @"Handling wake up for bridge type %d", a3, a4, a5, a6, a7, a8, *a1);
  if (*a1 - 2 >= 2)
  {
    if (*a1 == 1)
    {

      return ipsec_wake_up((a1 + 2));
    }
  }

  else
  {

    return ppp_wake_up(a1 + 2);
  }

  return result;
}

BOOL sub_28744(_DWORD *a1, const void *a2, int a3, int a4, mach_port_name_t a5, mach_port_name_t a6, int a7)
{
  if ((*a1 - 2) < 2)
  {
    v7 = ppp_start((a1 + 2), a2, a3, a4, a5, a6, 0, a7);
    return v7 == 0;
  }

  if (*a1 == 1)
  {
    v7 = ipsec_start((a1 + 2), a2, a3, a4, a5, 0, a7);
    return v7 == 0;
  }

  return 0;
}

BOOL sub_287A4(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_28E88(5, @"Handling stop for bridge type %d", a3, a4, a5, a6, a7, a8, *a1);
  if (*a1 - 2 < 2)
  {
    v9 = ppp_stop(a1 + 2, 15);
    return v9 == 0;
  }

  if (*a1 == 1)
  {
    v9 = ipsec_stop((a1 + 2));
    return v9 == 0;
  }

  return 0;
}

void sub_28828(_DWORD *a1, xpc_object_t xdict, _DWORD *a3, _DWORD *a4)
{
  xpc_dictionary_get_remote_connection(xdict);
  v7 = xpc_connection_copy_entitlement_value();
  v8 = v7;
  if (*a1 == 3)
  {
    if (!v7)
    {
      *a3 = 0;
      *a4 = 0;
      return;
    }
  }

  else if (*a1 != 2 || v7 == 0)
  {
    *a3 = 0;
    *a4 = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_16;
  }

  if (xpc_get_type(v7) == &_xpc_type_BOOL && xpc_BOOL_get_value(v8))
  {
    *a3 = a1[26];
    v10 = a1[27];
  }

  else
  {
    v10 = 0;
    *a3 = 0;
  }

  *a4 = v10;
LABEL_16:

  xpc_release(v8);
}

void *sub_28908(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 1072);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 1072) = result;
  return result;
}

uint64_t sub_28944(_DWORD *a1)
{
  v10 = 0;
  if ((*a1 - 2) < 2)
  {
    v1 = ppp_copystatistics((a1 + 2), &v10);
    if (!v1)
    {
      return v10;
    }

    goto LABEL_6;
  }

  if (*a1 == 1)
  {
    v1 = ipsec_copystatistics((a1 + 2), &v10);
    if (v1)
    {
LABEL_6:
      v2 = strerror(v1);
      sub_28E88(5, @"Failed to copy statistics: %s", v3, v4, v5, v6, v7, v8, v2);
    }
  }

  return v10;
}

uint64_t sub_289BC(_DWORD *a1)
{
  v10 = 0;
  if ((*a1 - 2) < 2)
  {
    v1 = ppp_copyextendedstatus((a1 + 2), &v10);
    if (!v1)
    {
      return v10;
    }

    goto LABEL_6;
  }

  if (*a1 == 1)
  {
    v1 = ipsec_copyextendedstatus((a1 + 2), &v10);
    if (v1)
    {
LABEL_6:
      v2 = strerror(v1);
      sub_28E88(5, @"Failed to copy extended status: %s", v3, v4, v5, v6, v7, v8, v2);
    }
  }

  return v10;
}

__CFDictionary *sub_28A34(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_remote_connection(xdict);
  if (qword_435D8 && (v3 = *(qword_435D8 + 16)) != 0)
  {
    v4 = v3(*(a1 + 1064));
  }

  else
  {
    v4 = 0;
  }

  value = 0;
  if ((*a1 - 2) >= 2)
  {
    if (*a1 != 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    v8 = ipsec_getconnectdata(a1 + 8, &value, 0);
LABEL_16:
    v9 = v8;
    goto LABEL_17;
  }

  v5 = xpc_connection_copy_entitlement_value();
  if (!v5)
  {
    v8 = ppp_getconnectdata(a1 + 8, &value, 0);
    goto LABEL_16;
  }

  v6 = v5;
  v7 = xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(v6);
  v9 = ppp_getconnectdata(a1 + 8, &value, v7);
  xpc_release(v6);
LABEL_17:
  Mutable = 0;
  v11 = value;
  if (!v9 && value)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"SessionLegacyUserConfiguration", value);
    v11 = value;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v4)
  {
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    CFDictionarySetValue(Mutable, @"SessionLegacyServiceConfiguration", v4);
    CFRelease(v4);
  }

  return Mutable;
}

_DWORD *sub_28BE8(_DWORD *result)
{
  if ((*result - 2) < 2)
  {
    result = ppp_install((result + 2));
    if (!result)
    {
      return result;
    }

LABEL_6:
    v1 = strerror(result);
    return sub_28E88(5, @"Failed to install: %s", v2, v3, v4, v5, v6, v7, v1);
  }

  if (*result == 1)
  {
    result = ipsec_install((result + 2));
    if (result)
    {
      goto LABEL_6;
    }
  }

  return result;
}

_DWORD *sub_28C50(_DWORD *result)
{
  if ((*result - 2) < 2)
  {
    result = ppp_uninstall((result + 2));
    if (!result)
    {
      return result;
    }

LABEL_6:
    v1 = strerror(result);
    return sub_28E88(5, @"Failed to uninstall: %s", v2, v3, v4, v5, v6, v7, v1);
  }

  if (*result == 1)
  {
    result = ipsec_uninstall((result + 2));
    if (result)
    {
      goto LABEL_6;
    }
  }

  return result;
}

_DWORD *sub_28CB8(_DWORD *result)
{
  if ((*result - 2) >= 2)
  {
    if (*result == 1)
    {
      result = ipsec_setup_service((result + 2));
      if (result)
      {
        return sub_28E88(3, @"bridge_create: ipsec_setup_service failed: %d", v7, v8, v9, v10, v11, v12, result);
      }
    }
  }

  else
  {
    result = ppp_setup_service((result + 2));
    if (result)
    {
      return sub_28E88(3, @"bridge_create: ppp_setup_service failed: %d", v1, v2, v3, v4, v5, v6, result);
    }
  }

  return result;
}

_DWORD *sub_28D28(_DWORD *result)
{
  if ((*result - 2) < 2)
  {
    return ppp_log_out((result + 2));
  }

  if (*result == 1)
  {
    return ipsec_log_out((result + 2));
  }

  return result;
}

_DWORD *sub_28D54(_DWORD *result)
{
  if ((*result - 2) < 2)
  {
    return ppp_log_switch(result + 2);
  }

  if (*result == 1)
  {
    return ipsec_log_switch((result + 2));
  }

  return result;
}

_DWORD *sub_28D80(_DWORD *result)
{
  if (*result == 1)
  {
    return ipsec_device_lock(result + 2);
  }

  return result;
}

_DWORD *sub_28D98(_DWORD *result)
{
  if (*result == 1)
  {
    return ipsec_device_unlock((result + 2));
  }

  return result;
}

CFTypeID sub_28DB0(_DWORD *a1, const void *a2)
{
  result = CFDictionaryGetTypeID();
  if (a2)
  {
    v5 = result;
    result = CFGetTypeID(a2);
    if (result == v5 && *a1 == 1)
    {

      return ipsec_set_initial_values((a1 + 2), a2);
    }
  }

  return result;
}

FILE *sub_28E2C(FILE *result, _DWORD *a2)
{
  if (a2)
  {
    v3 = result;
    result = racoon_pid();
    *a2 = result;
    if ((LODWORD(v3->_p) - 2) >= 2)
    {
      if (LODWORD(v3->_p) != 1)
      {
        return result;
      }

      r = 0;
    }

    else
    {
      r = v3[4]._r;
    }

    a2[1] = r;
  }

  return result;
}

uint64_t sub_28E88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_435D8)
  {
    if (*qword_435D8)
    {
      return (*qword_435D8)(result, a2, &a9);
    }
  }

  return result;
}

void sub_28EC8(id a1)
{
  info = 0;
  values = kCFBooleanTrue;
  keys = kSCDynamicStoreUseSessionKeys;
  scnc_init_resources(gBundleRef);
  if (mach_timebase_info(&info))
  {
    sub_28E88(3, @"init_controller: mach_timebase_info failed", v1, v2, v3, v4, v5, v6, v18);
    return;
  }

  LODWORD(v7) = info.numer;
  LODWORD(v8) = info.denom;
  *&gTimeScaleSeconds = v7 / v8 / 1000000000.0;
  v9 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  gDynamicStore = SCDynamicStoreCreateWithOptions(kCFAllocatorDefault, @"NE - SCNC bridge", v9, 0, 0);
  if (gDynamicStore)
  {
    service_head = 0;
    qword_436E8 = &service_head;
    client_init_all();
    ipsec_init_things();
    byte_435F8 = 1;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = SCError();
    v11 = SCErrorString(v10);
    sub_28E88(3, @"init_controller: SCDynamicStoreCreateWithOptions failed: %s", v12, v13, v14, v15, v16, v17, v11);
    if (!v9)
    {
      return;
    }
  }

  CFRelease(v9);
}

uint64_t setup_security_context()
{
  *sp = 0;
  v5 = 0;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v0 = bootstrap_look_up(bootstrap_port, "com.apple.SystemConfiguration.PPPController-priv", &sp[1]);
  if (v0)
  {
    if (v0 == 1102)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 4294967294;
    }
  }

  else
  {
    v1 = sub_2B3EC(sp[1], sp, &v5, &v4, v3);
    mach_port_deallocate(mach_task_self_, sp[1]);
    if (!v1)
    {
      if (!sp[0] || (v1 = task_set_special_port(mach_task_self_, 4, sp[0]), mach_port_deallocate(mach_task_self_, sp[0]), !v1))
      {
        if (v5)
        {
          if (!audit_session_join(v5))
          {
            return 4294967293;
          }

          mach_port_deallocate(mach_task_self_, v5);
        }

        return 0;
      }
    }
  }

  return v1;
}

void controller_options_modify_ondemand()
{
  v1 = 0;
  v2 = &v1;
  v3 = 0x2000000000;
  v4 = 1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_29268;
  block[3] = &unk_39538;
  block[4] = &v1;
  if (qword_43618 != -1)
  {
    dispatch_once(&qword_43618, block);
  }

  if (*(v2 + 24))
  {
    sub_29438(*qword_43610);
    SCPreferencesSynchronize(*qword_43610);
  }

  _Block_object_dispose(&v1, 8);
}

void sub_29268(uint64_t a1)
{
  memset(&context, 0, sizeof(context));
  qword_43610 = CFAllocatorAllocateTyped();
  v2 = SCPreferencesCreate(kCFAllocatorDefault, @"PPPController", @"com.apple.pppcontroller-options.plist");
  v3 = qword_43610;
  *qword_43610 = v2;
  if (!v2)
  {
    v6 = SCError();
    SCErrorString(v6);
LABEL_7:
    SCLog();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_8;
  }

  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = v3;
  if (!SCPreferencesSetCallback(v2, sub_293DC, &context) || (v4 = *qword_43610, Current = CFRunLoopGetCurrent(), !SCPreferencesScheduleWithRunLoop(v4, Current, kCFRunLoopDefaultMode)))
  {
    v7 = SCError();
    SCErrorString(v7);
    goto LABEL_7;
  }

LABEL_8:
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v8 = qword_43610;
    if (*qword_43610)
    {
      CFRelease(*qword_43610);
      v8 = qword_43610;
    }

    CFAllocatorDeallocate(kCFAllocatorDefault, v8);
    qword_43610 = 0;
  }
}

void sub_293DC(const __SCPreferences *a1, int a2)
{
  if (a2 == 1)
  {
    SCLog();
    sub_29438(a1);

    SCPreferencesSynchronize(a1);
  }
}

uint64_t sub_29438(const __SCPreferences *a1)
{
  SCLog();
  Value = SCPreferencesGetValue(a1, @"Debug");
  TypeID = CFBooleanGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v4 = CFBooleanGetValue(Value);
    SCLog();
  }

  else
  {
    SCLog();
    v4 = 0;
  }

  gSCNCVerbose = _sc_verbose | v4;
  gSCNCDebug = v4;
  dword_40408 = 10;
  v5 = SCPreferencesGetValue(a1, @"OnDemandPauseIntervalOnAuthCancel");
  v6 = CFNumberGetTypeID();
  if (v5 && CFGetTypeID(v5) == v6)
  {
    CFNumberGetValue(v5, kCFNumberSInt32Type, &dword_40408);
  }

  SCLog();
  byte_4040C = 1;
  v7 = SCPreferencesGetValue(a1, @"PauseUntilNetChangeCheckWakeup");
  v8 = CFBooleanGetTypeID();
  if (v7 && CFGetTypeID(v7) == v8)
  {
    byte_4040C = CFBooleanGetValue(v7);
  }

  SCLog();
  byte_4040D = 1;
  v9 = SCPreferencesGetValue(a1, @"PauseUntilNetChangeCheckNetSignature");
  v10 = CFBooleanGetTypeID();
  if (v9 && CFGetTypeID(v9) == v10)
  {
    byte_4040D = CFBooleanGetValue(v9);
  }

  SCLog();
  byte_4040E = 1;
  v11 = SCPreferencesGetValue(a1, @"OnDemandAutoPauseUponDisconnect");
  v12 = CFBooleanGetTypeID();
  if (v11 && CFGetTypeID(v11) == v12)
  {
    byte_4040E = CFBooleanGetValue(v11);
  }

  SCLog();
  if (qword_43608)
  {
    CFRelease(qword_43608);
  }

  qword_43608 = 0;
  v13 = SCPreferencesGetValue(a1, @"OnDemandBlacklistedProcesses");
  v14 = CFArrayGetTypeID();
  if (v13 && CFGetTypeID(v13) == v14)
  {
    Count = CFArrayGetCount(v13);
    if (Count < 1)
    {
LABEL_26:
      qword_43608 = CFArrayCreateCopy(kCFAllocatorDefault, v13);
    }

    else
    {
      v16 = Count;
      v17 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v13, v17);
        v19 = CFStringGetTypeID();
        if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v19)
        {
          break;
        }

        if (v16 == ++v17)
        {
          goto LABEL_26;
        }
      }
    }
  }

  else
  {
    SCLog();
  }

  v20 = byte_43600;
  byte_43600 = 0;
  v21 = SCPreferencesGetValue(a1, @"UseVODDisconnectRulesWhenVODDisabled");
  v22 = CFBooleanGetTypeID();
  if (v21 && CFGetTypeID(v21) == v22)
  {
    byte_43600 = CFBooleanGetValue(v21);
  }

  result = SCLog();
  if (byte_43600 != v20)
  {
    v24 = service_head;
    if (service_head)
    {
      v25 = kSCPropNetVPNOnDemandRules;
      do
      {
        v26 = v24;
        v24 = *v24;
        v27 = *(v26 + 18);
        if ((v27 & 0x200000) == 0)
        {
          if (!byte_43600)
          {
            v28 = v27 & 0xFEDFFFFF;
            goto LABEL_39;
          }

          result = CFDictionaryGetValue(v26[17], v25);
          if (result)
          {
            v28 = *(v26 + 18) | 0x1000000;
LABEL_39:
            *(v26 + 18) = v28;
          }
        }
      }

      while (v24);
    }
  }

  return result;
}

void reachability_init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_299B4;
  block[3] = &unk_39560;
  block[5] = a1;
  block[6] = a2;
  block[4] = a3;
  if (qword_43620 != -1)
  {
    dispatch_once(&qword_43620, block);
  }
}

void *sub_299B4(uint64_t a1)
{
  qword_43628 = dispatch_queue_create("PPPController reachability dispatch queue", 0);
  qword_43630 = *(a1 + 40);
  CFRetain(qword_43630);
  qword_43638 = *(a1 + 48);
  CFRetain(qword_43638);
  result = _Block_copy(*(a1 + 32));
  qword_43640 = result;
  return result;
}

double reachability_clear(uint64_t a1)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_2A098;
    block[3] = &unk_395E0;
    block[4] = v2;
    dispatch_async(qword_43628, block);
  }

  *(a1 + 536) = 0;
  result = NAN;
  *(a1 + 544) = 0xFFFFFFFF00000000;
  return result;
}

void reachability_reset(uint64_t a1)
{
  reachability_clear(a1);
  v2 = scnc_copy_remote_server(a1, 0);
  TypeID = CFStringGetTypeID();
  if (v2 && CFGetTypeID(v2) == TypeID && CFStringGetLength(v2) >= 1)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *bytes = 0u;
    Length = CFStringGetLength(v2);
    Typed = CFAllocatorAllocateTyped();
    CFStringGetCString(v2, Typed, Length, 0x600u);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (inet_pton(2, Typed, &bytes[4]) == 1)
    {
      *bytes = 528;
      v7 = kCFAllocatorDefault;
      v8 = 16;
    }

    else
    {
      if (inet_pton(30, Typed, &bytes[8]) != 1)
      {
        CFDictionarySetValue(Mutable, @"nodename", v2);
        goto LABEL_10;
      }

      *bytes = 7708;
      v7 = kCFAllocatorDefault;
      v8 = 28;
    }

    v9 = CFDataCreate(v7, bytes, v8);
    CFDictionarySetValue(Mutable, @"remote-address", v9);
    CFRelease(v9);
LABEL_10:
    CFRelease(v2);
    CFAllocatorDeallocate(kCFAllocatorDefault, Typed);
    CFDictionarySetValue(Mutable, @"ConnectionOnDemandBypass", kCFBooleanTrue);
    v10 = *(a1 + 24);
    CFRetain(v10);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_29D14;
    block[3] = &unk_395C0;
    block[4] = Mutable;
    block[5] = v10;
    block[6] = v2;
    dispatch_async(qword_43628, block);
  }
}

void sub_29D14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SCNetworkReachabilityCreateWithOptions();
  CFRelease(*(a1 + 32));
  if (v3)
  {
    v4 = *(a1 + 40);
    context.version = 0;
    context.info = v4;
    context.retain = &_CFRetain;
    context.release = &_CFRelease;
    context.copyDescription = &CFCopyDescription;
    SCNetworkReachabilitySetCallback(v3, sub_29E60, &context);
    SCNetworkReachabilitySetDispatchQueue(v3, qword_43628);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_29F2C;
    block[3] = &unk_395A0;
    block[4] = *(a1 + 40);
    block[5] = v3;
    CFRunLoopPerformBlock(qword_43630, qword_43638, block);
    CFRunLoopWakeUp(qword_43630);
  }

  else
  {
    v5 = *(a1 + 48);
    SCLog();
  }

  CFRelease(*(a1 + 40));
}

void sub_29E60(const void *a1, SCNetworkReachabilityFlags a2, const void *a3)
{
  flags = a2;
  CFRetain(a1);
  CFRetain(a3);
  SCNetworkReachabilityGetFlags(a1, &flags);
  InterfaceIndex = SCNetworkReachabilityGetInterfaceIndex();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_2A0E8;
  v6[3] = &unk_39600;
  v6[4] = a3;
  v6[5] = a1;
  v7 = flags;
  v8 = InterfaceIndex;
  CFRunLoopPerformBlock(qword_43630, qword_43638, v6);
  CFRunLoopWakeUp(qword_43630);
}

void sub_29F2C(uint64_t a1)
{
  v2 = findbyserviceID(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v4 = v2[67];
    if (v4)
    {
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_2A098;
      v14 = &unk_395E0;
      v15 = v4;
      dispatch_async(qword_43628, &block);
      v3[67] = 0;
    }

    v5 = *(a1 + 40);
    v3[67] = v5;
    v6 = qword_43628;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_2A088;
    v10[3] = &unk_39580;
    v7 = *(a1 + 32);
    v10[4] = v5;
    v10[5] = v7;
    p_block = v10;
  }

  else
  {
    v9 = *(a1 + 40);
    v6 = qword_43628;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_2A098;
    v14 = &unk_395E0;
    v15 = v9;
    p_block = &block;
  }

  dispatch_async(v6, p_block);
}

void sub_2A098(uint64_t a1)
{
  SCNetworkReachabilitySetCallback(*(a1 + 32), 0, 0);
  SCNetworkReachabilitySetDispatchQueue(*(a1 + 32), 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_2A0E8(uint64_t a1)
{
  v2 = findbyserviceID(*(a1 + 32));
  if (v2 && v2[67] == *(a1 + 40))
  {
    *(v2 + 136) = *(a1 + 48);
    *(v2 + 137) = *(a1 + 52);
    (*(qword_43640 + 16))();
  }

  CFRelease(*(a1 + 40));
  v3 = *(a1 + 32);

  CFRelease(v3);
}

uint64_t sub_2A168(mach_port_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, _DWORD *a7, _DWORD *a8)
{
  msg.msgh_size = 0;
  v18 = 4;
  v19 = a2;
  v20 = 16777472;
  v21 = a3;
  v22 = a4;
  v23 = 1245184;
  v24 = a5;
  v25 = 1114112;
  v26 = a6;
  v27 = 1245184;
  v28 = NDR_record;
  v29 = a3;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x465000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 3, 0x5Cu, 0x3Cu, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v13)
    {
      if (msg.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (msg.msgh_id == 18100)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v14 = 4294966996;
          if (v18 == 1 && msg.msgh_size == 52 && !msg.msgh_remote_port && HIWORD(v20) << 16 == 1114112)
          {
            v14 = 0;
            v15 = HIDWORD(v22);
            *a7 = v19;
            *a8 = v15;
            return v14;
          }
        }

        else if (msg.msgh_size == 36)
        {
          v14 = 4294966996;
          if (HIDWORD(v19))
          {
            if (msg.msgh_remote_port)
            {
              v14 = 4294966996;
            }

            else
            {
              v14 = HIDWORD(v19);
            }
          }
        }

        else
        {
          v14 = 4294966996;
        }
      }

      else
      {
        v14 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v14;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v14;
}

uint64_t sub_2A370(int a1, _DWORD *a2, _DWORD *a3)
{
  *&msg[20] = 0u;
  v14 = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(msg, 3, 0x18u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(*&msg[12]);
      return v9;
    }

    if (*&msg[20] == 71)
    {
      v9 = 4294966988;
    }

    else if (*&msg[20] == 18101)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 44)
        {
          if (!*&msg[8])
          {
            v9 = *&msg[32];
            if (!*&msg[32])
            {
              v12 = DWORD1(v14);
              *a2 = v14;
              *a3 = v12;
              return v9;
            }

            goto LABEL_24;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v10 = 1;
          }

          else
          {
            v10 = *&msg[32] == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = *&msg[32];
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(msg);
    return v9;
  }

  mig_put_reply_port(*&msg[12]);
  return v9;
}

uint64_t sub_2A4E4(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18102)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v15) == 1)
          {
            v12 = DWORD1(v15);
            if (DWORD1(v15) == v16)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v16);
              return v11;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v11;
}

uint64_t sub_2A6BC(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18103)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v15) == 1)
          {
            v12 = DWORD1(v15);
            if (DWORD1(v15) == v16)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v16);
              return v11;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v11;
}

uint64_t sub_2A894(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465400000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18104)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v15) == 1)
          {
            v12 = DWORD1(v15);
            if (DWORD1(v15) == v16)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v16);
              return v11;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v11;
}

uint64_t sub_2AA6C(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = NDR_record;
  v19 = a3;
  v20 = a4;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x465500000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&msg, 3, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v10;
    }

    if (msg.msgh_id == 71)
    {
      v10 = 4294966988;
    }

    else if (msg.msgh_id == 18105)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v10 = HIDWORD(v15);
            if (!HIDWORD(v15))
            {
              *a5 = v16;
              return v10;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = HIDWORD(v15) == 0;
          }

          if (v11)
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = HIDWORD(v15);
          }

          goto LABEL_24;
        }
      }

      v10 = 4294966996;
    }

    else
    {
      v10 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v10;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v10;
}

uint64_t sub_2AC1C(mach_port_t a1, int a2, _DWORD *a3)
{
  v13 = 0u;
  v11.msgh_size = 0;
  v12 = NDR_record;
  LODWORD(v13) = a2;
  reply_port = mig_get_reply_port();
  v11.msgh_remote_port = a1;
  v11.msgh_local_port = reply_port;
  v11.msgh_bits = 5395;
  *&v11.msgh_voucher_port = 0x465600000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v11);
    msgh_local_port = v11.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&v11, 3, 0x24u, 0x30u, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v8;
    }

    if (v11.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v11.msgh_id == 18106)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v8 = v13;
            if (!v13)
            {
              *a3 = DWORD1(v13);
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = v13;
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_put_reply_port(v11.msgh_local_port);
  return v8;
}

uint64_t sub_2AD98(int a1, _DWORD *a2)
{
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v4 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v4;
  v10 = 5395;
  *reply_port_12 = 0x465700000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v10);
    v5 = reply_port_8;
  }

  else
  {
    v5 = v4;
  }

  v6 = mach_msg(&v10, 3, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(reply_port_8);
      return v7;
    }

    if (*&reply_port_12[4] == 71)
    {
      v7 = 4294966988;
    }

    else if (*&reply_port_12[4] == 18107)
    {
      if ((v10 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v7 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              *a2 = *&reply_port_12[20];
              return v7;
            }

            goto LABEL_24;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v8 = 1;
          }

          else
          {
            v8 = *&reply_port_12[16] == 0;
          }

          if (v8)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = *&reply_port_12[16];
          }

          goto LABEL_24;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v10);
    return v7;
  }

  mig_put_reply_port(reply_port_8);
  return v7;
}

uint64_t sub_2AF00(int a1, _DWORD *a2)
{
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v4 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v4;
  v10 = 5395;
  *reply_port_12 = 0x465800000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v10);
    v5 = reply_port_8;
  }

  else
  {
    v5 = v4;
  }

  v6 = mach_msg(&v10, 3, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(reply_port_8);
      return v7;
    }

    if (*&reply_port_12[4] == 71)
    {
      v7 = 4294966988;
    }

    else if (*&reply_port_12[4] == 18108)
    {
      if ((v10 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v7 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              *a2 = *&reply_port_12[20];
              return v7;
            }

            goto LABEL_24;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v8 = 1;
          }

          else
          {
            v8 = *&reply_port_12[16] == 0;
          }

          if (v8)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = *&reply_port_12[16];
          }

          goto LABEL_24;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v10);
    return v7;
  }

  mig_put_reply_port(reply_port_8);
  return v7;
}

uint64_t sub_2B068(mach_port_t a1, int a2, _DWORD *a3)
{
  v13 = 0u;
  v11.msgh_size = 0;
  v12 = NDR_record;
  LODWORD(v13) = a2;
  reply_port = mig_get_reply_port();
  v11.msgh_remote_port = a1;
  v11.msgh_local_port = reply_port;
  v11.msgh_bits = 5395;
  *&v11.msgh_voucher_port = 0x465900000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v11);
    msgh_local_port = v11.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&v11, 3, 0x24u, 0x30u, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v8;
    }

    if (v11.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v11.msgh_id == 18109)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v8 = v13;
            if (!v13)
            {
              *a3 = DWORD1(v13);
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = v13;
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_put_reply_port(v11.msgh_local_port);
  return v8;
}

uint64_t sub_2B1E4(mach_port_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, int a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v19 = 4;
  v18.msgh_size = 0;
  v20 = a2;
  v21 = 16777472;
  v22 = a3;
  v23 = a4;
  v24 = 1245184;
  v25 = a5;
  v26 = 1114112;
  v27 = a6;
  v28 = 1245184;
  v29 = NDR_record;
  v30 = a3;
  v31 = a7;
  v32 = a8;
  v33 = a9;
  reply_port = mig_get_reply_port();
  v18.msgh_remote_port = a1;
  v18.msgh_local_port = reply_port;
  v18.msgh_bits = -2147478253;
  *&v18.msgh_voucher_port = 0x465D00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v18);
    msgh_local_port = v18.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&v18, 3, 0x68u, 0x3Cu, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v18.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (v18.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (v18.msgh_id == 18113)
      {
        if ((v18.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && v18.msgh_size == 52 && !v18.msgh_remote_port && HIWORD(v21) << 16 == 1114112)
          {
            v15 = 0;
            v16 = HIDWORD(v23);
            *a10 = v20;
            *a11 = v16;
            return v15;
          }
        }

        else if (v18.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (v18.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&v18);
      return v15;
    }

    mig_dealloc_reply_port(v18.msgh_local_port);
  }

  return v15;
}

uint64_t sub_2B3EC(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _OWORD *a5)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465F00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v11 = *&msg[12];
  }

  else
  {
    v11 = reply_port;
  }

  v12 = mach_msg(msg, 50331651, 0x18u, 0x84u, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    return v13;
  }

  if (v12)
  {
    mig_dealloc_reply_port(*&msg[12]);
    return v13;
  }

  if (*&msg[20] == 71)
  {
    v13 = 4294966988;
    goto LABEL_28;
  }

  if (*&msg[20] != 18115)
  {
    v13 = 4294966995;
    goto LABEL_28;
  }

  if ((*msg & 0x80000000) == 0)
  {
    if (*&msg[4] == 36)
    {
      v13 = 4294966996;
      if (*&msg[32])
      {
        if (*&msg[8])
        {
          v13 = 4294966996;
        }

        else
        {
          v13 = *&msg[32];
        }
      }
    }

    else
    {
      v13 = 4294966996;
    }

    goto LABEL_28;
  }

  v13 = 4294966996;
  if (*&msg[24] != 2 || *&msg[4] != 64 || *&msg[8] || WORD1(v18) << 16 != 1114112 || HIWORD(v18) << 16 != 1114112)
  {
LABEL_28:
    mach_msg_destroy(msg);
    return v13;
  }

  if (HIDWORD(v19) || v20 < 0x20)
  {
    return 4294966987;
  }

  v13 = 0;
  v15 = DWORD1(v18);
  *a2 = *&msg[28];
  *a3 = v15;
  *a4 = DWORD2(v19);
  v16 = v22;
  *a5 = v21;
  a5[1] = v16;
  return v13;
}

uint64_t sub_2B5DC(mach_port_t a1, int a2, void *a3, _DWORD *a4, _DWORD *a5, _OWORD *a6)
{
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  msg.msgh_size = 0;
  *v19 = NDR_record;
  *&v19[8] = a2;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x466000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 50331651, 0x24u, 0x80u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (v13)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (msg.msgh_id == 71)
  {
    v14 = 4294966988;
    goto LABEL_28;
  }

  if (msg.msgh_id != 18116)
  {
    v14 = 4294966995;
    goto LABEL_28;
  }

  if ((msg.msgh_bits & 0x80000000) == 0)
  {
    if (msg.msgh_size == 36)
    {
      v14 = 4294966996;
      if (*&v19[8])
      {
        if (msg.msgh_remote_port)
        {
          v14 = 4294966996;
        }

        else
        {
          v14 = *&v19[8];
        }
      }
    }

    else
    {
      v14 = 4294966996;
    }

    goto LABEL_28;
  }

  v14 = 4294966996;
  if (*v19 != 1 || msg.msgh_size != 60 || msg.msgh_remote_port || BYTE3(v20) != 1 || (v15 = DWORD1(v20), DWORD1(v20) != v21))
  {
LABEL_28:
    mach_msg_destroy(&msg);
    return v14;
  }

  if (DWORD2(v21) || HIDWORD(v21) < 0x20)
  {
    return 4294966987;
  }

  v14 = 0;
  *a3 = *&v19[4];
  *a4 = v15;
  *a5 = DWORD1(v21);
  v17 = *&v22[28];
  *a6 = *&v22[12];
  a6[1] = v17;
  return v14;
}

uint64_t sub_2B810(int a1, _DWORD *a2, _OWORD *a3)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x466100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(msg, 50331651, 0x18u, 0x6Cu, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    return v9;
  }

  if (v8)
  {
    mig_dealloc_reply_port(*&msg[12]);
    return v9;
  }

  if (*&msg[20] == 71)
  {
    v9 = 4294966988;
LABEL_24:
    mach_msg_destroy(msg);
    return v9;
  }

  if (*&msg[20] != 18117)
  {
    v9 = 4294966995;
    goto LABEL_24;
  }

  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (*&msg[4] != 40)
  {
    if (*&msg[4] == 36)
    {
      if (*&msg[8])
      {
        v10 = 1;
      }

      else
      {
        v10 = *&msg[32] == 0;
      }

      if (v10)
      {
        v9 = 4294966996;
      }

      else
      {
        v9 = *&msg[32];
      }

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (*&msg[8])
  {
LABEL_23:
    v9 = 4294966996;
    goto LABEL_24;
  }

  v9 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_24;
  }

  if (DWORD1(v14) || DWORD2(v14) < 0x20)
  {
    return 4294966987;
  }

  v9 = 0;
  *a2 = v14;
  v12 = *(&v15[1] + 8);
  *a3 = *(v15 + 8);
  a3[1] = v12;
  return v9;
}

uint64_t sub_2B9D4(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 18022) >= 0xFFFFFFEA)
  {
    return *(&_pppcontroller_subsystem + 5 * (v1 - 18000) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2BA10(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 4 || *(result + 4) != 92)
  {
    v3 = -304;
    goto LABEL_13;
  }

  if (*(result + 39) != 1 || *(result + 54) << 16 != 1114112 || *(result + 66) << 16 != 1114112 || *(result + 78) << 16 != 1114112 || *(result + 40) != *(result + 88))
  {
    v3 = -300;
    goto LABEL_13;
  }

  if (*(result + 92) || *(result + 96) <= 0x1Fu)
  {
    v3 = -309;
LABEL_13:
    *(a2 + 32) = v3;
    goto LABEL_14;
  }

  *(a2 + 32) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 44);
  v8 = *(result + 56);
  v9 = *(result + 68);
  v10 = *(result + 128);
  v11[0] = *(result + 112);
  v11[1] = v10;
  result = sub_17524(v4, v5, v6, v7, v8, v9, (a2 + 28), (a2 + 48), v11);
  if (!result)
  {
    *(a2 + 40) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 52;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_14:
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_2BB60(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_17608(result[3], (a2 + 36), (a2 + 40));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

_DWORD *sub_2BBE0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_1766C(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_2BC8C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_1770C(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_2BD38(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_177AC(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_2BDE4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_17850(*(result + 12), *(result + 28), v3, *(result + 56), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_2BE9C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_17978(result[3], result[8], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_2BF20(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_17A1C(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_2BF9C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_17A70(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_2C018(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_17AC4(result[3], result[8], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_2C09C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 4 || *(result + 4) != 104)
  {
    v3 = -304;
    goto LABEL_13;
  }

  if (*(result + 39) != 1 || *(result + 54) << 16 != 1114112 || *(result + 66) << 16 != 1114112 || *(result + 78) << 16 != 1114112 || *(result + 40) != *(result + 88))
  {
    v3 = -300;
    goto LABEL_13;
  }

  if (*(result + 104) || *(result + 108) <= 0x1Fu)
  {
    v3 = -309;
LABEL_13:
    *(a2 + 32) = v3;
    goto LABEL_14;
  }

  *(a2 + 32) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 44);
  v8 = *(result + 56);
  v9 = *(result + 68);
  v10 = *(result + 92);
  v11 = *(result + 96);
  v12 = *(result + 100);
  v13 = *(result + 140);
  v14[0] = *(result + 124);
  v14[1] = v13;
  result = sub_16F08(v4, v5, v6, v7, v8, v9, v10, v11, v12, (a2 + 28), (a2 + 48), v14);
  if (!result)
  {
    *(a2 + 40) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 52;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_14:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_2C1FC(uint64_t result, uint64_t a2)
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
LABEL_8:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 32) = 0x13000000000000;
  *(a2 + 44) = 0x13000000000000;
  result = sub_17B18(*(result + 12), (a2 + 28), (a2 + 40), (a2 + 60), (result + 44));
  if (result)
  {
    *(a2 + 32) = result;
    goto LABEL_8;
  }

  *(a2 + 52) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 64;
  *(a2 + 24) = 2;
  return result;
}

uint64_t sub_2C2C8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
LABEL_8:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 36) = 16777473;
  result = sub_17BBC(*(result + 12), *(result + 32), (a2 + 28), (a2 + 52), (a2 + 56), (result + 56));
  if (result)
  {
    *(a2 + 32) = result;
    goto LABEL_8;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_2C3A0(uint64_t result, uint64_t a2)
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
    *(a2 + 24) = NDR_record;
    return result;
  }

  result = sub_17CA4(*(result + 12), (a2 + 36), (result + 44));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_2C440(_DWORD *a1, uint64_t a2)
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
  if ((v4 - 18022) >= 0xFFFFFFEA && (v5 = *(&_pppcontroller_subsystem + 5 * (v4 - 18000) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CFURLGetByteRangeForComponent(CFURLRef url, CFURLComponentType component, CFRange *rangeIncludingSeparators)
{
  v5 = _CFURLGetByteRangeForComponent(url, component, rangeIncludingSeparators);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}