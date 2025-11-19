uint64_t ramrod_compare_restoreversions(void *a1, void *a2)
{
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  if (sub_18A8(a1) && sub_18A8(a2))
  {
    return sub_1960(v5, v4);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t sub_18A8(void *a1)
{
  if (![a1 count])
  {
    return 1;
  }

  [objc_msgSend(a1 objectForKeyedSubscript:{@"RestoreVersion", "UTF8String"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"RestoreBuildGroup", "UTF8String"}];
  if (bridge_version_parse_components())
  {
    return 1;
  }

  ramrod_log_msg("%s: could not parse %s,%s\n", v2, v3, v4, v5, v6, v7, v8, "_parse_version_dict");
  return 0;
}

uint64_t sub_1960(_DWORD *a1, _DWORD *a2)
{
  v3 = sub_1B70(a1);
  v4 = sub_1B70(a2);
  if (v3 && v4)
  {
    ramrod_log_msg("%s: versions are both equal to NULL\n", v5, v6, v7, v8, v9, v10, v11, "_ramrod_compare_parsed_versions");
    return 0;
  }

  else if (v3)
  {
    ramrod_log_msg("%s: a is NULL, but b is not.  a < b\n", v5, v6, v7, v8, v9, v10, v11, "_ramrod_compare_parsed_versions");
    return 0xFFFFFFFFLL;
  }

  else if (v4)
  {
    ramrod_log_msg("%s: a is not NULL, but b is.  a > b\n", v5, v6, v7, v8, v9, v10, v11, "_ramrod_compare_parsed_versions");
    return 1;
  }

  else
  {
    v13 = bridge_version_compare();
    if (v13 > 3)
    {
      v12 = 4294967294;
    }

    else
    {
      v12 = dword_109530[v13];
    }

    v14 = bridge_version_unparse();
    v23 = bridge_version_unparse();
    ramrod_log_msg("%s: %s %s %s\n", v15, v16, v17, v18, v19, v20, v21, "_ramrod_compare_parsed_versions");
    free(v14);
    free(v23);
  }

  return v12;
}

uint64_t ramrod_compare_restoreversion_strings(_BYTE *a1, _BYTE *a2)
{
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  if (sub_1B00(a1) && sub_1B00(a2))
  {
    return sub_1960(v5, v4);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t sub_1B00(_BYTE *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!*a1 || (bridge_version_parse() & 1) != 0)
  {
    return 1;
  }

  ramrod_log_msg("%s: error parsing %s.\n", v1, v2, v3, v4, v5, v6, v7, "_parse_version_string");
  return 0;
}

CFStringRef sub_1BC4(uint64_t a1, const char **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = strlen(*a2);
  if (v3 > 0x100)
  {
    return CFStringCreateWithFormat(0, 0, @"~%s", &v2[v3 - 255]);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"%s", v2);
  }
}

CFStringRef sub_1C3C(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = strlen(*(a2 + 1));
  if (v4 > 0xF2)
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:~%s}", *a2, v3 + v4 - 241);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:%s}", *a2, v3);
  }
}

CFStringRef sub_1CBC(uint64_t a1, void *a2)
{
  if (a2)
  {
    return CFStringCreateWithFormat(0, 0, @"%ld", *a2);
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_1D00(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v16 = 0;
    asprintf(&v16, "{");
    v8 = v16;
    if (v16)
    {
      v9 = 0;
      v15 = 0;
      v10 = 1;
      do
      {
        v11 = v10;
        v12 = *(&v2->isa + v9);
        if (v12)
        {
          v8 = sub_8FF4(v8, off_1A8380[v9], v12, &v15);
          v16 = v8;
        }

        v10 = 0;
        v9 = 1;
      }

      while ((v11 & 1) != 0);
      v16 = sub_90E4(v8, "}", v12, v3, v4, v5, v6, v7, v14);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v16);
      if (v16)
      {
        free(v16);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_1DD0(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v15 = 0;
    asprintf(&v15, "{");
    v8 = v15;
    if (v15)
    {
      v14 = 0;
      p_info = &v2->info;
      v10 = 8;
      do
      {
        v11 = *p_info;
        if (*p_info)
        {
          v8 = sub_9184(v8, *(p_info - 2), v11, &v14);
          v15 = v8;
        }

        p_info += 2;
        --v10;
      }

      while (v10);
      v15 = sub_90E4(v8, "}", v11, v3, v4, v5, v6, v7, v13);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v15);
      if (v15)
      {
        free(v15);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

int *sub_1E8C(uint64_t a1, int *a2)
{
  v2 = a2;
  if (a2)
  {
    v14 = 0;
    asprintf(&v14, "{");
    if (v14)
    {
      v13 = 0;
      v9 = 8;
      do
      {
        if (*v2)
        {
          v12 = 0;
          asprintf(&v12, "%d", v2[1]);
          v3 = v12;
          if (v12)
          {
            v14 = sub_9184(v14, *v2, v12, &v13);
            if (v12)
            {
              free(v12);
            }
          }
        }

        v2 += 2;
        --v9;
      }

      while (v9);
      v14 = sub_90E4(v14, "}", v3, v4, v5, v6, v7, v8, v11);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v14);
      if (v14)
      {
        free(v14);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_1F88(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v19 = 0;
    asprintf(&v19, "{");
    if (v19)
    {
      v9 = 0;
      v18 = 0;
      p_info = &v2->info;
      do
      {
        v11 = v2 + 18 * v9;
        if (*v11)
        {
          v22 = 0;
          asprintf(&v22, "{");
          if (v22)
          {
            v12 = 0;
            v21 = 0;
            do
            {
              v13 = p_info[v12];
              if (v13)
              {
                v20 = 0;
                asprintf(&v20, "%s", v13);
                v3 = v20;
                if (v20)
                {
                  v22 = sub_91FC(v22, v12, v20, &v21);
                  if (v20)
                  {
                    free(v20);
                  }
                }
              }

              ++v12;
            }

            while (v12 != 8);
            v14 = sub_90E4(v22, "}", v3, v4, v5, v6, v7, v8, v17);
            if (v14)
            {
              v15 = v14;
              v19 = sub_9184(v19, *v11, v14, &v18);
              free(v15);
            }
          }
        }

        ++v9;
        p_info += 9;
      }

      while (v9 != 8);
      v19 = sub_90E4(v19, "}", v3, v4, v5, v6, v7, v8, v17);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v19);
      if (v19)
      {
        free(v19);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_2120(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v18 = 0;
    asprintf(&v18, "{");
    if (v18)
    {
      v9 = 0;
      v17 = 0;
      v10 = v2;
      do
      {
        v11 = v2 + 11 * v9;
        if (*v11)
        {
          v21 = 0;
          asprintf(&v21, "{");
          if (v21)
          {
            v12 = 0;
            v20 = 0;
            do
            {
              if (*(&v10[1].isa + v12 + 4))
              {
                v19 = 0;
                asprintf(&v19, "%d", *(&v10->isa + v12 + 1));
                v3 = v19;
                if (v19)
                {
                  v21 = sub_91FC(v21, v12, v19, &v20);
                  if (v19)
                  {
                    free(v19);
                  }
                }
              }

              ++v12;
            }

            while (v12 != 8);
            v13 = sub_90E4(v21, "}", v3, v4, v5, v6, v7, v8, v16);
            if (v13)
            {
              v14 = v13;
              v18 = sub_9184(v18, *v11, v13, &v17);
              free(v14);
            }
          }
        }

        ++v9;
        v10 = (v10 + 44);
      }

      while (v9 != 8);
      v18 = sub_90E4(v18, "}", v3, v4, v5, v6, v7, v8, v16);
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v18);
      if (v18)
      {
        free(v18);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t checkpoint_is_after_nvram_init()
{
  v0 = qword_1C6478;
  if (!qword_1C6478)
  {
    v0 = qword_1C6480;
  }

  if (v0)
  {
    return *(v0 + 845);
  }

  else
  {
    return 0;
  }
}

uint64_t checkpoint_is_reboot_retry()
{
  v0 = qword_1C6478;
  if (!qword_1C6478)
  {
    v0 = qword_1C6480;
  }

  if (v0)
  {
    return *(v0 + 104);
  }

  else
  {
    return 0;
  }
}

uint64_t checkpoint_would_reboot_retry()
{
  v0 = qword_1C6478;
  if (!qword_1C6478)
  {
    v0 = qword_1C6480;
  }

  if (!v0)
  {
    return 0;
  }

  v1 = v0[101];
  v2 = v0[102];
  v3 = v0[104];
  v4 = v0[100];
  if (v1)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v3)
  {
    v6 = 0;
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void checkpoint_monitor_init(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1C6480)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): additional_init_of_monitor\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_monitor_init");
  }

  else
  {
    v9 = sub_2468();
    if (v9)
    {
      v17 = v9;
      qword_1C6480 = v9;
      *v9 = 1;
      *(v9 + 22) = a1;
      if (a1 == 1)
      {
        v9[101] = 1;
      }

      if (sub_2668(v9, 1, 0, v12, v13, v14, v15, v16))
      {
        *(v17 + 1632) = 1;
        *(v17 + 1640) = "initial entry";
        sub_2F64(v17, v18, v19, v20, v21, v22, v23, v24);
      }

      if (*(v17 + 88) != 3)
      {

        sub_3420(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate monitor context\n", v10, v11, v12, v13, v14, v15, v16, "checkpoint_monitor_init");
    }
  }
}

char *sub_2468()
{
  v0 = calloc(1uLL, 0x9A8uLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutexattr_init((v0 + 72));
    pthread_mutex_init((v1 + 8), (v1 + 72));
    *(v1 + 26) = 0;
    *(v1 + 24) = 0;
    *(v1 + 27) = v1 + 208;
    pthread_mutexattr_init(v1 + 20);
    pthread_mutex_init(v1 + 4, v1 + 20);
    *(v1 + 42) = dispatch_semaphore_create(0);
    *(v1 + 43) = dispatch_semaphore_create(0);
    *(v1 + 62) = 0;
    *(v1 + 63) = v1 + 496;
    *(v1 + 83) = 0;
    *(v1 + 84) = v1 + 664;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(v1 + 304) = Mutable;
    if (!Mutable)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create failed step tracking (tolerated steps cannot be stored to filesystem\n", v3, v4, v5, v6, v7, v8, v9, "checkpoint_init_alloc_context");
    }

    v10 = 0;
    *(v1 + 8) = 0u;
    *(v1 + 9) = 0u;
    v1[160] = 1;
    *(v1 + 212) = 1;
    *(v1 + 310) = 2;
    v1[844] = 1;
    v11 = v1 + 1672;
    v12 = &dword_1A83A4;
    do
    {
      v14 = *v12;
      v12 += 8;
      v13 = v14;
      if (v14 > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v15 = 576;
          }

          else
          {
            if (v13 != 8)
            {
              goto LABEL_27;
            }

            v15 = 352;
          }
        }

        else if (v13 == 5)
        {
          v15 = 128;
        }

        else
        {
          if (v13 != 6)
          {
            goto LABEL_27;
          }

          v15 = 64;
        }
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 != 3)
          {
            if (v13 != 4)
            {
LABEL_27:
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unknown field type (%d) for NVRAM ID %d\n", v3, v4, v5, v6, v7, v8, v9, "checkpoint_init_alloc_context");
              if (!*v11)
              {
                goto LABEL_25;
              }

LABEL_24:
              *(v11 - 2) = v10;
              goto LABEL_25;
            }

            goto LABEL_19;
          }
        }

        else if (v13 >= 2)
        {
          if (v13 != 2)
          {
            goto LABEL_27;
          }

LABEL_19:
          v15 = 16;
          goto LABEL_23;
        }

        v15 = 8;
      }

LABEL_23:
      v16 = calloc(1uLL, v15);
      *v11 = v16;
      if (v16)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++v10;
      v11 += 2;
    }

    while (v10 != 48);
  }

  return v1;
}

uint64_t sub_2668(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = *(a1 + 840);
  if (!v10)
  {
    goto LABEL_156;
  }

  if (v10 == 1)
  {
    v11 = 1;
    goto LABEL_20;
  }

  v11 = 0;
  if (a2)
  {
    if (v10 == 2)
    {
LABEL_156:
      if (ramrod_check_NVRAM_access())
      {
        if (*(a1 + 2448))
        {
          if (!*(a1 + 2449))
          {
LABEL_24:
            v17 = *(a1 + 840);
            if (*(a1 + 845))
            {
LABEL_149:
              v11 = 1;
              *(a1 + 840) = 1;
              if (!v8)
              {
                if (v17)
                {
                  sub_3680(a1, 2, 1, 0, 256, "NVRAM access has become available", 0, 0, 0);
                }

                else
                {
                  sub_3680(a1, 2, 1, 0, 256, "NVRAM access available on initial check", 0, 0, 0);
                }
              }

              goto LABEL_20;
            }

            v18 = *a1 == 1 && v17 == 2;
            v19 = 848;
            if (v18)
            {
              v19 = 1240;
            }

            v20 = (a1 + v19);
            if (*(a1 + v19 + 4))
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", v12, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_handle_first_available");
            }

            else
            {
              sub_4524(a1, v20, a3, a4, a5, a6, a7, a8);
            }

            if (*a1 == 1)
            {
              v26 = *(a1 + 88);
              if (*(a1 + 96))
              {
                if (v26 == 2)
                {
                  v41 = &unk_1097D8;
                }

                else
                {
                  v41 = &unk_109920;
                }
              }

              else
              {
                if (v26 == 2)
                {
                  v33 = sub_968C(a1, v20, dword_109548, v21, v22, v23, v24, v25);
                  sub_9924(a1, v20);
                  goto LABEL_53;
                }

                v41 = &unk_1096C8;
              }

              v33 = sub_968C(a1, v20, v41, v21, v22, v23, v24, v25);
LABEL_53:
              if (!v20[6])
              {
                goto LABEL_111;
              }

              v45 = sub_46F8(a1, v20, v35, v36, v37, v38, v39, v40);
              if (v45 < 0x22)
              {
                v53 = &dword_109EC8[3 * v45];
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", v46, v47, v48, v49, v50, v51, v52, "checkpoint_get_outcome_attributes");
                v53 = dword_109EC8;
              }

              v54 = v20[6];
              bzero(v83, 0x400uLL);
              if (*v53 == 2)
              {
                v55 = *(v53 + 8);
                if (*(v53 + 8))
                {
                  *(a1 + 106) = 1;
                }

                if (*(v53 + 7))
                {
                  v33 = 0;
                  *(a1 + 102) = 1;
                }

                if (!*(v53 + 5))
                {
                  if (!*(v53 + 4) || !*(v53 + 6))
                  {
                    goto LABEL_111;
                  }

                  if (v55)
                  {
                    *(a1 + 101) = 1;
                    goto LABEL_111;
                  }

                  if (!v20[8])
                  {
                    goto LABEL_111;
                  }

LABEL_97:
                  v70 = v20[7];
                  *(a1 + 101) = 1;
                  if (!v70 || CFStringCompare(v70, @"true", 0))
                  {
                    goto LABEL_99;
                  }

                  *(a1 + 100) = 1;
                  if (*(v53 + 5))
                  {
                    *(a1 + 104) = 257;
                  }

                  else
                  {
                    *(a1 + 103) = 1;
                  }

LABEL_111:
                  if (v33 && !*(a1 + 106) && !*(a1 + 100) && !*(a1 + 104))
                  {
                    sub_4774(a1, v34, "[monitor_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                  }

                  goto LABEL_116;
                }

                if (v55)
                {
                  *(a1 + 101) = 1;
                  *(a1 + 104) = 257;
                  goto LABEL_111;
                }

                if (v20[8])
                {
                  goto LABEL_97;
                }
              }

              else
              {
                if (!*(v53 + 5))
                {
                  goto LABEL_111;
                }

                if (!v20[8])
                {
                  sub_4F28(v54, v83);
                  sub_4774(a1, v72, "[monitor_aware]outcome=%s(reboot_retry_not_in_zone)");
                  goto LABEL_116;
                }

                v56 = v20[7];
                if (!v56 || CFStringCompare(v56, @"true", 0))
                {
LABEL_99:
                  sub_4F28(v54, v83);
                  sub_4774(a1, v71, "[monitor_aware]outcome=%s(reboot_retry_disabled)");
LABEL_116:
                  if (*(a1 + 104))
                  {
                    if (v17 == 2)
                    {
                      v74 = 0;
                      v75 = (a1 + 1672);
                      v76 = &dword_1A83A0;
LABEL_119:
                      v77 = *v76;
                      if (v74 != v77)
                      {
                        v78 = a1 + 1664 + 16 * v77;
                        *(v78 + 4) = *(v75 - 4);
                        *(v75 - 4) = 0;
                        v79 = *v75;
                        *v75 = *(v78 + 8);
                        *(v78 + 8) = v79;
                      }

                      while (v74 != 47)
                      {
                        v75 += 2;
                        v76 += 8;
                        ++v74;
                        if (*(a1 + 104))
                        {
                          goto LABEL_119;
                        }
                      }
                    }
                  }

                  else if (*a1 != 1 && *(a1 + 88) == 2)
                  {
                    ramrod_log_msg("%s\n", v34, v35, v36, v37, v38, v39, v40, "void clear_stale_ota_nvram(void)");
                    sub_9A70(@"boot-breadcrumbs", 1);
                    sub_9A70(@"OTA-pre-conversion", 1);
                    sub_9A70(@"OTA-post-conversion", 1);
                    sub_9A70(@"ota-conv-panic-indicator", 1);
                    sub_9A70(@"OTA-fsck-metrics", 1);
                    sub_9A70(@"OTA-sealvolume-metrics", 1);
                    sub_9A70(@"OTA-migrator-metrics", 1);
                    for (i = 0; i != 28; ++i)
                    {
                      v81 = &off_1A8390[4 * dword_109E58[i]];
                      sub_9A70(v81[1], 1);
                      sub_9A70(*v81, 1);
                    }
                  }

                  if (*(a1 + 96))
                  {
                    if (*(a1 + 101))
                    {
                      if (*(a1 + 104))
                      {
                        if (*(a1 + 106))
                        {
                          v82 = 9;
                        }

                        else if (*(a1 + 105))
                        {
                          v82 = 12;
                        }

                        else if (*(a1 + 100))
                        {
                          v82 = 10;
                        }

                        else
                        {
                          v82 = 11;
                        }
                      }

                      else if (*(a1 + 103))
                      {
                        v82 = 10;
                      }

                      else
                      {
                        v82 = 3;
                      }
                    }

                    else if (*(a1 + 102))
                    {
                      if (*(a1 + 104))
                      {
                        v82 = 7;
                      }

                      else
                      {
                        v82 = 6;
                      }
                    }

                    else
                    {
                      v82 = 2;
                    }

                    sub_4814(a1, v82, v35, v36, v37, v38, v39, v40);
                  }

                  else
                  {
                    sub_9274(a1, 1, v35, v36, v37, v38, v39, v40);
                  }

                  *(a1 + 845) = 1;
                  goto LABEL_149;
                }
              }

              *(a1 + 104) = 1;
              goto LABEL_111;
            }

            v27 = v20[7];
            if (v27 && CFStringCompare(v27, @"true", 0) == kCFCompareEqualTo)
            {
              *(a1 + 100) = 1;
            }

            else
            {
              sub_5B04(a1);
            }

            v42 = *(a1 + 88);
            if (*(a1 + 96))
            {
              if (v42 == 2)
              {
                v43 = sub_968C(a1, v20, dword_109BC0, v28, v29, v30, v31, v32);
                sub_9924(a1, v20);
                goto LABEL_71;
              }

              v44 = &unk_109D48;
            }

            else if (v42 == 2)
            {
              v44 = &unk_109A00;
            }

            else
            {
              v44 = &unk_109B18;
            }

            v43 = sub_968C(a1, v20, v44, v28, v29, v30, v31, v32);
LABEL_71:
            if (!v20[6])
            {
              *(a1 + 1632) = 1;
              *(a1 + 1640) = "access now enabled";
              if (*(a1 + 88) == 2)
              {
                if (v20[8])
                {
                  sub_4E24(a1, 7, 0, 0, v37, v38, v39, v40);
                }

                v66 = v20[3];
                if (v66 && CFStringCompare(v66, @"recover", 0))
                {
                  sub_4E24(a1, 2, 1, 0, v37, v38, v39, v40);
                }

                if (v20[4])
                {
                  sub_4E24(a1, 3, 1, 0, v37, v38, v39, v40);
                }
              }

              goto LABEL_103;
            }

            v57 = sub_46F8(a1, v20, v35, v36, v37, v38, v39, v40);
            if (v57 < 0x22)
            {
              v65 = &dword_109EC8[3 * v57];
            }

            else
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", v58, v59, v60, v61, v62, v63, v64, "checkpoint_get_outcome_attributes");
              v65 = dword_109EC8;
            }

            v67 = v20[6];
            bzero(v83, 0x400uLL);
            if (*v65 != 1)
            {
              if (*(v65 + 6))
              {
                if (v20[8])
                {
                  sub_998C(a1, v67);
                }

                else
                {
                  sub_4F28(v67, v83);
                  sub_4774(a1, v73, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v83);
                }
              }

              *(a1 + 1632) = 1;
              *(a1 + 1640) = "access now enabled";
              goto LABEL_103;
            }

            v68 = v20[8];
            if (*(v65 + 5))
            {
              if (!v68)
              {
                sub_4F28(v67, v83);
                sub_4774(a1, v69, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v83);
LABEL_103:
                if (v43 && !*(a1 + 104))
                {
                  sub_4774(a1, v34, "[chassis_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                }

                goto LABEL_116;
              }
            }

            else if (!v68)
            {
              goto LABEL_103;
            }

            sub_998C(a1, v67);
            goto LABEL_103;
          }
        }

        else
        {
          sub_933C(a1, 1u, 0x2Fu, (a1 + 1232));
          if (!*(a1 + 1232))
          {
            *(a1 + 2448) = 1;
            goto LABEL_24;
          }

          if (*a1 == 2)
          {
            sub_4E24(a1, 47, 0, 0, a5, a6, a7, a8);
          }

          *(a1 + 2449) = 1;
          *(a1 + 844) = 0;
          v13 = (a1 + 1168);
          v14 = -4;
          do
          {
            sub_933C(a1, 1u, v14 + 43, v13++);
          }

          while (!__CFADD__(v14++, 1));
          *(a1 + 2448) = 1;
        }
      }

      *(a1 + 840) = 2;
      if (!v8)
      {
        sub_3680(a1, 2, 1, 0, 256, "NVRAM access is not currently available", 0, 0, 0);
      }

      v11 = 0;
    }
  }

LABEL_20:
  if (!*(a1 + 96))
  {
    sub_9274(a1, v11, a3, a4, a5, a6, a7, a8);
  }

  return v11;
}

void sub_2F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 88) != 3)
  {
    if (sub_2668(a1, 0, 0, a4, a5, a6, a7, a8))
    {
      v15 = 0uLL;
      v16 = 1668;
      v17.i64[0] = 0x100000001;
      v17.i64[1] = 0x100000001;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v21.i8[0] = *(a1 + v16);
        v21.i8[1] = *(a1 + v16 + 16);
        v21.i8[2] = *(a1 + v16 + 32);
        v21.i8[3] = *(a1 + v16 + 48);
        v21.i8[4] = *(a1 + v16 + 64);
        v21.i8[5] = *(a1 + v16 + 80);
        v21.i8[6] = *(a1 + v16 + 96);
        v21.i8[7] = *(a1 + v16 + 112);
        v21.i8[8] = *(a1 + v16 + 128);
        v21.i8[9] = *(a1 + v16 + 144);
        v21.i8[10] = *(a1 + v16 + 160);
        v21.i8[11] = *(a1 + v16 + 176);
        v21.i8[12] = *(a1 + v16 + 192);
        v21.i8[13] = *(a1 + v16 + 208);
        v21.i8[14] = *(a1 + v16 + 224);
        v21.i8[15] = *(a1 + v16 + 240);
        v22 = vtstq_s8(v21, v21);
        v23 = vmovl_u8(*v22.i8);
        v24 = vmovl_high_u8(v22);
        v20 = vaddq_s32(v20, vandq_s8(vmovl_high_u16(v24), v17));
        v19 = vaddq_s32(v19, vandq_s8(vmovl_u16(*v24.i8), v17));
        v18 = vaddq_s32(v18, vandq_s8(vmovl_high_u16(v23), v17));
        v15 = vaddq_s32(v15, vandq_s8(vmovl_u16(*v23.i8), v17));
        v16 += 256;
      }

      while (v16 != 2436);
      v25 = vaddvq_s32(vaddq_s32(vaddq_s32(v15, v19), vaddq_s32(v18, v20)));
      if (v25 >= 1)
      {
        v26 = 0;
        v27 = 0;
        LODWORD(v28) = 1;
        while (1)
        {
          v29 = 0;
          v30 = 1668;
          v31 = off_1A8390;
          v61 = v27;
          while (v26 < v25 && v29 <= 0x2F)
          {
            if (*(v31 + 6) == v27 && *(a1 + v30))
            {
              if (++v26 == v25)
              {
                v63 = *(a1 + 1632);
                v32 = *(a1 + 1640);
              }

              else
              {
                v63 = 0;
                v32 = 0;
              }

              v33 = sub_9BFC(a1, v29, v9, v10, v11, v12, v13, v14);
              if (v33)
              {
                v34 = v33;
                err = 0;
                if (*(a1 + 88) == 1)
                {
                  v35 = v31;
                }

                else
                {
                  v35 = (v31 + 1);
                }

                v28 = *v35;
                v62 = ramrod_set_NVRAM_shadow_limit(*v35, v33, &err, v63 != 0, (0xF80BFFFFFD00uLL >> v29) & 1, 128);
                if (v62)
                {
                  if (v63)
                  {
                    bzero(buffer, 0x400uLL);
                    bzero(v66, 0x400uLL);
                    CFStringGetCString(v28, buffer, 1024, 0x8000100u);
                    CFStringGetCString(v34, v66, 1024, 0x8000100u);
                    v65[0] = 0;
                    if (v32)
                    {
                      asprintf(v65, "(NVRAM set) %s=%s [sync=true] (%s)");
                    }

                    else
                    {
                      asprintf(v65, "(NVRAM set) %s=%s [sync=true]");
                    }

                    v27 = v61;
                    v59 = v62;
                    if (v65[0])
                    {
                      sub_3680(a1, 2, 1, 0, 261, v65[0], 0, 0, 0);
                      if (v65[0])
                      {
                        free(v65[0]);
                      }
                    }

                    LODWORD(v28) = 1;
                    goto LABEL_37;
                  }

                  LODWORD(v28) = 1;
LABEL_28:
                  v27 = v61;
                  v59 = v62;
                }

                else
                {
                  if (!v28)
                  {
                    goto LABEL_28;
                  }

                  bzero(buffer, 0x400uLL);
                  bzero(v66, 0x400uLL);
                  CFStringGetCString(v28, buffer, 1024, 0x8000100u);
                  CFStringGetCString(v34, v66, 1024, 0x8000100u);
                  if (err)
                  {
                    CFErrorGetCode(err);
                    v43 = CFErrorCopyDescription(err);
                    if (v43)
                    {
                      v51 = v43;
                      bzero(v65, 0x400uLL);
                      CFStringGetCString(v51, v65, 1024, 0x8000100u);
                      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to set NVRAM variable %s=%s %ld:%s\n", v52, v53, v54, v55, v56, v57, v58, "checkpoint_nvram_set");
                      CFRelease(v51);
                    }

                    else
                    {
                      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to set NVRAM variable %s=%s %ld[no description]\n", v44, v45, v46, v47, v48, v49, v50, "checkpoint_nvram_set");
                    }
                  }

                  else
                  {
                    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to set NVRAM variable %s=%s\n", v36, v37, v38, v39, v40, v41, v42, "checkpoint_nvram_set");
                  }

                  v27 = v61;
                  v59 = 0;
                  LODWORD(v28) = 0;
                }

LABEL_37:
                if (err)
                {
                  CFRelease(err);
                }

                if (v59)
                {
                  *(a1 + v30) = 0;
                  if (v63)
                  {
                    *(a1 + 1632) = 0;
                    *(a1 + 1640) = 0;
                  }
                }

                CFRelease(v34);
              }
            }

            ++v29;
            v31 += 4;
            v30 += 16;
            if (!v28)
            {
              return;
            }
          }

          if (v26 < v25 && v27++ < 4)
          {
            continue;
          }

          return;
        }
      }
    }
  }
}

void sub_3420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a1 + 232);
  if (*(a1 + 232))
  {
    if (*a1 == 1)
    {
      sub_9C6C((a1 + 232));
      sub_9D00(v8);
      if (!*(a1 + 658))
      {
        if (*(a1 + 512))
        {
          *(a1 + 658) = 1;
          *(a1 + 512) = 0;
        }
      }

      sub_9D44(v8, v10, v11, v12, v13, v14, v15, v16);
      sub_9F08(v8);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): only MONITOR can directly activate recorder\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_recorder_monitor_activate");
    }

    *v8 = 0;
  }
}

void checkpoint_monitor_recorder_path(char *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_1C6480;
  if (qword_1C6480)
  {
    if (*(qword_1C6480 + 88) != 3)
    {
      sub_3540(qword_1C6480, __src);

      sub_3420(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): monitor context not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_monitor_recorder_path");
  }
}

char *sub_3540(char *result, char *__src)
{
  v3 = result;
  if (*result == 1)
  {
    v4 = 1;
  }

  else
  {
    result = pthread_mutex_lock(result + 4);
    v4 = *v3;
  }

  *(v3 + 89) = v4;
  *(v3 + 90) = *(v3 + 22);
  if (__src)
  {
    result = strncpy(v3 + 364, __src, 0x80uLL);
  }

  else
  {
    v3[364] = 0;
  }

  v3[352] = 1;
  if (v4 != 1)
  {
    result = pthread_mutex_unlock(v3 + 4);
  }

  v3[232] = 1;
  return result;
}

void checkpoint_monitor_step(int a1, const char *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_1C6480;
  if (qword_1C6480)
  {
    sub_3680(qword_1C6480, 1, 2, 0, a1, a2, 0, a3, a4);
    if (!*(v8 + 847))
    {
      sub_2F64(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    if (*(v8 + 88) != 3)
    {

      sub_3420(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): monitor context not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_monitor_step");
  }
}

void *sub_3680(uint64_t a1, int a2, int a3, int a4, int a5, const char *a6, int a7, int a8, const void *a9)
{
  v17 = calloc(1uLL, 0x78uLL);
  if (!v17)
  {
    return v17;
  }

  v136 = 0;
  asprintf(&v136, "%s", a6);
  if (!v136)
  {
    free(v17);
    return 0;
  }

  *(v17 + 2) = a2;
  v17[2] = time(0);
  gettimeofday((v17 + 3), 0);
  *(v17 + 10) = getpid();
  *(v17 + 11) = getppid();
  *(v17 + 12) = a3;
  *(v17 + 13) = a4;
  *(v17 + 14) = a5;
  v17[8] = v136;
  *(v17 + 18) = a7;
  *(v17 + 19) = a8;
  if (a9)
  {
    v17[10] = a9;
    CFRetain(a9);
  }

  *(v17 + 14) = ramrod_display_get_progress();
  *(v17 + 22) = *(v17 + 14) | (*(v17 + 2) << 16) | 0x11000000;
  *v140 = 0x1500000001;
  v137[0] = 0;
  v137[1] = 0;
  v138 = 16;
  if (sysctl(v140, 2u, v137, &v138, 0, 0))
  {
    v25 = -1;
  }

  else
  {
    v25 = v17[2] - v137[0];
  }

  v26 = *(v17 + 2);
  if (v26 <= 0x21)
  {
    if (((1 << v26) & 0x100000090) != 0)
    {
      sub_A378(a1, 13, *(v17 + 14) | 0x11070000u, *(v17 + 18), *(v17 + 19), v22, v23, v24);
      v28 = v17[10];
      if (v28)
      {
        Code = CFErrorGetCode(v28);
        Domain = CFErrorGetDomain(v17[10]);
        v31 = sub_7A84(v17[10]);
        sub_A378(a1, 15, *(v17 + 22), *(v17 + 18), Code, v32, v33, v34);
        if (Domain)
        {
          bzero(buffer, 0x400uLL);
          CFStringGetCString(Domain, buffer, 1024, 0x8000100u);
          sub_A4D4(a1, 16, *(v17 + 22), *(v17 + 18), buffer, v35, v36, v37);
        }

        if (v31)
        {
          sub_A148(a1, 17, *(v17 + 22), v31, v21, v22, v23, v24);
          free(v31);
        }
      }

      goto LABEL_76;
    }

    if (((1 << v26) & 0x200000020) != 0)
    {
      v20 = *(v17 + 18);
      v27 = *(v17 + 14);
      if (v20)
      {
        sub_A378(a1, 13, v27 | 0x11070000u, v20, 0, v22, v23, v24);
        goto LABEL_76;
      }

      v47 = a1 + 1664;
      v48 = 368;
      if (!*(a1 + 104))
      {
        v48 = 176;
      }

      v49 = v47 + v48;
      v50 = *(v49 + 8);
      if (v50)
      {
        v51 = v27 | 0x11030000;
        if (*v50 == v51)
        {
          v52 = 0;
          *v50 = 0;
LABEL_41:
          v53 = &v50[v52 + 1];
          v54 = v52 - 7;
          do
          {
            *(v53 - 1) = *v53;
            ++v53;
            v55 = __CFADD__(v54++, 1);
          }

          while (!v55);
LABEL_44:
          v50[7] = 0;
          *(v49 + 4) = 1;
          goto LABEL_53;
        }

        v56 = v50 + 1;
        v57 = -1;
        while (v57 != 6)
        {
          v58 = *v56;
          v56 += 2;
          ++v57;
          if (v58 == v51)
          {
            *(v56 - 1) = 0;
            if (v57 > 5)
            {
              goto LABEL_44;
            }

            v52 = v57 + 1;
            goto LABEL_41;
          }
        }
      }

      v59 = *(a1 + 1656);
      if (!v59)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", v18, v19, v20, v21, v22, v23, v24, "checkpoint_nvram_remove_lost");
        v59 = *(a1 + 1656);
      }

      *(a1 + 1656) = v59 + 1;
LABEL_53:
      v60 = 24;
      if (!*(a1 + 104))
      {
        v60 = 12;
      }

      if ((0x1001100uLL >> v60))
      {
        v61 = v47 + 16 * v60;
        v62 = *(v61 + 8);
        if (v62)
        {
          v63 = *(v17 + 14) | 0x11030000;
          v64 = v62 + 28;
          if (*v62 == v63)
          {
            v65 = 0;
LABEL_66:
            v69 = &v62[4 * v65];
            v70 = v69[1];
            if (v70)
            {
              free(v70);
            }

            *v69 = 0;
            v69[1] = 0;
            if (v65 <= 6)
            {
              v71 = v69 + 2;
              v72 = v65 - 7;
              do
              {
                *(v71 - 1) = *v71;
                ++v71;
                v55 = __CFADD__(v72++, 1);
              }

              while (!v55);
            }

            *v64 = 0;
            v64[1] = 0;
            *(v61 + 4) = 1;
            goto LABEL_76;
          }

          v65 = 0;
          v67 = v62 + 4;
          while (v65 != 7)
          {
            ++v65;
            v68 = *v67;
            v67 += 4;
            if (v68 == v63)
            {
              goto LABEL_66;
            }
          }
        }
      }

      v73 = *(a1 + 1656);
      if (!v73)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", v18, v19, v20, v21, v22, v23, v24, "checkpoint_nvram_remove_lost");
        v73 = *(a1 + 1656);
      }

      *(a1 + 1656) = v73 + 1;
LABEL_76:
      sub_A288(a1, 18, v25, v20, v21, v22, v23, v24);
      sub_A288(a1, 21, *(v17 + 14), v74, v75, v76, v77, v78);
      goto LABEL_77;
    }

    if (v26 == 6)
    {
      sub_A4D4(a1, 14, *(v17 + 22), *(v17 + 18), v17[8], v22, v23, v24);
      goto LABEL_77;
    }
  }

  if (v26 == 3)
  {
    if (!*(v17 + 18))
    {
      v38 = *(a1 + 1648) + 1;
      *(a1 + 1648) = v38;
      v39 = *(v17 + 22);
      v40 = 368;
      if (!*(a1 + 104))
      {
        v40 = 176;
      }

      v41 = a1 + v40;
      v42 = *(v41 + 1672);
      if (!v42)
      {
        goto LABEL_59;
      }

      v43 = 0;
      v44 = *(v41 + 1672);
      do
      {
        v45 = *v44;
        v44 += 2;
        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = v42;
        }

        if (v43 > 6)
        {
          break;
        }

        ++v43;
        v42 = v44;
      }

      while (!v46);
      if (v46)
      {
        *v46 = v39;
        v46[1] = v38;
        *(v41 + 1668) = 1;
      }

      else
      {
LABEL_59:
        v66 = *(a1 + 1652);
        if (!v66)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", v18, v39, v20, v21, v22, v23, v24, "checkpoint_nvram_store_lost");
          v66 = *(a1 + 1652);
          v39 = *(v17 + 22);
        }

        *(a1 + 1652) = v66 + 1;
      }

      sub_A148(a1, 12, v39, v17[8], v21, v22, v23, v24);
    }

    goto LABEL_76;
  }

  if (v26 == 1)
  {
    sub_A148(a1, 10, *(v17 + 22), v17[8], v21, v22, v23, v24);
  }

LABEL_77:
  *v17 = 0;
  **(a1 + 216) = v17;
  *(a1 + 216) = v17;
  v79 = *(a1 + 224) + 1;
  *(a1 + 224) = v79;
  if (v79 >= 0x201)
  {
    v80 = (a1 + 208);
    do
    {
      v81 = *v80;
      v82 = **v80;
      *v80 = v82;
      if (!v82)
      {
        *(a1 + 216) = v80;
      }

      *(a1 + 224) = v79 - 1;
      v83 = v81[8];
      if (v83)
      {
        free(v83);
        v81[8] = 0;
      }

      v84 = v81[10];
      if (v84)
      {
        CFRelease(v84);
      }

      free(v81);
      v79 = *(a1 + 224);
    }

    while (v79 > 0x200);
  }

  memset(buffer, 0, 56);
  v137[0] = 0;
  gmtime_r(v17 + 2, buffer);
  v85 = *(v17 + 2);
  if (v85 > 0x21)
  {
    v86 = "GENERAL";
  }

  else
  {
    v86 = off_1A8A18[v85];
  }

  asprintf(v137, "[%02u:%02u:%02u.%04u-GMT]{%u>%u} CHECKPOINT %s", buffer[0].tm_hour, buffer[0].tm_min, buffer[0].tm_sec, *(v17 + 8) / 1000, *(v17 + 11), *(v17 + 10), v86);
  v87 = v137[0];
  *&buffer[0].tm_sec = 0;
  if (*(v17 + 19))
  {
    asprintf(buffer, "(FAILURE:%d) ", *(v17 + 19));
    if (byte_1C6488 == 1)
    {
      sub_A794();
    }
  }

  else
  {
    v94 = *(v17 + 2);
    if (v94 <= 0x1C && ((1 << v94) & 0x18000080) != 0)
    {
      asprintf(buffer, "(SUCCESS) ");
    }

    else
    {
      asprintf(buffer, " ");
    }
  }

  v95 = *&buffer[0].tm_sec;
  if (!v87 || !*&buffer[0].tm_sec)
  {
    goto LABEL_159;
  }

  *&buffer[0].tm_sec = 0;
  if (*(v17 + 14))
  {
    v96 = *(v17 + 2);
    if (v96 == 28 || v96 == 1)
    {
      asprintf(buffer, "[0x%04X] %s");
    }

    else if (*(v17 + 12) == 1)
    {
      asprintf(buffer, "%s");
    }

    else
    {
      asprintf(buffer, "%s:[0x%04X] %s");
    }

    v97 = *&buffer[0].tm_sec;
  }

  else
  {
    v97 = 0;
  }

  v137[0] = 0;
  v98 = *(v17 + 2);
  if (v98 == 28)
  {
    *&buffer[0].tm_sec = 0;
    if (!*(v17 + 19))
    {
      asprintf(buffer, "... %s");
      goto LABEL_132;
    }

    v101 = sub_A6E4(a1, 9, v88, v89, v90, v91, v92, v93);
    v107 = sub_A7D4(a1, a1 + 1240, 12, v102, v103, v104, v105, v106);
    v108 = v107;
    v109 = *(a1 + 108);
    if (v109 > 6)
    {
      v110 = "GENERAL";
    }

    else
    {
      v110 = off_1A8C10[v109];
    }

    if (v101)
    {
      if (!v107)
      {
        asprintf(buffer, "[%s] %s", v110, v101);
        v119 = v101;
        goto LABEL_131;
      }

      asprintf(buffer, "[%s] %s %s", v110, v107, v101);
      free(v101);
    }

    else
    {
      if (!v107)
      {
        asprintf(buffer, "[%s]");
LABEL_132:
        v100 = *&buffer[0].tm_sec;
        if (v97)
        {
          goto LABEL_116;
        }

LABEL_133:
        if (v100)
        {
          asprintf(v137, "%s:%s %s", v87, v95, v100);
LABEL_136:
          v118 = 1;
          goto LABEL_137;
        }

LABEL_135:
        asprintf(v137, "%s:%s", v87, v95);
        v100 = 0;
        goto LABEL_136;
      }

      asprintf(buffer, "[%s] %s", v110, v107);
    }

    v119 = v108;
LABEL_131:
    free(v119);
    goto LABEL_132;
  }

  if (v98 == 27)
  {
    v99 = sub_A6E4(a1, 13, v88, v89, v90, v91, v92, v93);
    v100 = v99;
    if (*v99 == 123 && v99[1] == 125 && !v99[2])
    {
      free(v99);
      if (!v97)
      {
        goto LABEL_135;
      }

      goto LABEL_118;
    }
  }

  else
  {
    v100 = sub_7A84(v17[10]);
  }

  if (!v97)
  {
    goto LABEL_133;
  }

LABEL_116:
  if (!v100)
  {
LABEL_118:
    asprintf(v137, "%s:%s%s", v87, v95, v97);
    v118 = 0;
    v100 = 0;
    goto LABEL_137;
  }

  asprintf(v137, "%s:%s%s %s", v87, v95, v97, v100);
  v118 = 0;
LABEL_137:
  v120 = v137[0];
  if (v137[0])
  {
    v135 = v118;
    if (*(v17 + 2) == 28)
    {
      if (*(a1 + 88) == 2)
      {
        v121 = 1;
      }

      else
      {
        v121 = 3;
      }
    }

    else
    {
      v121 = 1;
    }

    while (1)
    {
      ramrod_log_msg("%s\n", v111, v112, v113, v114, v115, v116, v117, v120);
      if (*(v17 + 2) == 28)
      {
        ramrod_log_msg("\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n", v122, v123, v124, v125, v126, v127, v128, v134);
      }

      if (v121 < 2)
      {
        break;
      }

      --v121;
      sleep(1u);
    }

    v129 = v137[0];
    v130 = calloc(1uLL, 0x10uLL);
    if (v130)
    {
      v131 = v130;
      v130[1] = v129;
      if (*a1 == 1)
      {
        *v130 = 0;
        **(a1 + 504) = v130;
        *(a1 + 504) = v130;
      }

      else
      {
        pthread_mutex_lock((a1 + 256));
        v132 = *a1;
        *v131 = 0;
        **(a1 + 504) = v131;
        *(a1 + 504) = v131;
        if (v132 != 1)
        {
          pthread_mutex_unlock((a1 + 256));
        }
      }

      *(a1 + 232) = 1;
      v118 = v135;
    }

    else if (v129)
    {
      free(v129);
    }
  }

  if ((v118 & 1) == 0)
  {
    free(v97);
  }

  if (v100)
  {
    free(v100);
  }

LABEL_159:
  if (v87)
  {
    free(v87);
  }

  if (v95)
  {
    free(v95);
  }

  return v17;
}

void checkpoint_monitor_engine_failure(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_1C6480;
  if (!qword_1C6480)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): monitor context not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_monitor_engine_failure");
    return;
  }

  v9 = a2;
  if (a1 > 6)
  {
    v11 = "GENERAL";
  }

  else
  {
    v11 = off_1A8C10[a1];
  }

  *(qword_1C6480 + 2449) = 0;
  if (sub_2668(v8, 1, 0, a4, a5, a6, a7, a8) && !*(v8 + 107))
  {
    v57 = 0;
    if (!*(v8 + 1244))
    {
      sub_4524(v8, v8 + 1240, v13, v14, v15, v16, v17, v18);
    }

    asprintf(&v57, "%s(%d)[REBOOT]", v11, v9);
    if (v57)
    {
      if (*(v8 + 104) && (v24 = *(v8 + 1320), v58 = 0, v24) && (location = CFStringFind(v24, @":", 0).location, location != -1) && ((v26 = location, v27 = CFStringFind(v24, @";", 0).location, v28 = v26 + 1, v27 != -1) && (v19.length = v27, v27 > v28) || (v29 = CFStringFind(v24, @"}", 0).location, v29 != -1) && (v19.length = v29, v29 > v28)) && (v19.location = v28, (v30 = CFStringCreateWithSubstring(kCFAllocatorDefault, v24, v19)) != 0) && (v31 = v30, bzero(buffer, 0x400uLL), CFStringGetCString(v31, buffer, 1024, 0x8000100u), asprintf(&v58, "%s", buffer), CFRelease(v31), (v32 = v58) != 0))
      {
        sub_4670(v8, 0, v58, v19.length, v20, v21, v22, v23);
        free(v32);
        v33 = 1;
      }

      else
      {
        v33 = 0;
      }

      sub_4670(v8, v33, v57, v19.length, v20, v21, v22, v23);
      if (v57)
      {
        free(v57);
        v57 = 0;
      }
    }

    *(v8 + 107) = 1;
    *(v8 + 108) = a1;
    *(v8 + 112) = v9;
    if (!*(v8 + 1288))
    {
      goto LABEL_39;
    }

    v34 = sub_46F8(v8, v8 + 1240, v19.location, v19.length, v20, v21, v22, v23);
    if (v34 < 0x22)
    {
      v42 = &dword_109EC8[3 * v34];
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", v35, v36, v37, v38, v39, v40, v41, "checkpoint_get_outcome_attributes");
      v42 = dword_109EC8;
    }

    if (*v42 == 2)
    {
      if (*(v42 + 4))
      {
        *(v8 + 101) = 1;
      }

      if (*(v42 + 5))
      {
        if (*(v8 + 1304))
        {
          *(v8 + 104) = 1;
LABEL_39:
          v43 = sub_48A4();
          sub_4814(v8, v43, v44, v45, v46, v47, v48, v49);
          goto LABEL_40;
        }

        if (!*(v42 + 7))
        {
          sub_4774(v8, v35, "[engine_failure]outcome=%s(pre_existing_reboot_retry_not_in_zone)");
          goto LABEL_39;
        }
      }

      else if (!*(v42 + 7))
      {
        goto LABEL_39;
      }

      *(v8 + 102) = 1;
      goto LABEL_39;
    }

    sub_4774(v8, v35, "[engine_failure]outcome=%s(pre_existing_set_by_monitor)");
    goto LABEL_39;
  }

LABEL_40:
  sub_2F64(v8, v12, v13, v14, v15, v16, v17, v18);
  if (*(v8 + 88) != 3)
  {
    sub_3420(v8, v50, v51, v52, v53, v54, v55, v56);
  }
}

void sub_4524(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 4))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_collect");
    return;
  }

  v10 = 0;
  v11 = 0;
  v12 = a2 + 8;
  do
  {
    sub_933C(a1, *a2, v11, (v12 + v10));
    v17 = *a1;
    if ((v11 - 39) <= 3 && v17 == 2)
    {
      if (*(v12 + 8 * v11))
      {
        goto LABEL_13;
      }
    }

    else if (v11 >= 0x2B && v11 != 47 && v17 == 2)
    {
      v18 = *(v12 + 8 * v11);
      if (v18)
      {
        bzero(v24, 0x400uLL);
        sub_4F28(v18, v24);
        sub_5080(a1, (v11 - 4), v24, v19, v20, v21, v22, v23);
LABEL_13:
        sub_4E24(a1, v11, 0, 0, v13, v14, v15, v16);
      }
    }

    ++v11;
    v10 += 8;
  }

  while (v11 != 48);
  *(a2 + 4) = 1;
}

void sub_4670(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1816);
  if (v9)
  {
    sub_A63C(a1 + 1632, (v9 + 8 * a2), a3, a4, a5, a6, a7, a8);
    *(a1 + 1812) = 1;
  }

  else
  {
    v10 = *(a1 + 1652);
    if (!v10)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
      v10 = *(a1 + 1652);
    }

    *(a1 + 1652) = v10 + 1;
  }
}

uint64_t sub_46F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_A7D4(a1, a2, 5, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  do
  {
    if (!strcmp(v9, off_1A8C48[v10]))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      break;
    }
  }

  while (v10++ < 0x21);
  free(v9);
  return v11;
}

void sub_4774(uint64_t a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, a3, va);
  if (v8[0])
  {
    sub_3680(a1, 30, 1, 0, 260, v8[0], 0, 0, 0);
    sub_A148(a1, 8, *(a1 + 120), v8[0], v4, v5, v6, v7);
    if (v8[0])
    {
      free(v8[0]);
      v8[0] = 0;
    }
  }

  ++*(a1 + 120);
}

void sub_4814(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 96);
  v9 = *(&off_1A8D58 + v8);
  if (*(v9 + 4 * a2))
  {
    *(a1 + 92) = v8;
    v12 = *(v9 + 4 * a2);
    *(a1 + 96) = v12;
    if (v12 > 0x21)
    {
      v13 = "unknown";
    }

    else
    {
      v13 = off_1A8C48[v12];
    }

    sub_5080(a1, 5, v13, a4, a5, a6, a7, a8);

    sub_9B34(a1, a2);
  }
}

uint64_t sub_48A4()
{
  v0 = off_1AD470();
  v1 = v0;
  if (*(v0 + 107))
  {
    if (*(v0 + 104))
    {
      if (*(v0 + 102))
      {
        return 7;
      }

      else
      {
        return 11;
      }
    }

    else
    {
      if (*(v0 + 88) == 2)
      {
        if (*(v0 + 102))
        {
          return 6;
        }

        if (!*(v0 + 101))
        {
          return 13;
        }

        v3 = *(v0 + 1256);
        v4 = *(v0 + 1264);
        v5 = *(v0 + 1272);
        v6 = *(v0 + 1304);
        v7 = *(v0 + 1296);
        if (v3 && v4 && v5 && v6 && v7 && CFStringCompare(*(v0 + 1256), @"true", 0) == kCFCompareEqualTo && CFStringCompare(v4, @"upgrade", 0) == kCFCompareEqualTo && CFStringCompare(v5, @"true", 0) == kCFCompareEqualTo && CFStringCompare(v6, @"true", 0) == kCFCompareEqualTo && CFStringCompare(v7, @"true", 0) == kCFCompareEqualTo)
        {
          return 10;
        }

        bzero(v17, 0x400uLL);
        bzero(v16, 0x400uLL);
        bzero(v15, 0x400uLL);
        bzero(v14, 0x400uLL);
        bzero(v13, 0x400uLL);
        if (v7 && CFStringCompare(v7, @"true", 0) == kCFCompareEqualTo || v4 || v5 || v6)
        {
          sub_4F28(v3, v17);
          sub_4F28(v4, v16);
          sub_4F28(v5, v15);
          sub_4F28(v6, v14);
          sub_4F28(v7, v13);
          sub_4774(v1, v8, "[monitor_final](auto_boot=%s)(boot_command=%s)(upgrade_retry=%s)(reboot_retry_zone=%s)(reboot_retry_enabled=%s)", v17, v16, v15, v14, v13);
          sub_9924(v1, v1 + 1240);
          if (v5)
          {
            sub_4E24(v1, 3, 1, 0, v9, v10, v11, v12);
          }

          if (v6)
          {
            sub_4E24(v1, 7, 0, 0, v9, v10, v11, v12);
          }
        }
      }

      return 11;
    }
  }

  else if (*(v0 + 105))
  {
    return 9;
  }

  else
  {
    return 8;
  }
}

BOOL checkpoint_monitor_success(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_1C6480;
  if (qword_1C6480)
  {
    *(qword_1C6480 + 2449) = 0;
    if (sub_2668(v8, 1, 0, a4, a5, a6, a7, a8))
    {
      if (!*(v8 + 1244))
      {
        sub_4524(v8, v8 + 1240, v10, v11, v12, v13, v14, v15);
      }

      v16 = *(v8 + 1520) != 0;
      if (*(v8 + 88) == 2)
      {
        if (*(v8 + 1304))
        {
          v17 = *(v8 + 96);
          if (v17 > 0x21)
          {
            v18 = "unknown";
          }

          else
          {
            v18 = off_1A8C48[v17];
          }

          sub_4774(v8, v9, "[monitor_success](outcome=%s)success_when_still_in_retry_zone", v18);
          sub_4E24(v8, 7, 0, 1, v19, v20, v21, v22);
        }

        v23 = *(v8 + 1264);
        if (v23)
        {
          bzero(v81, 0x400uLL);
          sub_4F28(v23, v81);
          sub_4774(v8, v24, "[monitor_success]boot_command=%s(success_when_boot_command_set)", v81);
          sub_4E24(v8, 2, 1, 1, v25, v26, v27, v28);
        }

        v29 = *(v8 + 1272);
        if (v29)
        {
          bzero(v81, 0x400uLL);
          sub_4F28(v29, v81);
          sub_4774(v8, v30, "[monitor_success]upgrade_retry=%s(success_when_upgrade_retry_set)", v81);
          sub_4E24(v8, 3, 1, 1, v31, v32, v33, v34);
        }

        sub_4F74(v8, 11, v8 + 1240, v11, v12, v13, v14, v15);
        sub_4F74(v8, 12, v8 + 1240, v35, v36, v37, v38, v39);
        sub_4F74(v8, 23, v8 + 1240, v40, v41, v42, v43, v44);
        sub_4F74(v8, 24, v8 + 1240, v45, v46, v47, v48, v49);
      }

      if (!*(v8 + 1256))
      {
        sub_4774(v8, v9, "[monitor_success]success_when_no_auto_boot");
        sub_5080(v8, 1, "true", v50, v51, v52, v53, v54);
        sync();
      }
    }

    else
    {
      v16 = 0;
    }

    v55 = sub_48A4();
    sub_4814(v8, v55, v56, v57, v58, v59, v60, v61);
    sub_2F64(v8, v62, v63, v64, v65, v66, v67, v68);
    v76 = *(v8 + 88);
    if (v76 == 1)
    {
      v77 = 0;
      v78 = &dword_1A83A8;
      do
      {
        v79 = *v78;
        v78 += 8;
        if ((v79 - 5) <= 0xFFFFFFFC && *(v8 + 8 * v77 + 1248))
        {
          sub_4E24(v8, v77, 0, 0, v72, v73, v74, v75);
        }

        ++v77;
      }

      while (v77 != 48);
      v76 = *(v8 + 88);
    }

    *(v8 + 847) = 1;
    if (v76 != 3)
    {
      sub_3420(v8, v69, v70, v71, v72, v73, v74, v75);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): monitor context not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_monitor_success");
    return 0;
  }

  return v16;
}

void sub_4E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 0x30)
  {
    v8 = a4;
    v10 = &off_1A8390[4 * a2];
    if (a3 || (*(v10 + 6) - 5) < 0xFFFFFFFD)
    {
      bzero(buffer, 0x400uLL);
      if (*(a1 + 88) == 1)
      {
        v11 = v10;
      }

      else
      {
        v11 = (v10 + 1);
      }

      v12 = *v11;
      CFStringGetCString(*v11, buffer, 1024, 0x8000100u);
      sub_9A70(v12, v8);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of BOOT-CONTROL NVRAM ID %u\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_delete_var");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of NVRAM ID %u\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_delete_var");
  }
}

char *sub_4F28(const __CFString *a1, char *a2)
{
  if (a1)
  {
    CFStringGetCString(a1, a2, 1024, 0x8000100u);
  }

  else
  {
    bzero(a2, 0x400uLL);
  }

  return a2;
}

void sub_4F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2;
  if (a2 >= 0x30)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_get_nvram_name");
    v11 = 0;
  }

  bzero(buffer, 0x400uLL);
  if (*(a1 + 88) == 1)
  {
    v12 = &off_1A8390[4 * v11];
  }

  else
  {
    v12 = &off_1A8390[4 * v11 + 1];
  }

  CFStringGetCString(*v12, buffer, 1024, 0x8000100u);
  v13 = *(a3 + 8 * a2 + 8);
  if (v13)
  {
    if (CFStringCompare(v13, @"{}", 0) == kCFCompareEqualTo)
    {
      sub_4E24(a1, a2, 0, 1, v14, v15, v16, v17);
    }
  }
}

void sub_5080(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v10 = 0;
      v11 = a1 + 1664;
      goto LABEL_7;
    }

    a2 = LODWORD(off_1A8390[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_12;
  }

  v10 = a2;
  v11 = a1 + 16 * a2 + 1664;
LABEL_7:
  if ((0xFFFC000000FEuLL >> v10))
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      if (*v12)
      {
        free(*v12);
        *v12 = 0;
      }

      sub_A63C(a1 + 1632, v12, a3, a4, a5, a6, a7, a8);
      *(v11 + 4) = 1;
      return;
    }
  }

LABEL_12:
  v13 = *(a1 + 1652);
  if (!v13)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v13 = *(a1 + 1652);
  }

  *(a1 + 1652) = v13 + 1;
}

void checkpoint_monitor_final_result(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_1C6480;
  if (qword_1C6480)
  {
    sub_3680(qword_1C6480, 28, 1, 0, 0, "FINAL", 0, *(qword_1C6480 + 112), 0);
    if (!*(v8 + 847))
    {
      sub_2F64(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    if (*(v8 + 88) != 3)
    {
      sub_5250(v8);

      sub_3420(v8, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): monitor context not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_monitor_final_result");
  }
}

uint64_t sub_5250(uint64_t result)
{
  v1 = result;
  if (*result == 1)
  {
    *(result + 512) = 1;
  }

  else
  {
    result = pthread_mutex_lock((result + 256));
    v2 = *v1;
    *(v1 + 512) = 1;
    if (v2 != 1)
    {
      result = pthread_mutex_unlock(v1 + 4);
    }
  }

  *(v1 + 232) = 1;
  return result;
}

uint64_t checkpoint_engine_enable_crash_handlers()
{
  bzero(__s1, 0x400uLL);
  v23 = 1024;
  if (!sysctlbyname("kern.bootargs", __s1, &v23, 0, 0))
  {
    if (strstr(__s1, "-panicOnFail"))
    {
      byte_1C6488 = 1;
      ramrod_log_msg("panic on fail is enabled (-panicOnFail boot-arg)\n", v7, v8, v9, v10, v11, v12, v13, v18);
    }

    if (strstr(__s1, "-panicOnCrash"))
    {
      byte_1C6489 = 1;
      ramrod_log_msg("panic on crash is enabled (-panicOnCrash boot-arg)\n", v0, v1, v2, v3, v4, v5, v6, v18);
    }
  }

  if (byte_1C6489)
  {
    v14 = "panicOnCrash";
  }

  else
  {
    v14 = "logOnCrash";
  }

  if (byte_1C6488)
  {
    v15 = "panicOnFail";
  }

  else
  {
    LOBYTE(v15) = v14;
  }

  ramrod_log_msg("Setting crash behaviors: %s\n", v0, v1, v2, v3, v4, v5, v6, v15);
  v16 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v20 = sub_552C;
  v21 = &unk_1A8360;
  v22 = off_1AD538;
  do
  {
    result = v20(v19, dword_10A070[v16++]);
  }

  while (v16 != 5);
  return result;
}

uint64_t sub_5450(int a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  v5 = pthread_sigmask(3, &v22, 0);
  for (i = 0; i != 5; ++i)
  {
    v5 = sub_A8CC(v5, dword_10A070[i]);
  }

  if (a3)
  {
    a3 = *(a3 + 48);
  }

  ramrod_log_msg("\n*****************************\nCaught signal %d (%s), si_code=%d, si_addr=%p\n*****************************\n\n", v7, v8, v9, v10, v11, v12, v13, a1);
  sub_A938(a3, v14, v15, v16, v17, v18, v19, v20);
  sub_ABB4(a3);
  if ((byte_1C6489 & 1) != 0 || byte_1C6488 == 1)
  {
    sub_A794();
  }

  return raise(a1);
}

void *checkpoint_engine_init(int a1, int a2, int a3)
{
  if (pthread_once(&stru_1C45D0, sub_AF04))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to initialize shared control: result=%d\n", v6, v7, v8, v9, v10, v11, v12, "checkpoint_init_control");
  }

  v13 = qword_1C6478;
  if (!qword_1C6478)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): chassis failed to initialize\n", v6, v7, v8, v9, v10, v11, v12, "checkpoint_engine_init");
    return 0;
  }

  specific = dispatch_get_specific(kCheckpointAsyncStepContextKey[0]);
  v22 = qword_1C6490;
  if (specific)
  {
    v22 = specific;
  }

  if (v22 && *(*v22 + 80))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): You may not start a checkpoint engine from inside a async checkpoint.\n", v15, v16, v17, v18, v19, v20, v21, "checkpoint_engine_init");
    return 0;
  }

  if (*v13 != 1)
  {
    pthread_mutex_lock((v13 + 8));
  }

  v23 = *(v13 + 88);
  if (v23)
  {
    if (a1)
    {
      if (v23 != a1)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): mixed checkpointing purposes (initial=%s) (latest=%s)\n", v15, v16, v17, v18, v19, v20, v21, "checkpoint_engine_init");
LABEL_50:
        v52 = 0;
LABEL_52:
        v60 = 0;
LABEL_53:
        v24 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      a1 = *(v13 + 88);
    }
  }

  else
  {
    *v13 = 2;
    *(v13 + 88) = a1;
    v25 = MGCopyAnswer();
    if (v25)
    {
      v26 = v25;
      v27 = CFGetTypeID(v25);
      if (v27 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v26))
        {
          sub_3680(v13, 2, 1, 0, 263, "Image4 device: AP nonce clearable", 0, 0, 0);
          *(v13 + 116) = 1;
        }

        else
        {
          sub_3680(v13, 2, 1, 0, 263, "Not image4 device: AP nonce not clearable", 0, 0, 0);
        }
      }

      else
      {
        sub_3680(v13, 2, 1, 0, 263, "Unable to determine whether image4 device: assuming AP nonce not clearable", 0, 0, 0);
      }

      CFRelease(v26);
    }

    else
    {
      sub_3680(v13, 2, 1, 0, 263, "Unable to determine whether image4 device: assuming AP nonce not clearable", 0, 0, 0);
    }

    if (a1 == 1)
    {
      *(v13 + 101) = 1;
      sub_5B04(v13);
    }
  }

  v24 = calloc(1uLL, 0xA8uLL);
  if (v24)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(v24 + 5) = Mutable;
    if (!Mutable)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to init statistics dictionary\n", v36, v37, v38, v39, v40, v41, v42, "checkpoint_engine_init");
      sub_5C10(v24, v94, v95, v96, v97, v98, v99, v100);
      goto LABEL_50;
    }

    *(v24 + 6) = a2;
    *(v24 + 7) = a3;
    *(v24 + 1) = v13;
    v43 = *(v13 + 200);
    if (v43 == 0x7FFFFFFF)
    {
      sub_D5840();
    }

    v44 = v43 + 1;
    *(v13 + 200) = v44;
    *(v24 + 8) = v44;
    valuePtr = a2;
    v52 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (!v52)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): engine id alloc failed\n", v45, v46, v47, v48, v49, v50, v51, "checkpoint_engine_init");
      sub_5C10(v24, v101, v102, v103, v104, v105, v106, v107);
      goto LABEL_52;
    }

    v60 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v60)
    {
      CFDictionarySetValue(*(v24 + 5), kCheckpointEngineStatsEngineIDKey[0], v52);
      CFDictionarySetValue(*(v24 + 5), kCheckpointEngineStatsCheckpointsKey[0], v60);
      if (a1 == 2)
      {
        goto LABEL_41;
      }

      v68 = *(v13 + 192);
      if (!v68)
      {
        goto LABEL_41;
      }

      if (*(v68 + 48))
      {
        v69 = sub_5CCC(*(v68 + 40), *(*(v68 + 56) + 8));
        if (v69)
        {
          v77 = v69;
          Value = CFDictionaryGetValue(v69, kCheckpointEngineStatsCheckpointSubenginesKey[0]);
          if (Value)
          {
LABEL_40:
            CFArrayAppendValue(Value, *(v24 + 5));
LABEL_41:
            if (*(v13 + 88) != 3 && !*(v13 + 240))
            {
              *(v13 + 240) = sub_5D94(v13, v61, v62, v63, v64, v65, v66, v67);
            }

            if (sub_2668(v13, 1, 0, v63, v64, v65, v66, v67))
            {
              sub_2F64(v13, v87, v88, v89, v90, v91, v92, v93);
            }

            if (*(v13 + 88) != 3)
            {
              sub_5E20(v13, v87, v88, v89, v90, v91, v92, v93);
            }

            goto LABEL_54;
          }

          v79 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (v79)
          {
            Value = v79;
            CFDictionarySetValue(v77, kCheckpointEngineStatsCheckpointSubenginesKey[0], v79);
            CFRelease(Value);
            goto LABEL_40;
          }

          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): subengines alloc failed.\n", v80, v81, v82, v83, v84, v85, v86, "checkpoint_engine_init");
        }

        else
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): parent stat update alloc failed\n", v70, v71, v72, v73, v74, v75, v76, "checkpoint_engine_init");
        }
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): parent is set but we're not in a checkpoint step.\n", v61, v62, v63, v64, v65, v66, v67, "checkpoint_engine_init");
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoints_dictionary alloc failed\n", v53, v54, v55, v56, v57, v58, v59, "checkpoint_engine_init");
    }

    sub_5C10(v24, v109, v110, v111, v112, v113, v114, v115);
    goto LABEL_53;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate engine control context\n", v28, v29, v30, v31, v32, v33, v34, "checkpoint_engine_init");
  v52 = 0;
  v60 = 0;
LABEL_54:
  if (*v13 != 1)
  {
    pthread_mutex_unlock((v13 + 8));
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  return v24;
}

void *checkpoint_closure_get_context()
{
  result = dispatch_get_specific(kCheckpointAsyncStepContextKey[0]);
  if (!result)
  {
    return qword_1C6490;
  }

  return result;
}

void sub_5AA8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*a1 != 1)
    {
      v9 = (a1 + 2);

      pthread_mutex_lock(v9);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_access_obtain");
  }
}

void *sub_5B04(void *result)
{
  if (*(result + 116))
  {
    v1 = result;
    if (!*(result + 117))
    {
      v12 = 0;
      if (!ramrod_check_NVRAM_access())
      {
        return sub_3680(v1, 6, 1, 0, 264, "Skipping consuming APNonce becauase we have no nvram access yet", 0, -1, 0);
      }

      v9 = ramrod_clear_ap_nonce(&v12, v2, v3, v4, v5, v6, v7, v8);
      if (v9 == -536870201)
      {
        v11 = v12;
        v10 = "Device does not support clearing of AP nonce";
      }

      else
      {
        if (!v9)
        {
          result = sub_3680(v1, 2, 1, 0, 264, "AP nonce consumed", 0, 0, 0);
LABEL_11:
          *(v1 + 117) = 1;
          return result;
        }

        v11 = v12;
        v10 = "Failed to consume AP nonce";
      }

      result = sub_3680(v1, 6, 1, 0, 264, v10, 0, -1, v11);
      goto LABEL_11;
    }
  }

  return result;
}

void sub_5C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine within step\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_engine_free_no_lock");
    }

    else
    {
      free(*(a1 + 80));
      free(*(a1 + 88));
      free(*(a1 + 160));
      v9 = *(a1 + 40);
      if (v9)
      {
        CFRelease(v9);
        *(a1 + 40) = 0;
      }

      v10 = *(a1 + 144);
      if (v10)
      {
        CFRelease(v10);
      }

      free(a1);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_engine_free_no_lock");
  }
}

const void *sub_5CCC(const __CFDictionary *a1, const char *a2)
{
  Value = CFDictionaryGetValue(a1, kCheckpointEngineStatsCheckpointsKey[0]);
  if (!Value)
  {
    return 0;
  }

  v4 = Value;
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  Mutable = CFDictionaryGetValue(v4, v5);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      CFDictionarySetValue(v4, v6, Mutable);
      CFRelease(Mutable);
    }
  }

  CFRelease(v6);
  return Mutable;
}

uint64_t sub_5D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 2)
  {
    if (!pthread_create((a1 + 248), 0, sub_AF4C, (a1 + 232)))
    {
      return 1;
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create recorder thread: error=%d\n", v8, v9, v10, v11, v12, v13, v14, "checkpoint_recorder_create_thread");
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): recorder thread is only used for engine chassis\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_recorder_create_thread");
  }

  return 0;
}

void sub_5E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 232))
  {
    if (*a1 == 1)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): MONITOR should activate rather than wake the recorder\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_recorder_chassis_wake");
    }

    else
    {
      dispatch_semaphore_signal(*(a1 + 336));
    }

    *(a1 + 232) = 0;
  }
}

void sub_5E88(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*a1 != 1)
    {
      v9 = (a1 + 2);

      pthread_mutex_unlock(v9);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_access_yield");
  }
}

void checkpoint_engine_set_crash_handler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_1C6478;
  if (qword_1C6478)
  {
    if (*qword_1C6478 == 1)
    {
      *(qword_1C6478 + 128) = a1;
      *(v8 + 136) = a2;
    }

    else
    {
      pthread_mutex_lock((qword_1C6478 + 8));
      v11 = *v8;
      *(v8 + 128) = a1;
      *(v8 + 136) = a2;
      if (v11 != 1)
      {

        pthread_mutex_unlock((v8 + 8));
      }
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Set crash handler called with a null chassis\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_engine_set_crash_handler");
  }
}

void checkpoint_engine_set_checkpoint_status_handler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_1C6478;
  if (qword_1C6478)
  {
    if (*qword_1C6478 == 1)
    {
      *(qword_1C6478 + 144) = a1;
      *(v8 + 152) = a2;
    }

    else
    {
      pthread_mutex_lock((qword_1C6478 + 8));
      v11 = *v8;
      *(v8 + 144) = a1;
      *(v8 + 152) = a2;
      if (v11 != 1)
      {

        pthread_mutex_unlock((v8 + 8));
      }
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Set status handler called with a null chassis\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_engine_set_checkpoint_status_handler");
  }
}

void checkpoint_engine_set_supports_async_operations(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_1C6478;
  if (qword_1C6478)
  {
    if (*qword_1C6478 == 1)
    {
      *(qword_1C6478 + 160) = a1;
    }

    else
    {
      pthread_mutex_lock((qword_1C6478 + 8));
      v10 = *v8;
      *(v8 + 160) = a1;
      if (v10 != 1)
      {
        pthread_mutex_unlock((v8 + 8));
      }
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Async support set to: %s\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_engine_set_supports_async_operations");
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Set supports async called with a null chassis\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_engine_set_supports_async_operations");
  }
}

void checkpoint_engine_recorder_path(char *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_1C6478;
  if (qword_1C6478)
  {
    if (*(qword_1C6478 + 88) != 3)
    {
      if (*qword_1C6478 != 1)
      {
        pthread_mutex_lock((qword_1C6478 + 8));
      }

      sub_3540(v8, __src);
      sub_5E20(v8, v10, v11, v12, v13, v14, v15, v16);
      if (__src)
      {
        strncpy((v8 + 688), __src, 0x80uLL);
        if (*(v8 + 832))
        {
          sub_B3CC(v8, v24, v25, v26, v27, v28, v29, v30);
        }
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): NULL storage path\n", v17, v18, v19, v20, v21, v22, v23, "checkpoint_storage_path");
      }

      if (*v8 != 1)
      {

        pthread_mutex_unlock((v8 + 8));
      }
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint chassis not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_engine_recorder_path");
  }
}

void checkpoint_engine_free(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_5AA8(qword_1C6478, a2, a3, a4, a5, a6, a7, a8);
  sub_5C10(a1, v9, v10, v11, v12, v13, v14, v15);
  v23 = qword_1C6478;

  sub_5E88(v23, v16, v17, v18, v19, v20, v21, v22);
}

void checkpoint_engine_perform(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_engine_perform");
    return;
  }

  v8 = a4;
  v9 = a2;
  *(a1 + 16) = a2;
  sub_5AA8(qword_1C6478, a2, a3, a4, a5, a6, a7, a8);
  v11 = qword_1C6478;
  if (*(qword_1C6478 + 88) != 2)
  {
    *a1 = *(qword_1C6478 + 192);
    *(v11 + 192) = a1;
  }

  if (*v11 != 1)
  {
    pthread_mutex_unlock((v11 + 8));
  }

  v12 = sub_7264();
  p_tv_sec = &v12->tv_sec;
  if (*(a1 + 48))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine within step\n", v13, v14, v15, v16, v17, v18, v19, "checkpoint_engine_perform");
    goto LABEL_18;
  }

  v21 = a3;
  v254 = *(a1 + 8);
  v255 = v12;
  if (!v9 || !a3 || !v8)
  {
    ramrod_log_msg("Missing required parameters for Checkpoint Engine step execution: steps=%p, result=%p, error=%p\n", v13, v14, v15, v16, v17, v18, v19, v9);
    goto LABEL_16;
  }

  if (!*(v9 + 1))
  {
    ramrod_log_msg("No steps to process for Checkpoint Engine %d.\n", v13, v14, v15, v16, v17, v18, v19, *(a1 + 24));
    *a3 = 0;
    goto LABEL_16;
  }

  v256 = *a3;
  v257 = v8;
  do
  {
    v259 = 0;
    v55 = 0;
    v261 = 0;
    v56 = 0;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    *(a1 + 104) = 0;
    while (1)
    {
      sub_5AA8(*(a1 + 8), v13, v14, v15, v16, v17, v18, v19);
      v63 = *(a1 + 8);
      v64 = *(v63 + 176);
      if (v64)
      {
        v57 = *(v63 + 168);
        if (v57)
        {
          sub_7588(a1, v64, v57, *(v63 + 184));
LABEL_196:
          sub_5E88(*(a1 + 8), v206, v207, v208, v209, v210, v211, v212);
          goto LABEL_199;
        }
      }

      if (*v63 != 1)
      {
        pthread_mutex_unlock((v63 + 8));
        v63 = *(a1 + 8);
      }

      sub_5AA8(v63, v64, v57, v58, v59, v60, v61, v62);
      v65 = sub_3680(*(a1 + 8), 3, *(a1 + 24), *(a1 + 28), *v9, *(v9 + 1), v55, 0, 0);
      sub_2F64(*(a1 + 8), v66, v67, v68, v69, v70, v71, v72);
      if (v9[9])
      {
        v80 = *(a1 + 8);
        *(v80 + 832) = 1;
        if (!*(v80 + 833) && *(v80 + 688))
        {
          sub_B3CC(v80, v73, v74, v75, v76, v77, v78, v79);
          v80 = *(a1 + 8);
        }

        if (*(v80 + 104))
        {
          v81 = sub_B060(*(v80 + 2432), *v9);
          if (!*(v9 + 24) && v81 && *(v81 + 8) == 1 && !*(v81 + 4))
          {
            sub_B0F8(*(a1 + 8), v65);
            v56 = 1;
            goto LABEL_196;
          }
        }
      }

      v82 = *(a1 + 8);
      v83 = *(v82 + 160);
      sub_5E88(v82, v73, v74, v75, v76, v77, v78, v79);
      BYTE9(v264) = 0;
      *&v262 = v9;
      v87 = *(a1 + 8);
      v88 = *(v87 + 144);
      if (v88)
      {
        v88(*(v87 + 152), &v262);
        v87 = *(a1 + 8);
      }

      v89 = *(a1 + 104) != 0;
      *(a1 + 56) = v9;
      qword_1C6490 = a1 + 56;
      *(a1 + 48) = 1;
      if (sub_8138(v87, v9, 1, v21, v8, v84, v85, v86))
      {
        if (*(v9 + 10))
        {
          if (!*(v9 + 88))
          {
            if (!v83)
            {
              ramrod_log_msg("skipping %s for now because async checkpoints are disabled.\n", v90, v91, v92, v93, v94, v95, v96, *(v9 + 1));
              [*(v9 + 10) setCheckpoint_closure_context:sub_B230(a1)];
              if ([*(v9 + 10) awaitDescription])
              {
                sub_B328([*(v9 + 10) checkpoint_closure_context], objc_msgSend(*(v9 + 10), "awaitDescription"));
              }

              v109 = 0;
              v104 = 0;
              goto LABEL_133;
            }

            ramrod_log_msg("running %s in the background.\n", v90, v91, v92, v93, v94, v95, v96, *(v9 + 1));
            v114 = sub_B230(a1);
            if ([*(v9 + 10) awaitDescription])
            {
              *&v115 = sub_B328(v114, [*(v9 + 10) awaitDescription]).n128_u64[0];
            }

            [*(v9 + 10) runForCheckpoint:{v114, v115}];
            v109 = 0;
            v104 = 0;
LABEL_80:
            if (*(v9 + 10))
            {
              if (!v104)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            }

LABEL_133:
            LODWORD(v259) = sub_8138(*(a1 + 8), v9, 0, v21, v8, v94, v95, v96);
            if (!v104)
            {
LABEL_83:
              if (v109)
              {
                free(v109);
              }

              goto LABEL_85;
            }

LABEL_82:
            free(v104);
            goto LABEL_83;
          }

          if (v9[7])
          {
            sub_D586C(v9 + 1, v90, v91, v92, v93, v94, v95, v96);
          }

          v104 = sub_7264();
          if (v83)
          {
            BYTE8(v264) = 1;
            v105 = *(a1 + 8);
            v106 = *(v105 + 144);
            if (v106)
            {
              v106(*(v105 + 152), &v262);
            }

            ramrod_log_msg("waiting for %s.\n", v97, v98, v99, v100, v101, v102, v103, *(v9 + 1));
            v107 = v9[23];
            if (v107 == -1)
            {
              v108 = -1;
            }

            else
            {
              v108 = dispatch_time(0, 1000000000 * v107);
            }

            if ([*(v9 + 10) waitUntilTime:v108])
            {
              *v21 = [*(v9 + 10) result];
              *v8 = [*(v9 + 10) error];
              v118 = [*(v9 + 10) checkpoint_closure_context];
              [*(v9 + 10) setCheckpoint_closure_context:0];
              v119 = sub_5CCC(*(a1 + 40), *(*v118 + 1));
              if (v119)
              {
                sub_D56C8(v119, v118[7], v118[8], *(v118 + 72));
              }

              sub_B13C((a1 + 72), (v118 + 2));
              sub_B1C0(v118);
            }

            else
            {
              *v21 = -1;
              *v8 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:60 userInfo:0];
            }

            BYTE8(v264) = 0;
          }

          else
          {
            ramrod_log_msg("running %s in the foreground.\n", v97, v98, v99, v100, v101, v102, v103, *(v9 + 1));
            v116 = [*(v9 + 10) checkpoint_closure_context];
            [*(v9 + 10) runSynchronousForCheckpoint:v116];
            v117 = sub_5CCC(*(a1 + 40), *(*v116 + 1));
            if (v117)
            {
              v205 = v117;
              CFDictionarySetValue(v117, kCheckpointEngineStatsCheckpointIsForcedSyncCheckpoint[0], kCFBooleanTrue);
              sub_D56C8(v205, v116[7], v116[8], *(v116 + 72));
            }

            *v21 = [*(v9 + 10) result];
            *v8 = [*(v9 + 10) error];
            [*(v9 + 10) setCheckpoint_closure_context:0];
            sub_B13C((a1 + 72), (v116 + 2));
            sub_B1C0(v116);
          }

          v120 = *(v9 + 2);
          if (v120)
          {
            (*(v120 + 16))();
          }

          *(v9 + 10) = 0;
          v109 = sub_7264();
          v121 = sub_5CCC(*(a1 + 40), *(v9 + 1));
          if (!v121)
          {
LABEL_79:
            if (!v83)
            {
              goto LABEL_133;
            }

            goto LABEL_80;
          }

          v167 = v121;
          CFDictionarySetValue(v121, kCheckpointEngineStatsCheckpointIsAsyncAwait, kCFBooleanTrue);
          v110 = v167;
          v111 = &v104->tv_sec;
          v112 = &v109->tv_sec;
          v113 = 0;
        }

        else
        {
          v104 = sub_7264();
          (*(*(v9 + 2) + 16))();
          v109 = sub_7264();
          v110 = sub_5CCC(*(a1 + 40), *(v9 + 1));
          if (!v110)
          {
            goto LABEL_79;
          }

          v111 = &v104->tv_sec;
          v112 = &v109->tv_sec;
          v113 = v89;
        }

        sub_D56C8(v110, v111, v112, v113);
        if (!v83)
        {
          goto LABEL_133;
        }

        goto LABEL_80;
      }

LABEL_85:
      *(a1 + 48) = 0;
      qword_1C6490 = 0;
      *(a1 + 56) = 0;
      sub_5AA8(*(a1 + 8), v90, v91, v92, v93, v94, v95, v96);
      if (*(a1 + 137))
      {
        *v21 = -1;
        *(a1 + 75) = 0;
        if (*v8)
        {
          CFRelease(*v8);
          *v8 = 0;
        }

        *v8 = CFErrorCreate(kCFAllocatorDefault, @"CheckpointEngineErrorDomain", 1, 0);
      }

      v128 = *(a1 + 80);
      if (v128)
      {
        if (v65)
        {
          sub_3680(*(a1 + 8), 31, *(v65 + 12), *(v65 + 13), *(v65 + 14), v128, *(v65 + 18), 0, 0);
          v128 = *(a1 + 80);
        }

        *(a1 + 80) = 0;
      }

      v129 = *(a1 + 88);
      if (v129)
      {
        if (v65)
        {
          sub_3680(*(a1 + 8), 6, *(v65 + 12), *(v65 + 13), *(v65 + 14), v129, *(v65 + 18), 0, 0);
        }

        warnx("%s", v129);
        v130 = *(a1 + 88);
        *(a1 + 88) = 0;
      }

      else
      {
        v130 = 0;
      }

      if (*(a1 + 75))
      {
        *(a1 + 75) = 0;
        v261 = 1;
      }

      v260 = v83;
      if (*(a1 + 76))
      {
        *(a1 + 76) = 0;
        if (*v21)
        {
          sub_4774(*(a1 + 8), v122, "Disabled step %s failed", *(v9 + 1));
        }

        HIDWORD(v259) = 1;
LABEL_102:
        sub_B0F8(*(a1 + 8), v65);
LABEL_103:
        v132 = 0;
        v56 = 1;
        goto LABEL_104;
      }

      if (HIDWORD(v259))
      {
        goto LABEL_102;
      }

      v131 = *v21;
      if (!v131)
      {
        if (v65)
        {
          sub_3680(*(a1 + 8), 5, *(v65 + 12), *(v65 + 13), *(v65 + 14), v65[8], *(v65 + 18), 0, 0);
        }

        HIDWORD(v259) = 0;
        goto LABEL_103;
      }

      if (v55 >= v9[7] || v261 || v259)
      {
        if (sub_74A4(*(a1 + 8), v9))
        {
          if (v65)
          {
            sub_3680(*(a1 + 8), 32, *(v65 + 12), *(v65 + 13), *(v65 + 14), v65[8], *(v65 + 18), *v21, *v8);
          }
        }

        else
        {
          sub_B384(*(a1 + 8), v65, *v21, *v8);
        }
      }

      else
      {
        if (v65)
        {
          sub_3680(*(a1 + 8), 4, *(v65 + 12), *(v65 + 13), *(v65 + 14), v65[8], *(v65 + 18), v131, *v8);
        }

        *v21 = v256;
      }

      v166 = *(a1 + 8);
      v132 = 1;
      if (*(v166 + 846))
      {
        HIDWORD(v259) = 0;
        v56 = 0;
      }

      else
      {
        *(v166 + 1632) = 1;
        *(v166 + 1640) = "first failure";
        sub_2668(v166, 1, 0, v124, v125, v126, v127, v131);
        HIDWORD(v259) = 0;
        v56 = 0;
        *(v166 + 846) = 1;
      }

LABEL_104:
      v133 = *(a1 + 8);
      v134 = *(a1 + 72);
      if (*(a1 + 72))
      {
        *(v133 + 2449) = 0;
      }

      v135 = v134 | v132;
      if (v134 | v132 || !*(v133 + 852))
      {
        v136 = v134 == 0;
        v137 = *(v133 + 844);
        if (v135)
        {
          v137 = 1;
        }

        sub_2668(v133, v137, v136, v124, v125, v126, v127, v131);
        *(a1 + 72) = 0;
      }

      v21 = a3;
      if (*(a1 + 73))
      {
        if (sub_2668(v133, 1, 0, v124, v125, v126, v127, v131))
        {
          if (*(v133 + 101))
          {
            v145 = v133;
            if (*(v133 + 104))
            {
              v146 = 4;
LABEL_159:
              sub_4814(v145, v146, v139, v140, v141, v142, v143, v144);
              *(v133 + 1632) = 1;
              *(v133 + 1640) = "point-of-no-return";
              goto LABEL_160;
            }

            sub_4774(v133, v138, "[step_access]already_crossed_PoNR_not_rebootRetry");
          }

          else
          {
            if (!*(v133 + 104))
            {
              *(v133 + 101) = 1;
              v147 = *(v133 + 96);
              if (v147 < 0x22)
              {
                v148 = &dword_109EC8[3 * v147];
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", v138, v139, v140, v141, v142, v143, v144, "checkpoint_get_outcome_attributes");
                v148 = dword_109EC8;
              }

              if (*(v148 + 6))
              {
                if (*(v133 + 100))
                {
                  sub_5080(v133, 7, "true", v140, v141, v142, v143, v144);
                  sub_5080(v133, 3, "true", v149, v150, v151, v152, v153);
                  sub_5080(v133, 2, "upgrade", v154, v155, v156, v157, v158);
                  sub_5080(v133, 1, "true", v159, v160, v161, v162, v163);
                  v146 = 10;
                }

                else
                {
                  sub_5080(v133, 1, "false", v140, v141, v142, v143, v144);
                  v146 = 11;
                }
              }

              else
              {
                v164 = *(v133 + 96);
                v165 = "unknown";
                if (v164 <= 0x21)
                {
                  v165 = off_1A8C48[v164];
                }

                sub_4774(v133, v138, "[step_access]outcome=%s(crossing_PoNR_initial_attempt)", v165);
                v146 = 4;
              }

              v145 = v133;
              goto LABEL_159;
            }

            sub_4774(v133, v138, "[step_access]crossing_PoNR_initial_attempt_rebootRetry");
          }
        }

        else
        {
          sub_4774(v133, v138, "[step_access]crossed_PoNR_when_NVRAM_not_available");
        }

LABEL_160:
        *(a1 + 73) = 0;
      }

      if (*(a1 + 74))
      {
        if (sub_2668(v133, 1, 0, v124, v125, v126, v127, v131))
        {
          if (*(v133 + 102))
          {
            sub_4774(v133, v168, "[step_access]already_crossed_PoFF");
          }

          else
          {
            *(v133 + 102) = 1;
            sub_4E24(v133, 3, 1, 0, v169, v170, v171, v172);
            sub_4E24(v133, 7, 0, 0, v173, v174, v175, v176);
            sub_4E24(v133, 2, 1, 0, v177, v178, v179, v180);
            sub_5080(v133, 1, "true", v181, v182, v183, v184, v185);
            sync();
            sub_5B04(v133);
            sub_4814(v133, 5u, v186, v187, v188, v189, v190, v191);
            *(v133 + 1632) = 1;
            v8 = v257;
            *(v133 + 1640) = "point-of-fail-forward";
          }
        }

        else
        {
          sub_4774(v133, v168, "[step_access]crossed_PoFF_when_NVRAM_not_available");
        }

        *(a1 + 74) = 0;
      }

      if (v261)
      {
        if (!v65)
        {
          if (!*(a1 + 77))
          {
            goto LABEL_176;
          }

          goto LABEL_175;
        }

        sub_3680(*(a1 + 8), 8, *(v65 + 12), *(v65 + 13), *(v65 + 14), v65[8], *(v65 + 18), 0, 0);
      }

      if (!*(a1 + 77))
      {
        goto LABEL_176;
      }

      if (v65)
      {
        sub_3680(*(a1 + 8), 26, *(v65 + 12), *(v65 + 13), *(v65 + 14), v65[8], *(v65 + 18), 0, 0);
      }

LABEL_175:
      v192 = *(a1 + 8);
      *(v192 + 118) = 1;
      sub_5080(v192, 34, "SHUTDOWN", v124, v125, v126, v127, v131);
      *(a1 + 77) = 0;
LABEL_176:
      sub_2F64(*(a1 + 8), v122, v123, v124, v125, v126, v127, v131);
      BYTE9(v264) = 1;
      v200 = *v8;
      DWORD2(v262) = *a3;
      *&v263 = v200;
      *(&v263 + 1) = v130;
      *&v264 = v128;
      v201 = *(a1 + 8);
      v202 = *(v201 + 144);
      if (v202)
      {
        v202(*(v201 + 152), &v262);
        v201 = *(a1 + 8);
      }

      sub_5E88(v201, v193, v194, v195, v196, v197, v198, v199);
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      if (v130)
      {
        free(v130);
      }

      if (v128)
      {
        free(v128);
      }

      *(a1 + 104) = v55 + 1;
      v203 = v261 ? 1 : v56;
      if ((v203 & 1) == 0)
      {
        break;
      }

      v204 = v56 ^ 1;
      if (!v259)
      {
        v204 = 1;
      }

      if (v204)
      {
        goto LABEL_199;
      }

      if (v260 && *(v9 + 10))
      {
        v56 = 1;
        goto LABEL_199;
      }

      v56 = 1;
      if (!sub_87AC(*(a1 + 8), v9, v14, v15, v16, v17, v18, v19))
      {
        goto LABEL_199;
      }

LABEL_194:
      ++v55;
    }

    v56 = 0;
    if (v55 < v9[7])
    {
      goto LABEL_194;
    }

    v261 = 0;
LABEL_199:
    if (!HIDWORD(v259) && (v9[9] & 3) != 0)
    {
      if (v56)
      {
        if (sub_74A4(*(a1 + 8), v9))
        {
          ramrod_log_msg("Tolerated step 0x%x has actually succeeded. Marking it as such\n", v13, v14, v15, v16, v17, v18, v19, *v9);
          v239 = *(a1 + 8);
          sub_5AA8(v239, v240, v241, v242, v243, v244, v245, v246);
          sub_CB48(v239, v9, 0, *v8);
          goto LABEL_219;
        }

        v56 = 1;
      }

      else if (v261)
      {
        v56 = 0;
      }

      else
      {
        v239 = *(a1 + 8);
        sub_5AA8(v239, v13, v14, v15, v16, v17, v18, v19);
        if (sub_74A4(v239, v9))
        {
          sub_CB48(v239, v9, *v21, *v8);
          *v21 = 0;
          if (*v8)
          {
            CFRelease(*v8);
            *v8 = 0;
          }

LABEL_219:
          v56 = 1;
        }

        else
        {
          v56 = 0;
        }

        sub_5E88(v239, v247, v248, v249, v250, v251, v252, v253);
      }
    }

    sub_5AA8(*(a1 + 8), v13, v14, v15, v16, v17, v18, v19);
    v220 = *(a1 + 144);
    if (v220)
    {
      if (*v8)
      {
        CFRelease(*v8);
        *v8 = 0;
        v220 = *(a1 + 144);
      }

      *v8 = CFRetain(v220);
      *v21 = *(a1 + 152);
      v226 = *(a1 + 160);
      if (v226)
      {
        v227 = sub_3680(*(a1 + 8), 3, *(a1 + 24), *(a1 + 28), *v226, *(v226 + 8), 0, 0, 0);
        sub_B384(*(a1 + 8), v227, *v21, *v8);
      }

      v228 = *(a1 + 8);
      if (v56 && !*(v228 + 846))
      {
        *(v228 + 1632) = 1;
        *(v228 + 1640) = "first failure";
        sub_2668(v228, 1, 0, v221, v222, v223, v224, v225);
        *(v228 + 846) = 1;
        v8 = v257;
        v228 = *(a1 + 8);
      }

      *&v262 = *(a1 + 160);
      WORD4(v264) = 256;
      v263 = *v8;
      DWORD2(v262) = *v21;
      *&v264 = 0;
      v229 = *(v228 + 144);
      if (v229)
      {
        v229(*(v228 + 152), &v262);
      }

      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      sub_7588(a1, 0, 0, 0);
      v56 = 0;
    }

    sub_5E88(*(a1 + 8), v213, v214, v215, v216, v217, v218, v219);
    if (v261)
    {
      break;
    }

    v230 = *(a1 + 8);
    sub_5AA8(v230, v13, v14, v15, v16, v17, v18, v19);
    sub_BCB8((v230 + 172), (v230 + 608));
    sub_5E88(v230, v231, v232, v233, v234, v235, v236, v237);
    if (!v56)
    {
      break;
    }

    v238 = *(v9 + 13);
    v9 += 24;
  }

  while (v238);
LABEL_16:
  *(a1 + 136) = 1;
  p_tv_sec = &v255->tv_sec;
  if (v254[22] != 3)
  {
    sub_5AA8(v254, v13, v14, v15, v16, v17, v18, v19);
    sub_5E20(v254, v22, v23, v24, v25, v26, v27, v28);
    sub_5E88(v254, v29, v30, v31, v32, v33, v34, v35);
  }

LABEL_18:
  v36 = sub_7264();
  sub_D56C8(*(a1 + 40), p_tv_sec, &v36->tv_sec, 0);
  sub_5AA8(qword_1C6478, v37, v38, v39, v40, v41, v42, v43);
  v52 = qword_1C6478;
  if (*(qword_1C6478 + 88) != 2)
  {
    if (*(qword_1C6478 + 192) != a1)
    {
      sub_D5894(v44, v45, v46, v47, v48, v49, v50, v51);
    }

    v53 = *a1;
    if (*a1)
    {
      if (!*(v53 + 152) && !*(v53 + 144))
      {
        sub_7588(v53, *(a1 + 152), *(a1 + 144), *(a1 + 160));
      }
    }

    else
    {
      v54 = *(a1 + 8);
      if (!*(v54 + 176) && !*(v54 + 168))
      {
        sub_7694(v54, *(a1 + 152), *(a1 + 144), *(a1 + 160));
      }
    }

    v52 = qword_1C6478;
    *(qword_1C6478 + 192) = *a1;
  }

  if (*v52 != 1)
  {
    pthread_mutex_unlock((v52 + 8));
  }

  *(a1 + 16) = 0;
  if (p_tv_sec)
  {
    free(p_tv_sec);
  }

  if (v36)
  {
    free(v36);
  }
}

timeval *sub_7264()
{
  v0 = calloc(1uLL, 0x18uLL);
  if (!v0)
  {
    abort();
  }

  v1 = v0;
  v0[1].tv_sec = mach_absolute_time();
  gettimeofday(v1, 0);
  return v1;
}

timeval *checkpoint_closure_context_set_start_time(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 72) = 1;
    free(v2);
  }

  result = sub_7264();
  *(a1 + 56) = result;
  return result;
}

timeval *checkpoint_closure_context_set_end_time(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  result = sub_7264();
  *(a1 + 64) = result;
  return result;
}

void checkpoint_closure_context_set_encountered_async_error(uint64_t a1, int a2, __CFError *a3)
{
  if (a3)
  {
    v6 = qword_1C6478;
    if (!sub_744C(a3))
    {
      v13 = *(a1 + 8);
      if (!v13 || (*(v13 + 36) & 3) == 0 || !sub_74A4(v6, v13))
      {
        sub_5AA8(v6, v13, v7, v8, v9, v10, v11, v12);
        v21 = (v6 + 48);
        v22 = (v6 + 48);
        while (1)
        {
          v22 = *v22;
          if (!v22)
          {
            break;
          }

          if (*(v22 + 32) == *(a1 + 76))
          {
            goto LABEL_12;
          }
        }

        v22 = *v21;
        if (!*v21)
        {
          sub_7694(v6, a2, a3, *(a1 + 8));
          goto LABEL_19;
        }

LABEL_12:
        if (!*(v22 + 144) && !*(v22 + 137))
        {
          sub_7588(v22, a2, a3, *(a1 + 8));
          for (i = *v21; i != v22; i = *i)
          {
            sub_7630(i);
          }

          sub_7630(v22);
        }

LABEL_19:

        sub_5E88(v6, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }
}

__CFError *sub_744C(__CFError *result)
{
  if (result)
  {
    v1 = result;
    if (CFErrorGetCode(result) == 1)
    {
      Domain = CFErrorGetDomain(v1);
      return (CFEqual(Domain, @"CheckpointEngineErrorDomain") != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_74A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1136);
  if (v4)
  {
    v5 = CFStringCompare(v4, @"true", 0) == kCFCompareEqualTo;
  }

  else
  {
    v5 = 0;
  }

  should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
  v7 = *(a1 + 88);
  v8 = v7 == 1 && (!should_do_legacy_restored_internal_behaviors || v5);
  v9 = v7 != 2 || v5;
  if (v9 != 1 || v8 != 0)
  {
    v11 = *(a2 + 36);
    if ((v11 & 3) != 0)
    {
      if ((v11 & 2) == 0)
      {
        return 1;
      }

      v13 = 0;
      v14 = a2 + 40;
      do
      {
        v15 = *(v14 + v13);
        if (!v15)
        {
          break;
        }

        v16 = sub_B060(*(a1 + 2432), v15);
        if (v16 && (!*(a1 + 104) || *(v16 + 48) == 1 && *(v16 + 14)))
        {
          return 1;
        }

        v13 += 4;
      }

      while (v13 != 40);
    }
  }

  return 0;
}

__n128 sub_7588(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (sub_744C(a3))
  {
    abort();
  }

  v8 = *(a1 + 144);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 144) = 0;
  free(*(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  if (a3)
  {
    if (!a4)
    {
      sub_D58C0();
    }

    *(a1 + 152) = a2;
    *(a1 + 144) = CFRetain(a3);
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 160) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

void *sub_7630(void *result)
{
  if (!*(result + 137))
  {
    v1 = result;
    v2 = result[2];
    if (*v2)
    {
      v3 = v2 + 24;
      do
      {
        result = *(v3 - 2);
        if (result)
        {
          if (!*(v3 - 8))
          {
            result = [result cancel];
          }
        }

        v4 = *v3;
        v3 += 24;
      }

      while (v4);
    }

    *(v1 + 137) = 1;
  }

  return result;
}

__n128 sub_7694(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (sub_744C(a3))
  {
    abort();
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 168) = 0;
  free(*(a1 + 184));
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  if (a3)
  {
    if (!a4)
    {
      sub_D58EC();
    }

    CFRetain(a3);
    *(a1 + 176) = a2;
    *(a1 + 168) = a3;
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 184) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

void checkpoint_engine_notice(int a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_1C6478;
  if (qword_1C6478)
  {
    v10 = a2;
    if (*qword_1C6478 != 1)
    {
      pthread_mutex_lock((qword_1C6478 + 8));
    }

    sub_3680(v8, 2, a1, v10, 260, a3, 0, 0, 0);
    sub_2F64(v8, v12, v13, v14, v15, v16, v17, v18);
    if (*(v8 + 88) != 3)
    {
      sub_5E20(v8, v19, v20, v21, v22, v23, v24, v25);
    }

    if (*v8 != 1)
    {

      pthread_mutex_unlock((v8 + 8));
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint chassis not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_engine_notice");
  }
}

uint64_t checkpoint_engine_finished_result(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = qword_1C6478;
  if (qword_1C6478)
  {
    sub_5AA8(qword_1C6478, a2, a3, a4, a5, a6, a7, a8);
    if (!a1)
    {
      if (*(v9 + 88) == 2 && !*(v9 + 104))
      {
        if (*(v9 + 2446) == 1)
        {
          a1 = 4294967294;
        }

        else
        {
          a1 = 0;
        }
      }

      else
      {
        a1 = 0;
      }
    }

    sub_3680(v9, 27, 1, 0, 0, "FINISHED", 0, a1, 0);
    *(v9 + 1632) = 1;
    *(v9 + 1640) = "engine process terminating";
    if (a1)
    {
      sub_4814(v9, 0xDu, v10, v11, v12, v13, v14, v15);
      if (!*(v9 + 101))
      {
        sub_5B04(v9);
      }
    }

    else
    {
      if (*(v9 + 105))
      {
        v23 = 9;
      }

      else
      {
        v23 = 8;
      }

      sub_4814(v9, v23, v10, v11, v12, v13, v14, v15);
      sub_5B04(v9);
      if (*(v9 + 88) == 2 && *(v9 + 101))
      {
        sub_4E24(v9, 2, 1, 0, v19, v20, v21, v22);
        sub_4E24(v9, 3, 1, 0, v24, v25, v26, v27);
        sub_4E24(v9, 7, 0, 0, v28, v29, v30, v31);
        sub_5080(v9, 1, "true", v32, v33, v34, v35, v36);
        sync();
      }
    }

    sub_2F64(v9, v16, v17, v18, v19, v20, v21, v22);
    if (*(v9 + 88) != 3)
    {
      sub_5250(v9);
      sub_5E20(v9, v44, v45, v46, v47, v48, v49, v50);
    }

    if (*(v9 + 2464))
    {
      ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): Freeing simulator data\n", v37, v38, v39, v40, v41, v42, v43, "checkpoint_engine_finished_result");
      v51 = *(v9 + 2464);
      if (v51)
      {
        CFRelease(v51);
        *(v9 + 2464) = 0;
      }
    }

    sub_5E88(v9, v37, v38, v39, v40, v41, v42, v43);
    if (*(v9 + 88) != 3)
    {
      dispatch_semaphore_wait(*(v9 + 344), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint chassis not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_engine_finished_result");
  }

  return a1;
}

__CFError *checkpoint_status_copy_error_string(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v2 = sub_7A84(result);
    v3 = CFStringCreateWithCString(kCFAllocatorDefault, v2, 0x8000100u);
    free(v2);
    return v3;
  }

  return result;
}

char *sub_7A84(CFErrorRef err)
{
  if (!err)
  {
    return 0;
  }

  v1 = err;
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = CFErrorCopyUserInfo(v1);
    v2 = sub_90E4(v2, "[%d]", v5, v6, v7, v8, v9, v10, v3);
    if (!v4)
    {
      break;
    }

    v22 = 0;
    Value = CFDictionaryGetValue(v4, kCFErrorLocalizedRecoverySuggestionKey);
    v12 = sub_CD10(v2, "RS", Value, &v22);
    v13 = CFDictionaryGetValue(v4, kCFErrorLocalizedDescriptionKey);
    v14 = sub_CD10(v12, "LD", v13, &v22);
    v15 = CFDictionaryGetValue(v4, kCFErrorDescriptionKey);
    v16 = sub_CD10(v14, "D", v15, &v22);
    v17 = CFDictionaryGetValue(v4, kCFErrorLocalizedFailureReasonKey);
    v2 = sub_CD10(v16, "FR", v17, &v22);
    v1 = CFDictionaryGetValue(v4, kCFErrorUnderlyingErrorKey);
    CFRelease(v4);
    if (!v1)
    {
      break;
    }
  }

  while (v3++ < 0xF);
  v19 = strlen(v2);
  if (v19 >= 0xF3)
  {
    v21 = 0;
    asprintf(&v21, "%s", &v2[v19 - 242]);
    if (v2)
    {
      free(v2);
    }

    return v21;
  }

  return v2;
}

CFStringRef checkpoint_status_copy_warning_string(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x8000100u);
  }

  else
  {
    return 0;
  }
}

CFStringRef checkpoint_status_copy_info_string(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return CFStringCreateWithCString(kCFAllocatorDefault, v1, 0x8000100u);
  }

  else
  {
    return 0;
  }
}

uint64_t checkpoint_closure_context_get_step_desc(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t *checkpoint_closure_context_tolerated_treat_as_success(uint64_t *result)
{
  if (result)
  {
    return sub_74A4(qword_1C6478, *result);
  }

  return result;
}

uint64_t checkpoint_closure_context_should_retry(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 48);
    *(result + 48) = v1 + 1;
    return !*(result + 19) && v1 < *(*result + 28);
  }

  return result;
}

uint64_t checkpoint_closure_context_reboot_retry()
{
  if (qword_1C6478)
  {
    return *(qword_1C6478 + 104);
  }

  else
  {
    return 0;
  }
}

void checkpoint_closure_context_info(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18[0] = 0;
  v18[1] = &a9;
  vasprintf(v18, a2, &a9);
  if (v18[0])
  {
    if (a1)
    {
      if (!*(a1 + 24))
      {
        *(a1 + 24) = v18[0];
        return;
      }

      v17 = "CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional step info\n";
    }

    else
    {
      v17 = "CHECKPOINT_INTERNAL_ERROR(%s): NULL checkpoint context\n";
    }
  }

  else
  {
    v17 = "CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate info message\n";
  }

  ramrod_log_msg(v17, v10, v11, v12, v13, v14, v15, v16, "checkpoint_closure_context_info");
  if (v18[0])
  {
    free(v18[0]);
  }
}

void checkpoint_closure_context_warning(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18[0] = 0;
  v18[1] = &a9;
  vasprintf(v18, a2, &a9);
  if (v18[0])
  {
    if (a1)
    {
      if (!*(a1 + 32))
      {
        *(a1 + 32) = v18[0];
        return;
      }

      v17 = "CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional step warning\n";
    }

    else
    {
      v17 = "CHECKPOINT_INTERNAL_ERROR(%s): NULL checkpoint context\n";
    }
  }

  else
  {
    v17 = "CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate warning message\n";
  }

  ramrod_log_msg(v17, v10, v11, v12, v13, v14, v15, v16, "checkpoint_closure_context_warning");
  if (v18[0])
  {
    free(v18[0]);
  }
}

void checkpoint_closure_context_shutdown(char **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "CHECKPOINT_INTERNAL_ERROR(%s): Checkpoint context == NULL\n";
    goto LABEL_5;
  }

  v9 = a1 + 5;
  v8 = a1[5];
  *(a1 + 21) = 1;
  if (v8)
  {
    v10 = "CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional shutdown message\n";
LABEL_5:
    ramrod_log_msg(v10, a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_shutdown");
    return;
  }

  asprintf(a1 + 5, "%s", a2);
  if (!*v9)
  {
    v10 = "CHECKPOINT_INTERNAL_ERROR(%s): failed to allocate shutdown message\n";
    goto LABEL_5;
  }
}

void checkpoint_closure_context_cross_point_of_no_return(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    *(a1 + 17) = 1;
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_cross_point_of_no_return");
  }
}

void checkpoint_closure_context_cross_point_of_fail_forward(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    *(a1 + 18) = 1;
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_cross_point_of_fail_forward");
  }
}

uint64_t checkpoint_closure_context_get_immediate_retry_attempt_number(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return *(a1 + 48);
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_get_immediate_retry_attempt_number");
  return 0;
}

BOOL checkpoint_closure_context_is_async(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return *(*a1 + 80) && *(qword_1C6478 + 160) == 1;
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_is_async");
    return 0;
  }
}

void checkpoint_closure_context_step_disabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    *(a1 + 20) = 1;
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_step_disabled");
  }
}

uint64_t checkpoint_closure_context_handle_simulator_actions(uint64_t *a1, uint64_t a2, int *a3, __CFError **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_actions");
    return a2;
  }

  if (!qword_1C6478)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_actions");
    return a2;
  }

  v9 = *a1;
  v10 = qword_1C6478;

  return sub_8138(v10, v9, a2, a3, a4, a6, a7, a8);
}

uint64_t sub_8138(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, __CFError **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  if (a5 && sub_744C(*a5))
  {
    return 0;
  }

  v14 = v10;
  sub_5AA8(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_CDE4(a1, v15, v16, v17, v18, v19, v20, v21);
  if (!*(a1 + 2452) || !*(a1 + 2464))
  {
    goto LABEL_17;
  }

  v29 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
  Count = CFArrayGetCount(*(a1 + 2464));
  if (Count < 1)
  {
    v37 = 0;
    if (!v29)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v31 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2464), 0);
  if (CFStringCompare(v29, ValueAtIndex, 0) == kCFCompareEqualTo)
  {
    v37 = 1;
    if (!v29)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFRelease(v29);
    goto LABEL_13;
  }

  v33 = 1;
  do
  {
    v34 = v33;
    if (v31 == v33)
    {
      break;
    }

    v35 = CFArrayGetValueAtIndex(*(a1 + 2464), v33);
    v36 = CFStringCompare(v29, v35, 0);
    v33 = v34 + 1;
  }

  while (v36);
  v37 = v34 < v31;
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v37)
  {
    v38 = *(a1 + 2460);
    if (!v38)
    {
      if (v10)
      {
        sub_3680(a1, *(a1 + 2452), 1, 0, *a2, *(a2 + 8), *(a1 + 2456), *a4, *a5);
      }

      sub_5E88(a1, v22, v23, v24, v25, v26, v27, v28);
      v47 = 0;
      v39 = 0;
      switch(*(a1 + 2452))
      {
        case 9:
          goto LABEL_77;
        case 0xA:
          if (*(a1 + 2451) == v10)
          {
            *a4 = 181;
            ramrod_create_error_cf(a5, @"CheckpointErrorDomain", 181, 0, @"checkpoint simulator error", v44, v45, v46, v91);
          }

          goto LABEL_73;
        case 0xB:
          if (*(a1 + 2451) == v10)
          {
            abort();
          }

          goto LABEL_73;
        case 0xC:
          if (*(a1 + 2451) == v10)
          {
            exit(182);
          }

          goto LABEL_73;
        case 0xD:
          if (*(a1 + 2451) == v10)
          {
            _exit(183);
          }

          goto LABEL_73;
        case 0xE:
          if (*(a1 + 2451) == v10)
          {
            for (i = 0; ; i += 4)
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator signal executing after dereference of %p [%d]\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
            }
          }

          goto LABEL_73;
        case 0xF:
          if (*(a1 + 2451) == v10)
          {
              ;
            }
          }

          goto LABEL_73;
        case 0x10:
          if (*(a1 + 2451) == v10)
          {
            memset(&v93, 0, sizeof(v93));
            v92.__sig = 0;
            *v92.__opaque = 0;
            pthread_mutexattr_init(&v92);
            pthread_mutex_init(&v93, &v92);
            pthread_mutex_lock(&v93);
            pthread_mutex_lock(&v93);
          }

          goto LABEL_73;
        case 0x11:
          if (*(a1 + 2451) != v10)
          {
            goto LABEL_73;
          }

          v65 = mach_host_self();
          v66 = 0;
          goto LABEL_72;
        case 0x12:
          goto LABEL_51;
        case 0x13:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator PAUSE not supported\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          goto LABEL_73;
        case 0x14:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator RESUME not supported\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          goto LABEL_73;
        case 0x15:
          if (*(a1 + 2451) != v10)
          {
            goto LABEL_73;
          }

          __break(1u);
LABEL_51:
          if (*(a1 + 2451) != v10)
          {
            goto LABEL_73;
          }

          v65 = mach_host_self();
          v66 = 4096;
LABEL_72:
          host_reboot(v65, v66);
LABEL_73:
          v39 = 0;
LABEL_74:
          v47 = v10;
LABEL_75:
          if (!v10)
          {
            goto LABEL_77;
          }

          v14 = v47;
          if (!v47)
          {
            goto LABEL_77;
          }

          goto LABEL_18;
        case 0x16:
          v39 = v10 == 0;
          goto LABEL_74;
        case 0x17:
          v39 = 0;
          if (*(a1 + 2451) == v10)
          {
            v47 = 0;
          }

          else
          {
            v47 = v10;
          }

          if (v10 || *(a1 + 2451))
          {
            goto LABEL_75;
          }

          if (*a4)
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s result: %d\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
            *a4 = 0;
            if (*a5)
            {
              v56 = sub_7A84(*a5);
              if (v56)
              {
                v64 = v56;
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s error: %s\n", v57, v58, v59, v60, v61, v62, v63, "checkpoint_simulator_action");
                free(v64);
              }

              CFRelease(*a5);
              v47 = 0;
              v39 = 0;
              *a5 = 0;
LABEL_77:
              v75 = *(a1 + 2456);
              if (v75)
              {
                v76 = v75 - 1;
                *(a1 + 2456) = v76;
                if (!v76)
                {
                  *(a1 + 2452) = 0;
                }
              }

              v14 = v47;
              goto LABEL_18;
            }
          }

          else
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator to ignore error on step %s, but step was successful\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          }

          v47 = 0;
          v39 = 0;
          goto LABEL_77;
        case 0x18:
          if (*(a1 + 2451) == v10)
          {
            sub_D018();
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): returned from checkpoint jetsam attempt; continuing engine\n", v67, v68, v69, v70, v71, v72, v73, "checkpoint_simulator_action");
          }

          goto LABEL_73;
        case 0x19:
          if (*(a1 + 2451) == v10)
          {
            v48 = fork();
            if (v48 < 1)
            {
              if (!v48)
              {
                sub_D018();
                exit(0);
              }

              __error();
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d attempting to fork jetsam child\n", v77, v78, v79, v80, v81, v82, v83, "checkpoint_simulator_action");
            }

            else
            {
              LODWORD(v93.__sig) = 0;
              if (waitpid(v48, &v93, 0) < 0)
              {
                __error();
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d waiting for jetsam child\n", v84, v85, v86, v87, v88, v89, v90, "checkpoint_simulator_action");
              }

              else if ((v93.__sig & 0x7F) == 0x7F)
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unexpected status of jetsam child: %d\n", v49, v50, v51, v52, v53, v54, v55, "checkpoint_simulator_action");
              }

              else if ((v93.__sig & 0x7F) != 0)
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child signalled: %d\n", v49, v50, v51, v52, v53, v54, v55, "checkpoint_simulator_action");
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child exited: %d\n", v49, v50, v51, v52, v53, v54, v55, "checkpoint_simulator_action");
              }
            }
          }

          goto LABEL_73;
        default:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unknown simulator command ignored\n", v40, v41, v42, v43, v44, v45, v46, "checkpoint_simulator_action");
          v39 = 0;
          v47 = 1;
          goto LABEL_75;
      }
    }

    if (!v10)
    {
      *(a1 + 2460) = v38 - 1;
    }
  }

LABEL_17:
  sub_5E88(a1, v22, v23, v24, v25, v26, v27, v28);
  v39 = 0;
LABEL_18:
  if (v10)
  {
    return v14;
  }

  else
  {
    return v39;
  }
}

uint64_t checkpoint_closure_context_handle_simulator_match_name(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_match_name");
    return 0;
  }

  if (!qword_1C6478)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_context_handle_simulator_match_name");
    return 0;
  }

  v8 = *a1;
  v9 = qword_1C6478;

  return sub_87AC(v9, v8, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_87AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_5AA8(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_CDE4(a1, v10, v11, v12, v13, v14, v15, v16);
  if (*(a1 + 2452))
  {
    Count = CFArrayGetCount(*(a1 + 2464));
    v32 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
    if (Count < 1)
    {
LABEL_6:
      v35 = 0;
    }

    else
    {
      v33 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2464), v33);
        if (CFStringCompare(v32, ValueAtIndex, 0) == kCFCompareEqualTo)
        {
          break;
        }

        if (Count == ++v33)
        {
          goto LABEL_6;
        }
      }

      v35 = 1;
    }

    sub_5E88(a1, v25, v26, v27, v28, v29, v30, v31);
    if (v32)
    {
      CFRelease(v32);
    }
  }

  else
  {
    sub_5E88(a1, v17, v18, v19, v20, v21, v22, v23);
    return 0;
  }

  return v35;
}

uint64_t checkpoint_closure_get_step_desc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      return *(a1 + 56);
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_get_step_desc");
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_get_step_desc");
  }

  return 0;
}

BOOL checkpoint_closure_supports_reboot_retry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      return *(v8 + 88) == 2;
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine without chassis\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_supports_reboot_retry");
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_supports_reboot_retry");
  }

  return 0;
}

uint64_t checkpoint_closure_is_reboot_retry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      return *(*(a1 + 8) + 104);
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_is_reboot_retry");
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_is_reboot_retry");
  }

  return 0;
}

void checkpoint_closure_nvram_available(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      *(a1 + 72) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_nvram_available");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_nvram_available");
  }
}

void checkpoint_closure_point_of_no_return(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      *(a1 + 73) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_point_of_no_return");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_point_of_no_return");
  }
}

void checkpoint_closure_point_of_fail_forward(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      *(a1 + 74) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_point_of_fail_forward");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_point_of_fail_forward");
  }
}

uint64_t checkpoint_closure_cross_fail_forward_or_die(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (checkpoint_would_reboot_retry())
    {
      if (qword_1C6478)
      {
        if (*(qword_1C6478 + 2446))
        {
          return 4294967294;
        }
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint chassis not initialized\n", v9, v10, v11, v12, v13, v14, v15, "checkpoint_engine_hit_tolerated_failure");
      }
    }

    if (*(a1 + 48))
    {
      result = 0;
      *(a1 + 74) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n", v9, v10, v11, v12, v13, v14, v15, "checkpoint_closure_point_of_fail_forward");
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_cross_fail_forward_or_die");
    return 0xFFFFFFFFLL;
  }

  return result;
}

void checkpoint_closure_partition_mounted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v8 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n";
LABEL_6:
    ramrod_log_msg(v8, a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_partition_mounted");
    return;
  }

  if (!*(a1 + 48))
  {
    v8 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n";
    goto LABEL_6;
  }
}

void checkpoint_closure_partition_unmounting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v8 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n";
LABEL_6:
    ramrod_log_msg(v8, a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_partition_unmounting");
    return;
  }

  if (!*(a1 + 48))
  {
    v8 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n";
    goto LABEL_6;
  }
}

void checkpoint_closure_terminate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      *(a1 + 75) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_terminate");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_terminate");
  }
}

void checkpoint_closure_info(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18[0] = 0;
  v18[1] = &a9;
  vasprintf(v18, a2, &a9);
  if (v18[0])
  {
    if (a1)
    {
      if (*(a1 + 48))
      {
        if (!*(a1 + 80))
        {
          *(a1 + 80) = v18[0];
          return;
        }

        v17 = "CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional step info\n";
      }

      else
      {
        v17 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n";
      }
    }

    else
    {
      v17 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n";
    }
  }

  else
  {
    v17 = "CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate info message\n";
  }

  ramrod_log_msg(v17, v10, v11, v12, v13, v14, v15, v16, "checkpoint_closure_info");
  if (v18[0])
  {
    free(v18[0]);
  }
}

void checkpoint_closure_warning(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18[0] = 0;
  v18[1] = &a9;
  vasprintf(v18, a2, &a9);
  if (v18[0])
  {
    if (a1)
    {
      if (*(a1 + 48))
      {
        if (!*(a1 + 88))
        {
          *(a1 + 88) = v18[0];
          return;
        }

        v17 = "CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional step warning\n";
      }

      else
      {
        v17 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n";
      }
    }

    else
    {
      v17 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n";
    }
  }

  else
  {
    v17 = "CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate warning message\n";
  }

  ramrod_log_msg(v17, v10, v11, v12, v13, v14, v15, v16, "checkpoint_closure_warning");
  if (v18[0])
  {
    free(v18[0]);
  }
}

void checkpoint_closure_shutdown(char **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n";
    goto LABEL_7;
  }

  if (!*(a1 + 48))
  {
    v10 = "CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n";
    goto LABEL_7;
  }

  v9 = a1 + 12;
  v8 = a1[12];
  *(a1 + 77) = 1;
  if (v8)
  {
    v10 = "CHECKPOINT_INTERNAL_ERROR(%s): ignoring additional shutdown message\n";
LABEL_7:
    ramrod_log_msg(v10, a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_shutdown");
    return;
  }

  asprintf(v9, "%s", a2);
  if (!*v9)
  {
    v10 = "CHECKPOINT_INTERNAL_ERROR(%s): failed to allocate shutdown message\n";
    goto LABEL_7;
  }
}

void checkpoint_closure_step_disabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      *(a1 + 76) = 1;
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not within step\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_step_disabled");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint engine not initialized\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_closure_step_disabled");
  }
}

void checkpoint_recovered_clear(int a1)
{
  v2 = sub_2468();
  if (v2)
  {
    v10 = v2;
    *(v2 + 22) = a1;
    if (sub_2668(v2, 1, 1, v5, v6, v7, v8, v9))
    {
      v18 = 0;
      v19 = &dword_1A83A8;
      do
      {
        v20 = *v19;
        v19 += 8;
        if ((v20 - 5) <= 0xFFFFFFFC)
        {
          sub_4E24(v10, v18, 0, 1, v14, v15, v16, v17);
        }

        ++v18;
      }

      while (v18 != 48);
    }

    checkpoint_engine_free(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate recover context\n", v3, v4, v5, v6, v7, v8, v9, "checkpoint_recovered_clear");
  }
}

char *sub_8FF4(char *a1, const char *a2, const char *a3, int *a4)
{
  v11 = 0;
  v12 = 0;
  asprintf(&v12, "%s:%s", a2, a3);
  v6 = v12;
  if (!v12)
  {
    return a1;
  }

  if (!a1)
  {
    return v12;
  }

  v7 = strlen(a1);
  v8 = strlen(v12);
  v9 = 1;
  if (*a4 > 0)
  {
    v9 = 2;
  }

  if (v8 + v7 + v9 >= 0x81)
  {
    v11 = a1;
LABEL_13:
    free(v6);
    return v11;
  }

  if (*a4 <= 0)
  {
    asprintf(&v11, "%s%s");
  }

  else
  {
    asprintf(&v11, "%s;%s");
  }

  ++*a4;
  free(a1);
  v6 = v12;
  if (v12)
  {
    goto LABEL_13;
  }

  return v11;
}

char *sub_90E4(char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = 0;
  v12[0] = 0;
  v12[1] = &a9;
  vasprintf(v12, a2, &a9);
  if (!v12[0])
  {
    return a1;
  }

  if (!a1)
  {
    return v12[0];
  }

  asprintf(&v11, "%s%s", a1, v12[0]);
  if (v11)
  {
    free(a1);
  }

  else
  {
    v11 = a1;
  }

  if (v12[0])
  {
    free(v12[0]);
    v12[0] = 0;
  }

  return v11;
}

char *sub_9184(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "0x%08X", a2);
  if (v8)
  {
    a1 = sub_8FF4(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

char *sub_91FC(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "%d", a2);
  if (v8)
  {
    a1 = sub_8FF4(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

void sub_9274(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 1)
  {
    if (a2)
    {
      if (*(a1 + 104))
      {
        v9 = 17;
        goto LABEL_14;
      }

      v10 = *(a1 + 101) == 0;
      v9 = 5;
    }

    else
    {
      v10 = *(a1 + 88) == 2;
      v9 = 1;
    }
  }

  else if (a2)
  {
    if (*(a1 + 104))
    {
      v9 = 19;
      goto LABEL_14;
    }

    v10 = *(a1 + 101) == 0;
    v9 = 7;
  }

  else
  {
    v10 = *(a1 + 88) == 2;
    v9 = 3;
  }

  if (!v10)
  {
    ++v9;
  }

LABEL_14:
  *(a1 + 96) = v9;
  sub_5080(a1, 5, off_1A8C48[v9], a4, a5, a6, a7, a8);

  sub_9B34(a1, 1);
}

void sub_933C(uint64_t a1, unsigned int a2, unsigned int a3, const __CFString **a4)
{
  cf = 0;
  bzero(buffer, 0x400uLL);
  bzero(v54, 0x400uLL);
  if (a3 < 0x30)
  {
    if (*(a1 + 88) == 1)
    {
      v16 = &off_1A8390[4 * a3];
    }

    else
    {
      v16 = &off_1A8390[4 * a3 + 1];
    }

    v17 = *v16;
    CFStringGetCString(*v16, buffer, 1024, 0x8000100u);
    v18 = ramrod_copy_NVRAM_variable(v17, &cf);
    if (!v18)
    {
      if (!cf)
      {
        return;
      }

      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to read %s\n", v19, v20, v21, v22, v23, v24, v25, "checkpoint_nvram_collect_var");
      goto LABEL_3;
    }

    v15 = v18;
    v26 = CFGetTypeID(v18);
    if (v26 == CFStringGetTypeID())
    {
      CFStringGetCString(v15, v54, 1024, 0x8000100u);
      *a4 = v15;
      v15 = 0;
      goto LABEL_24;
    }

    if (v26 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr) = 0;
      if (!CFNumberGetValue(v15, kCFNumberIntType, &valuePtr))
      {
        v35 = "CHECKPOINT_INTERNAL_ERROR(%s): number that is not an int %s\n";
        goto LABEL_31;
      }

      v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", valuePtr);
      if (!v34)
      {
        v35 = "CHECKPOINT_INTERNAL_ERROR(%s): failed to get valid number for %s\n";
LABEL_31:
        ramrod_log_msg(v35, v27, v28, v29, v30, v31, v32, v33, "checkpoint_nvram_collect_var");
        goto LABEL_4;
      }
    }

    else
    {
      if (v26 != CFDataGetTypeID())
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unsupported nvram variable type for %s\n", v36, v37, v38, v39, v40, v41, v42, "checkpoint_nvram_collect_var");
        goto LABEL_4;
      }

      v34 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v15, 0x8000100u);
      if (!v34)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to get string from data %s\n", v43, v44, v45, v46, v47, v48, v49, "checkpoint_nvram_collect_var");
        goto LABEL_4;
      }
    }

    v50 = v34;
    CFStringGetCString(v34, v54, 1024, 0x8000100u);
    *a4 = v50;
LABEL_24:
    valuePtr = 0;
    if (a2 > 2)
    {
      v51 = "Unknown";
    }

    else
    {
      v51 = off_1A8990[a2];
    }

    asprintf(&valuePtr, "%s NVRAM variable: %s=%s", v51, buffer, v54);
    if (valuePtr)
    {
      sub_3680(a1, 2, 1, 0, 257, valuePtr, 0, 0, 0);
      free(valuePtr);
    }

    goto LABEL_4;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable id=%u\n", v8, v9, v10, v11, v12, v13, v14, "checkpoint_nvram_collect_var");
LABEL_3:
  v15 = 0;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t sub_9624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      return 0;
    }

    else
    {
      return LODWORD(off_1A8390[4 * a2 + 2]);
    }
  }

  return a2;
}

uint64_t sub_968C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v39, 0, sizeof(v39));
  v9 = *a3;
  v10 = 1;
  v11 = 0;
  if (v9)
  {
    v12 = 0;
    v36 = a2;
    v13 = a2 + 8;
    v14 = a3 + 2;
    do
    {
      *(v39 + v9) = 1;
      if (*(v13 + 8 * v9))
      {
        if (*(v14 - 3))
        {
          v11 = 1;
        }

        if (*(v14 - 2))
        {
          v12 = 1;
        }

        if (*(v14 - 1))
        {
          v15 = v9 <= 0x2F && (LODWORD(off_1A8390[4 * v9 + 3]) - 2) < 3;
          sub_4E24(a1, v9, v15, 1, a5, a6, a7, a8);
        }
      }

      else if (*(v14 - 4))
      {
        bzero(buffer, 0x400uLL);
        if (v9 >= 0x30)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", v16, v17, v18, v19, v20, v21, v22, "checkpoint_get_nvram_name");
          LODWORD(v9) = 0;
        }

        if (*(a1 + 88) == 1)
        {
          v23 = &off_1A8390[4 * v9];
        }

        else
        {
          v23 = &off_1A8390[4 * v9 + 1];
        }

        CFStringGetCString(*v23, buffer, 1024, 0x8000100u);
        sub_4774(a1, v24, "[check_collection]%s(does_not_exist)", buffer);
      }

      v25 = *v14;
      v14 += 2;
      v9 = v25;
    }

    while (v25);
    v10 = v12 == 0;
    a2 = v36;
  }

  v26 = 0;
  v27 = a2 + 16;
  v28 = off_1A83B0;
  do
  {
    if (!*(v39 + v26 + 1) && *(v27 + 8 * v26))
    {
      bzero(buffer, 0x400uLL);
      bzero(v37, 0x400uLL);
      if (*(a1 + 88) == 1)
      {
        v29 = v28;
      }

      else
      {
        v29 = (v28 + 1);
      }

      CFStringGetCString(*v29, buffer, 1024, 0x8000100u);
      sub_4F28(*(v27 + 8 * v26), v37);
      sub_4774(a1, v30, "[check_collection]%s=%s(exists_when_not_expected)", buffer, v37);
      sub_4E24(a1, (v26 + 1), 0, 1, v31, v32, v33, v34);
    }

    ++v26;
    v28 += 4;
  }

  while (v26 != 47);
  if (!v10)
  {
    sub_3680(a1, 2, 1, 0, 262, "Old restore failure indication(s)", 0, 0, 0);
  }

  return v11;
}

void sub_9924(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && CFStringCompare(v3, @"upgrade", 0) == kCFCompareEqualTo)
  {

    sub_4E24(a1, 2, 1, 0, v4, v5, v6, v7);
  }
}

void sub_998C(uint64_t a1, const __CFString *a2)
{
  if (*(a1 + 100))
  {
    *(a1 + 104) = 1;
    *(a1 + 101) = 1;

    sub_5B04(a1);
  }

  else
  {
    bzero(v5, 0x400uLL);
    sub_4F28(a2, v5);
    sub_4774(a1, v4, "[reboot_retry_chassis]outcome=%s(pre_existing_reboot_retry_disabled)", v5);
  }
}

void sub_9A70(const __CFString *a1, int a2)
{
  cf = 0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  ramrod_delete_NVRAM_variable(a1, &cf);
  v11 = cf;
  if (cf)
  {
    if (!a2)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to delete NVRAM variable %s\n", v4, v5, v6, v7, v8, v9, v10, "checkpoint_nvram_delete_var_raw");
      v11 = cf;
    }

    CFRelease(v11);
  }
}

void sub_9B34(uint64_t a1, int a2)
{
  v7 = 0;
  v3 = *(a1 + 92);
  if (v3 > 0x21)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = off_1A8C48[v3];
  }

  v5 = *(a1 + 96);
  if (v5 > 0x21)
  {
    v6 = "unknown";
  }

  else
  {
    v6 = off_1A8C48[v5];
  }

  asprintf(&v7, "%s (%s) -> (%s)", off_1A89A8[a2], v4, v6);
  if (v7)
  {
    sub_3680(a1, 29, 1, 0, 260, v7, 0, 0, 0);
    if (v7)
    {
      free(v7);
    }
  }
}

uint64_t sub_9BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_9624(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9 > 0x2F)
  {
    v10 = 0;
  }

  else
  {
    v10 = HIDWORD(off_1A8390[4 * v9 + 2]);
  }

  v11 = checkpoint_nvram_encoder[v10];
  v12 = *(a1 + 16 * v9 + 1672);

  return (v11)(a1, v12);
}

char *sub_9C6C(char *result)
{
  v1 = result;
  if (!*(result + 72))
  {
    v2 = *(result + 31);
    if (v2)
    {
      *(result + 72) = v2;
      *(result + 31) = 0;
    }
  }

  if (!*(result + 73))
  {
    v3 = *(result + 32);
    if (v3)
    {
      *(result + 73) = v3;
      *(result + 32) = 0;
    }
  }

  if (result[120])
  {
    if (result[296])
    {
      if (!result[132])
      {
        result[425] = 1;
      }
    }

    else if (result[132])
    {
      result = strncpy(result + 296, result + 132, 0x80uLL);
      v1[424] = 1;
    }

    v1[120] = 0;
  }

  return result;
}

uint64_t sub_9D00(uint64_t result)
{
  v1 = *(result + 264);
  if (v1)
  {
    v2 = (result + 264);
    v3 = *(result + 448);
    do
    {
      v4 = *v1;
      *v2 = *v1;
      if (!v4)
      {
        *(result + 272) = v2;
      }

      *v1 = 0;
      **(result + 440) = v1;
      *(result + 440) = v1;
      ++v3;
      v1 = *(result + 264);
    }

    while (v1);
    *(result + 448) = v3;
  }

  return result;
}

void sub_9D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 424))
  {
    if (*(a1 + 427))
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): file already open\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_recorder_t_file_access");
    }

    else if (*(a1 + 288) && *(a1 + 292) && *(a1 + 296))
    {
      v15 = 0;
      if (*(strlen((a1 + 296)) + a1 + 296 - 1) == 47)
      {
        asprintf(&v15, "%s%s");
      }

      else
      {
        asprintf(&v15, "%s/%s");
      }

      if (v15)
      {
        v14 = 0;
        v9 = *(a1 + 292);
        v10 = v9 == 2;
        if (v9 == 2)
        {
          v11 = "ota";
        }

        else
        {
          v11 = "restore";
        }

        v12 = "perform";
        if (v10)
        {
          v12 = "patch";
        }

        if (*(a1 + 288) == 1)
        {
          v12 = "monitor";
        }

        asprintf(&v14, "%s/%s_%s.%s", v15, v11, v12, "txt");
        if (v14)
        {
          mkdir(v15, 0x1FFu);
          v13 = open(v14, 521, 420);
          *(a1 + 428) = v13;
          if (v13 != -1)
          {
            *(a1 + 427) = 1;
          }

          if (v14)
          {
            free(v14);
          }
        }

        if (v15)
        {
          free(v15);
        }
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): not [fully] configured: providerType=%d, purpose=%d, path=%s\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_recorder_t_file_access");
    }

    *(a1 + 424) = 0;
  }

  else if (*(a1 + 425))
  {
    if (*(a1 + 427))
    {
      close(*(a1 + 428));
      *(a1 + 428) = -1;
      *(a1 + 427) = 0;
    }

    *(a1 + 425) = 0;
  }
}

void sub_9F08(uint64_t a1)
{
  v2 = (a1 + 432);
  v3 = *(a1 + 432);
  if (v3)
  {
    do
    {
      if (!*(a1 + 427))
      {
        break;
      }

      v4 = *v3;
      *v2 = *v3;
      if (!v4)
      {
        *(a1 + 440) = v2;
      }

      --*(a1 + 448);
      v5 = v3[1];
      if (v5)
      {
        v6 = strlen(v3[1]);
        if (v6)
        {
          for (i = 0; i != v6; ++i)
          {
            v8 = v3[1];
            if (*(v8 + i) == 10)
            {
              *(v8 + i) = 124;
            }
          }

          v5 = v3[1];
        }

        if ((!sub_A070(a1, v5) || !sub_A070(a1, "\n")) && *(a1 + 427))
        {
          close(*(a1 + 428));
          *(a1 + 428) = -1;
          *(a1 + 427) = 0;
        }

        v9 = v3[1];
        if (v9)
        {
          free(v9);
        }
      }

      free(v3);
      v3 = *v2;
    }

    while (*v2);
  }

  if (*(a1 + 426))
  {
    if (v3)
    {
      do
      {
        v10 = *v3;
        *v2 = *v3;
        if (!v10)
        {
          *(a1 + 440) = v2;
        }

        --*(a1 + 448);
        v11 = v3[1];
        if (v11)
        {
          free(v11);
        }

        free(v3);
        v3 = *v2;
      }

      while (*v2);
    }

    if (*(a1 + 427))
    {
      close(*(a1 + 428));
      *(a1 + 428) = -1;
      *(a1 + 427) = 0;
    }
  }
}

uint64_t sub_A070(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = 4;
  while (1)
  {
    v6 = strlen(__s);
    v7 = write(*(a1 + 428), __s, v6);
    if (v7 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d writing to file\n", v15, v16, v17, v18, v19, v20, v21, "checkpoint_recorder_t_write");
      return 0;
    }

    if (--v5 <= 1)
    {
      return 0;
    }
  }

  if (v7 == v4)
  {
    return 1;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): partial write of %zd characters when requested %ld\n", v8, v9, v10, v11, v12, v13, v14, "checkpoint_recorder_t_write");
  return 0;
}

void sub_A148(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v11 = 0;
      v12 = a1 + 1664;
      goto LABEL_7;
    }

    a2 = LODWORD(off_1A8390[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_18;
  }

  v11 = a2;
  v12 = a1 + 16 * a2 + 1664;
LABEL_7:
  if ((0x20420400uLL >> v11))
  {
    a2 = *(v12 + 8);
    if (a2)
    {
      goto LABEL_21;
    }
  }

  if ((0x1001100uLL >> v11))
  {
    v13 = *(v12 + 8);
    if (v13)
    {
      v14 = 0;
      a2 = v13 - 16;
      do
      {
        v16 = *(a2 + 16);
        a2 += 16;
        v15 = v16;
        if (v16)
        {
          v17 = v14 >= 7;
        }

        else
        {
          v17 = 1;
        }

        ++v14;
      }

      while (!v17);
      if (!v15)
      {
LABEL_21:
        *a2 = v9;
        sub_A63C(a1 + 1632, (a2 + 8), a4, a4, a5, a6, a7, a8);
        *(v12 + 4) = 1;
        return;
      }
    }
  }

LABEL_18:
  v18 = *(a1 + 1652);
  if (!v18)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v18 = *(a1 + 1652);
  }

  *(a1 + 1652) = v18 + 1;
}

void sub_A288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v10 = 0;
      v11 = a1 + 1664;
      goto LABEL_7;
    }

    a2 = LODWORD(off_1A8390[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_10;
  }

  v10 = a2;
  v11 = a1 + 16 * a2 + 1664;
LABEL_7:
  if ((0x3C03C0000uLL >> v10))
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      *v12 = a3;
      *(v11 + 4) = 1;
      return;
    }
  }

LABEL_10:
  v13 = *(a1 + 1652);
  if (!v13)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v13 = *(a1 + 1652);
  }

  *(a1 + 1652) = v13 + 1;
}

void sub_A378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v12 = 0;
      v13 = a1 + 1664;
      goto LABEL_7;
    }

    a2 = LODWORD(off_1A8390[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v12 = a2;
  v13 = a1 + 16 * a2 + 1664;
LABEL_7:
  if (((0xA00A000uLL >> v12) & 1) != 0 && v9 <= 7)
  {
    v15 = *(v13 + 8);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = *(v13 + 8);
      do
      {
        v20 = *v18;
        v18 += 11;
        v19 = v20;
        if (v20)
        {
          v21 = v17;
        }

        else
        {
          v21 = v15;
        }

        v22 = v19 == v10;
        if (v19 == v10)
        {
          v23 = v15;
        }

        else
        {
          v23 = 0;
        }

        if (!v22)
        {
          v17 = v21;
        }

        if (v23)
        {
          v24 = 1;
        }

        else
        {
          v24 = v16 >= 7;
        }

        ++v16;
        v15 = v18;
      }

      while (!v24);
      if (v23)
      {
        v17 = v23;
      }

      if (v17)
      {
        *v17 = v10;
        v17[v9 + 1] = v8;
        *(v17 + v9 + 36) = 1;
        *(v13 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v14 = *(a1 + 1652);
  if (!v14)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v14 = *(a1 + 1652);
  }

  *(a1 + 1652) = v14 + 1;
}

void sub_A4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v10 = a3;
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      v12 = 0;
      v13 = a1 + 1664;
      goto LABEL_7;
    }

    a2 = LODWORD(off_1A8390[4 * a2 + 2]);
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v12 = a2;
  v13 = a1 + 16 * a2 + 1664;
LABEL_7:
  if (((0x14014000uLL >> v12) & 1) != 0 && v9 <= 7)
  {
    v15 = *(v13 + 8);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = *(v13 + 8);
      do
      {
        v20 = *v18;
        v18 += 18;
        v19 = v20;
        if (v20)
        {
          v21 = v17;
        }

        else
        {
          v21 = v15;
        }

        v22 = v19 == v10;
        if (v19 == v10)
        {
          v23 = v15;
        }

        else
        {
          v23 = 0;
        }

        if (!v22)
        {
          v17 = v21;
        }

        if (v23)
        {
          v24 = 1;
        }

        else
        {
          v24 = v16 >= 7;
        }

        ++v16;
        v15 = v18;
      }

      while (!v24);
      if (v23)
      {
        v17 = v23;
      }

      if (v17)
      {
        *v17 = v10;
        sub_A63C(a1 + 1632, &v17[2 * v9 + 2], a5, a4, a5, a6, a7, a8);
        *(v13 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v14 = *(a1 + 1652);
  if (!v14)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
    v14 = *(a1 + 1652);
  }

  *(a1 + 1652) = v14 + 1;
}

void sub_A63C(uint64_t a1, char **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (*a2)
    {
      free(*a2);
      *a2 = 0;
    }

    if (a3)
    {
      asprintf(a2, "%s", a3);
    }
  }

  else
  {
    v11 = *(a1 + 20);
    if (!v11)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", 0, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_store_lost");
      v11 = *(a1 + 20);
    }

    *(a1 + 20) = v11 + 1;
  }
}

char *sub_A6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_9BFC(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = 0;
  if (result)
  {
    v9 = result;
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v9, buffer, 1024, 0x8000100u);
    asprintf(&v10, "%s", buffer);
    CFRelease(v9);
    return v10;
  }

  return result;
}

void sub_A794()
{
  v0 = reboot_np(3072, "Panic system for debugging purpose!");
  if (v0)
  {
    ramrod_log_msg("Failed to trigger system panic: %d", v1, v2, v3, v4, v5, v6, v7, v0);
  }
}

char *sub_A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  if (*(a1 + 104))
  {
    if (a3 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_nvram_adjust_id");
      LODWORD(a3) = 0;
    }

    else
    {
      LODWORD(a3) = off_1A8390[4 * a3 + 2];
    }
  }

  v9 = *(a2 + 8 * a3 + 8);
  if (!v9)
  {
    return 0;
  }

  bzero(buffer, 0x400uLL);
  CFStringGetCString(v9, buffer, 1024, 0x8000100u);
  asprintf(&v11, "%s", buffer);
  return v11;
}

uint64_t sub_A8CC(int a1, int a2)
{
  v5.__sigaction_u.__sa_handler = 0;
  *&v5.sa_mask = 0;
  v4.__sigaction_u.__sa_handler = 0;
  *&v4.sa_mask = 0;
  result = sigaction(a2, 0, &v4);
  if (!result && v4.__sigaction_u.__sa_handler == sub_5450)
  {
    return sigaction(a2, &v5, 0);
  }

  return result;
}

void sub_A938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ramrod_log_msg("ARM64 exception state (%u):\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 12));
    ramrod_log_msg("  %4s: 0x%08x\n", v8, v9, v10, v11, v12, v13, v14, "esr");
    ramrod_log_msg("  %4s: 0x%016llx\n", v15, v16, v17, v18, v19, v20, v21, "far");
    ramrod_log_msg("\n", v22, v23, v24, v25, v26, v27, v28, v86);
    ramrod_log_msg("ARM64 thread state:\n", v29, v30, v31, v32, v33, v34, v35, v87);
    for (i = 0; i != 29; ++i)
    {
      *__str = 0;
      snprintf(__str, 8uLL, "x%lu", i);
      ramrod_log_msg("  %4s: 0x%016llx\n", v37, v38, v39, v40, v41, v42, v43, __str);
    }

    ramrod_log_msg("  %4s: 0x%016llx\n", v44, v45, v46, v47, v48, v49, v50, "fp");
    ramrod_log_msg("  %4s: 0x%016llx\n", v51, v52, v53, v54, v55, v56, v57, "lr");
    ramrod_log_msg("  %4s: 0x%016llx\n", v58, v59, v60, v61, v62, v63, v64, "sp");
    ramrod_log_msg("  %4s: 0x%016llx\n", v65, v66, v67, v68, v69, v70, v71, "pc");
    ramrod_log_msg("  %4s: 0x%08x\n", v72, v73, v74, v75, v76, v77, v78, "cpsr");
    ramrod_log_msg("\n", v79, v80, v81, v82, v83, v84, v85, v88);
  }
}

void sub_ABB4(uint64_t a1)
{
  bzero(array, 0x400uLL);
  if (a1 && (v2 = *(a1 + 248), array[0] = *(a1 + 272), LODWORD(a1) = 1, v2))
  {
    v3 = 0;
  }

  else
  {
    v2 = &vars0;
    v3 = 2;
  }

  bzero(image_offsets, 0xA00uLL);
  ramrod_log_msg("Attempting to gather and print unsymbolicated backtrace.\n", v4, v5, v6, v7, v8, v9, v10, v56);
  v18 = backtrace_from_fp(v2, &array[a1], 128 - a1) + a1;
  if (v18 > v3)
  {
    v19 = 0;
    v20 = v3;
    do
    {
      ramrod_log_msg("    %-3lu 0x%0*lx%s\n", v11, v12, v13, v14, v15, v16, v17, v20++);
      --v19;
    }

    while (v18 != v20);
  }

  ramrod_log_msg("\n", v11, v12, v13, v14, v15, v16, v17, v57);
  ramrod_log_msg("Attempting to gather and print backtrace symbols and image offsets.\n", v21, v22, v23, v24, v25, v26, v27, v58);
  v60 = backtrace_symbols(array, v18);
  backtrace_image_offsets(array, image_offsets, v18);
  v35 = v18 - v3;
  if (v18 > v3)
  {
    v36 = 0;
    v37 = &v60[v3];
    do
    {
      v38 = *v37++;
      v39 = strlen(v38);
      if (v39 <= v36)
      {
        v40 = v36;
      }

      else
      {
        v40 = v39;
      }

      if (v39 >> 31)
      {
        v36 = 0x7FFFFFFF;
      }

      else
      {
        v36 = v40;
      }

      --v35;
    }

    while (v35);
    v41 = v18 - v3;
    if (v18 > v3)
    {
      v42 = 0;
      v43 = &image_offsets[v3];
      do
      {
        memset(out, 0, 37);
        uuid_unparse(v43->uuid, out);
        ramrod_log_msg("    %-*s (UUID: %s __TEXT + 0x%X)%s\n", v44, v45, v46, v47, v48, v49, v50, v36);
        ++v42;
        ++v43;
      }

      while (v41 != v42);
    }
  }

  ramrod_log_msg("\n", v28, v29, v30, v31, v32, v33, v34, v59);
  v51 = qword_1C6478;
  if (qword_1C6478 && *(qword_1C6478 + 128))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, v18, &kCFTypeArrayCallBacks);
    if (v18)
    {
      v53 = v60;
      do
      {
        v54 = *v53++;
        v55 = CFStringCreateWithCString(kCFAllocatorDefault, v54, 0x8000100u);
        CFArrayAppendValue(Mutable, v55);
        CFRelease(v55);
        --v18;
      }

      while (v18);
    }

    (*(v51 + 128))(*(v51 + 136), Mutable);
    CFRelease(Mutable);
  }

  free(v60);
}

void sub_AF04()
{
  v0 = sub_2468();
  if (v0)
  {
    qword_1C6478 = v0;
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to allocate chassis control context\n", v1, v2, v3, v4, v5, v6, v7, "checkpoint_init_once");
  }
}

uint64_t sub_AF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 432);
  while (1)
  {
    while (1)
    {
      sub_9D44(a1, a2, a3, a4, a5, a6, a7, a8);
      sub_9F08(a1);
      pthread_mutex_lock((a1 + 24));
      sub_9C6C(a1);
      sub_9D00(a1);
      if (!*(a1 + 426) && *(a1 + 280))
      {
        *(a1 + 426) = 1;
        *(a1 + 280) = 0;
      }

      pthread_mutex_unlock((a1 + 24));
      v10 = *(a1 + 448);
      if (v10 >= 0x201)
      {
        do
        {
          v11 = *v9;
          v12 = **v9;
          *v9 = v12;
          if (!v12)
          {
            *(a1 + 440) = v9;
          }

          *(a1 + 448) = v10 - 1;
          v13 = v11[1];
          if (v13)
          {
            free(v13);
          }

          free(v11);
          v10 = *(a1 + 448);
        }

        while (v10 > 0x200);
      }

      if (!*(a1 + 426))
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_20;
      }
    }

    if (!*(a1 + 424) && !*(a1 + 425) && (!*(a1 + 427) || !v10))
    {
      dispatch_semaphore_wait(*(a1 + 104), 0xFFFFFFFFFFFFFFFFLL);
      if (*(a1 + 426))
      {
        if (!*(a1 + 448))
        {
          break;
        }
      }
    }
  }

LABEL_20:
  dispatch_semaphore_signal(*(a1 + 112));
  return 0;
}

const __CFDictionary *sub_B060(const __CFDictionary *a1, uint64_t a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v11 = v3;
      Value = CFDictionaryGetValue(v2, v3);
      if (Value)
      {
        v2 = *(Value + 2);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v11);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create step ID number for tolerated failure lookup\n", v4, v5, v6, v7, v8, v9, v10, "checkpoint_tolerated_get_failed_entry");
      return 0;
    }
  }

  return v2;
}

void *sub_B0F8(void *result, uint64_t a2)
{
  if (a2)
  {
    return sub_3680(result, 33, *(a2 + 48), *(a2 + 52), *(a2 + 56), *(a2 + 64), *(a2 + 72), 0, 0);
  }

  return result;
}

char *sub_B13C(char *result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  *(result + 2) = *(a2 + 4);
  if (!*(result + 1))
  {
    result = *(a2 + 8);
    if (result)
    {
      result = strdup(result);
      *(v3 + 1) = result;
    }
  }

  if (!*(v3 + 2))
  {
    result = *(a2 + 16);
    if (result)
    {
      result = strdup(result);
      *(v3 + 2) = result;
    }
  }

  if (!*(v3 + 3))
  {
    result = *(a2 + 24);
    if (result)
    {
      result = strdup(result);
      *(v3 + 3) = result;
    }
  }

  *(v3 + 8) = *(a2 + 32);
  return result;
}

void sub_B1C0(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    free(v6);
  }

  free(a1);
}

void *sub_B230(uint64_t a1)
{
  v2 = calloc(1uLL, 0x50uLL);
  v3 = calloc(1uLL, 0x60uLL);
  *v2 = v3;
  v4 = *(a1 + 56);
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
  *(v2 + 19) = *(a1 + 32);
  if (*(*v2 + 80))
  {
    if (!*(*v2 + 88))
    {
      v9 = *(a1 + 56);
      v10 = *v9;
      *(a1 + 56) = v9 + 24;
      if (v10)
      {
        v11 = v9 + 24;
        while (*(v11 - 2) != *(*v2 + 80) || !*(v11 - 8))
        {
          v12 = *v11;
          v11 += 24;
          if (!v12)
          {
            goto LABEL_10;
          }
        }

        v13 = calloc(1uLL, 0x60uLL);
        *(v2 + 1) = v13;
        v14 = *(v11 - 5);
        *v13 = *(v11 - 6);
        v13[1] = v14;
        v15 = *(v11 - 1);
        v17 = *(v11 - 4);
        v16 = *(v11 - 3);
        v13[4] = *(v11 - 2);
        v13[5] = v15;
        v13[2] = v17;
        v13[3] = v16;
      }
    }
  }

LABEL_10:
  sub_B13C(v2 + 16, a1 + 72);
  return v2;
}

__n128 sub_B328(uint64_t a1, uint64_t a2)
{
  free(*(a1 + 8));
  *(a1 + 8) = 0;
  if (a2)
  {
    v5 = calloc(1uLL, 0x60uLL);
    *(a1 + 8) = v5;
    v6 = *(a2 + 16);
    *v5 = *a2;
    v5[1] = v6;
    result = *(a2 + 64);
    v7 = *(a2 + 80);
    v9 = *(a2 + 32);
    v8 = *(a2 + 48);
    v5[4] = result;
    v5[5] = v7;
    v5[2] = v9;
    v5[3] = v8;
  }

  return result;
}

void *sub_B384(void *result, uint64_t a2, int a3, const void *a4)
{
  if (a2)
  {
    return sub_3680(result, 7, *(a2 + 48), *(a2 + 52), *(a2 + 56), *(a2 + 64), *(a2 + 72), a3, a4);
  }

  return result;
}

void sub_B3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 833) == 1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint_storage_now_accessible has already been called once..returning\n", a2, a3, a4, a5, a6, a7, a8, "checkpoint_storage_now_accessible");
    return;
  }

  v9 = a1 + 688;
  v10 = *(a1 + 88);
  memset(&buffer, 0, 128);
  v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/%s", a1 + 688, "checkpoint");
  *(a1 + 816) = v11;
  if (v11)
  {
    if (CFStringGetFileSystemRepresentation(v11, &buffer, 128))
    {
      if (mkdir(&buffer, 0x1FFu) && *__error() != 17)
      {
        v26 = __error();
        strerror(*v26);
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): mkdir %s error: %s\n", v27, v28, v29, v30, v31, v32, v33, "checkpoint_storage_make_directories");
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): no filesystem representation for base checkpoint storage directory\n", v19, v20, v21, v22, v23, v24, v25, "checkpoint_storage_make_directories");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create path for base checkpoint storage directory\n", v12, v13, v14, v15, v16, v17, v18, "checkpoint_storage_make_directories");
  }

  v34 = (a1 + 816);
  v35 = ramrod_copy_log_storage_dir_path();
  if (v35)
  {
    v43 = v35;
    *(a1 + 824) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/lastOTA/%s_%s.%s", v35, "ota", "tolerated_failures", "plist");
    v44 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/lastOTA", v43);
    if (v44)
    {
      v45 = v44;
      memset(&buffer, 0, 128);
      if (CFStringGetFileSystemRepresentation(v44, &buffer, 128))
      {
        if (mkdir(&buffer, 0x1FFu) && *__error() != 17)
        {
          v53 = __error();
          strerror(*v53);
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Error while making lastOTA dir at %s: %s\n\n", v54, v55, v56, v57, v58, v59, v60, "checkpoint_storage_make_directories");
        }
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Failed to get file system representation for lastOTA directory\n", v46, v47, v48, v49, v50, v51, v52, "checkpoint_storage_make_directories");
      }

      CFRelease(v45);
    }

    CFRelease(v43);
  }

  else
  {
    if (!*v34)
    {
      goto LABEL_30;
    }

    v61 = "restore";
    if (v10 == 2)
    {
      v61 = "ota";
    }

    *(a1 + 824) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%s_%s.%s", *v34, v61, "tolerated_failures", "plist");
  }

  if (!*v34 || (v62 = *(a1 + 824)) == 0)
  {
LABEL_30:
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): resource limitations have blocked checkpointing access to filesystem storage\n", v36, v37, v38, v39, v40, v41, v42, "checkpoint_storage_now_accessible");
    v73 = 0;
    v74 = 1;
    do
    {
      v75 = v74;
      v76 = v34[v73];
      if (v76)
      {
        CFRelease(v76);
        v34[v73] = 0;
      }

      v74 = 0;
      v73 = 1;
    }

    while ((v75 & 1) != 0);
    return;
  }

  *(a1 + 833) = 1;
  memset(__p, 0, sizeof(__p));
  if (CFStringGetFileSystemRepresentation(v62, __p, 128))
  {
    memset(&buffer, 0, sizeof(buffer));
    v63 = stat(__p, &buffer);
    if (!*(a1 + 104))
    {
      if (!v63 && remove(__p, v64))
      {
        v65 = __error();
        strerror(*v65);
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Failed to delete stale tolerated failure plist: %s\n", v66, v67, v68, v69, v70, v71, v72, "checkpoint_storage_now_accessible");
      }

      goto LABEL_47;
    }
  }

  else if (!*(a1 + 104))
  {
LABEL_47:
    sub_BCB8(v9, a1 + 2432);
    return;
  }

  if (!*(a1 + 2445) && *(a1 + 2440) >= 1)
  {
    *(a1 + 2444) = 1;
  }

  memset(v209, 0, sizeof(v209));
  if (!*(a1 + 833))
  {
    return;
  }

  v77 = ramrod_copy_log_storage_dir_path();
  if (!v77)
  {
    return;
  }

  v78 = v77;
  v79 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/lastOTA/%s_%s.%s", v77, "ota", "tolerated_failures", "plist");
  if (!v79)
  {
    v99 = v78;
LABEL_87:
    CFRelease(v99);
    return;
  }

  v80 = v79;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  *error = 0u;
  v211 = 0u;
  if (!CFStringGetFileSystemRepresentation(v79, error, 128))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): no filesystem representation for storage read path\n", v81, v82, v83, v84, v85, v86, v87, "checkpoint_filesystem_create_data_from_path");
LABEL_51:
    v98 = 0;
    goto LABEL_67;
  }

  v88 = open(error, 0);
  if (v88 == -1)
  {
    v100 = __error();
    strerror(*v100);
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to open storage read path [%s]: %s\n", v101, v102, v103, v104, v105, v106, v107, "checkpoint_filesystem_create_data_from_path");
    goto LABEL_51;
  }

  v89 = v88;
  memset(&buffer, 0, sizeof(buffer));
  if (fstat(v88, &buffer))
  {
    v90 = __error();
    strerror(*v90);
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to stat storage read path [%s]: %s\n", v91, v92, v93, v94, v95, v96, v97, "checkpoint_filesystem_create_data_from_path");
  }

  else
  {
    st_size = buffer.st_size;
    v109 = malloc(buffer.st_size);
    if (v109)
    {
      v117 = v109;
      if (st_size < 1)
      {
        v118 = 0;
      }

      else
      {
        v118 = 0;
        while (1)
        {
          v119 = read(v89, &v117[v118], st_size - v118);
          if (v119 == -1)
          {
            break;
          }

          v118 += v119;
          st_size = buffer.st_size;
          if (v118 >= buffer.st_size)
          {
            goto LABEL_61;
          }
        }

        v120 = __error();
        strerror(*v120);
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to read storage read path [%s]: %s\n", v121, v122, v123, v124, v125, v126, v127, "checkpoint_filesystem_create_data_from_path");
        st_size = buffer.st_size;
      }

LABEL_61:
      if (v118 == st_size)
      {
        v98 = CFDataCreate(kCFAllocatorDefault, v117, st_size);
        if (!v98)
        {
          v128 = __error();
          strerror(*v128);
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create data for storage read path [%s]: %s\n", v129, v130, v131, v132, v133, v134, v135, "checkpoint_filesystem_create_data_from_path");
        }
      }

      else
      {
        v98 = 0;
      }

      free(v117);
      goto LABEL_66;
    }

    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to allocate buffer for storage read path [%s]\n", v110, v111, v112, v113, v114, v115, v116, "checkpoint_filesystem_create_data_from_path");
  }

  v98 = 0;
LABEL_66:
  close(v89);
LABEL_67:
  FileSystemRepresentation = CFStringGetFileSystemRepresentation(*(a1 + 824), v209, 128);
  CFRelease(v80);
  CFRelease(v78);
  if (!v98)
  {
    return;
  }

  error[0] = 0;
  v144 = CFPropertyListCreateWithData(kCFAllocatorDefault, v98, 0, 0, error);
  if (error[0])
  {
    v145 = CFErrorCopyDescription(error[0]);
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    memset(&buffer, 0, sizeof(buffer));
    if (v145)
    {
      v153 = v145;
      CFStringGetCString(v145, &buffer, 512, 0x8000100u);
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to load tolerated failure file: %s\n", v154, v155, v156, v157, v158, v159, v160, "checkpoint_storage_load_tolerated");
      CFRelease(v153);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to load tolerated failure file\n", v146, v147, v148, v149, v150, v151, v152, "checkpoint_storage_load_tolerated");
    }

    goto LABEL_80;
  }

  if (!v144)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to load tolerated failure file (yet no error)\n", v137, v138, v139, v140, v141, v142, v143, "checkpoint_storage_load_tolerated");
LABEL_80:
    v171 = 0;
    v174 = 0;
    goto LABEL_81;
  }

  Value = CFDictionaryGetValue(v144, @"uuid");
  if (!Value)
  {
    v171 = 0;
    goto LABEL_89;
  }

  v169 = Value;
  v170 = ramrod_copy_NVRAM_variable(@"ota-uuid", 0);
  v171 = v170;
  if (!v170)
  {
LABEL_89:
    v174 = 0;
    goto LABEL_90;
  }

  BytePtr = CFDataGetBytePtr(v170);
  Length = CFDataGetLength(v171);
  v174 = CFStringCreateWithBytes(kCFAllocatorDefault, BytePtr, Length, 0x8000100u, 0);
  if (v174 && CFStringCompare(v169, v174, 0) == kCFCompareEqualTo)
  {
    CFDictionaryApplyFunction(v144, sub_C0B4, (a1 + 2432));
    *&buffer.st_dev = 0;
    CFDictionaryApplyFunction(*(a1 + 2432), sub_C6AC, &buffer);
    if (*&buffer.st_mode)
    {
      CFDictionaryApplyFunction(*(a1 + 2432), sub_C714, &buffer);
      st_dev = buffer.st_dev + *&buffer.st_mode - 1;
    }

    else
    {
      st_dev = buffer.st_dev;
    }

    *(a1 + 2440) = st_dev;
    if (*(a1 + 2444))
    {
      sub_BCB8(v9, a1 + 2432);
    }

    *(a1 + 2445) = 1;
    goto LABEL_81;
  }

LABEL_90:
  if (FileSystemRepresentation)
  {
    if (remove(v209, v162))
    {
      v176 = __error();
      strerror(*v176);
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): Failed to delete stale tolerated failure plist: %s\n", v177, v178, v179, v180, v181, v182, v183, "checkpoint_storage_load_tolerated");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): tolerated failure plist path string not set..\n", v162, v163, v164, v165, v166, v167, v168, "checkpoint_storage_load_tolerated");
  }

LABEL_81:
  if (error[0])
  {
    CFRelease(error[0]);
    error[0] = 0;
  }

  CFRelease(v98);
  if (v171)
  {
    CFRelease(v171);
  }

  if (v174)
  {
    v99 = v174;
    goto LABEL_87;
  }
}

void sub_BCB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 145))
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  [*(a1 + 136) fileSystemRepresentation];
  ramrod_log_msg("Considering saving tolerated failures: %s %s %s\n", v5, v6, v7, v8, v9, v10, v11, v4);
  if (!*(a1 + 145) || !*(a1 + 136) || !*(a2 + 12))
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create dictionary for storing tolerated failures\n", v13, v14, v15, v16, v17, v18, v19, "checkpoint_storage_save_tolerated");
    return;
  }

  v20 = Mutable;
  error = 0;
  CFDictionaryApplyFunction(*a2, sub_C768, Mutable);
  v21 = ramrod_copy_NVRAM_variable(@"ota-uuid", 0);
  if (v21)
  {
    v22 = v21;
    BytePtr = CFDataGetBytePtr(v21);
    Length = CFDataGetLength(v22);
    v25 = CFStringCreateWithBytes(kCFAllocatorDefault, BytePtr, Length, 0x8000100u, 0);
    if (v25)
    {
      v26 = v25;
      v88 = 0u;
      memset(v89, 0, 31);
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      *buffer = 0u;
      v76 = 0u;
      CFStringGetCString(v25, buffer, 255, 0x8000100u);
      CFDictionarySetValue(v20, @"uuid", v26);
      CFRelease(v26);
    }

    CFRelease(v22);
  }

  v34 = CFPropertyListCreateData(kCFAllocatorDefault, v20, kCFPropertyListXMLFormat_v1_0, 0, &error);
  if (error)
  {
    v35 = CFErrorCopyDescription(error);
    memset(v89, 0, sizeof(v89));
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
    *buffer = 0u;
    v76 = 0u;
    if (v35)
    {
      v43 = v35;
      CFStringGetCString(v35, buffer, 512, 0x8000100u);
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create saved tolerated failure data: %s\n", v44, v45, v46, v47, v48, v49, v50, "checkpoint_storage_save_tolerated");
      CFRelease(v43);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create saved tolerated failure data\n", v36, v37, v38, v39, v40, v41, v42, "checkpoint_storage_save_tolerated");
    }

    goto LABEL_26;
  }

  if (!v34)
  {
    v73 = "checkpoint_storage_save_tolerated";
    v56 = "CHECKPOINT_INTERNAL_ERROR(%s): unable to create saved tolerated failure data (yet no error)\n";
LABEL_25:
    ramrod_log_msg(v56, v27, v28, v29, v30, v31, v32, v33, v73);
    goto LABEL_26;
  }

  v51 = *(a1 + 136);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  *buffer = 0u;
  v76 = 0u;
  if (v51 && CFStringGetFileSystemRepresentation(v51, buffer, 128))
  {
    LOBYTE(v73) = -92;
    v52 = open(buffer, 1538);
    if (v52 == -1)
    {
      v57 = __error();
      strerror(*v57);
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to open storage write path [%s]: %s\n", v58, v59, v60, v61, v62, v63, v64, "checkpoint_filesystem_write_data_to_path");
      goto LABEL_26;
    }

    v53 = v52;
    v54 = CFDataGetLength(v34);
    v55 = CFDataGetBytePtr(v34);
    if (write(v53, v55, v54) != v54)
    {
      v65 = __error();
      strerror(*v65);
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed on write of %zd bytes to storage path [%s]: %s\n", v66, v67, v68, v69, v70, v71, v72, "checkpoint_filesystem_write_data_to_path");
      close(v53);
      goto LABEL_26;
    }

    close(v53);
    *(a2 + 12) = 0;
    v56 = "Saved tolerated steps\n";
    goto LABEL_25;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): no filesystem representation for storage write path\n", v27, v28, v29, v30, v31, v32, v33, "checkpoint_filesystem_write_data_to_path");
LABEL_26:
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  if (v34)
  {
    CFRelease(v34);
  }

  CFRelease(v20);
}

void sub_C0B4(const __CFString *a1, const void *a2, uint64_t a3)
{
  *buffer = 0;
  v41 = 0;
  v42 = 0;
  CFStringGetCString(a1, buffer, 24, 0x8000100u);
  v5 = strtoll(buffer, 0, 16);
  if (!a2 || (v13 = v5, v14 = CFGetTypeID(a2), v14 != CFDictionaryGetTypeID()))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid format for loaded tolerated failure - entry discarded\n", v6, v7, v8, v9, v10, v11, v12, "_checkpoint_iterate_tolerated_load");
    return;
  }

  Value = CFDictionaryGetValue(a2, @"StepName");
  v16 = sub_C324(a2, @"InitialAttempted");
  if (!Value || (v24 = v16, v25 = CFGetTypeID(Value), v25 != CFStringGetTypeID()) || !v24)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid information for loaded tolerated step ID:0x%llX - entry discarded\n", v17, v18, v19, v20, v21, v22, v23, "_checkpoint_iterate_tolerated_load");
    return;
  }

  v26 = sub_C384(a2, @"InitialFailureNumber");
  v27 = sub_C384(a2, @"InitialResult");
  v28 = CFDictionaryGetValue(a2, @"InitialError");
  v29 = v28;
  if (v28)
  {
    v30 = CFGetTypeID(v28);
    if (v30 == CFStringGetTypeID())
    {
      CFRetain(v29);
    }

    else
    {
      v29 = 0;
    }
  }

  v31 = sub_C324(a2, @"InitialSkipped");
  v32 = sub_B060(*a3, v13);
  if (v32)
  {
    v33 = v32;
    *(v32 + 8) = 0;
    *(v32 + 3) = v26;
    *(v32 + 4) = v27;
    v34 = *(v32 + 3);
    if (v34)
    {
      CFRelease(v34);
      *(v33 + 3) = 0;
    }

    v35 = *(v33 + 4);
    if (v35)
    {
      CFRelease(v35);
      *(v33 + 4) = 0;
    }

    if (v29)
    {
      *(v33 + 4) = v29;
      CFRetain(v29);
    }

    *(v33 + 40) = v31;
    *(a3 + 12) = 1;
  }

  else
  {
    v36 = sub_C414(*a3, v13);
    if (v36)
    {
      v37 = v36;
      *v36 = Value;
      v38 = v36 + 1;
      CFRetain(Value);
      sub_C544(v38, v26, v27, 0);
      if (!v29)
      {
        return;
      }

      v39 = v37[4];
      if (v39)
      {
        CFRelease(v39);
      }

      v37[4] = v29;
      CFRetain(v29);
LABEL_28:
      CFRelease(v29);
      return;
    }
  }

  if (v29)
  {
    goto LABEL_28;
  }
}

uint64_t sub_C324(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFBooleanGetTypeID())
  {
    return 0;
  }

  return CFBooleanGetValue(v3);
}

uint64_t sub_C384(const __CFDictionary *a1, const void *a2)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFNumberGetTypeID()))
  {
    if (!CFNumberGetValue(v10, kCFNumberIntType, &valuePtr))
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): number that is not an int\n", v12, v13, v14, v15, v16, v17, v18, "_checkpoint_iterate_tolerated_load_int");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): value that is not a number\n", v3, v4, v5, v6, v7, v8, v9, "_checkpoint_iterate_tolerated_load_int");
  }

  return valuePtr;
}

void *sub_C414(__CFDictionary *a1, uint64_t a2)
{
  valuePtr = a2;
  v10 = calloc(1uLL, 0x58uLL);
  if (v10)
  {
    pthread_once(&stru_1C45E0, sub_C5B4);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v19 = Instance;
      *(Instance + 16) = v10;
      v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
      if (v20)
      {
        v28 = v20;
        CFDictionarySetValue(a1, v20, v19);
        CFRelease(v28);
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create step ID number for new tolerated\n", v21, v22, v23, v24, v25, v26, v27, "checkpoint_tolerated_new");
      }

      CFRelease(v19);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create tolerated ref\n", v12, v13, v14, v15, v16, v17, v18, "checkpoint_tolerated_new");
      free(v10);
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to alloc tolerated\n", v3, v4, v5, v6, v7, v8, v9, "checkpoint_tolerated_new");
  }

  return v10;
}

_DWORD *sub_C544(_DWORD *result, int a2, int a3, CFTypeRef cf)
{
  *result = 1;
  result[1] = a2;
  result[2] = a3;
  if (cf)
  {
    v5 = result;
    v6 = *(result + 2);
    if (v6)
    {
      CFRelease(v6);
      v5[2] = 0;
    }

    v7 = v5[3];
    if (v7)
    {
      CFRelease(v7);
      v5[3] = 0;
    }

    v5[2] = cf;

    return CFRetain(cf);
  }

  return result;
}

uint64_t sub_C5B4()
{
  result = _CFRuntimeRegisterClass();
  qword_1C64D0 = result;
  return result;
}

void sub_C5DC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
    }

    *(a1 + 16) = 0;
  }
}

CFStringRef sub_C614(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"tolerated=%p", result->data);
  }

  return result;
}

CFStringRef sub_C660(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"tolerated=%p", result->data);
  }

  return result;
}

void sub_C6AC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v8 + 12);
    if (v9 > *a3)
    {
      *a3 = v9;
    }

    v10 = *(v8 + 52);
    if (v10 > a3[1])
    {
      a3[1] = v10;
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to access tolerated failure entry from tolerated reference\n", a2, a3, a4, a5, a6, a7, a8, "_checkpoint_iterate_tolerated_failure_max");
  }
}

void sub_C714(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v8 + 52);
    if (v9)
    {
      *(v8 + 52) = *a3 + v9;
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to access tolerated failure entry from tolerated reference\n", a2, a3, a4, a5, a6, a7, a8, "_checkpoint_iterate_tolerated_failure_adjust");
  }
}

void sub_C768(const __CFNumber *a1, uint64_t a2, __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  if (v8)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v19 = Mutable;
      CFDictionarySetValue(Mutable, @"StepName", *v8);
      if (*(v8 + 8))
      {
        v20 = kCFBooleanTrue;
      }

      else
      {
        v20 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v19, @"InitialAttempted", v20);
      sub_C9BC(v19, @"InitialFailureNumber", *(v8 + 12));
      sub_C9BC(v19, @"InitialResult", *(v8 + 16));
      sub_CA5C(v19, @"InitialError", v8 + 8);
      if (*(v8 + 40))
      {
        v21 = kCFBooleanTrue;
      }

      else
      {
        v21 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v19, @"InitialSkipped", v21);
      if (*(v8 + 48))
      {
        CFDictionarySetValue(v19, @"RetryAttempted", kCFBooleanTrue);
        sub_C9BC(v19, @"RetryFailureNumber", *(v8 + 52));
        sub_C9BC(v19, @"RetryResult", *(v8 + 56));
        sub_CA5C(v19, @"RetryError", v8 + 48);
        if (*(v8 + 80))
        {
          v22 = kCFBooleanTrue;
        }

        else
        {
          v22 = kCFBooleanFalse;
        }

        CFDictionarySetValue(v19, @"RetrySkipped", v22);
      }

      valuePtr = 0;
      if (CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr))
      {
        v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"0x%llx", valuePtr);
        if (v30)
        {
          v38 = v30;
          CFDictionarySetValue(a3, v30, v19);
          CFRelease(v38);
        }

        else
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): step ID cannot be converted to hex string: entry not stored\n", v31, v32, v33, v34, v35, v36, v37, "_checkpoint_iterate_tolerated_store_entry");
        }
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): step ID cannot be converted to int64: entry not stored\n", v23, v24, v25, v26, v27, v28, v29, "_checkpoint_iterate_tolerated_store_entry");
      }

      CFRelease(v19);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to create tolerated failure entry\n", v12, v13, v14, v15, v16, v17, v18, "_checkpoint_iterate_tolerated_store");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to access tolerated failure entry from tolerated reference\n", a2, a3, a4, a5, a6, a7, a8, "_checkpoint_iterate_tolerated_store");
  }
}

void sub_C9BC(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v5)
  {
    v13 = v5;
    CFDictionarySetValue(a1, a2, @"test_int_value");
    CFDictionarySetValue(a1, a2, v13);
    CFRelease(v13);
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): value cannot be converted to number ref: key/value not stored\n", v6, v7, v8, v9, v10, v11, v12, "_checkpoint_iterate_tolerated_store_int");
  }
}

void sub_CA5C(CFMutableDictionaryRef theDict, void *key, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 16))
    {
      v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", *(a3 + 16));
      if (v5)
      {
        v13 = v5;
        CFDictionarySetValue(theDict, key, v5);

        CFRelease(v13);
      }

      else
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error cannot be converted to string: key/value not stored\n", v6, v7, v8, v9, v10, v11, v12, "_checkpoint_iterate_tolerated_store_error");
      }
    }

    else
    {
      v14 = *(a3 + 24);
      if (v14)
      {

        CFDictionarySetValue(theDict, key, v14);
      }
    }
  }
}

const void **sub_CB48(uint64_t a1, unsigned int *a2, int a3, const void *a4)
{
  v8 = sub_B060(*(a1 + 2432), *a2);
  v15 = (*(a1 + 2440) + 1);
  *(a1 + 2440) = v15;
  if (v8)
  {
    v16 = v8;
    if (*(a1 + 104))
    {
      v17 = (v8 + 48);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed tolerated step (%s) on initial attempt when already tracking tolerated failure for step\n", v15, v9, v10, v11, v12, v13, v14, "checkpoint_tolerated_set_failed_entry");
      if (*v16)
      {
        CFRelease(*v16);
        *v16 = 0;
      }

      v21 = *(v16 + 3);
      if (v21)
      {
        CFRelease(v21);
        *(v16 + 3) = 0;
      }

      v22 = *(v16 + 4);
      if (v22)
      {
        CFRelease(v22);
        *(v16 + 4) = 0;
      }

      v23 = *(v16 + 8);
      if (v23)
      {
        CFRelease(v23);
        *(v16 + 8) = 0;
      }

      v24 = *(v16 + 9);
      if (v24)
      {
        CFRelease(v24);
      }

      *(v16 + 10) = 0;
      *(v16 + 3) = 0u;
      *(v16 + 4) = 0u;
      *(v16 + 1) = 0u;
      *(v16 + 2) = 0u;
      *v16 = 0u;
      sub_CCB0(v16, *(a2 + 1));
      LODWORD(v15) = *(a1 + 2440);
      v17 = (v16 + 8);
    }
  }

  else
  {
    result = sub_C414(*(a1 + 2432), *a2);
    if (!result)
    {
      goto LABEL_20;
    }

    v19 = result;
    sub_CCB0(result, *(a2 + 1));
    LODWORD(v15) = *(a1 + 2440);
    v20 = 6;
    if (!*(a1 + 104))
    {
      v20 = 1;
    }

    v17 = &v19[v20];
  }

  result = sub_C544(v17, v15, a3, a4);
  *(a1 + 2444) = 1;
LABEL_20:
  if (a3)
  {
    if (!*(a1 + 2446))
    {
      *(a1 + 2446) = 1;
    }
  }

  return result;
}

CFStringRef sub_CCB0(const void **a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
    *a1 = 0;
  }

  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s", a2);
  *a1 = result;
  return result;
}

char *sub_CD10(char *a1, char a2, const __CFString *a3, _BYTE *a4)
{
  if (a3)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(a3, buffer, 1024, 0x8000100u);
    if (*a4)
    {
      v14 = "|%s(%s)";
    }

    else
    {
      v14 = "%s(%s)";
    }

    a1 = sub_90E4(a1, v14, v8, v9, v10, v11, v12, v13, a2);
    *a4 = 1;
  }

  return a1;
}

void sub_CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 2450) && sub_2668(a1, 0, 0, a4, a5, a6, a7, a8))
  {
    if (!*(a1 + 1168))
    {
      goto LABEL_23;
    }

    bzero(__s, 0x400uLL);
    bzero(v27, 0x400uLL);
    *(a1 + 2452) = 0;
    *(a1 + 2464) = 0;
    __strlcpy_chk();
    v9 = strlen(__s);
    CFStringGetCString(*(a1 + 1168), &__s[v9], 1024 - v9, 0x8000100u);
    __strlcpy_chk();
    v10 = strlen(v27);
    CFStringGetCString(*(a1 + 1168), &v27[v10], 1024 - v10, 0x8000100u);
    v11 = 0;
    while (1)
    {
      v12 = off_1A8A18[v11];
      if (!strncasecmp(__s, v12, 0x400uLL))
      {
        *(a1 + 2452) = v11;
        goto LABEL_11;
      }

      if (!strncasecmp(v27, v12, 0x400uLL))
      {
        break;
      }

      if (++v11 == 34)
      {
        LODWORD(v11) = *(a1 + 2452);
        goto LABEL_11;
      }
    }

    *(a1 + 2452) = v11;
    *(a1 + 2451) = 1;
LABEL_11:
    if (!v11)
    {
      goto LABEL_23;
    }

    v19 = *(a1 + 1192);
    if (v19)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v19, @",");
      *(a1 + 2464) = ArrayBySeparatingStrings;
      if (ArrayBySeparatingStrings)
      {
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        if (Count >= 1)
        {
          v22 = Count;
          for (i = 0; i != v22; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2464), i);
            CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
          }
        }

        v25 = *(a1 + 1176);
        if (v25)
        {
          *(a1 + 2456) = CFStringGetIntValue(v25);
        }

        v26 = *(a1 + 1184);
        if (v26)
        {
          *(a1 + 2460) = CFStringGetIntValue(v26);
        }

        goto LABEL_23;
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator command without stepName\n", 0, v13, v14, v15, v16, v17, v18, "checkpoint_simulator_configure");
    }

    *(a1 + 2452) = 0;
LABEL_23:
    *(a1 + 2450) = 1;
  }
}

void *sub_D018()
{
  v5 = 0;
  v0 = &v5;
  v1 = 0x100000;
  do
  {
    v2 = malloc(v1);
    *v0 = v2;
    if (v2)
    {
      bzero(v2, v1);
      v0 = *v0;
    }

    else
    {
      v1 >>= 1;
    }
  }

  while (v1 > 4095);
  result = v5;
  if (v5)
  {
    do
    {
      v4 = *result;
      free(result);
      result = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t unit_test_reboot(uint64_t a1, uint64_t a2, CFStringRef *a3, BOOL *a4)
{
  v5 = a2;
  if ((a2 - 3) > 0xFFFFFFFD)
  {
    result = (qword_1AD5A8[2 * a2 + 1])(a2, qword_1AD5A8[2 * a2], a3);
  }

  else
  {
    *a3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"reboot test #%d: invalid", a2);
    result = 1;
  }

  *a4 = v5 < 1;
  return result;
}

uint64_t sub_D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v17 = off_1A8E88;
  ramrod_log_msg("\nUNIT TEST(%s) : {test #%d: %s} triggering reboot\n", a2, a3, a4, a5, a6, a7, a8, "utest_reboot_device");
  v15 = ramrod_execute_command(v17);
  if (v15)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : {test #%d: %s} unable to execute reboot command: %d\n", v8, v9, v10, v11, v12, v13, v14, "utest_reboot_device");
  }

  return v15;
}

uint64_t ramrod_log_msg_to_fd(uint64_t a1, uint64_t a2, int __fd)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = 0;
    while (1)
    {
      v8 = write(__fd, (a1 + v7), a2 - v7);
      if (v8 == -1)
      {
        break;
      }

      v7 += v8;
      if (v7 == a2)
      {
        return 0;
      }
    }

    return *__error();
  }

  return result;
}

uint64_t ramrod_write_full_log_buffer_to_fd(int __fd)
{
  v1 = qword_1C64E8;
  if (qword_1C64E0)
  {
    v2 = qword_1C64E8 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2 && ((v4 = qword_1C64F0, (v5 = (qword_1C64F0 - qword_1C64E0) & 0xFFFFFLL) != 0) && write(__fd, qword_1C64E0, v5) == -1 || v1 != v4 && write(__fd, qword_1C64F0, v1 - v4) == -1))
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t ramrod_add_log_fd(int a1)
{
  valuePtr = a1;
  memset(&v10, 0, sizeof(v10));
  pthread_mutex_lock(&stru_1C45F0);
  pthread_mutex_lock(&stru_1C4630);
  if (fstat(a1, &v10) || (v10.st_mode & 0x80000000) == 0)
  {
    v2 = *(&xmmword_1C64F8 + 1);
    if (!*(&xmmword_1C64F8 + 1))
    {
      Mutable = CFSetCreateMutable(kCFAllocatorDefault, 1, &kCFTypeSetCallBacks);
      *(&xmmword_1C64F8 + 1) = Mutable;
      if (!Mutable)
      {
        v4 = __stderrp;
        v5 = "failed to allocate logging file descriptors";
        v6 = 43;
        goto LABEL_13;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v2 = xmmword_1C64F8;
    if (!xmmword_1C64F8)
    {
      Mutable = CFSetCreateMutable(kCFAllocatorDefault, 1, &kCFTypeSetCallBacks);
      *&xmmword_1C64F8 = Mutable;
      if (!Mutable)
      {
        v4 = __stderrp;
        v5 = "failed to allocate logging file descriptors for regular files";
        v6 = 61;
LABEL_13:
        fwrite(v5, v6, 1uLL, v4);
        v7 = 0;
        goto LABEL_14;
      }

LABEL_8:
      v2 = Mutable;
    }
  }

  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v7)
  {
    ramrod_write_full_log_buffer_to_fd(valuePtr);
    CFSetAddValue(v2, v7);
    v8 = 0;
    goto LABEL_15;
  }

  fwrite("failed to allocate file descriptor number", 0x29uLL, 1uLL, __stderrp);
LABEL_14:
  v8 = 0xFFFFFFFFLL;
LABEL_15:
  pthread_mutex_unlock(&stru_1C4630);
  pthread_mutex_unlock(&stru_1C45F0);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

uint64_t ramrod_remove_log_fd(int a1)
{
  pthread_mutex_lock(&stru_1C4630);
  v2 = sub_D7A0(a1);
  pthread_mutex_unlock(&stru_1C4630);
  return v2;
}

uint64_t sub_D7A0(int a1)
{
  valuePtr = a1;
  memset(&v16, 0, sizeof(v16));
  v1 = fstat(a1, &v16);
  v2 = v16.st_mode <= -1 && v1 == 0;
  v3 = &qword_1C6500;
  if (v2)
  {
    v3 = &qword_1C64F8;
  }

  v4 = *v3;
  if (!*v3)
  {
    v12 = __stderrp;
    v13 = "can't remove logging fd since none were added";
    v14 = 45;
LABEL_13:
    fwrite(v13, v14, 1uLL, v12);
    return 0xFFFFFFFFLL;
  }

  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    v12 = __stderrp;
    v13 = "failed to convert fd to number";
    v14 = 30;
    goto LABEL_13;
  }

  v6 = v5;
  CFSetRemoveValue(v4, v5);
  if (close(valuePtr))
  {
    v7 = __error();
    v8 = *v7;
    v9 = __stderrp;
    v10 = valuePtr;
    v11 = strerror(*v7);
    fprintf(v9, "failed to close file descriptor '%d', error:%s", v10, v11);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

uint64_t ramrod_log_msg_to_all_fds(uint64_t a1, uint64_t a2)
{
  context = 0u;
  *theArray = 0u;
  valuePtr = -1;
  pthread_mutex_lock(&stru_1C4630);
  if (a1 && xmmword_1C64F8 != 0)
  {
    *&context = a1;
    *(&context + 1) = a2;
    theArray[0] = 0;
    LOBYTE(theArray[1]) = 0;
    if (*(&xmmword_1C64F8 + 1))
    {
      CFSetApplyFunction(*(&xmmword_1C64F8 + 1), sub_DA40, &context);
    }

    qword_1C6508 += a2;
    if (qword_1C6508)
    {
      LOBYTE(theArray[1]) = 1;
      qword_1C6508 = 0;
    }

    if (xmmword_1C64F8)
    {
      CFSetApplyFunction(xmmword_1C64F8, sub_DA40, &context);
    }

    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
          {
            sub_D7A0(valuePtr);
          }

          else
          {
            fwrite("Failed to convert CFNumberRef into int value\n", 0x2DuLL, 1uLL, __stderrp);
          }
        }
      }

      CFRelease(theArray[0]);
    }
  }

  pthread_mutex_unlock(&stru_1C4630);
  return 0;
}

void sub_DA40(const void *a1, uint64_t a2)
{
  valuePtr = -1;
  if (a1)
  {
    if (a2)
    {
      if (*a2)
      {
        if (CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
        {
          if (ramrod_log_msg_to_fd(*a2, *(a2 + 8), valuePtr))
          {
            fprintf(__stderrp, "Removing file descriptor %d since it failed to be written to.\n", valuePtr);
            Mutable = *(a2 + 16);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
              *(a2 + 16) = Mutable;
            }

            CFArrayAppendValue(Mutable, a1);
          }

          else if (*(a2 + 24) == 1)
          {
            fsync(valuePtr);
          }
        }

        else
        {
          fwrite("Failed to convert num to int\n", 0x1DuLL, 1uLL, __stderrp);
        }
      }

      return;
    }

    v5 = __stderrp;
    v6 = "Missing logging context.\n";
    v7 = 25;
  }

  else
  {
    v5 = __stderrp;
    v6 = "NULL fd num in fd set, weird.\n";
    v7 = 30;
  }

  fwrite(v6, v7, 1uLL, v5);
}

_BYTE *ramrod_copy_log_buffer()
{
  pthread_mutex_lock(&stru_1C45F0);
  v0 = qword_1C64F0;
  if (qword_1C64F0)
  {
    v1 = malloc(0x100000uLL);
    if (v1)
    {
      v2 = qword_1C64E8;
      v3 = (v0 - qword_1C64E0) & 0xFFFFF;
      if (((v0 - qword_1C64E0) & 0xFFFFF) != 0)
      {
        __memcpy_chk();
      }

      if (v2 != v0)
      {
        memcpy(&v1[v3], v0, v2 - v0);
      }

      v1[v3 + v2 - v0] = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  pthread_mutex_unlock(&stru_1C45F0);
  return v1;
}

void sub_DC90(int a1, const char *a2, va_list a3)
{
  if (byte_1C4670 == 1)
  {
    if (qword_1C6520 != -1)
    {
      sub_D5918();
    }

    if (qword_1C6518)
    {
      pthread_mutex_lock(&stru_1C4678);
      last = 0;
      v6 = asl_match(qword_1C6518, 0, &last, qword_1C6528, 0x100uLL, 0, 1);
      if (v6)
      {
        v7 = v6;
        do
        {
          qword_1C6528 = last + 1;
          while (1)
          {
            v8 = asl_next(v7);
            if (!v8)
            {
              break;
            }

            v9 = asl_format(v8, "std", "lcl", 1u);
            if (v9)
            {
              v16 = v9;
              sub_E18C(a1, "SYSLOG: %s", v10, v11, v12, v13, v14, v15, v9);
              free(v16);
            }
          }

          asl_close(v7);
          v7 = asl_match(qword_1C6518, 0, &last, qword_1C6528, 0x100uLL, 0, 1);
        }

        while (v7);
      }

      pthread_mutex_unlock(&stru_1C4678);
    }
  }

  sub_DFA0(a1, a2, a3);
}

void ramrod_log_msg_cf(CFStringRef format, ...)
{
  va_start(va, format);
  v1 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
  if (!v1)
  {
    ramrod_log_msg("(Failed to format log message)\n", v2, v3, v4, v5, v6, v7, v8, v30);
    return;
  }

  v9 = v1;
  CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
  if (CStringPtr)
  {
    v30 = CStringPtr;
    v18 = "%s";
  }

  else
  {
    Length = CFStringGetLength(v9);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v21 = malloc(MaximumSizeForEncoding + 1);
    if (v21)
    {
      v22 = v21;
      if (CFStringGetCString(v9, v21, MaximumSizeForEncoding + 1, 0x8000100u))
      {
        ramrod_log_msg("%s", v23, v24, v25, v26, v27, v28, v29, v22);
      }

      else
      {
        ramrod_log_msg("(Failed to alloc and convert log message)\n", v23, v24, v25, v26, v27, v28, v29, v30);
      }

      free(v22);
      goto LABEL_12;
    }

    v18 = "(Failed to alloc and convert log message)\n";
  }

  ramrod_log_msg(v18, v11, v12, v13, v14, v15, v16, v17, v30);
LABEL_12:
  CFRelease(v9);
}

void sub_DFA0(int a1, const char *a2, va_list a3)
{
  __s = 0;
  if (vasprintf(&__s, a2, a3) != -1)
  {
    pthread_mutex_lock(&stru_1C45F0);
    if (a1 == 1)
    {
      fputs(__s, __stdoutp);
      if (off_1C6510)
      {
        off_1C6510(__s);
      }
    }

    v4 = strlen(__s);
    ramrod_log_msg_to_all_fds(__s, v4);
    if ((byte_1C4671 & 1) == 0)
    {
      goto LABEL_23;
    }

    v5 = qword_1C64F0;
    if (!qword_1C64F0)
    {
      v5 = malloc(0x100000uLL);
      qword_1C64F0 = v5;
      if (!v5)
      {
        fprintf(__stderrp, "unable to allocate %lu bytes for log buffer\n", 0x100000);
LABEL_23:
        pthread_mutex_unlock(&stru_1C45F0);
        goto LABEL_24;
      }

      qword_1C64E0 = v5;
      qword_1C64E8 = v5;
    }

    v6 = *__s;
    if (*__s)
    {
      v7 = v5 + 0x100000;
      v8 = qword_1C64E8;
      v9 = qword_1C64E0;
      v10 = __s + 1;
      do
      {
        *v8 = v6;
        if (v8 + 1 == v7)
        {
          v8 = v5;
        }

        else
        {
          ++v8;
        }

        qword_1C64E8 = v8;
        if (v9 == v8)
        {
          if ((v9 + 1) == v7)
          {
            v9 = v5;
          }

          else
          {
            ++v9;
          }

          qword_1C64E0 = v9;
        }

        v11 = *v10++;
        v6 = v11;
      }

      while (v11);
    }

    goto LABEL_23;
  }

  fwrite("unable to allocate storage for log message\n", 0x2BuLL, 1uLL, __stderrp);
LABEL_24:
  free(__s);
}

void sub_E11C(id a1)
{
  v1 = asl_open_path(0, 0);
  if (v1)
  {
    asl_close(v1);
    v8 = "asl_open_path() succeeded - syslogd polling not needed";
  }

  else
  {
    v9 = asl_open(0, 0, 4u);
    if (v9)
    {
      qword_1C6518 = v9;
      return;
    }

    v8 = "asl_open() returned NULL - disabling syslogd polling";
  }

  sub_E18C(1, v8, v2, v3, v4, v5, v6, v7, v11);
}

uint64_t sub_E434(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_D59D0(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_EAB4()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_EC5C(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"low-level-fw-device-info", 0, 0);
  v2 = CFProperty;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return v2 != 0;
}

CFTypeRef ramrod_copy_value_from_IONode(char *path, const __CFString *a2)
{
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, a2, kCFAllocatorDefault, 0);
  IOObjectRelease(v4);
  if (CFProperty)
  {
    v6 = CFGetTypeID(CFProperty);
    if (v6 != CFDataGetTypeID())
    {
      CFStringGetCStringPtr(a2, 0x8000100u);
      ramrod_log_msg("%s: Got a non-CFData return value from IORegistryEntryCreateCFProperty for property %s\n", v7, v8, v9, v10, v11, v12, v13, "ramrod_copy_value_from_IONode");
      CFRelease(CFProperty);
      return 0;
    }
  }

  return CFProperty;
}

CFStringRef ramrod_copy_crypto_hash_method()
{
  v0 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"crypto-hash-method");
  if (v0)
  {
    v8 = v0;
    v9 = CFGetTypeID(v0);
    if (v9 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v8);
      v18 = CFStringCreateWithCString(kCFAllocatorDefault, BytePtr, 0x8000100u);
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v10, v11, v12, v13, v14, v15, v16, "ramrod_copy_crypto_hash_method");
      v18 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v1, v2, v3, v4, v5, v6, v7, "ramrod_copy_crypto_hash_method");
    return 0;
  }

  return v18;
}

CFNumberRef ramrod_copy_ecid()
{
  valuePtr = 0;
  v0 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"unique-chip-id");
  if (v0)
  {
    v8 = v0;
    v9 = CFGetTypeID(v0);
    if (v9 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v8);
      v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v10, v11, v12, v13, v14, v15, v16, "ramrod_copy_ecid");
      v17 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v1, v2, v3, v4, v5, v6, v7, "ramrod_copy_ecid");
    return 0;
  }

  return v17;
}

CFNumberRef ramrod_copy_board_id()
{
  valuePtr = 0;
  v0 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"board-id");
  if (v0)
  {
    v8 = v0;
    v9 = CFGetTypeID(v0);
    if (v9 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v8);
      v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v10, v11, v12, v13, v14, v15, v16, "ramrod_copy_board_id");
      v17 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v1, v2, v3, v4, v5, v6, v7, "ramrod_copy_board_id");
    return 0;
  }

  return v17;
}

CFNumberRef ramrod_copy_chip_id()
{
  valuePtr = 0;
  v0 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"chip-id");
  if (v0)
  {
    v8 = v0;
    v9 = CFGetTypeID(v0);
    if (v9 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v8);
      v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v10, v11, v12, v13, v14, v15, v16, "ramrod_copy_chip_id");
      v17 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v1, v2, v3, v4, v5, v6, v7, "ramrod_copy_chip_id");
    return 0;
  }

  return v17;
}

CFBooleanRef ramrod_get_certificate_production_status()
{
  v0 = kCFBooleanTrue;
  v1 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"certificate-production-status");
  if (v1)
  {
    v9 = v1;
    v10 = CFGetTypeID(v1);
    if (v10 == CFDataGetTypeID())
    {
      if (!*CFDataGetBytePtr(v9))
      {
        v0 = kCFBooleanFalse;
      }
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_get_certificate_production_status");
    }

    CFRelease(v9);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v2, v3, v4, v5, v6, v7, v8, "ramrod_get_certificate_production_status");
  }

  return v0;
}

CFBooleanRef ramrod_get_certificate_security_mode()
{
  v0 = kCFBooleanFalse;
  v1 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"certificate-security-mode");
  if (v1)
  {
    v9 = v1;
    v10 = CFGetTypeID(v1);
    if (v10 == CFDataGetTypeID())
    {
      if (*CFDataGetBytePtr(v9))
      {
        v0 = kCFBooleanTrue;
      }
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_get_certificate_security_mode");
    }

    CFRelease(v9);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v2, v3, v4, v5, v6, v7, v8, "ramrod_get_certificate_security_mode");
  }

  return v0;
}

CFBooleanRef ramrod_get_effective_production_status_ap()
{
  v0 = kCFBooleanFalse;
  v1 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"effective-production-status-ap");
  if (v1)
  {
    v9 = v1;
    v10 = CFGetTypeID(v1);
    if (v10 == CFDataGetTypeID())
    {
      if (*CFDataGetBytePtr(v9))
      {
        v0 = kCFBooleanTrue;
      }
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_get_effective_production_status_ap");
    }

    CFRelease(v9);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v2, v3, v4, v5, v6, v7, v8, "ramrod_get_effective_production_status_ap");
  }

  return v0;
}