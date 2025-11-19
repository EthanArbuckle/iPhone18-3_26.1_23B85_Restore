@interface LibLogRedirect
@end

@implementation LibLogRedirect

void __LibLogRedirect_OSLogHook_block_invoke(uint64_t a1, int a2, int *a3)
{
  mach_get_times();
  if (LibLogRedirect_OSLogHook_prevLogHook)
  {
    (*(LibLogRedirect_OSLogHook_prevLogHook + 16))();
  }

  v6 = hookMode;
  if ((hookMode & 1) == 0)
  {
    return;
  }

  if ((hookMode & 0x200) != 0 || ((v7 = *a3, *(a3 + 16)) || *(a3 + 17) || (v19 = *(a3 + 4)) == 0 ? (v8 = 0) : (v8 = strstr(v19, "/System/Library/Frameworks/Foundation.framework") != 0), (a2 & 0xFE) == 0x10 || (v7 & 0xE0000) == 0x20000 || v8))
  {
LABEL_16:
    if (a2 == 17 && (v6 & 0x400) == 0)
    {
      if ((v12 = *(a3 + 16), v13 = *(a3 + 17), v14 = *(a3 + 11), v12) && !strcmp(v12, "com.apple.runtime-issues") || v13 && !strcmp(v13, "RuntimeIssues"))
      {
        if (v14 && strstr(v14, "xcode:text-backtrace"))
        {
          return;
        }
      }
    }

LABEL_24:
    v15 = *(a1 + 32);
    if (!HookValidateParamsBuffersOnly(v15) || !*(v15 + 48) || !*(v15 + 56) || (*(v15 + 64) & 0x80000000) != 0 || (pthread_getspecific(logRedirectThreadLockFlagsKey) & 8) != 0)
    {
      return;
    }

    v16 = os_log_copy_message_string();
    v17 = pthread_getspecific(logRedirectThreadLockFlagsKey);
    if ((v17 & 2) != 0)
    {
      v18 = 12;
    }

    else
    {
      os_unfair_lock_lock(&logRedirectLock);
      v18 = 14;
    }

    pthread_setspecific(logRedirectThreadLockFlagsKey, (v18 | v17));
    v20 = HookHandleLogMessage_lastOutputSuccessful;
    HookHandleLogMessage_lastOutputSuccessful = 0;
    v26 = HookBufferAppend((v15 + 16), *(v15 + 56), "%c %llx ", v21, v22, v23, v24, v25, 76);
    ++HookHandleLogMessage_logSequenceNum;
    if (!v26)
    {
      v32 = *__error();
      v33 = "Failed to update flags for log message";
LABEL_142:
      v34 = v15;
      goto LABEL_143;
    }

    if (!v16)
    {
      v33 = "Failed to copy log message content";
      v34 = v15;
      v32 = 94;
LABEL_143:
      HookWriteError(v34, v32, v33);
      goto LABEL_144;
    }

    v119 = v26;
    v35 = v20 ^ 1;
    if ((*(v15 + 68) & 1) == 0)
    {
      v36 = *(a3 + 5);
      if (!v36)
      {
        v36 = 0;
        *(a3 + 5) = 0;
        a3[12] = 0;
      }

      v122 = v36;
      memset(&v123, 0, sizeof(v123));
      localtime_r(&v122, &v123);
      tm_isdst = v123.tm_isdst;
      v38 = ((v123.tm_gmtoff * 0x7777777777777777) >> 64) - v123.tm_gmtoff;
      a3[14] = (v38 >> 5) + (v38 >> 63) + 60 * v123.tm_isdst;
      a3[15] = tm_isdst;
    }

    v121 = hookMode;
    v118 = a3[12];
    v39 = HookBufferAppend((v15 + 32), 0, "{t:%ld.%06d", v27, v28, v29, v30, v31, *(a3 + 5));
    if (!v39)
    {
      goto LABEL_141;
    }

    v45 = v39;
    v120 = v35 | ((v121 & 0x100) >> 8);
    if (v120)
    {
      v46 = a3[14];
    }

    else
    {
      v46 = a3[14];
      if (HookBufferFillMetadata_last_0 == v46)
      {
        goto LABEL_51;
      }
    }

    v47 = HookBufferAppend((v15 + 32), v39, ",tz:%d", v40, v41, v42, v43, v44, v46);
    if (!v47)
    {
      goto LABEL_141;
    }

    v45 = v47;
    if (v121 & 0x100) != 0 || (HookBufferFillMetadata_last_0 = a3[14], (v120))
    {
      v48 = a3[15];
LABEL_52:
      v49 = HookBufferAppend((v15 + 32), v45, ",tzDST:%d", v40, v41, v42, v43, v44, v48);
      if (!v49)
      {
        goto LABEL_141;
      }

      v45 = v49;
      if (v121 & 0x100) != 0 || (HookBufferFillMetadata_last_1 = a3[15], (v120))
      {
        v50 = *(a3 + 2);
LABEL_57:
        v51 = HookBufferAppend((v15 + 32), v45, ",tid:0x%llx", v40, v41, v42, v43, v44, v50);
        if (!v51)
        {
          goto LABEL_141;
        }

        v45 = v51;
        if ((v121 & 0x100) == 0)
        {
          HookBufferFillMetadata_last_2 = *(a3 + 2);
        }

LABEL_60:
        name = os_log_type_get_name();
        appended = HookBufferAppendEscapedString((v15 + 32), v45, v120 & 1, ",type:", name, HookBufferFillMetadata_last_3, v53, v54);
        if (!appended)
        {
          goto LABEL_141;
        }

        v58 = appended;
        if ((v121 & 0x100) == 0)
        {
          free(HookBufferFillMetadata_last_3);
          if (name)
          {
            v59 = strdup(name);
          }

          else
          {
            v59 = 0;
          }

          HookBufferFillMetadata_last_3 = v59;
        }

        v60 = HookBufferAppendEscapedString((v15 + 32), v58, v120 & 1, ",subsystem:", *(a3 + 16), HookBufferFillMetadata_last_4, v56, v57);
        if (!v60)
        {
          goto LABEL_141;
        }

        v63 = v60;
        if ((v121 & 0x100) == 0)
        {
          free(HookBufferFillMetadata_last_4);
          v64 = *(a3 + 16);
          if (v64)
          {
            v64 = strdup(v64);
          }

          HookBufferFillMetadata_last_4 = v64;
        }

        v65 = HookBufferAppendEscapedString((v15 + 32), v63, v120 & 1, ",category:", *(a3 + 17), HookBufferFillMetadata_last_5, v61, v62);
        if (!v65)
        {
          goto LABEL_141;
        }

        v71 = v65;
        if ((v121 & 0x100) != 0)
        {
          if ((hookMode & 2) == 0)
          {
            goto LABEL_96;
          }

          v71 = HookBufferAppend((v15 + 32), v65, ",offset:0x%llx", v66, v67, v68, v69, v70, *(a3 + 8));
          if (!v71)
          {
            goto LABEL_141;
          }

          goto LABEL_84;
        }

        free(HookBufferFillMetadata_last_5);
        v72 = *(a3 + 17);
        if (v72)
        {
          v72 = strdup(v72);
        }

        HookBufferFillMetadata_last_5 = v72;
        if ((hookMode & 2) == 0)
        {
          goto LABEL_96;
        }

        if (v120)
        {
          v73 = *(a3 + 8);
        }

        else
        {
          v73 = *(a3 + 8);
          if (HookBufferFillMetadata_last_6 == v73)
          {
LABEL_84:
            v75 = *(a3 + 3);
            if (v75)
            {
              memset(&v123, 0, 37);
              uuid_unparse(v75, &v123);
              v78 = HookBufferAppendEscapedString((v15 + 32), v71, v120 & 1, ",imgUUID:", &v123, HookBufferFillMetadata_last_7, v76, v77);
              if (!v78)
              {
                goto LABEL_141;
              }

              v81 = v78;
              if ((v121 & 0x100) == 0)
              {
                free(HookBufferFillMetadata_last_7);
                HookBufferFillMetadata_last_7 = strdup(&v123);
              }
            }

            else
            {
              v82 = HookBufferAppendEscapedString((v15 + 32), v71, v120 & 1, ",imgUUID:", 0, HookBufferFillMetadata_last_7, v69, v70);
              if (!v82)
              {
                goto LABEL_141;
              }

              v81 = v82;
              if ((v121 & 0x100) == 0)
              {
                free(HookBufferFillMetadata_last_7);
                HookBufferFillMetadata_last_7 = 0;
              }
            }

            v83 = HookBufferAppendEscapedString((v15 + 32), v81, v120 & 1, ",imgPath:", *(a3 + 4), HookBufferFillMetadata_last_8, v79, v80);
            if (!v83)
            {
              goto LABEL_141;
            }

            v71 = v83;
            if ((v121 & 0x100) == 0)
            {
              free(HookBufferFillMetadata_last_8);
              v84 = *(a3 + 4);
              if (v84)
              {
                v84 = strdup(v84);
              }

              HookBufferFillMetadata_last_8 = v84;
            }

LABEL_96:
            if ((hookMode & 4) != 0)
            {
              v88 = getprogname();
              v91 = HookBufferAppendEscapedString((v15 + 32), v71, v120 & 1, ",procName:", v88, HookBufferFillMetadata_last_9, v89, v90);
              if (!v91)
              {
                goto LABEL_141;
              }

              v71 = v91;
              if ((v121 & 0x100) != 0)
              {
                goto LABEL_152;
              }

              free(HookBufferFillMetadata_last_9);
              v92 = getprogname();
              if (v92)
              {
                v93 = getprogname();
                v92 = strdup(v93);
              }

              HookBufferFillMetadata_last_9 = v92;
              if ((v120 & 1) != 0 || (v94 = HookBufferFillMetadata_last_10, v94 != getpid()))
              {
LABEL_152:
                v95 = getpid();
                v101 = HookBufferAppend((v15 + 32), v71, ",pid:%d", v96, v97, v98, v99, v100, v95);
                if (!v101)
                {
                  goto LABEL_141;
                }

                v71 = v101;
                if ((v121 & 0x100) != 0)
                {
                  goto LABEL_116;
                }

                HookBufferFillMetadata_last_10 = getpid();
                if (v120)
                {
                  goto LABEL_116;
                }
              }

              v102 = HookBufferFillMetadata_last_11;
              if (v102 != geteuid())
              {
LABEL_116:
                v103 = geteuid();
                v109 = HookBufferAppend((v15 + 32), v71, ",uid:%u", v104, v105, v106, v107, v108, v103);
                if (!v109)
                {
                  goto LABEL_141;
                }

                v71 = v109;
                if ((v121 & 0x100) == 0)
                {
                  HookBufferFillMetadata_last_11 = geteuid();
                }
              }
            }

            v85 = hookMode;
            if ((hookMode & 8) != 0)
            {
              v86 = HookBufferAppend((v15 + 32), v71, ",cTime:0x%llx", v66, v67, v68, v69, v70, *(a3 + 1));
              if (!v86)
              {
                goto LABEL_141;
              }

              v71 = v86;
              v85 = hookMode;
            }

            if ((v85 & 0x10) != 0)
            {
              v87 = HookBufferAppendEscapedString((v15 + 32), v71, v120 & 1, ",format:", *(a3 + 11), HookBufferFillMetadata_last_12, v69, v70);
              if (!v87)
              {
                goto LABEL_141;
              }

              v71 = v87;
              if ((v121 & 0x100) != 0)
              {
                if ((hookMode & 0x20) == 0)
                {
                  goto LABEL_138;
                }

                v71 = HookBufferAppend((v15 + 32), v87, ",traceID:0x%llx", v66, v67, v68, v69, v70, *a3);
                if (!v71)
                {
                  goto LABEL_141;
                }

LABEL_127:
                *&v123.tm_sec = 0;
                identifier = os_activity_get_identifier(&_os_activity_current, &v123);
                if (v120 & 1 | (HookBufferFillMetadata_last_14 != identifier))
                {
                  v113 = identifier;
                  v114 = HookBufferAppend((v15 + 32), v71, ",act:0x%llx", v66, v67, v68, v69, v70, identifier);
                  if (!v114)
                  {
                    goto LABEL_141;
                  }

                  v71 = v114;
                  if ((v121 & 0x100) != 0)
                  {
                    v71 = HookBufferAppend((v15 + 32), v114, ",parentAct:0x%llx", v66, v67, v68, v69, v70, v123.tm_sec);
                    if (!v71)
                    {
                      goto LABEL_141;
                    }

                    goto LABEL_138;
                  }

                  HookBufferFillMetadata_last_14 = v113;
                }

                if (!(v120 & 1 | (HookBufferFillMetadata_last_15 != *&v123.tm_sec)))
                {
                  goto LABEL_138;
                }

                v115 = HookBufferAppend((v15 + 32), v71, ",parentAct:0x%llx", v66, v67, v68, v69, v70, v123.tm_sec);
                v71 = v115;
                if (v115 && (v121 & 0x100) == 0)
                {
                  HookBufferFillMetadata_last_15 = *&v123.tm_sec;
                  goto LABEL_138;
                }

                if (v115)
                {
LABEL_138:
                  v116 = HookBufferAppendMetadataEndWithLineCount((v15 + 32), v71, v16, v66, v67, v68, v69, v70, v117);
                  if (v116)
                  {
                    if ((HookWrite(v15, v119, v116, v16) & 0x80000000) == 0)
                    {
                      HookHandleLogMessage_lastOutputSuccessful = 1;
LABEL_144:
                      if ((v17 & 1) == 0)
                      {
                        pthread_setspecific(logRedirectThreadLockFlagsKey, v17);
                        if ((v17 & 2) == 0)
                        {
                          os_unfair_lock_unlock(&logRedirectLock);
                        }
                      }

                      free(v16);
                      return;
                    }

                    v32 = *__error();
                    v33 = "Failed to write log message";
                    goto LABEL_142;
                  }
                }

LABEL_141:
                v32 = *__error();
                v33 = "Failed to copy log message metadata";
                goto LABEL_142;
              }

              free(HookBufferFillMetadata_last_12);
              v110 = *(a3 + 11);
              if (v110)
              {
                v110 = strdup(v110);
              }

              HookBufferFillMetadata_last_12 = v110;
              v85 = hookMode;
            }

            if ((v85 & 0x20) == 0)
            {
              goto LABEL_138;
            }

            if (v120 & 1 | (HookBufferFillMetadata_last_13 != *a3))
            {
              v111 = HookBufferAppend((v15 + 32), v71, ",traceID:0x%llx", v66, v67, v68, v69, v70, *a3);
              if (!v111)
              {
                goto LABEL_141;
              }

              v71 = v111;
              if ((v121 & 0x100) == 0)
              {
                HookBufferFillMetadata_last_13 = *a3;
              }
            }

            goto LABEL_127;
          }
        }

        v74 = HookBufferAppend((v15 + 32), v71, ",offset:0x%llx", v66, v67, v68, v69, v70, v73);
        if (!v74)
        {
          goto LABEL_141;
        }

        v71 = v74;
        HookBufferFillMetadata_last_6 = *(a3 + 8);
        goto LABEL_84;
      }

LABEL_56:
      v50 = *(a3 + 2);
      if (HookBufferFillMetadata_last_2 == v50)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }

LABEL_51:
    v48 = a3[15];
    if (HookBufferFillMetadata_last_1 == v48)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if ((v7 & 0x60000) == 0x40000)
  {
    return;
  }

  v9 = *(a3 + 4);
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = 0;
  while (1)
  {
    v11 = strlen(HookIsSystemFramework_SysPaths[v10]);
    if (!strncmp(v9, HookIsSystemFramework_SysPaths[v10], v11))
    {
      break;
    }

    if (++v10 == 4)
    {
      goto LABEL_16;
    }
  }
}

@end