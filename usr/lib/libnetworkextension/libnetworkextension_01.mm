BOOL __NEHelperTrackerDomainIsApproved_block_invoke(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  v5 = strcasecmp(*(a1 + 40), string_ptr);
  if (!v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v5 != 0;
}

uint64_t NEHelperTrackerCheckMetadataForWeb(uint64_t result)
{
  if (result)
  {
    return ne_tracker_context_is_from_web_list();
  }

  return result;
}

uint64_t NEHelperTrackerCheckMetadataForApp(uint64_t result)
{
  if (result)
  {
    return ne_tracker_context_is_from_app_list();
  }

  return result;
}

void NEHelperTrackerClearCache()
{
  os_unfair_lock_lock(&ne_helper_tracker_lock);
  if (qword_1ED4D46F8)
  {
    ne_tracker_clear_cache();
  }

  os_unfair_lock_unlock(&ne_helper_tracker_lock);
}

uint64_t NEHelperTrackerAppendTLV(uint64_t a1, char a2, size_t __n, void *__src)
{
  *a1 = a2;
  *(a1 + 1) = __n;
  if (__n)
  {
    v5 = __n;
    memcpy((a1 + 5), __src, __n);
  }

  else
  {
    v5 = 0;
  }

  return a1 + v5 + 5;
}

char *NEHelperTrackerParseTLV(uint64_t a1, _BYTE *a2, _DWORD *a3, void *a4)
{
  result = 0;
  v26 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3 && a4)
  {
    *a2 = *a1;
    v7 = *(a1 + 1);
    *a3 = v7;
    v8 = (a1 + 5);
    *a4 = a1 + 5;
    v9 = *a2;
    if (v7 > 1)
    {
      switch(v7)
      {
        case 2:
          v10 = *v8;
          if (*v8)
          {
            goto LABEL_16;
          }

          break;
        case 4:
          v10 = *v8;
          if (*v8)
          {
            goto LABEL_16;
          }

          break;
        case 8:
          v10 = *v8;
          if (!*v8)
          {
            break;
          }

LABEL_16:
          v11 = ne_log_obj();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_29;
          }

          v18 = 136315906;
          v19 = "NEHelperTrackerTLVLog";
          v20 = 1024;
          v21 = v9;
          v22 = 1024;
          v23 = v7;
          v24 = 2048;
          v25 = v10;
          v12 = "%s: Parsed TLV - type %d length %d value %llu";
          goto LABEL_27;
        default:
          break;
      }

LABEL_19:
      v13 = *(v8 + v7 - 1);
      v11 = ne_log_obj();
      v14 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        if (v14)
        {
          v18 = 136315650;
          v19 = "NEHelperTrackerTLVLog";
          v20 = 1024;
          v21 = v9;
          v22 = 1024;
          v23 = v7;
          v12 = "%s: Parsed TLV - type %d length %d";
LABEL_24:
          v15 = v11;
          v16 = 24;
LABEL_28:
          _os_log_debug_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_DEBUG, v12, &v18, v16);
          goto LABEL_29;
        }

        goto LABEL_29;
      }

      if (!v14)
      {
        goto LABEL_29;
      }

      v18 = 136315906;
      v19 = "NEHelperTrackerTLVLog";
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = v7;
      v24 = 2080;
      v25 = v8;
      v12 = "%s: Parsed TLV - type %d length %d value <%s>";
LABEL_27:
      v15 = v11;
      v16 = 34;
      goto LABEL_28;
    }

    if (!v7)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315650;
        v19 = "NEHelperTrackerTLVLog";
        v20 = 1024;
        v21 = v9;
        v22 = 1024;
        v23 = 0;
        v12 = "%s: Parsed TLV - type %d length %d";
        goto LABEL_24;
      }

LABEL_29:
      result = v8 + *a3;
      goto LABEL_30;
    }

    if (v7 != 1)
    {
      goto LABEL_19;
    }

    v10 = *v8;
    if (!*v8)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_30:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEHelperTrackerCalculateParameterLen(int a1, int a2, unsigned __int8 *uu, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a1)
  {
    v13 = 6;
  }

  else
  {
    v13 = 0;
  }

  v14 = a2 + 5;
  if (!a2)
  {
    v14 = 0;
  }

  v15 = v14 + v13;
  is_null = uuid_is_null(uu);
  v17 = v15 + 21;
  if (is_null)
  {
    v17 = v15;
  }

  if (a5)
  {
    v18 = a4 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = a5 + 5;
  if (v18)
  {
    v19 = 0;
  }

  if (a7)
  {
    v20 = a6 == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = a7 + 5;
  if (v20)
  {
    v21 = 0;
  }

  v22 = v21 + v19 + v17;
  if (a8)
  {
    return v22 + 9;
  }

  else
  {
    return v22;
  }
}

uint64_t NEHelperTrackerFillParameters(char *a1, size_t a2, int a3, _BYTE *a4, const unsigned __int8 *a5, const void *a6, uint64_t a7, const void *a8, size_t __n, int a10)
{
  result = 0;
  if (a1 && a2)
  {
    bzero(a1, a2);
    v18 = a1;
    if (a3)
    {
      *a1 = 1;
      *(a1 + 1) = 1;
      a1[5] = a3;
      v18 = a1 + 6;
    }

    if (a4)
    {
      v19 = *a4;
      if (*a4)
      {
        *v18 = 2;
        *(v18 + 1) = v19;
        v20 = v18 + 5;
        memcpy(v20, a4, v19);
        v18 = &v20[v19];
      }
    }

    if (!uuid_is_null(a5))
    {
      *v18 = 3;
      *(v18 + 1) = 16;
      *(v18 + 5) = *a5;
      v18 += 21;
    }

    if (a6 && a7)
    {
      *v18 = 4;
      *(v18 + 1) = a7;
      if (a7)
      {
        a7 = a7;
        memcpy(v18 + 5, a6, a7);
      }

      else
      {
        a7 = 0;
      }

      v18 += a7 + 5;
    }

    if (a8 && __n)
    {
      *v18 = 5;
      *(v18 + 1) = __n;
      if (__n)
      {
        v21 = __n;
        memcpy(v18 + 5, a8, __n);
      }

      else
      {
        v21 = 0;
      }

      v18 += v21 + 5;
    }

    if (a10)
    {
      *v18 = 6;
      *(v18 + 1) = 4;
      *(v18 + 5) = a10;
      LODWORD(v18) = v18 + 9;
    }

    return (v18 - a1);
  }

  return result;
}

BOOL NEHelperTrackerAddIPForAllFlowsRedactLogs(int a1, int a2, _DWORD **a3, int a4, _DWORD *a5, unint64_t a6, CFStringRef theString, int a8)
{
  v9 = a3;
  v108 = *MEMORY[0x1E69E9840];
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  memset(v105, 0, 254);
  memset(v104, 0, 254);
  memset(out, 0, 37);
  *uu = 0;
  v102 = 0;
  if (!a3 || !a4)
  {
    v21 = ne_log_obj();
    result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v23 = "is not";
      *&buf[4] = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
      *buf = 136315650;
      if (!v9)
      {
        v23 = "is";
      }

      *&buf[12] = 2080;
      *&buf[14] = v23;
      *&buf[22] = 1024;
      *&buf[24] = a4;
      v24 = "%s: Invalid parameters - addresses %s null, count %d";
      v25 = v21;
      v26 = 28;
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  if (a2 != 2 && a2 != 30)
  {
    v27 = ne_log_obj();
    result = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136315394;
      *&buf[4] = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
      *&buf[12] = 1024;
      *&buf[14] = a2;
      v24 = "%s: Invalid parameters - address family must be IPv4 / IPv6 (%d)";
      v25 = v27;
      v26 = 18;
LABEL_49:
      _os_log_error_impl(&dword_1C0DA5000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      result = 0;
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  if (a5)
  {
    if (a1)
    {
      if (!a6)
      {
        v28 = ne_log_obj();
        result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315138;
          *&buf[4] = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
          v24 = "%s: Invalid parameters - trackerDomainContextRef is null";
          goto LABEL_48;
        }

        goto LABEL_50;
      }

      v15 = NEHelperTrackerContextCopyDomain(a6, v105, 254, 0);
      __s = NEHelperTrackerContextCopyDomainOwner(a6, v104, 254, 0);
      if (!v15 || !__s)
      {
        v28 = ne_log_obj();
        result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315138;
          *&buf[4] = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
          v24 = "%s: Failed to get domain/owner from context";
          goto LABEL_48;
        }

        goto LABEL_50;
      }

      v16 = strlen(v15);
      if (v16 >= 2 && v15[v16 - 1] == 46)
      {
        v17 = v16 - 1;
        __strncpy_chk();
        ne_session_trim_domain_domain_buffer[v17] = 0;
        v15 = ne_session_trim_domain_domain_buffer;
      }

      v18 = strlen(v15);
      v19 = strlen(__s) + 1;
      if (a1 == 3)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      if (!theString || !CFStringGetCString(theString, NEHelperTrackerAddIPForAllFlowsRedactLogs_buffer, 254, 0x8000100u))
      {
        v28 = ne_log_obj();
        result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315138;
          *&buf[4] = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
          v24 = "%s: Invalid parameters - original domain NULL / invalid for NEHelperTrackerDispositionNotTracker";
          goto LABEL_48;
        }

        goto LABEL_50;
      }

      v15 = NEHelperTrackerAddIPForAllFlowsRedactLogs_buffer;
      v29 = strlen(NEHelperTrackerAddIPForAllFlowsRedactLogs_buffer);
      if (v29 >= 2 && NEHelperTrackerAddIPForAllFlowsRedactLogs_buffer[v29 - 1] == 46)
      {
        v30 = v29 - 1;
        v15 = ne_session_trim_domain_domain_buffer;
        __strncpy_chk();
        ne_session_trim_domain_domain_buffer[v30] = 0;
      }

      v18 = strlen(v15);
      v20 = 0;
      v19 = 0;
      __s = 0;
    }

    v69 = v18 + 1;
    v70 = v19;
    if (v19 >= 0x40 || v18 + 1 >= 0x40)
    {
      v32 = v20;
    }

    else
    {
      v32 = v20 | 4;
    }

    if ((NEHelperTrackerGetAppUUID(a5, uu) & 1) == 0)
    {
      v28 = ne_log_obj();
      result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315138;
        *&buf[4] = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
        v24 = "%s: Failed to get app UUID from app_info_ref";
        goto LABEL_48;
      }

      goto LABEL_50;
    }

    if (uuid_is_null(uu))
    {
      v28 = ne_log_obj();
      result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315138;
        *&buf[4] = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
        v24 = "%s: NULL app UUID";
        goto LABEL_48;
      }

      goto LABEL_50;
    }

    if (a2 == 2)
    {
      v34 = 16;
    }

    else
    {
      v34 = 28;
    }

    v35 = NEHelperTrackerCalculateParameterLen(a2, v34, uu, v15, v69, __s, v70, v32);
    if (!v35)
    {
      v28 = ne_log_obj();
      result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_50;
      }

      *buf = 136315138;
      *&buf[4] = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
      v24 = "%s: Failed to get calculate parameter size";
      goto LABEL_48;
    }

    v68 = v35;
    if (v35 < 201)
    {
      v67 = v106;
    }

    else
    {
      v67 = malloc_type_malloc(v35, 0x100004077774924uLL);
      if (!v67)
      {
        v28 = ne_log_obj();
        result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_50;
        }

        *buf = 136315138;
        *&buf[4] = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
        v24 = "%s: Failed to allocate parameter buffer";
        goto LABEL_48;
      }
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    memset(buf, 0, sizeof(buf));
    buf[1] = a2;
    if (a4 < 1)
    {
      v36 = 0;
LABEL_117:
      v38 = v67;
LABEL_118:
      if (v38 != v106)
      {
        free(v38);
      }

      result = v36 == 0;
      goto LABEL_50;
    }

    v36 = 0;
    v66 = v32;
    v64 = v32 & 2;
    v65 = v32 & 1;
    v37 = a4;
    v38 = v67;
    while (1)
    {
      if (a2 == 30)
      {
        buf[0] = 28;
        *&buf[8] = **v9;
        __n = v70;
      }

      else
      {
        __n = v70;
        if (a2 != 2)
        {
          v63 = ne_log_obj();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *v72 = 136315394;
            v73 = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
            v74 = 1024;
            *v75 = a2;
            _os_log_error_impl(&dword_1C0DA5000, v63, OS_LOG_TYPE_ERROR, "%s: Address with invalid family %d", v72, 0x12u);
          }

          v36 = 0;
          goto LABEL_118;
        }

        buf[0] = 16;
        *&buf[4] = **v9;
      }

      v40 = NEHelperTrackerFillParameters(v38, v68, a2, buf, uu, v15, v69, __s, __n, v66);
      if (v40 != v68)
      {
        v61 = v40;
        v62 = ne_log_obj();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *v72 = 136315650;
          v73 = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
          v74 = 1024;
          *v75 = v68;
          *&v75[4] = 1024;
          *&v75[6] = v61;
          _os_log_error_impl(&dword_1C0DA5000, v62, OS_LOG_TYPE_ERROR, "%s: Failed to fill parameters <calculated len %d result len %d>", v72, 0x18u);
        }

        goto LABEL_117;
      }

      v36 = tracker_action(1, v38, v68);
      if (v36)
      {
        break;
      }

      if (nelog_is_debug_logging_enabled())
      {
        v92 = 0u;
        v93 = 0u;
        *v90 = 0u;
        v91 = 0u;
        if (a2 == 2)
        {
          v43 = &buf[4];
          v44 = 2;
        }

        else
        {
          v44 = 30;
          v43 = &buf[8];
        }

        inet_ntop(v44, v43, v90, 0x40u);
        uuid_unparse_lower(uu, out);
        v52 = ne_log_obj();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = a5[14];
          if (!v53)
          {
            v53 = a5[7];
            if (!v53)
            {
              v53 = a5[30];
              if (!v53)
              {
                v53 = a5[23];
              }
            }
          }

          *v72 = 136316162;
          v73 = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
          v74 = 1024;
          *v75 = v53;
          *&v75[4] = 2080;
          *&v75[6] = out;
          v76 = 1024;
          *v77 = v65;
          *&v77[4] = 1024;
          *&v77[6] = v64;
          _os_log_impl(&dword_1C0DA5000, v52, OS_LOG_TYPE_DEFAULT, "%s: completed for app <%d : %s> <app approved %d> <is_tracker %d>", v72, 0x28u);
        }

        v54 = ne_log_obj();
        v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);
        if (a8)
        {
          if (v55)
          {
            v56 = a5[14];
            if (!v56)
            {
              v56 = a5[7];
              if (!v56)
              {
                v56 = a5[30];
                if (!v56)
                {
                  v56 = a5[23];
                }
              }
            }

            *v72 = 136318723;
            v73 = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
            v74 = 2160;
            *v75 = 1752392040;
            *&v75[8] = 1040;
            *&v75[10] = v69;
            v76 = 2101;
            *v77 = v15;
            *&v77[8] = 2160;
            *&v77[10] = 1752392040;
            *&v77[18] = 1040;
            LODWORD(v78) = v70;
            WORD2(v78) = 2101;
            *(&v78 + 6) = __s;
            HIWORD(v78) = 1024;
            LODWORD(v79) = v56;
            WORD2(v79) = 2080;
            *(&v79 + 6) = out;
            HIWORD(v79) = 2160;
            v80 = 1752392040;
            *v81 = 1040;
            *&v81[2] = 64;
            v82 = 2101;
            v83 = v90;
            v84 = 1024;
            v85 = v65;
            v86 = 1024;
            v87 = v64;
            v88 = 1024;
            v89 = 0;
            v57 = v54;
            v58 = "%s: completed for%{sensitive, mask.hash, networkextension:string}.*P %{sensitive, mask.hash, networkextension:string}.*P app <%d : %s> %{sensitive, mask.hash, networkextension:string}.*P <app approved %d> <is_tracker %d> (error = %d)";
            v59 = 124;
            goto LABEL_113;
          }
        }

        else if (v55)
        {
          v60 = a5[14];
          if (!v60)
          {
            v60 = a5[7];
            if (!v60)
            {
              v60 = a5[30];
              if (!v60)
              {
                v60 = a5[23];
              }
            }
          }

          *v72 = 136317955;
          v73 = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
          v74 = 1024;
          *v75 = v69;
          *&v75[4] = 2081;
          *&v75[6] = v15;
          v76 = 1024;
          *v77 = v70;
          *&v77[4] = 2081;
          *&v77[6] = __s;
          *&v77[14] = 1024;
          *&v77[16] = v60;
          LOWORD(v78) = 2080;
          *(&v78 + 2) = out;
          WORD5(v78) = 1024;
          HIDWORD(v78) = 64;
          LOWORD(v79) = 2081;
          *(&v79 + 2) = v90;
          WORD5(v79) = 1024;
          HIDWORD(v79) = v65;
          LOWORD(v80) = 1024;
          *(&v80 + 2) = v64;
          HIWORD(v80) = 1024;
          *v81 = 0;
          v57 = v54;
          v58 = "%s: completed for<%d : %{private}s> <%d : %{private}s> app <%d : %s> <%d : %{private}s> <app approved %d> <is_tracker %d> (error = %d)";
          v59 = 94;
LABEL_113:
          _os_log_debug_impl(&dword_1C0DA5000, v57, OS_LOG_TYPE_DEBUG, v58, v72, v59);
        }

LABEL_105:
        v38 = v67;
      }

      ++v9;
      if (!--v37)
      {
        goto LABEL_118;
      }
    }

    v92 = 0u;
    v93 = 0u;
    *v90 = 0u;
    v91 = 0u;
    if (a2 == 2)
    {
      v41 = &buf[4];
      v42 = 2;
    }

    else
    {
      v42 = 30;
      v41 = &buf[8];
    }

    inet_ntop(v42, v41, v90, 0x40u);
    uuid_unparse_lower(uu, out);
    v45 = ne_log_obj();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (a8)
    {
      if (!v46)
      {
        goto LABEL_105;
      }

      v47 = a5[14];
      if (!v47)
      {
        v47 = a5[7];
        if (!v47)
        {
          v47 = a5[30];
          if (!v47)
          {
            v47 = a5[23];
          }
        }
      }

      *v72 = 136318723;
      v73 = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
      v74 = 2160;
      *v75 = 1752392040;
      *&v75[8] = 1040;
      *&v75[10] = v69;
      v76 = 2101;
      *v77 = v15;
      *&v77[8] = 2160;
      *&v77[10] = 1752392040;
      *&v77[18] = 1040;
      LODWORD(v78) = v70;
      WORD2(v78) = 2101;
      *(&v78 + 6) = __s;
      HIWORD(v78) = 1024;
      LODWORD(v79) = v47;
      WORD2(v79) = 2080;
      *(&v79 + 6) = out;
      HIWORD(v79) = 2160;
      v80 = 1752392040;
      *v81 = 1040;
      *&v81[2] = 64;
      v82 = 2101;
      v83 = v90;
      v84 = 1024;
      v85 = v65;
      v86 = 1024;
      v87 = v64;
      v88 = 1024;
      v89 = v36;
      v48 = v45;
      v49 = "%s: failed for%{sensitive, mask.hash, networkextension:string}.*P %{sensitive, mask.hash, networkextension:string}.*P app <%d : %s> %{sensitive, mask.hash, networkextension:string}.*P <app approved %d> <is_tracker %d> (error = %d)";
      v50 = 124;
    }

    else
    {
      if (!v46)
      {
        goto LABEL_105;
      }

      v51 = a5[14];
      if (!v51)
      {
        v51 = a5[7];
        if (!v51)
        {
          v51 = a5[30];
          if (!v51)
          {
            v51 = a5[23];
          }
        }
      }

      *v72 = 136317955;
      v73 = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
      v74 = 1024;
      *v75 = v69;
      *&v75[4] = 2081;
      *&v75[6] = v15;
      v76 = 1024;
      *v77 = v70;
      *&v77[4] = 2081;
      *&v77[6] = __s;
      *&v77[14] = 1024;
      *&v77[16] = v51;
      LOWORD(v78) = 2080;
      *(&v78 + 2) = out;
      WORD5(v78) = 1024;
      HIDWORD(v78) = 64;
      LOWORD(v79) = 2081;
      *(&v79 + 2) = v90;
      WORD5(v79) = 1024;
      HIDWORD(v79) = v65;
      LOWORD(v80) = 1024;
      *(&v80 + 2) = v64;
      HIWORD(v80) = 1024;
      *v81 = v36;
      v48 = v45;
      v49 = "%s: failed for<%d : %{private}s> <%d : %{private}s> app <%d : %s> <%d : %{private}s> <app approved %d> <is_tracker %d> (error = %d)";
      v50 = 94;
    }

    _os_log_error_impl(&dword_1C0DA5000, v48, OS_LOG_TYPE_ERROR, v49, v72, v50);
    goto LABEL_105;
  }

  v28 = ne_log_obj();
  result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315138;
    *&buf[4] = "NEHelperTrackerAddIPForAllFlowsRedactLogs";
    v24 = "%s: Invalid parameters - app_info_ref is null";
LABEL_48:
    v25 = v28;
    v26 = 12;
    goto LABEL_49;
  }

LABEL_50:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL NEHelperTrackerDumpIPEntries(int a1, char *buffer, size_t buffer_size, char *a4, size_t a5)
{
  result = 0;
  v68 = *MEMORY[0x1E69E9840];
  v55 = 0;
  v54 = 0;
  v53 = 0;
  if (!buffer)
  {
    goto LABEL_81;
  }

  if (!buffer_size)
  {
    goto LABEL_81;
  }

  result = 0;
  if (!a4 || a5 < 0xFA)
  {
    goto LABEL_81;
  }

  v11 = 0;
  memset(out, 0, 37);
  memset(uu, 0, sizeof(uu));
  v12 = 3;
  if (a1 && buffer_size >= 21)
  {
    v13 = malloc_type_malloc(0x80uLL, 0x1050040CA3BB8F4uLL);
    if (v13)
    {
      v14 = v13;
      v13[6] = 0u;
      v13[7] = 0u;
      v13[4] = 0u;
      v13[5] = 0u;
      v13[2] = 0u;
      v13[3] = 0u;
      *v13 = 0u;
      v13[1] = 0u;
      *(v13 + 30) = a1;
      if (NEHelperTrackerGetAppUUID(v13, uu) && !uuid_is_null(uu))
      {
        *buffer = 3;
        *(buffer + 1) = 16;
        *(buffer + 5) = *uu;
        uuid_unparse_lower(uu, out);
        v11 = snprintf(a4, a5, "\n* Filter by pid %d (%s)\n\n", a1, out);
        uuid_clear(uu);
        memset(out, 0, 37);
        v12 = 2;
      }

      else
      {
        v11 = 0;
      }

      free(v14);
    }

    else
    {
      v11 = 0;
    }
  }

  v15 = tracker_action(v12, buffer, buffer_size);
  if (v15)
  {
    v16 = v15;
    v17 = ne_log_obj();
    result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_81;
    }

    *buf = 136315394;
    *&buf[4] = "NEHelperTrackerDumpIPEntries";
    *&buf[12] = 1024;
    *&buf[14] = v16;
    v18 = "%s: Failed to dump tracker IP table entries <error %d>";
LABEL_16:
    v19 = buf;
LABEL_17:
    v20 = v17;
    v21 = 18;
    goto LABEL_18;
  }

  v22 = *buffer;
  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "NEHelperTrackerDumpIPEntries";
    *&buf[12] = 1024;
    *&buf[14] = v22;
    _os_log_debug_impl(&dword_1C0DA5000, v23, OS_LOG_TYPE_DEBUG, "%s: received tlv buffer size is %d", buf, 0x12u);
  }

  v24 = snprintf(&a4[v11], a5 - v11, "%5s %36s %6s %40s %11s %s\n%5s %36s %6s %40s %11s %s\n", "Count", "App UUID", "Family", "Address", "Flags", "Domain - Owner", "=====", "========", "======", "=======", "=====", "==============");
  if (!v22)
  {
LABEL_69:
    result = 1;
    goto LABEL_81;
  }

  v25 = 0;
  v51 = 0;
  v52 = 0;
  v26 = 0;
  v27 = &buffer[v22 + 4];
  v28 = v24 + v11;
  v29 = buffer + 4;
  v48 = 0;
  v49 = v27;
  while (1)
  {
    v30 = NEHelperTrackerParseTLV(v29, &v55, &v54, &v53);
    if (!v30)
    {
LABEL_67:
      if (v25 >= 1)
      {
        snprintf(&a4[v28], a5 - v28, "\n* Total count %d (short count %d) (total memory used %zu) (trackers %d non-trackers %d) (S=short T=tracker A=app-approved)\n\n", v25, v52, v48, v51, v25 - v51);
      }

      goto LABEL_69;
    }

    v31 = a5 - v28;
    if (v31 <= 0xF9)
    {
      break;
    }

    v29 = v30;
    v32 = v54;
    if (v55 == 7)
    {
      v33 = v53;
      v50 = v25 + 1;
      v34 = snprintf(&a4[v28], v31, "%5d ", v25 + 1) + v28;
      if (v32)
      {
        v35 = &v33[v32];
        do
        {
          v33 = NEHelperTrackerParseTLV(v33, &v55, &v54, &v53);
          if (v55 > 3u)
          {
            switch(v55)
            {
              case 4u:
                if (v54 < 2 || v53[v54 - 1])
                {
                  break;
                }

                v36 = snprintf(&a4[v34], a5 - v34, "%s%-20s ");
                goto LABEL_60;
              case 5u:
                if (v54 < 2 || v53[v54 - 1])
                {
                  break;
                }

                v36 = snprintf(&a4[v34], a5 - v34, "- %s");
                goto LABEL_60;
              case 6u:
                if (v54 != 4)
                {
                  v17 = ne_log_obj();
                  result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
                  if (!result)
                  {
                    goto LABEL_81;
                  }

                  *buf = 136315394;
                  *&buf[4] = "NEHelperTrackerDumpIPEntries";
                  *&buf[12] = 1024;
                  *&buf[14] = v54;
                  v18 = "%s: Flags with invalid size %d";
                  goto LABEL_16;
                }

                v37 = *v53;
                v38 = snprintf(&a4[v34], a5 - v34, "<%2X: ", *v53) + v34;
                v39 = "S";
                if ((v37 & 4) == 0)
                {
                  v39 = " ";
                }

                v52 += (v37 & 4) >> 2;
                v40 = v38 + snprintf(&a4[v38], a5 - v38, "%s", v39);
                v41 = "|T";
                if ((v37 & 2) == 0)
                {
                  v41 = "| ";
                }

                v51 += (v37 & 2) >> 1;
                v42 = v40 + snprintf(&a4[v40], a5 - v40, "%s", v41);
                v43 = "|A> ";
                if ((v37 & 1) == 0)
                {
                  v43 = "| > ";
                }

                v34 = v42 + snprintf(&a4[v42], a5 - v42, "%s", v43);
                break;
            }
          }

          else
          {
            if (v55 != 1)
            {
              if (v55 == 2)
              {
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                v60 = 0u;
                v61 = 0u;
                memset(buf, 0, sizeof(buf));
                buf[1] = v26;
                if (v26 == 30)
                {
                  if (v54 != 16)
                  {
                    v17 = ne_log_obj();
                    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_80;
                    }

LABEL_82:
                    *v56 = 136315394;
                    *&v56[4] = "NEHelperTrackerDumpIPEntries";
                    *&v56[12] = 1024;
                    *&v56[14] = v54;
                    v18 = "%s: IPv4 Address got invalid length %d";
LABEL_83:
                    v19 = v56;
                    goto LABEL_17;
                  }

                  buf[0] = 28;
                  *&buf[8] = *v53;
                  v57 = 0u;
                  v58 = 0u;
                  memset(v56, 0, sizeof(v56));
                  v44 = &buf[8];
                  v45 = 30;
                }

                else
                {
                  if (v26 != 2)
                  {
                    v17 = ne_log_obj();
                    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_80;
                    }

                    *v56 = 136315394;
                    *&v56[4] = "NEHelperTrackerDumpIPEntries";
                    *&v56[12] = 1024;
                    *&v56[14] = v26;
                    v18 = "%s: Address with invalid family %d";
                    goto LABEL_83;
                  }

                  if (v54 != 4)
                  {
                    v17 = ne_log_obj();
                    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_80;
                    }

                    goto LABEL_82;
                  }

                  buf[0] = 16;
                  *&buf[4] = *v53;
                  v57 = 0uLL;
                  v58 = 0uLL;
                  memset(v56, 0, sizeof(v56));
                  v44 = &buf[4];
                  v45 = 2;
                }

                inet_ntop(v45, v44, v56, 0x40u);
                v36 = snprintf(&a4[v34], a5 - v34, "%40s ");
              }

              else
              {
                if (v55 != 3 || v54 != 16)
                {
                  continue;
                }

                *uu = *v53;
                uuid_unparse_lower(uu, out);
                v36 = snprintf(&a4[v34], a5 - v34, "%s ");
              }

              goto LABEL_60;
            }

            if (v54 == 1)
            {
              v26 = *v53;
              v36 = snprintf(&a4[v34], a5 - v34, "%6d ");
LABEL_60:
              v34 += v36;
            }
          }
        }

        while (v33 < v35);
      }

      v28 = snprintf(&a4[v34], a5 - v34, "\n") + v34;
      v27 = v49;
      v25 = v50;
    }

    else if (v55 == 8 && v54 == 8)
    {
      v48 = *v53;
    }

    if (v29 >= v27)
    {
      goto LABEL_67;
    }
  }

  v46 = ne_log_obj();
  result = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    goto LABEL_81;
  }

  *buf = 136315138;
  *&buf[4] = "NEHelperTrackerDumpIPEntries";
  v18 = "%s: Failed to dump tracker IP table entries - exceeded dump_buffer_size size";
  v19 = buf;
  v20 = v46;
  v21 = 12;
LABEL_18:
  _os_log_error_impl(&dword_1C0DA5000, v20, OS_LOG_TYPE_ERROR, v18, v19, v21);
LABEL_80:
  result = 0;
LABEL_81:
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_current_notify_pid()
{
  if (get_current_notify_pid_sm_token < 0)
  {
    if (globals_init_sess_init != -1)
    {
      dispatch_once(&globals_init_sess_init, &__block_literal_global_181);
    }

    if (!notify_register_dispatch("com.apple.nesessionmanager", &get_current_notify_pid_sm_token, g_queue, &__block_literal_global_176) && notify_get_state(get_current_notify_pid_sm_token, &get_current_notify_pid_current_pid))
    {
      get_current_notify_pid_current_pid = 0;
    }
  }

  return get_current_notify_pid_current_pid;
}

void __get_current_notify_pid_block_invoke(int a1, int token)
{
  get_current_notify_pid_sm_token = token;
  if (notify_get_state(token, &get_current_notify_pid_current_pid))
  {
    get_current_notify_pid_current_pid = 0;
  }

  else if (get_current_notify_pid_current_pid)
  {

    update_all_session_clients();
  }
}

void update_all_session_clients()
{
  for (i = g_sessions; i; i = *(i + 48))
  {
    fetch_status(i, 0, 0, 0);
  }
}

void fetch_status(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
{
  connection = get_connection(a1);
  if (connection)
  {
    v9 = connection;
    v10 = xpc_dictionary_create(0, 0, 0);
    v11 = *(a1 + 32);
    xpc_dictionary_set_int64(v10, "SessionCommandType", 1);
    if (a4)
    {
      a4 = _Block_copy(a4);
    }

    if (a3)
    {
      dispatch_retain(a3);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __fetch_status_block_invoke_2;
    handler[3] = &unk_1E812B178;
    v13 = v11;
    handler[4] = a4;
    handler[5] = a1;
    handler[6] = a2;
    handler[7] = a3;
    xpc_connection_send_message_with_reply(v9, v10, g_queue, handler);
    xpc_release(v10);
  }

  else if (a3 && a4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fetch_status_block_invoke;
    block[3] = &unk_1E812B128;
    block[4] = a4;
    v15 = 0;
    dispatch_async(a3, block);
  }
}

uint64_t get_connection(uint64_t a1)
{
  result = 0;
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = g_sessions;
    if (g_sessions)
    {
      while (v3 != a1)
      {
        v3 = *(v3 + 48);
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      if (*(a1 + 64))
      {
LABEL_7:
        result = 0;
        goto LABEL_8;
      }

      result = *(a1 + 40);
      if (!result)
      {
        v5 = xpc_dictionary_create(0, 0, 0);
        getpid();
        v6 = "com.apple.nesessionmanager";
        if (sandbox_check())
        {
          v7 = ne_log_obj();
          v6 = "com.apple.nesessionmanager.flow-divert-token";
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v11 = "com.apple.nesessionmanager.flow-divert-token";
            _os_log_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_INFO, "Falling back to %s", buf, 0xCu);
          }
        }

        mach_service = xpc_connection_create_mach_service(v6, g_queue, 2uLL);
        *(a1 + 40) = mach_service;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 0x40000000;
        handler[2] = __get_connection_block_invoke;
        handler[3] = &__block_descriptor_tmp_189;
        handler[4] = a1;
        xpc_connection_set_event_handler(mach_service, handler);
        xpc_connection_resume(*(a1 + 40));
        xpc_dictionary_set_int64(v5, "SessionClientType", 1);
        xpc_dictionary_set_uuid(v5, "SessionIdentifier", a1);
        xpc_dictionary_set_int64(v5, "SessionConfigType", *(a1 + 16));
        xpc_connection_send_message(*(a1 + 40), v5);
        xpc_release(v5);
        result = *(a1 + 40);
      }
    }
  }

LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __fetch_status_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E80])
  {
    int64 = xpc_dictionary_get_int64(a2, "SessionStatus");
    v4 = int64;
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = g_sessions;
      if (g_sessions)
      {
        while (v9 != v8)
        {
          v9 = *(v9 + 48);
          if (!v9)
          {
            goto LABEL_4;
          }
        }

        if ((*(v8 + 64) & 1) == 0 && int64 != *(a1 + 64) && int64 != *(v8 + 32))
        {
          v10 = *(a1 + 48);
          *(v8 + 32) = int64;
          for (i = *(v8 + 24); i; i = *(i + 8))
          {
            if (i != v10)
            {
              notify_client(i, 1);
            }
          }
        }
      }
    }
  }

  else
  {
    v4 = 1;
  }

LABEL_4:
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __fetch_status_block_invoke_3;
      block[3] = &unk_1E812B150;
      block[4] = v5;
      block[5] = v4;
      block[6] = v6;
      dispatch_async(v6, block);
    }
  }
}

void notify_client(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      atomic_fetch_add_explicit((a1 + 40), 1u, memory_order_relaxed);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __notify_client_block_invoke;
      block[3] = &__block_descriptor_tmp_194_123;
      v5 = a2;
      block[4] = a1;
      block[5] = 0;
      dispatch_async(v3, block);
    }
  }
}

void __fetch_status_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v3 = *(a1 + 48);

  dispatch_release(v3);
}

void __notify_client_block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3002000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __notify_client_block_invoke_192;
  v4[3] = &unk_1E812B1C0;
  v2 = *(a1 + 32);
  v4[4] = &v5;
  v4[5] = v2;
  dispatch_sync(g_queue, v4);
  v3 = v6[5];
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 48), *(a1 + 40));
    _Block_release(v6[5]);
  }

  ne_session_release(*(a1 + 32));
  _Block_object_dispose(&v5, 8);
}

void *__notify_client_block_invoke_192(uint64_t a1)
{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = _Block_copy(result);
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

void ne_session_release(uint64_t a1)
{
  if (atomic_fetch_add_explicit((a1 + 40), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    block[5] = v1;
    block[6] = v2;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __ne_session_release_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = a1;
    dispatch_sync(g_queue, block);
  }
}

void __ne_session_release_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v2)
  {
    *(v2 + 16) = v3;
  }

  *v3 = v2;
  v4 = *v1;
  if (!*(*v1 + 24))
  {
    *(v4 + 64) = 1;
    v5 = *(v4 + 5);
    if (v5)
    {
      xpc_connection_cancel(v5);
    }

    else
    {
      v7 = *(v4 + 6);
      v6 = *(v4 + 7);
      if (v7)
      {
        *(v7 + 56) = v6;
      }

      *v6 = v7;
      free(*v1);
      *v1 = 0;
    }
  }

  ne_session_clear_event_handler(v1, 0);

  free(v1);
}

void ne_session_clear_event_handler(uint64_t a1, char a2)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v4)
  {
    if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __ne_session_clear_event_handler_block_invoke;
      block[3] = &unk_1E812B100;
      v7 = a2;
      block[4] = v5;
      block[5] = v4;
      dispatch_async(v4, block);
    }

    else
    {

      dispatch_release(v4);
    }
  }
}

void __ne_session_clear_event_handler_block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    (*(*(a1 + 32) + 16))();
  }

  _Block_release(*(a1 + 32));
  v3 = *(a1 + 40);

  dispatch_release(v3);
}

void __get_connection_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = g_sessions;
  if (v2)
  {
    v4 = g_sessions == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    while (v3 != v2)
    {
      v3 = *(v3 + 48);
      if (!v3)
      {
        return;
      }
    }

    if (a2)
    {
      if (MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E98])
      {
        v9 = *(a1 + 32);
        v10 = *(v9 + 40);
        if (v10)
        {
          xpc_connection_cancel(v10);
          xpc_release(*(*(a1 + 32) + 40));
          *(*(a1 + 32) + 40) = 0;
          v9 = *(a1 + 32);
        }

        v11 = *(v9 + 24);
        if (v11)
        {
          if (*(v9 + 32) != 1)
          {
            *(v9 + 32) = 1;
            do
            {
              notify_client(v11, 1);
              v11 = *(v11 + 8);
            }

            while (v11);
          }
        }

        else
        {
          v12 = *(v9 + 48);
          if (v12)
          {
            *(v12 + 56) = *(v9 + 56);
            v9 = *(a1 + 32);
            v12 = *(v9 + 48);
          }

          **(v9 + 56) = v12;
          v13 = *(a1 + 32);

          free(v13);
        }
      }

      else if (MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(a2, "SessionNotificationType");
        switch(int64)
        {
          case 3:
            for (i = *(*(a1 + 32) + 24); i; i = *(i + 8))
            {
              notify_client(i, 3);
            }

            break;
          case 2:
            for (j = *(*(a1 + 32) + 24); j; j = *(j + 8))
            {
              notify_client(j, 1);
            }

            break;
          case 1:
            v8 = *(a1 + 32);

            fetch_status(v8, 0, 0, 0);
            break;
        }
      }
    }
  }
}

dispatch_queue_t __globals_init_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("ne_session queue", v0);
  g_queue = result;
  g_sessions = 0;
  return result;
}

uint64_t ne_session_manager_has_active_sessions()
{
  check = 0;
  v0 = ne_session_manager_get_info_current_info_token;
  if (ne_session_manager_get_info_current_info_token < 0)
  {
    if (notify_register_check("com.apple.nesessionmanager.info", &ne_session_manager_get_info_current_info_token))
    {
      ne_session_manager_get_info_current_info_token = -1;
      return ne_session_manager_get_info_current_info & 1;
    }

    v0 = ne_session_manager_get_info_current_info_token;
    if (ne_session_manager_get_info_current_info_token < 0)
    {
      return ne_session_manager_get_info_current_info & 1;
    }
  }

  if (notify_check(v0, &check) || check && notify_get_state(ne_session_manager_get_info_current_info_token, &ne_session_manager_get_info_current_info))
  {
    notify_cancel(ne_session_manager_get_info_current_info_token);
    ne_session_manager_get_info_current_info_token = -1;
    ne_session_manager_get_info_current_info = 0;
  }

  return ne_session_manager_get_info_current_info & 1;
}

BOOL ne_session_should_disable_nexus()
{
  check = 0;
  v0 = ne_session_should_disable_nexus_disable_nexus_token;
  if (ne_session_should_disable_nexus_disable_nexus_token < 0)
  {
    if (notify_register_check("com.apple.networkextension.disable-nexus", &ne_session_should_disable_nexus_disable_nexus_token))
    {
      ne_session_should_disable_nexus_disable_nexus_token = -1;
      return ne_session_should_disable_nexus_current_state != 0;
    }

    v0 = ne_session_should_disable_nexus_disable_nexus_token;
    if (ne_session_should_disable_nexus_disable_nexus_token < 0)
    {
      return ne_session_should_disable_nexus_current_state != 0;
    }
  }

  if (notify_check(v0, &check) || check && notify_get_state(ne_session_should_disable_nexus_disable_nexus_token, &ne_session_should_disable_nexus_current_state))
  {
    notify_cancel(ne_session_should_disable_nexus_disable_nexus_token);
    ne_session_should_disable_nexus_disable_nexus_token = -1;
    ne_session_should_disable_nexus_current_state = 0;
  }

  return ne_session_should_disable_nexus_current_state != 0;
}

BOOL ne_session_disable_restrictions()
{
  check = 0;
  v0 = ne_session_disable_restrictions_disable_restrictions_token;
  if (ne_session_disable_restrictions_disable_restrictions_token < 0)
  {
    if (notify_register_check("com.apple.networkextension.disable-restrictions", &ne_session_disable_restrictions_disable_restrictions_token))
    {
      ne_session_disable_restrictions_disable_restrictions_token = -1;
      return ne_session_disable_restrictions_current_state != 0;
    }

    v0 = ne_session_disable_restrictions_disable_restrictions_token;
    if (ne_session_disable_restrictions_disable_restrictions_token < 0)
    {
      return ne_session_disable_restrictions_current_state != 0;
    }
  }

  if (notify_check(v0, &check) || check && notify_get_state(ne_session_disable_restrictions_disable_restrictions_token, &ne_session_disable_restrictions_current_state))
  {
    notify_cancel(ne_session_disable_restrictions_disable_restrictions_token);
    ne_session_disable_restrictions_disable_restrictions_token = -1;
    ne_session_disable_restrictions_current_state = 0;
  }

  return ne_session_disable_restrictions_current_state != 0;
}

BOOL ne_session_fallback_advisory()
{
  check = 0;
  v0 = ne_session_fallback_advisory_fallback_advisory_token;
  if (ne_session_fallback_advisory_fallback_advisory_token < 0)
  {
    if (notify_register_check("com.apple.symptoms.hasAlternateAdvice", &ne_session_fallback_advisory_fallback_advisory_token))
    {
      ne_session_fallback_advisory_fallback_advisory_token = -1;
      return ne_session_fallback_advisory_current_state != 0;
    }

    v0 = ne_session_fallback_advisory_fallback_advisory_token;
    if (ne_session_fallback_advisory_fallback_advisory_token < 0)
    {
      return ne_session_fallback_advisory_current_state != 0;
    }
  }

  if (notify_check(v0, &check) || check && notify_get_state(ne_session_fallback_advisory_fallback_advisory_token, &ne_session_fallback_advisory_current_state))
  {
    notify_cancel(ne_session_fallback_advisory_fallback_advisory_token);
    ne_session_fallback_advisory_fallback_advisory_token = -1;
    ne_session_fallback_advisory_current_state = 0;
  }

  return ne_session_fallback_advisory_current_state != 0;
}

uint64_t ne_session_fallback_default()
{
  check = 0;
  v0 = ne_session_fallback_default_fallback_default_token;
  if (ne_session_fallback_default_fallback_default_token < 0)
  {
    if (notify_register_check("com.apple.networkextension.fallback-default", &ne_session_fallback_default_fallback_default_token))
    {
      ne_session_fallback_default_fallback_default_token = -1;
      return ne_session_fallback_default_current_state;
    }

    v0 = ne_session_fallback_default_fallback_default_token;
    if (ne_session_fallback_default_fallback_default_token < 0)
    {
      return ne_session_fallback_default_current_state;
    }
  }

  if (notify_check(v0, &check) || check && notify_get_state(ne_session_fallback_default_fallback_default_token, &ne_session_fallback_default_current_state))
  {
    notify_cancel(ne_session_fallback_default_fallback_default_token);
    ne_session_fallback_default_fallback_default_token = -1;
    ne_session_fallback_default_current_state = 0;
  }

  return ne_session_fallback_default_current_state;
}

BOOL ne_session_applications_have_local_network_entitlements()
{
  check = 0;
  v0 = ne_session_applications_have_local_network_entitlements_have_entitlements_token;
  if (ne_session_applications_have_local_network_entitlements_have_entitlements_token < 0)
  {
    if (notify_register_check("com.apple.networkextension.apps-have-local-network-entitlements", &ne_session_applications_have_local_network_entitlements_have_entitlements_token))
    {
      ne_session_applications_have_local_network_entitlements_have_entitlements_token = -1;
      return ne_session_applications_have_local_network_entitlements_current_state != 0;
    }

    v0 = ne_session_applications_have_local_network_entitlements_have_entitlements_token;
    if (ne_session_applications_have_local_network_entitlements_have_entitlements_token < 0)
    {
      return ne_session_applications_have_local_network_entitlements_current_state != 0;
    }
  }

  if (notify_check(v0, &check) || check && notify_get_state(ne_session_applications_have_local_network_entitlements_have_entitlements_token, &ne_session_applications_have_local_network_entitlements_current_state))
  {
    notify_cancel(ne_session_applications_have_local_network_entitlements_have_entitlements_token);
    ne_session_applications_have_local_network_entitlements_have_entitlements_token = -1;
    ne_session_applications_have_local_network_entitlements_current_state = 0;
  }

  return ne_session_applications_have_local_network_entitlements_current_state != 0;
}

uint64_t ne_get_configuration_generation()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = ne_get_configuration_generation_configuration_changed_token;
  if (ne_get_configuration_generation_configuration_changed_token < 0)
  {
    if (notify_register_check("com.apple.neconfigurationchanged", &ne_get_configuration_generation_configuration_changed_token))
    {
      ne_get_configuration_generation_configuration_changed_token = -1;
      goto LABEL_14;
    }

    v0 = ne_get_configuration_generation_configuration_changed_token;
    if (ne_get_configuration_generation_configuration_changed_token < 0)
    {
      goto LABEL_14;
    }
  }

  check = 0;
  v1 = notify_check(v0, &check);
  if (!v1)
  {
    if (!check)
    {
      goto LABEL_14;
    }

    v9 = 0;
    state = notify_get_state(ne_get_configuration_generation_configuration_changed_token, &v9);
    if (!state)
    {
      ne_get_configuration_generation_current_generation = v9 & 0x7FFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v5 = state;
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    *buf = 136315650;
    v12 = "com.apple.neconfigurationchanged";
    v13 = 1024;
    v14 = ne_get_configuration_generation_configuration_changed_token;
    v15 = 1024;
    v16 = v5;
    v6 = "notify_get_state failed for %s, token = %d: %u";
    goto LABEL_16;
  }

  v2 = v1;
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v12 = "com.apple.neconfigurationchanged";
    v13 = 1024;
    v14 = ne_get_configuration_generation_configuration_changed_token;
    v15 = 1024;
    v16 = v2;
    v6 = "notify_check failed for %s, token = %d: %u";
LABEL_16:
    _os_log_error_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_ERROR, v6, buf, 0x18u);
  }

LABEL_4:
  notify_cancel(ne_get_configuration_generation_configuration_changed_token);
  ne_get_configuration_generation_configuration_changed_token = -1;
  ne_get_configuration_generation_current_generation = 0;
LABEL_14:
  result = ne_get_configuration_generation_current_generation;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ne_session_always_on_vpn_configs_present_at_boot()
{
  if ((get_current_config_state() & 0x2000000000000000) != 0)
  {
    return 1;
  }

  v0 = open("/Library/Preferences/com.apple.networkextension.necp.plist", 0);
  if (v0 == -1)
  {
    return 0;
  }

  v1 = v0;
  memset(&v9, 0, sizeof(v9));
  if (fstat(v0, &v9))
  {
    st_size = 0;
  }

  else
  {
    st_size = v9.st_size;
  }

  if ((st_size - 1) <= 0x27FE && (v3 = malloc_type_malloc(st_size, 0xEEB646F5uLL)) != 0)
  {
    v4 = v3;
    if (pread(v1, v3, st_size, 0) == st_size && (v5 = xpc_create_from_plist()) != 0)
    {
      v6 = v5;
      v7 = xpc_dictionary_get_int64(v5, "drop_all_feature_always_on_vpn") != 0;
      xpc_release(v6);
    }

    else
    {
      v7 = 0;
    }

    free(v4);
  }

  else
  {
    v7 = 0;
  }

  close(v1);
  return v7;
}

uint64_t ne_session_is_always_on_vpn_enabled(NSObject *a1, const void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&ne_session_is_always_on_vpn_enabled_notify_lock);
  ne_session_is_always_on_vpn_enabled_enabled = ne_session_always_on_vpn_configs_present_at_boot();
  v4 = ne_session_is_always_on_vpn_enabled_queue;
  if (ne_session_is_always_on_vpn_enabled_queue != a1 || ne_session_is_always_on_vpn_enabled_handler != a2)
  {
    if (ne_session_is_always_on_vpn_enabled_notify_token != -1)
    {
      notify_cancel(ne_session_is_always_on_vpn_enabled_notify_token);
      ne_session_is_always_on_vpn_enabled_notify_token = -1;
      v4 = ne_session_is_always_on_vpn_enabled_queue;
    }

    if (v4)
    {
      dispatch_release(v4);
      ne_session_is_always_on_vpn_enabled_queue = 0;
    }

    if (ne_session_is_always_on_vpn_enabled_handler)
    {
      _Block_release(ne_session_is_always_on_vpn_enabled_handler);
      ne_session_is_always_on_vpn_enabled_handler = 0;
    }
  }

  if (a1)
  {
    if (a2)
    {
      ne_session_is_always_on_vpn_enabled_queue = a1;
      dispatch_retain(a1);
      ne_session_is_always_on_vpn_enabled_handler = _Block_copy(a2);
      v6 = notify_register_dispatch("com.apple.neconfigurationchanged", &ne_session_is_always_on_vpn_enabled_notify_token, ne_session_is_always_on_vpn_enabled_queue, &__block_literal_global_143);
      if (v6)
      {
        v7 = v6;
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315394;
          v12 = "com.apple.neconfigurationchanged";
          v13 = 1024;
          v14 = v7;
          _os_log_error_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_ERROR, "Failed to register for %s notifications in ne_session_is_always_on_vpn_enabled: %u", &v11, 0x12u);
        }
      }
    }
  }

  os_unfair_lock_unlock(&ne_session_is_always_on_vpn_enabled_notify_lock);
  result = ne_session_is_always_on_vpn_enabled_enabled;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __ne_session_is_always_on_vpn_enabled_block_invoke(uint64_t a1, int a2)
{
  current_config_state = get_current_config_state();
  os_unfair_lock_lock(&ne_session_is_always_on_vpn_enabled_notify_lock);
  if (ne_session_is_always_on_vpn_enabled_notify_token != a2 || ((v4 = current_config_state & 0x2000000000000000, ne_session_is_always_on_vpn_enabled_enabled != (current_config_state & 0x2000000000000000uLL) >> 61) ? (v5 = ne_session_is_always_on_vpn_enabled_handler == 0) : (v5 = 1), v5))
  {

    os_unfair_lock_unlock(&ne_session_is_always_on_vpn_enabled_notify_lock);
  }

  else
  {
    ne_session_is_always_on_vpn_enabled_enabled = (current_config_state & 0x2000000000000000uLL) >> 61;
    v6 = _Block_copy(ne_session_is_always_on_vpn_enabled_handler);
    os_unfair_lock_unlock(&ne_session_is_always_on_vpn_enabled_notify_lock);
    if (v6)
    {
      v6[2](v6, v4 != 0);

      _Block_release(v6);
    }
  }
}

uint64_t ne_session_create(uint64_t a1, int a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (globals_init_sess_init != -1)
  {
    dispatch_once(&globals_init_sess_init, &__block_literal_global_181);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_create_block_invoke;
  block[3] = &unk_1E812AC30;
  v7 = a2;
  block[4] = &v8;
  block[5] = a1;
  dispatch_sync(g_queue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void *__ne_session_create_block_invoke(uint64_t a1)
{
  v2 = g_sessions;
  if (g_sessions)
  {
    while (uuid_compare(*(a1 + 40), v2) || *(v2 + 16) != *(a1 + 48) || *(v2 + 64) == 1)
    {
      v2 = *(v2 + 48);
      if (!v2)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    result = malloc_type_malloc(0x48uLL, 0x10A0040C4150745uLL);
    if (!result)
    {
      return result;
    }

    v2 = result;
    result[8] = 0;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *result = 0u;
    *(result + 3) = 0u;
    v4 = result + 6;
    uuid_copy(result, *(a1 + 40));
    *(v2 + 16) = *(a1 + 48);
    *(v2 + 24) = 0;
    *(v2 + 32) = 1;
    v5 = g_sessions;
    *v4 = g_sessions;
    if (v5)
    {
      *(v5 + 56) = v4;
    }

    g_sessions = v2;
    *(v2 + 56) = &g_sessions;
  }

  result = malloc_type_malloc(0x30uLL, 0x10A0040D517E767uLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  **(*(*(a1 + 32) + 8) + 24) = v2;
  atomic_fetch_add_explicit((*(*(*(a1 + 32) + 8) + 24) + 40), 1u, memory_order_relaxed);
  v9 = *(v2 + 24);
  v8 = (v2 + 24);
  v7 = v9;
  *(*(*(*(a1 + 32) + 8) + 24) + 8) = v9;
  if (v9)
  {
    *(v7 + 16) = *(*(*(a1 + 32) + 8) + 24) + 8;
  }

  *v8 = *(*(*(a1 + 32) + 8) + 24);
  *(*(*(*(a1 + 32) + 8) + 24) + 16) = v8;
  return result;
}

void ne_session_set_event_handler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_set_event_handler_block_invoke;
  block[3] = &unk_1E812AC78;
  block[4] = a3;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(g_queue, block);
}

void __ne_session_set_event_handler_block_invoke(void *a1)
{
  v1 = a1[5];
  if (v1)
  {
    ne_session_clear_event_handler(a1[5], 0);
    v3 = a1[4];
    v4 = v3 ? _Block_copy(v3) : 0;
    v5 = a1[6];
    *(v1 + 24) = v4;
    *(v1 + 32) = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }
  }

  if (get_current_notify_pid())
  {

    update_all_session_clients();
  }
}

void ne_session_cancel(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_cancel_block_invoke;
  block[3] = &__block_descriptor_tmp_11;
  block[4] = a1;
  dispatch_sync(g_queue, block);
}

void __ne_session_cancel_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    ne_session_clear_event_handler(v1, 1);
  }
}

void ne_session_get_status(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_get_status_block_invoke;
  block[3] = &unk_1E812AD10;
  block[5] = a1;
  block[6] = a2;
  block[4] = a3;
  dispatch_sync(g_queue, block);
}

void __ne_session_get_status_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  dispatch_retain(*(a1 + 48));
  v3 = _Block_copy(*(a1 + 32));
  atomic_fetch_add_explicit((*(a1 + 40) + 40), 1u, memory_order_relaxed);
  v4 = *v2;
  v5 = g_sessions;
  if (*v2)
  {
    v6 = g_sessions == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  while (v5 != v4)
  {
    v5 = *(v5 + 48);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if ((*(v4 + 64) & 1) != 0 || !*(v4 + 40))
  {
LABEL_11:
    if (get_current_notify_pid())
    {
      v8 = *v2;
      v9 = *(a1 + 48);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __ne_session_get_status_block_invoke_2;
      v13[3] = &unk_1E812ACC0;
      v13[4] = v3;
      v13[5] = v9;
      v13[6] = *(a1 + 40);
      fetch_status(v8, v2, v9, v13);
      return;
    }

    v7 = 1;
  }

  else
  {
    v7 = *(v4 + 32);
  }

  v10 = *(a1 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_get_status_block_invoke_3;
  block[3] = &unk_1E812ACE8;
  v12 = v7;
  block[4] = v3;
  block[5] = v10;
  block[6] = *(a1 + 40);
  dispatch_async(v10, block);
}

void __ne_session_get_status_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 40));
  v2 = *(a1 + 48);

  ne_session_release(v2);
}

void __ne_session_get_status_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 40));
  v3 = *(a1 + 48);

  ne_session_release(v3);
}

const char *ne_session_info_type_to_string(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "unknown";
  }

  else
  {
    return off_1E812B5D0[a1 - 1];
  }
}

void ne_session_local_communication_send_info(uint64_t a1, int a2, uint64_t a3, dispatch_object_t object, const void *a5)
{
  dispatch_retain(object);
  v10 = _Block_copy(a5);
  atomic_fetch_add_explicit((a1 + 40), 1u, memory_order_relaxed);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_local_communication_send_info_block_invoke;
  block[3] = &unk_1E812ADD8;
  block[4] = v10;
  block[5] = a1;
  v12 = a2;
  block[6] = object;
  block[7] = a3;
  dispatch_sync(g_queue, block);
}

void __ne_session_local_communication_send_info_block_invoke(uint64_t a1)
{
  if (!get_current_notify_pid())
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __ne_session_local_communication_send_info_block_invoke_2_30;
    v10[3] = &unk_1E812ADB0;
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v10[5] = v6;
    v10[6] = v7;
    v8 = v10;
LABEL_8:
    dispatch_async(v6, v8);
    return;
  }

  connection = get_connection(**(a1 + 40));
  if (!connection)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __ne_session_local_communication_send_info_block_invoke_2;
    block[3] = &unk_1E812AD38;
    v9 = *(a1 + 40);
    v6 = *(a1 + 48);
    block[4] = *(a1 + 32);
    block[5] = v6;
    block[6] = v9;
    v8 = block;
    goto LABEL_8;
  }

  v3 = connection;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "SessionCommandType", 7);
  xpc_dictionary_set_int64(v4, "SessionInfoType", *(a1 + 64));
  v5 = *(a1 + 56);
  if (v5)
  {
    xpc_dictionary_set_value(v4, "SessionAppPushCallInfo", v5);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __ne_session_local_communication_send_info_block_invoke_3;
  handler[3] = &unk_1E812AD88;
  v13 = *(a1 + 64);
  handler[4] = *(a1 + 32);
  v12 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  xpc_connection_send_message_with_reply(v3, v4, g_queue, handler);
  xpc_release(v4);
}

void __ne_session_local_communication_send_info_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 40));
  v2 = *(a1 + 48);

  ne_session_release(v2);
}

void __ne_session_local_communication_send_info_block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 && (v4 = MEMORY[0x1C68E6D80](a2), v5 = MEMORY[0x1E69E9E80], v4 == MEMORY[0x1E69E9E80]))
  {
    value = xpc_dictionary_get_value(a2, "SessionAppPushSendMessageResult");
    v7 = value;
    if (!value)
    {
      goto LABEL_6;
    }

    if (MEMORY[0x1C68E6D80](value) == v5)
    {
      xpc_retain(v7);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 56);
      string = xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
      *buf = 67109378;
      v15 = v10;
      v16 = 2080;
      v17 = string;
      _os_log_error_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_ERROR, "Failed to send info with type %d: %s", buf, 0x12u);
    }
  }

  v7 = 0;
LABEL_6:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __ne_session_local_communication_send_info_block_invoke_26;
  v12[3] = &unk_1E812AD60;
  v12[4] = *(a1 + 32);
  v12[5] = v7;
  v13 = *(a1 + 40);
  dispatch_async(v13, v12);
  v8 = *MEMORY[0x1E69E9840];
}

void __ne_session_local_communication_send_info_block_invoke_2_30(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 40));
  v2 = *(a1 + 48);

  ne_session_release(v2);
}

void __ne_session_local_communication_send_info_block_invoke_26(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    xpc_release(v3);
  }

  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 48));
  v4 = *(a1 + 56);

  ne_session_release(v4);
}

uint64_t ne_session_map_interface_to_provider_uuid(const char *a1, uuid_t uu)
{
  v23 = *MEMORY[0x1E69E9840];
  uuid_clear(uu);
  if (a1)
  {
    getpid();
    v4 = "com.apple.nesessionmanager";
    if (sandbox_check())
    {
      v5 = ne_log_obj();
      v4 = "com.apple.nesessionmanager.flow-divert-token";
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v18 = "com.apple.nesessionmanager.flow-divert-token";
        _os_log_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_INFO, "Falling back to %s", buf, 0xCu);
      }
    }

    mach_service = xpc_connection_create_mach_service(v4, g_queue, 2uLL);
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_38);
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_int64(empty, "SessionClientType", 3);
    xpc_dictionary_set_string(empty, "InterfaceMapInfo", a1);
    xpc_connection_resume(mach_service);
    v8 = xpc_connection_send_message_with_reply_sync(mach_service, empty);
    if (!v8)
    {
      v11 = 0;
LABEL_19:
      xpc_release(empty);
      xpc_connection_cancel(mach_service);
      xpc_release(mach_service);
      goto LABEL_20;
    }

    v9 = v8;
    if (MEMORY[0x1C68E6D80](v8) == MEMORY[0x1E69E9E80])
    {
      uuid = xpc_dictionary_get_uuid(v9, "MachOUUID");
      if (uuid)
      {
        *uu = *uuid;
        v13 = ne_log_obj();
        v11 = 1;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v18 = a1;
          v19 = 1040;
          v20 = 16;
          v21 = 2096;
          v22 = uu;
          _os_log_impl(&dword_1C0DA5000, v13, OS_LOG_TYPE_INFO, "Mapped interface %s to provider UUID: %{uuid_t}.16P", buf, 0x1Cu);
        }

        goto LABEL_18;
      }

      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_DEBUG, "Error mapping interface to provider UUID: malformed response from nesessionmanager.", buf, 2u);
      }
    }

    else if (MEMORY[0x1C68E6D80](v9) == MEMORY[0x1E69E9E98])
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_ERROR, "Error sending a map interface message to nesessionmanager.", buf, 2u);
      }
    }

    v11 = 0;
LABEL_18:
    xpc_release(v9);
    goto LABEL_19;
  }

  v11 = 0;
LABEL_20:
  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void __ne_session_map_interface_to_provider_uuid_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1C68E6D80](a2);
    if (a2 != MEMORY[0x1E69E9E20] && v3 == MEMORY[0x1E69E9E98])
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_ERROR, "Error sending a map interface message to nesessionmanager.", v6, 2u);
      }
    }
  }
}

uint64_t ne_session_set_device_communication_exception(_BOOL4 a1)
{
  v24 = *MEMORY[0x1E69E9840];
  getpid();
  v2 = "com.apple.nesessionmanager";
  if (sandbox_check())
  {
    v3 = ne_log_obj();
    v2 = "com.apple.nesessionmanager.flow-divert-token";
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "ne_session_set_device_communication_exception";
      v22 = 2080;
      v23 = "com.apple.nesessionmanager.flow-divert-token";
      _os_log_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_INFO, "%s: Falling back to %s", buf, 0x16u);
    }
  }

  mach_service = xpc_connection_create_mach_service(v2, g_queue, 2uLL);
  if (mach_service)
  {
    v5 = mach_service;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __ne_session_set_device_communication_exception_block_invoke;
    handler[3] = &__block_descriptor_tmp_42;
    handler[4] = v2;
    xpc_connection_set_event_handler(mach_service, handler);
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_int64(empty, "SessionClientType", 4);
    xpc_dictionary_set_BOOL(empty, "DeviceCommunicationExceptionEnable", a1);
    xpc_connection_resume(v5);
    v7 = xpc_connection_send_message_with_reply_sync(v5, empty);
    if (!v7)
    {
      v11 = 0;
LABEL_25:
      xpc_release(empty);
      xpc_release(v5);
      goto LABEL_26;
    }

    v8 = v7;
    if (MEMORY[0x1C68E6D80](v7) == MEMORY[0x1E69E9E80])
    {
      v12 = xpc_dictionary_get_BOOL(v8, "DeviceCommunicationExceptionResult");
      v13 = ne_log_obj();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (v12)
      {
        if (v14)
        {
          v15 = "disabled";
          if (a1)
          {
            v15 = "enabled";
          }

          *buf = 136315138;
          v21 = v15;
          v11 = 1;
          _os_log_impl(&dword_1C0DA5000, v13, OS_LOG_TYPE_INFO, "DeviceCommunicationException succeeded: %s", buf, 0xCu);
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_24;
      }

      if (v14)
      {
        v16 = "disabled";
        if (a1)
        {
          v16 = "enabled";
        }

        *buf = 136315138;
        v21 = v16;
        _os_log_impl(&dword_1C0DA5000, v13, OS_LOG_TYPE_INFO, "DeviceCommunicationException failed: %s", buf, 0xCu);
      }
    }

    else if (MEMORY[0x1C68E6D80](v8) == MEMORY[0x1E69E9E98])
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v21 = v2;
        _os_log_error_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_ERROR, "Error sending a DeviceCommunicationException message to %s", buf, 0xCu);
      }
    }

    v11 = 0;
LABEL_24:
    xpc_release(v8);
    goto LABEL_25;
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "ne_session_set_device_communication_exception";
    v22 = 2080;
    v23 = v2;
    _os_log_error_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_ERROR, "%s: Error failed to create connection to %s", buf, 0x16u);
  }

  v11 = 0;
LABEL_26:
  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

void __ne_session_set_device_communication_exception_block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = MEMORY[0x1C68E6D80](a2);
    if (a2 != MEMORY[0x1E69E9E20] && v4 == MEMORY[0x1E69E9E98])
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = 136315138;
        v10 = v8;
        _os_log_error_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_ERROR, "XPC Event - Error sending a DeviceCommunicationException message to %s", &v9, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void ne_session_get_info_with_parameters(uint64_t a1, int a2, uint64_t a3, char a4, dispatch_object_t object, const void *a6)
{
  dispatch_retain(object);
  v12 = _Block_copy(a6);
  atomic_fetch_add_explicit((a1 + 40), 1u, memory_order_relaxed);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_get_info_with_parameters_block_invoke;
  block[3] = &unk_1E812B2A8;
  v15 = a4;
  block[4] = v12;
  block[5] = a1;
  v14 = a2;
  block[6] = object;
  block[7] = a3;
  dispatch_sync(g_queue, block);
}

void __ne_session_get_info_with_parameters_block_invoke(uint64_t a1)
{
  if (!get_current_notify_pid() && *(a1 + 68) != 1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __ne_session_get_info_with_parameters_block_invoke_2_200;
    v10[3] = &unk_1E812B280;
    v9 = *(a1 + 40);
    v6 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v10[5] = v6;
    v10[6] = v9;
    v8 = v10;
    goto LABEL_9;
  }

  connection = get_connection(**(a1 + 40));
  if (!connection)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __ne_session_get_info_with_parameters_block_invoke_2;
    v14[3] = &unk_1E812B208;
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v14[4] = *(a1 + 32);
    v14[5] = v6;
    v14[6] = v7;
    v8 = v14;
LABEL_9:
    dispatch_async(v6, v8);
    return;
  }

  v3 = connection;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "SessionCommandType", 6);
  xpc_dictionary_set_int64(v4, "SessionInfoType", *(a1 + 64));
  v5 = *(a1 + 56);
  if (v5)
  {
    xpc_dictionary_set_value(v4, "SessionOptions", v5);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __ne_session_get_info_with_parameters_block_invoke_3;
  handler[3] = &unk_1E812B258;
  v13 = *(a1 + 64);
  handler[4] = *(a1 + 32);
  v12 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  xpc_connection_send_message_with_reply(v3, v4, g_queue, handler);
  xpc_release(v4);
}

void __ne_session_get_info_with_parameters_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 40));
  v2 = *(a1 + 48);

  ne_session_release(v2);
}

void __ne_session_get_info_with_parameters_block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 && (v4 = MEMORY[0x1C68E6D80](a2), v5 = MEMORY[0x1E69E9E80], v4 == MEMORY[0x1E69E9E80]))
  {
    value = xpc_dictionary_get_value(a2, "SessionInfo");
    v7 = value;
    if (!value)
    {
      goto LABEL_6;
    }

    if (MEMORY[0x1C68E6D80](value) == v5)
    {
      xpc_retain(v7);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 56);
      string = xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
      *buf = 67109378;
      v15 = v10;
      v16 = 2080;
      v17 = string;
      _os_log_error_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch info with type %d: %s", buf, 0x12u);
    }
  }

  v7 = 0;
LABEL_6:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __ne_session_get_info_with_parameters_block_invoke_197;
  v12[3] = &unk_1E812B230;
  v12[4] = *(a1 + 32);
  v12[5] = v7;
  v13 = *(a1 + 40);
  dispatch_async(v13, v12);
  v8 = *MEMORY[0x1E69E9840];
}

void __ne_session_get_info_with_parameters_block_invoke_2_200(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 40));
  v2 = *(a1 + 48);

  ne_session_release(v2);
}

void __ne_session_get_info_with_parameters_block_invoke_197(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    xpc_release(v3);
  }

  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 48));
  v4 = *(a1 + 56);

  ne_session_release(v4);
}

void ne_session_send_barrier(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_send_barrier_block_invoke;
  block[3] = &unk_1E812AE40;
  block[4] = &v6;
  block[5] = a1;
  dispatch_sync(g_queue, block);
  if (v7[3])
  {
    v1 = dispatch_semaphore_create(0);
    v2 = dispatch_time(0, 1000000000);
    dispatch_retain(v1);
    v3 = v7[3];
    barrier[0] = MEMORY[0x1E69E9820];
    barrier[1] = 0x40000000;
    barrier[2] = __ne_session_send_barrier_block_invoke_2;
    barrier[3] = &__block_descriptor_tmp_48_176;
    barrier[4] = v1;
    xpc_connection_send_barrier(v3, barrier);
    dispatch_semaphore_wait(v1, v2);
    dispatch_release(v1);
    xpc_release(v7[3]);
  }

  _Block_object_dispose(&v6, 8);
}

xpc_object_t __ne_session_send_barrier_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = get_connection(**(a1 + 40));
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {

    return xpc_retain(result);
  }

  return result;
}

void __ne_session_send_barrier_block_invoke_2(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void ne_session_start_on_behalf_of(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_start_on_behalf_of_block_invoke;
  block[3] = &__block_descriptor_tmp_55;
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a7;
  block[4] = a1;
  block[5] = a2;
  dispatch_sync(g_queue, block);
}

void __ne_session_start_on_behalf_of_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  connection = get_connection(*v2);
  if (connection)
  {
    v4 = connection;
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "SessionCommandType", 2);
    v6 = *(a1 + 48);
    xpc_dictionary_set_mach_send();
    v7 = *(a1 + 52);
    xpc_dictionary_set_mach_send();
    xpc_dictionary_set_int64(v5, "SessionGroupID", *(a1 + 56));
    xpc_dictionary_set_int64(v5, "SessionUserID", *(a1 + 60));
    xpc_dictionary_set_int64(v5, "SessionPID", *(a1 + 64));
    v8 = *(a1 + 40);
    if (v8)
    {
      xpc_dictionary_set_value(v5, "SessionOptions", v8);
    }

    xpc_connection_send_message(v4, v5);
    xpc_release(v5);
    v9 = *v2;
    if (*(*v2 + 32) != 2)
    {
      *(v9 + 32) = 2;
      for (i = *(v9 + 24); i; i = *(i + 8))
      {
        notify_client(i, 1);
      }
    }
  }

  else
  {
    v11 = *v2;
    if (*(*v2 + 32))
    {
      *(v11 + 32) = 0;
      for (j = *(v11 + 24); j; j = *(j + 8))
      {
        notify_client(j, 1);
      }
    }
  }
}

void ne_session_start_with_options(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E99F8];
  v5 = audit_session_self();
  v6 = geteuid();
  v7 = getegid();
  v8 = getpid();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_start_on_behalf_of_block_invoke;
  block[3] = &__block_descriptor_tmp_55;
  v10 = v4;
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v14 = v8;
  block[4] = a1;
  block[5] = a2;
  dispatch_sync(g_queue, block);
}

void ne_session_stop(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = __ne_session_stop_with_reason_block_invoke;
  v1[3] = &__block_descriptor_tmp_204;
  v1[4] = a1;
  v2 = 1;
  dispatch_sync(g_queue, v1);
}

void __ne_session_stop_with_reason_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (get_current_notify_pid())
  {
    connection = get_connection(*v2);
    if (connection)
    {
      v4 = connection;
      v5 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v5, "SessionCommandType", 3);
      xpc_dictionary_set_int64(v5, "SessionStopReason", *(a1 + 40));
      xpc_connection_send_message(v4, v5);
      xpc_release(v5);
      v6 = *v2;
      if (*(*v2 + 32) != 5)
      {
        *(v6 + 32) = 5;
        for (i = *(v6 + 24); i; i = *(i + 8))
        {
          notify_client(i, 1);
        }
      }
    }

    else
    {
      v8 = *v2;
      if (*(*v2 + 32))
      {
        *(v8 + 32) = 0;
        for (j = *(v8 + 24); j; j = *(j + 8))
        {
          notify_client(j, 1);
        }
      }
    }
  }
}

void ne_session_establish_ipc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_establish_ipc_block_invoke;
  block[3] = &unk_1E812AF20;
  block[4] = a3;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(g_queue, block);
}

void __ne_session_establish_ipc_block_invoke(uint64_t a1)
{
  connection = get_connection(**(a1 + 40));
  v3 = _Block_copy(*(a1 + 32));
  dispatch_retain(*(a1 + 48));
  atomic_fetch_add_explicit((*(a1 + 40) + 40), 1u, memory_order_relaxed);
  if (connection)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "SessionCommandType", 4);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __ne_session_establish_ipc_block_invoke_3;
    v6[3] = &unk_1E812AEF8;
    v6[4] = v3;
    v7 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    xpc_connection_send_message_with_reply(connection, v4, g_queue, v6);
    xpc_release(v4);
  }

  else
  {
    v5 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __ne_session_establish_ipc_block_invoke_2;
    block[3] = &unk_1E812AEA8;
    block[4] = v3;
    block[5] = v5;
    block[6] = *(a1 + 40);
    dispatch_async(v5, block);
  }
}

void __ne_session_establish_ipc_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 40));
  v2 = *(a1 + 48);

  ne_session_release(v2);
}

void __ne_session_establish_ipc_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    if (MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E80])
    {
      value = xpc_dictionary_get_value(v2, "SessionPrimaryPluginEndpoint");
      v2 = value;
      if (!value)
      {
        goto LABEL_4;
      }

      if (MEMORY[0x1C68E6D80](value) == MEMORY[0x1E69E9E90])
      {
        xpc_retain(v2);
        goto LABEL_4;
      }
    }

    v2 = 0;
  }

LABEL_4:
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __ne_session_establish_ipc_block_invoke_4;
  v5[3] = &unk_1E812AED0;
  v5[4] = *(a1 + 32);
  v5[5] = v2;
  dispatch_async(*(a1 + 40), v5);
}

void __ne_session_establish_ipc_block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = 134217984;
    v8 = v6;
    _os_log_debug_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_DEBUG, "Establish IPC returning primary = %p", &v7, 0xCu);
  }

  v3 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {
    xpc_release(v4);
  }

  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 48));
  ne_session_release(*(a1 + 56));
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t ne_session_add_necp_drop_dest_from_path(const char *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v19 = 324;
  if (sysctlbyname("net.necp.drop_dest_level", 0, &v19, 0, 0))
  {
    v2 = *__error();
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = strerror(v2);
      buf.st_dev = 136315394;
      *&buf.st_mode = "ne_session_add_necp_drop_dest_from_path";
      WORD2(buf.st_ino) = 2080;
      *(&buf.st_ino + 6) = v4;
      v5 = "%s: get len sysctlbyname(net.necp.drop_dest_level) failed %s";
LABEL_7:
      _os_log_error_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_ERROR, v5, &buf, 0x16u);
    }
  }

  else if (sysctlbyname("net.necp.drop_dest_level", v20, &v19, 0, 0))
  {
    v2 = *__error();
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = strerror(v2);
      buf.st_dev = 136315394;
      *&buf.st_mode = "ne_session_add_necp_drop_dest_from_path";
      WORD2(buf.st_ino) = 2080;
      *(&buf.st_ino + 6) = v6;
      v5 = "%s: get sysctlbyname(net.necp.drop_dest_level) failed %s";
      goto LABEL_7;
    }
  }

  else
  {
    v7 = open(a1, 0);
    if (v7 == -1)
    {
      v2 = *__error();
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = strerror(v2);
        buf.st_dev = 136315650;
        *&buf.st_mode = "ne_session_add_necp_drop_dest_from_path";
        WORD2(buf.st_ino) = 2080;
        *(&buf.st_ino + 6) = a1;
        HIWORD(buf.st_gid) = 2080;
        *&buf.st_rdev = v15;
        _os_log_error_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_ERROR, "%s: open(%s) failed %s", &buf, 0x20u);
      }
    }

    else
    {
      v8 = v7;
      memset(&buf, 0, sizeof(buf));
      if (fstat(v7, &buf))
      {
        st_size = 0;
      }

      else
      {
        st_size = buf.st_size;
      }

      if ((st_size - 1) > 0x27FE)
      {
        if (st_size <= 0)
        {
          v2 = 0;
        }

        else
        {
          v2 = 27;
        }
      }

      else
      {
        v10 = malloc_type_malloc(st_size, 0xC08BE5F7uLL);
        if (v10)
        {
          v11 = v10;
          if (pread(v8, v10, st_size, 0) == st_size)
          {
            v12 = xpc_create_from_plist();
            if (v12)
            {
              v13 = v12;
              if (MEMORY[0x1C68E6D80]() == MEMORY[0x1E69E9E50])
              {
                v2 = ne_session_parse_necp_drop_dest_array(v13, v20);
              }

              else
              {
                v2 = 22;
              }

              xpc_release(v13);
            }

            else
            {
              v2 = 22;
            }
          }

          else
          {
            v2 = 0;
          }

          free(v11);
        }

        else
        {
          v2 = 55;
        }
      }

      close(v8);
    }

    if (!v2)
    {
      if (!sysctlbyname("net.necp.drop_dest_level", 0, 0, v20, 0x144uLL))
      {
        v2 = 0;
        goto LABEL_35;
      }

      v2 = *__error();
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v16 = strerror(v2);
        buf.st_dev = 136315394;
        *&buf.st_mode = "ne_session_add_necp_drop_dest_from_path";
        WORD2(buf.st_ino) = 2080;
        *(&buf.st_ino + 6) = v16;
        v5 = "%s: set sysctlbyname(net.necp.drop_dest_level) failed %s";
        goto LABEL_7;
      }
    }
  }

LABEL_35:
  v17 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t ne_session_parse_necp_drop_dest_array(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (xpc_array_get_count(a1))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v10 = 0x2000000000;
    v11 = 1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __ne_session_parse_necp_drop_dest_array_block_invoke;
    v8[3] = &unk_1E812B2F0;
    v8[4] = &buf;
    v8[5] = a2;
    xpc_array_apply(a1, v8);
    if (*(*(&buf + 1) + 24))
    {
      v4 = 0;
    }

    else
    {
      v4 = 22;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "ne_session_parse_necp_drop_dest_array";
      _os_log_error_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_ERROR, "%s: empty array", &buf, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL __ne_session_parse_necp_drop_dest_array_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  memset(v39, 0, 40);
  if (**(a1 + 40) == 8)
  {
    v3 = ne_log_obj();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "ne_session_parse_necp_drop_dest_array_block_invoke";
      _os_log_error_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_ERROR, "%s: too many entries", &buf, 0xCu);
      result = 0;
    }

    goto LABEL_50;
  }

  if (!a3 || MEMORY[0x1C68E6D80](a3) != MEMORY[0x1E69E9E80])
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v65 = 136315138;
      v66 = "ne_parse_necp_drop_dest_dictionary";
      _os_log_error_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_ERROR, "%s: item is not a dictionary", v65, 0xCu);
    }

    goto LABEL_47;
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = -1;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = -1;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 1;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 0x40000000;
  v58 = __ne_parse_necp_drop_dest_dictionary_block_invoke;
  v59 = &unk_1E812B318;
  v63 = &v40;
  v64 = a3;
  v60 = &v52;
  v61 = &v48;
  v62 = &v44;
  xpc_dictionary_apply(a3, &buf);
  if (*(v41 + 24) != 1)
  {
    goto LABEL_46;
  }

  v8 = *(v53 + 6);
  v9 = v49[3];
  v10 = *(v45 + 6);
  *v56 = 0uLL;
  *&v56[21] = 0;
  *&v56[16] = 0;
  if (v9)
  {
    if (v8 > 0xB || ((1 << v8) & 0xC1A) == 0)
    {
      v24 = ne_log_obj();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      *v65 = 136315394;
      v66 = "ne_parse_necp_drop_dest_entry";
      v67 = 1024;
      LODWORD(v68) = v8;
      v15 = "%s: bad priority level %d";
LABEL_35:
      v16 = v24;
      v17 = 18;
      goto LABEL_36;
    }

    v11 = inet_pton(30, v9, &v56[9]);
    if (v11 == 1)
    {
      v19 = 7708;
    }

    else
    {
      if (v11 == -1)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = __error();
          v14 = strerror(*v13);
          *v65 = 136315650;
          v66 = "ne_parse_necp_drop_dest_entry";
          v67 = 2080;
          v68 = v9;
          v69 = 2080;
          v70 = v14;
          v15 = "%s: inet_pton(AF_INET6, %s) failed %s";
          v16 = v12;
          v17 = 32;
LABEL_36:
          _os_log_error_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_ERROR, v15, v65, v17);
          goto LABEL_46;
        }

        goto LABEL_46;
      }

      v20 = inet_pton(2, v9, &v56[5]);
      if (v20 != 1)
      {
        if (v20 != -1)
        {
          v34 = ne_log_obj();
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_46;
          }

          *v65 = 136315394;
          v66 = "ne_parse_necp_drop_dest_entry";
          v67 = 2080;
          v68 = v9;
          v15 = "%s: bad address %s";
          v16 = v34;
          v17 = 22;
          goto LABEL_36;
        }

        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = __error();
          v23 = strerror(*v22);
          *v65 = 136315650;
          v66 = "ne_parse_necp_drop_dest_entry";
          v67 = 2080;
          v68 = v9;
          v69 = 2080;
          v70 = v23;
          _os_log_error_impl(&dword_1C0DA5000, v21, OS_LOG_TYPE_ERROR, "%s: inet_pton(AF_INET, %s) failed %s", v65, 0x20u);
        }

LABEL_27:
        v56[0] = v10;
        if ((v10 - 129) <= 0xFFFFFF7F && v56[2] == 30)
        {
          v24 = ne_log_obj();
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_46;
          }

          *v65 = 136315394;
          v66 = "ne_parse_necp_drop_dest_entry";
          v67 = 1024;
          LODWORD(v68) = v56[0];
          v15 = "%s: bad IPv6 prefix %d";
          goto LABEL_35;
        }

        if ((v10 - 33) <= 0xFFFFFFDF && v56[2] == 2)
        {
          v24 = ne_log_obj();
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_46;
          }

          *v65 = 136315394;
          v66 = "ne_parse_necp_drop_dest_entry";
          v67 = 1024;
          LODWORD(v68) = v56[0];
          v15 = "%s: bad IPv4 prefix %d";
          goto LABEL_35;
        }

        LODWORD(v39[0]) = v8;
        *(v39 + 8) = *v56;
        *(&v39[1] + 5) = *&v56[13];
        _Block_object_dispose(&v40, 8);
        _Block_object_dispose(&v44, 8);
        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(&v52, 8);
        v25 = *(a1 + 40);
        v28 = *v25;
        v26 = v25 + 1;
        v27 = v28;
        if (v28)
        {
          v29 = BYTE8(v39[0]);
          v30 = (*(a1 + 40) + 13);
          v31 = 1;
          v32 = v27;
          v33 = 1;
          do
          {
            if (*(v30 - 9) == v8 && *(v30 - 1) == v29 && !memcmp(v30, (v39 | 9), *v30))
            {
              break;
            }

            v33 = v31++ < v27;
            v30 += 40;
            --v32;
          }

          while (v32);
          if (v33)
          {
            goto LABEL_53;
          }
        }

        else
        {
          LODWORD(v27) = 0;
        }

        v37 = &v26[10 * v27];
        v38 = v39[1];
        *v37 = v39[0];
        *(v37 + 1) = v38;
        *(v37 + 4) = *&v39[2];
        ++**(a1 + 40);
LABEL_53:
        result = 1;
        goto LABEL_50;
      }

      v19 = 528;
    }

    *&v56[1] = v19;
    goto LABEL_27;
  }

  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *v65 = 136315138;
    v66 = "ne_parse_necp_drop_dest_entry";
    v15 = "%s: address_str is NULL";
    v16 = v18;
    v17 = 12;
    goto LABEL_36;
  }

LABEL_46:
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
LABEL_47:
  v35 = ne_log_obj();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "ne_session_parse_necp_drop_dest_array_block_invoke";
    _os_log_error_impl(&dword_1C0DA5000, v35, OS_LOG_TYPE_ERROR, "%s: not valid", &buf, 0xCu);
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_50:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ne_parse_necp_drop_dest_dictionary_block_invoke(uint64_t a1, char *__s1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!strcmp(__s1, "Level"))
  {
    value = xpc_dictionary_get_value(*(a1 + 64), "Level");
    *(*(*(a1 + 32) + 8) + 24) = ne_session_get_necp_level_from_xpc_value(value);
LABEL_10:
    result = 1;
    goto LABEL_11;
  }

  if (!strcmp(__s1, "Address"))
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_string(*(a1 + 64), "Address");
    goto LABEL_10;
  }

  if (!strcmp(__s1, "Prefix"))
  {
    *(*(*(a1 + 48) + 8) + 24) = xpc_dictionary_get_int64(*(a1 + 64), "Prefix");
    goto LABEL_10;
  }

  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "ne_parse_necp_drop_dest_dictionary_block_invoke";
    v10 = 2080;
    v11 = __s1;
    _os_log_error_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_ERROR, "%s: unexpected key %s", &v8, 0x16u);
  }

  result = 0;
  *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_11:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

char *ne_session_get_necp_level_from_xpc_value(char *result)
{
  if (result)
  {
    v1 = result;
    string_ptr = xpc_string_get_string_ptr(result);
    if (!string_ptr)
    {
      value = xpc_int64_get_value(v1);
      if (value > 0xA)
      {
        return 0;
      }

      string_ptr = ne_necp_legacy_level_to_string_mapping[value];
    }

    v4 = &ne_necp_policy_string_to_level_mapping;
    result = "Unknown";
    while (strcasecmp(result, string_ptr))
    {
      v5 = v4[2];
      v4 += 2;
      result = v5;
      if (!v5)
      {
        return result;
      }
    }

    return *(v4 + 2);
  }

  return result;
}

uint64_t ne_session_add_necp_drop_dest_from_dest_list(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (!a1 || MEMORY[0x1C68E6D80](a1, a2, a3, a4, a5, a6, a7, a8, v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34) != MEMORY[0x1E69E9E50])
  {
    v9 = 22;
LABEL_4:
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v16 = __error();
    v17 = strerror(*v16);
    *buf = 136315394;
    v40 = "ne_session_add_necp_drop_dest_from_dest_list";
    v41 = 2080;
    v42 = v17;
    v15 = "%s: failed %s";
LABEL_11:
    _os_log_error_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);
    goto LABEL_5;
  }

  v9 = ne_session_parse_necp_drop_dest_array(a1, &v18);
  if (v9)
  {
    goto LABEL_4;
  }

  if (!sysctlbyname("net.necp.drop_dest_level", 0, 0, &v18, 0x144uLL))
  {
    v9 = 0;
    goto LABEL_5;
  }

  v9 = *__error();
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136315394;
    v40 = "ne_session_add_necp_drop_dest_from_dest_list";
    v41 = 2080;
    v42 = v14;
    v15 = "%s: set sysctlbyname(net.necp.drop_dest_level) failed %s";
    goto LABEL_11;
  }

LABEL_5:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t ne_session_initialize_necp_drop_dest()
{
  v0 = 0;
  v42 = *MEMORY[0x1E69E9840];
  LODWORD(v40) = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v1 = "/var/mobile/Library/terminus/com.apple.necp_drop_dest.plist";
  v2 = &off_1E812AF48;
  v20 = 0u;
  v21 = 0u;
  v3 = MEMORY[0x1E69E9E50];
  do
  {
    v4 = open(v1, 0, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    if (v4 != -1)
    {
      v5 = v4;
      memset(&v41, 0, sizeof(v41));
      if (fstat(v4, &v41))
      {
        st_size = 0;
      }

      else
      {
        st_size = v41.st_size;
      }

      if ((st_size - 1) > 0x27FE)
      {
        if (st_size <= 0)
        {
          v0 = v0;
        }

        else
        {
          v0 = 27;
        }
      }

      else
      {
        v7 = malloc_type_malloc(st_size, 0x326A36B2uLL);
        if (v7)
        {
          v8 = v7;
          if (pread(v5, v7, st_size, 0) == st_size)
          {
            v9 = xpc_create_from_plist();
            if (v9)
            {
              v10 = v9;
              if (MEMORY[0x1C68E6D80]() == v3)
              {
                v0 = ne_session_parse_necp_drop_dest_array(v10, &v20);
              }

              else
              {
                v0 = 22;
              }

              xpc_release(v10);
            }

            else
            {
              v0 = 22;
            }
          }

          free(v8);
        }

        else
        {
          v0 = 55;
        }
      }

      close(v5);
    }

    v11 = *v2++;
    v1 = v11;
  }

  while (v11);
  if (v0)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = __error();
      v14 = strerror(*v13);
      v41.st_dev = 136315394;
      *&v41.st_mode = "ne_session_initialize_necp_drop_dest";
      WORD2(v41.st_ino) = 2080;
      *(&v41.st_ino + 6) = v14;
      v15 = "%s: failed %s";
LABEL_28:
      _os_log_error_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_ERROR, v15, &v41, 0x16u);
    }
  }

  else
  {
    if (!sysctlbyname("net.necp.drop_dest_level", 0, 0, &v20, 0x144uLL))
    {
      v0 = 0;
      goto LABEL_30;
    }

    v0 = *__error();
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      v41.st_dev = 136315394;
      *&v41.st_mode = "ne_session_initialize_necp_drop_dest";
      WORD2(v41.st_ino) = 2080;
      *(&v41.st_ino + 6) = v17;
      v15 = "%s: set sysctlbyname(net.necp.drop_dest_level) failed %s";
      goto LABEL_28;
    }
  }

LABEL_30:
  v18 = *MEMORY[0x1E69E9840];
  return v0;
}

void *necp_drop_dest_copy_dest_entry_list()
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = 0;
  if (sysctlbyname("net.necp.drop_dest_level", 0, &v23, 0, 0))
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

  v23 = 324;
  if (!sysctlbyname("net.necp.drop_dest_level", v24, &v23, 0, 0))
  {
    v4 = xpc_array_create(0, 0);
    if (!v4)
    {
      v0 = ne_log_obj();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
      {
        v15 = __error();
        v16 = strerror(*v15);
        *string = 136315394;
        v33 = "necp_drop_dest_copy_dest_entry_list";
        v34 = 2080;
        v35 = v16;
        v17 = "%s: xpc_array_create() failed %s";
LABEL_29:
        _os_log_error_impl(&dword_1C0DA5000, v0, OS_LOG_TYPE_ERROR, v17, string, 0x16u);
        goto LABEL_6;
      }

      goto LABEL_6;
    }

    v1 = v4;
    v5 = &v24[1] + 5;
    v6 = 8;
    while (1)
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      if (!v7)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v21 = __error();
          v22 = strerror(*v21);
          *buf = 136315394;
          v27 = "necp_drop_dest_copy_dest_entry_list";
          v28 = 2080;
          *v29 = v22;
          _os_log_error_impl(&dword_1C0DA5000, v18, OS_LOG_TYPE_ERROR, "%s: xpc_dictionary_create() failed %s", buf, 0x16u);
        }

        xpc_release(v1);
        goto LABEL_6;
      }

      v8 = v7;
      v9 = *(v5 - 7);
      if (v9 == 30)
      {
        if (*(v5 - 8) != 28)
        {
          goto LABEL_19;
        }

        inet_ntop(30, v5, string, 0x2Eu);
        xpc_string_from_necp_level = ne_session_create_xpc_string_from_necp_level(*(v5 - 17));
        xpc_dictionary_set_value(v8, "Level", xpc_string_from_necp_level);
        xpc_release(xpc_string_from_necp_level);
        xpc_dictionary_set_int64(v8, "Prefix", *(v5 - 9));
        xpc_dictionary_set_string(v8, "Address", string);
        v11 = ne_log_obj();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_19;
        }

        if (*(v5 - 8) != 16)
        {
          goto LABEL_19;
        }

        inet_ntop(2, v5 - 4, string, 0x2Eu);
        v10 = ne_session_create_xpc_string_from_necp_level(*(v5 - 17));
        xpc_dictionary_set_value(v8, "Level", v10);
        xpc_release(v10);
        xpc_dictionary_set_int64(v8, "Prefix", *(v5 - 9));
        xpc_dictionary_set_string(v8, "Address", string);
        v11 = ne_log_obj();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }
      }

      v13 = *(v5 - 17);
      v14 = *(v5 - 9);
      *buf = 136315906;
      v27 = "necp_drop_dest_copy_dest_entry_list";
      v28 = 1024;
      *v29 = v13;
      *&v29[4] = 1024;
      *&v29[6] = v14;
      v30 = 2080;
      v31 = string;
      _os_log_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_INFO, "%s: level %u prefix %u address %s", buf, 0x22u);
LABEL_19:
      if (xpc_dictionary_get_count(v8))
      {
        xpc_array_append_value(v1, v8);
      }

      xpc_release(v8);
      v5 += 40;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }
  }

  v0 = ne_log_obj();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
LABEL_28:
    v19 = __error();
    v20 = strerror(*v19);
    *string = 136315394;
    v33 = "necp_drop_dest_copy_dest_entry_list";
    v34 = 2080;
    v35 = v20;
    v17 = "%s: sysctlbyname(net.necp.drop_dest_level) failed %s";
    goto LABEL_29;
  }

LABEL_6:
  v1 = 0;
LABEL_7:
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

xpc_object_t ne_session_create_xpc_string_from_necp_level(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return xpc_string_create("Unknown");
  }

  v1 = &(&ne_necp_policy_string_to_level_mapping)[2 * a1];
  if (*(v1 + 2) != a1)
  {
    if (a1)
    {
      for (i = &dword_1E812B350; ; i += 4)
      {
        v2 = *(i - 1);
        if (!v2)
        {
          break;
        }

        v5 = *i;
        if (v5 == a1)
        {
          return xpc_string_create(v2);
        }
      }
    }

    return xpc_string_create("Unknown");
  }

  v2 = *v1;
  return xpc_string_create(v2);
}

BOOL check_alf_plist_if_enabled()
{
  v0 = open("/Library/Preferences/com.apple.alf.plist", 0);
  if (v0 == -1)
  {
    return 0;
  }

  v1 = v0;
  memset(&v11, 0, sizeof(v11));
  if (fstat(v0, &v11))
  {
    st_size = 0;
  }

  else
  {
    st_size = v11.st_size;
  }

  if ((st_size - 1) <= 0x18FFE && (v3 = malloc_type_malloc(st_size, 0x12C35CE6uLL)) != 0)
  {
    v4 = v3;
    if (pread(v1, v3, st_size, 0) == st_size && (v5 = xpc_create_from_plist()) != 0)
    {
      v6 = v5;
      value = xpc_dictionary_get_value(v5, "enable_drop_all");
      v9 = value && xpc_int64_get_value(value) && (v8 = xpc_dictionary_get_value(v6, "globalstate")) != 0 && xpc_int64_get_value(v8) != 0;
      xpc_release(v6);
    }

    else
    {
      v9 = 0;
    }

    free(v4);
  }

  else
  {
    v9 = 0;
  }

  close(v1);
  return v9;
}

uint64_t ne_session_initialize_necp_drop_all()
{
  v0 = open("/Library/Preferences/com.apple.networkextension.necp.plist", 0);
  if (v0 == -1)
  {
    return ne_session_initialize_necp_drop_dest();
  }

  v1 = v0;
  memset(&v12, 0, sizeof(v12));
  if (fstat(v0, &v12))
  {
    st_size = 0;
  }

  else
  {
    st_size = v12.st_size;
  }

  if ((st_size - 1) > 0x27FE)
  {
    if (st_size <= 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = 27;
    }
  }

  else
  {
    v3 = malloc_type_malloc(st_size, 0xE8C1F47BuLL);
    if (v3)
    {
      v4 = v3;
      if (pread(v1, v3, st_size, 0) == st_size)
      {
        v5 = xpc_create_from_plist();
        if (v5)
        {
          v6 = v5;
          value = xpc_dictionary_get_value(v5, "drop_all_level");
          if (value)
          {
            necp_level_from_xpc_value = ne_session_get_necp_level_from_xpc_value(value);
            if (!necp_level_from_xpc_value)
            {
              necp_level_from_xpc_value = check_alf_plist_if_enabled();
            }

            v8 = sysctlbyname("net.necp.drop_all_level", 0, 0, &necp_level_from_xpc_value, 4uLL);
          }

          else
          {
            v8 = 22;
          }

          xpc_release(v6);
        }

        else
        {
          v8 = 22;
        }
      }

      else
      {
        v8 = 0;
      }

      free(v4);
    }

    else
    {
      v8 = 55;
    }
  }

  close(v1);
  v9 = ne_session_initialize_necp_drop_dest();
  if (!v8)
  {
    return v9;
  }

  return v8;
}

uint64_t nehelper_queue()
{
  if (globals_init_sess_init != -1)
  {
    dispatch_once(&globals_init_sess_init, &__block_literal_global_181);
  }

  return g_queue;
}

_xpc_connection_s *nehelper_copy_connection_for_delegate_class(unint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (globals_init_sess_init != -1)
  {
    dispatch_once(&globals_init_sess_init, &__block_literal_global_181);
  }

  if (a1 < 0xF)
  {
    os_unfair_lock_lock(&nehelper_copy_connection_for_delegate_class_g_connection_cache_lock);
    v3 = nehelper_copy_connection_for_delegate_class_g_connection_cache[a1];
    v4 = ne_log_obj();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v5)
      {
        *buf = 134217984;
        v12 = a1;
        _os_log_debug_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_DEBUG, "Re-using existing nehelper connection for delegate class %llu", buf, 0xCu);
      }
    }

    else
    {
      if (v5)
      {
        *buf = 134217984;
        v12 = a1;
        _os_log_debug_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_DEBUG, "Creating a new nehelper connection for delegate class %llu", buf, 0xCu);
      }

      mach_service = xpc_connection_create_mach_service("com.apple.nehelper", g_queue, 2uLL);
      if (!mach_service)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "com.apple.nehelper";
          v13 = 2048;
          v14 = a1;
          _os_log_error_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_ERROR, "xpc_connection_create_mach_service(%s, XPC_CONNECTION_MACH_SERVICE_PRIVILEGED) failed for delegate class %llu", buf, 0x16u);
        }

        v3 = 0;
        goto LABEL_15;
      }

      v3 = mach_service;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = __nehelper_copy_connection_for_delegate_class_block_invoke;
      v10[3] = &__block_descriptor_tmp_72;
      v10[4] = a1;
      v10[5] = mach_service;
      xpc_connection_set_event_handler(mach_service, v10);
      xpc_connection_resume(v3);
      nehelper_copy_connection_for_delegate_class_g_connection_cache[a1] = v3;
    }

    xpc_retain(v3);
LABEL_15:
    os_unfair_lock_unlock(&nehelper_copy_connection_for_delegate_class_g_connection_cache_lock);
    goto LABEL_16;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v12 = a1;
    _os_log_error_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_ERROR, "Invalid delegate class id: %llu", buf, 0xCu);
  }

  v3 = 0;
LABEL_16:
  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

void __nehelper_copy_connection_for_delegate_class_block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E98])
    {
      if (a2 == MEMORY[0x1E69E9E18])
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          v15 = 134217984;
          v16 = v12;
          _os_log_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_DEFAULT, "nehelper connection for delegate class %llu was interrupted", &v15, 0xCu);
        }
      }

      else
      {
        os_unfair_lock_lock(&nehelper_copy_connection_for_delegate_class_g_connection_cache_lock);
        v8 = nehelper_copy_connection_for_delegate_class_g_connection_cache[*(a1 + 32)];
        if (*(a1 + 40) == v8)
        {
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 32);
            v15 = 134217984;
            v16 = v10;
            _os_log_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEFAULT, "nehelper connection for delegate class %llu received XPC_ERROR_CONNECTION_INVALID", &v15, 0xCu);
          }

          nehelper_copy_connection_for_delegate_class_g_connection_cache[*(a1 + 32)] = 0;
          xpc_release(v8);
        }

        os_unfair_lock_unlock(&nehelper_copy_connection_for_delegate_class_g_connection_cache_lock);
      }
    }

    else
    {
      v4 = MEMORY[0x1C68E6BB0](a2);
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v15 = 134218242;
        v16 = v14;
        v17 = 2080;
        v18 = v4;
        _os_log_error_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_ERROR, "nehelper connection for delegate class %llu received unknown message: %s", &v15, 0x16u);
      }

      free(v4);
    }
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v15 = 134217984;
      v16 = v7;
      _os_log_error_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_ERROR, "nehelper connection for delegate class %llu received a NULL message", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t ne_session_address_matches_subnets(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = MEMORY[0x1C68E6D80](a2);
    v6 = MEMORY[0x1E69E9E80];
    if (v5 != MEMORY[0x1E69E9E80])
    {
      return 0;
    }

    v7 = *(a1 + 1);
    if (v7 == 2)
    {
      v8 = "ipv4-subnets";
    }

    else
    {
      if (v7 != 30)
      {
        return 0;
      }

      v8 = "ipv6-subnets";
    }

    result = xpc_dictionary_get_value(a2, v8);
    if (result)
    {
      v9 = result;
      if (MEMORY[0x1C68E6D80]() != v6)
      {
        return 0;
      }

      value = xpc_dictionary_get_value(v9, "subnet-addresses");
      v11 = xpc_dictionary_get_value(v9, "subnet-masks");
      if (!value)
      {
        return 0;
      }

      v12 = v11;
      v13 = MEMORY[0x1C68E6D80](value);
      v14 = MEMORY[0x1E69E9E50];
      if (v13 != MEMORY[0x1E69E9E50])
      {
        return 0;
      }

      if (v12)
      {
        if (MEMORY[0x1C68E6D80](v12) != v14)
        {
          return 0;
        }

        count = xpc_array_get_count(value);
        if (count != xpc_array_get_count(v12))
        {
          return 0;
        }
      }

      else
      {
        count = xpc_array_get_count(value);
      }

      if (!count)
      {
        return 0;
      }

      for (i = 0; count != i; ++i)
      {
        length = 0;
        v17 = *(a1 + 1);
        if (v17 == 30)
        {
          data = xpc_array_get_data(value, i, &length);
          if (!data || length < 0x10)
          {
            goto LABEL_43;
          }

          v22 = data;
          if (v12)
          {
            v23 = xpc_array_get_data(v12, i, &length);
            if (!v23 || length <= 0xF)
            {
              goto LABEL_43;
            }

            v26 = vandq_s8(*v22, *v23);
            v25 = v26.i64[1];
            v24 = v26.i64[0];
            v29 = vandq_s8(*(a1 + 8), *v23);
            v28 = v29.i64[1];
            v27 = v29.i64[0];
          }

          else
          {
            v24 = data->i64[0];
            v25 = data->i64[1];
            v27 = *(a1 + 8);
            v28 = *(a1 + 16);
          }

          if (v24 == v27 && v25 == v28)
          {
            return 1;
          }
        }

        else if (v17 == 2)
        {
          v18 = xpc_array_get_data(value, i, &length);
          if (v18)
          {
            if (length >= 4)
            {
              v19 = v18;
              if (v12)
              {
                v20 = xpc_array_get_data(v12, i, &length);
                if (v20 && length >= 4 && ((*(a1 + 4) ^ *v19) & *v20) == 0)
                {
                  return 1;
                }
              }

              else if (*v18 == *(a1 + 4))
              {
                return 1;
              }
            }
          }
        }

LABEL_43:
        result = 0;
      }
    }
  }

  return result;
}

BOOL ne_session_service_matches_address_for_interface(const unsigned __int8 *a1, int a2, uint64_t a3, const char *a4, char *a5, _BYTE *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v12 = 0;
  if (a3 && a4)
  {
    v13 = *(a3 + 1);
    v14 = v13 == 30 || v13 == 2;
    if (v14 && (a2 - 3) >= 0xFFFFFFFE)
    {
      os_unfair_lock_lock(&_ne_session_cache_lock);
      v15 = ne_session_copy_cached_values_locked();
      if (v15)
      {
        v16 = v15;
        session_dict_from_cache = ne_session_get_session_dict_from_cache(v15, a1, a2);
        domain_dict_from_session_dict = ne_session_get_domain_dict_from_session_dict(session_dict_from_cache, a5, a4);
        v19 = MEMORY[0x1E69E9E80];
        if (domain_dict_from_session_dict && (v20 = domain_dict_from_session_dict, MEMORY[0x1C68E6D80]() == v19) && xpc_dictionary_get_BOOL(v20, "service-probe-failed") || (v21 = xpc_dictionary_get_value(v16, "redirected-addresses")) != 0 && (v22 = v21, MEMORY[0x1C68E6D80]() == v19) && (v23 = xpc_dictionary_get_value(v22, a4), ne_session_address_matches_subnets(a3, v23)))
        {
          v12 = 1;
          if (a6)
          {
            *a6 = 1;
          }
        }

        else
        {
          v12 = 0;
          if (a2 == 1)
          {
            if (session_dict_from_cache)
            {
              if (MEMORY[0x1C68E6D80](session_dict_from_cache) == v19)
              {
                value = xpc_dictionary_get_value(session_dict_from_cache, "included-routes");
                if (ne_session_address_matches_subnets(a3, value))
                {
                  v25 = xpc_dictionary_get_value(session_dict_from_cache, "excluded-routes");
                  if (!ne_session_address_matches_subnets(a3, v25))
                  {
                    v12 = 1;
                  }
                }
              }
            }
          }
        }

        xpc_release(v16);
      }

      else
      {
        v12 = 0;
      }

      os_unfair_lock_unlock(&_ne_session_cache_lock);
    }

    else
    {
      return 0;
    }
  }

  return v12;
}

xpc_object_t ne_session_copy_cached_values_locked()
{
  if (globals_init_sess_init != -1)
  {
    dispatch_once(&globals_init_sess_init, &__block_literal_global_181);
  }

  os_unfair_lock_assert_owner(&_ne_session_cache_lock);
  if (_ne_session_cache_notify_token == -1)
  {
    notify_register_dispatch("com.apple.networkextension.ondemandcachechanged", &_ne_session_cache_notify_token, g_queue, &__block_literal_global_225);
  }

  v0 = _ne_session_master_cache;
  if (_ne_session_master_cache)
  {
    return xpc_retain(v0);
  }

  os_unfair_lock_unlock(&_ne_session_cache_lock);
  v3 = dispatch_semaphore_create(0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __ne_session_copy_cached_values_locked_block_invoke_3;
  v4[3] = &__block_descriptor_tmp_229;
  v4[4] = v3;
  ne_session_update_cached_values(v4);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v3);
  os_unfair_lock_lock(&_ne_session_cache_lock);
  v1 = 0;
  v0 = _ne_session_master_cache;
  if (_ne_session_master_cache)
  {
    return xpc_retain(v0);
  }

  return v1;
}

xpc_object_t ne_session_get_session_dict_from_cache(void *a1, const unsigned __int8 *a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1C68E6D80]();
  v7 = MEMORY[0x1E69E9E80];
  if (v6 != MEMORY[0x1E69E9E80])
  {
    goto LABEL_2;
  }

  result = xpc_dictionary_get_value(a1, "services");
  if (!result)
  {
    goto LABEL_3;
  }

  v10 = result;
  if (MEMORY[0x1C68E6D80]() == v7 && (memset(v14, 0, sizeof(v14)), uuid_unparse(a2, v14), (value = xpc_dictionary_get_value(v10, v14)) != 0) && (v12 = value, MEMORY[0x1C68E6D80]() == v7))
  {
    if ((a3 - 1) > 0xB)
    {
      v13 = "<unknown>";
    }

    else
    {
      v13 = off_1E812B620[a3 - 1];
    }

    result = xpc_dictionary_get_value(v12, v13);
  }

  else
  {
LABEL_2:
    result = 0;
  }

LABEL_3:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void *ne_session_get_domain_dict_from_session_dict(void *a1, char *a2, const char *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  if (!a1 || !*a2)
  {
    return v4;
  }

  v7 = MEMORY[0x1C68E6D80](a1);
  v8 = MEMORY[0x1E69E9E80];
  if (v7 != MEMORY[0x1E69E9E80])
  {
    return 0;
  }

  value = xpc_dictionary_get_value(a1, a3);
  if (!value)
  {
    return 0;
  }

  v11 = value;
  if (MEMORY[0x1C68E6D80]() != v8)
  {
    return 0;
  }

  v12 = xpc_dictionary_get_value(v11, "service-domain-info");
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = MEMORY[0x1C68E6D80]();
  v15 = MEMORY[0x1E69E9E50];
  if (v14 != MEMORY[0x1E69E9E50])
  {
    return 0;
  }

  count = xpc_array_get_count(v13);
  if (!count)
  {
    return 0;
  }

  v17 = count;
  v18 = 0;
  while (1)
  {
    v19 = xpc_array_get_value(v13, v18);
    if (v19)
    {
      v4 = v19;
      if (MEMORY[0x1C68E6D80]() == v8)
      {
        v20 = xpc_dictionary_get_value(v4, "service-domains");
        if (v20)
        {
          v21 = v20;
          if (MEMORY[0x1C68E6D80]() == v15)
          {
            v22 = xpc_array_get_count(v21);
            if (v22)
            {
              break;
            }
          }
        }
      }
    }

LABEL_15:
    v4 = 0;
    if (++v18 == v17)
    {
      return v4;
    }
  }

  v23 = v22;
  v24 = 0;
  while (1)
  {
    string = xpc_array_get_string(v21, v24);
    if (string)
    {
      if (strstr(a2, string))
      {
        return v4;
      }
    }

    if (v23 == ++v24)
    {
      goto LABEL_15;
    }
  }
}

const char *ne_session_type_to_string(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return "<unknown>";
  }

  else
  {
    return off_1E812B620[a1 - 1];
  }
}

intptr_t __ne_session_copy_cached_values_locked_block_invoke_3(uint64_t a1, void *a2)
{
  os_unfair_lock_lock(&_ne_session_cache_lock);
  if (_ne_session_master_cache)
  {
    xpc_release(_ne_session_master_cache);
    _ne_session_master_cache = 0;
  }

  if (a2 && MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E80])
  {
    _ne_session_master_cache = xpc_retain(a2);
  }

  os_unfair_lock_unlock(&_ne_session_cache_lock);
  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

void ne_session_update_cached_values(uint64_t a1)
{
  v2 = nehelper_copy_connection_for_delegate_class(1uLL);
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4)
    {
      v5 = v4;
      xpc_dictionary_set_uint64(v4, "delegate-class-id", 1uLL);
      xpc_dictionary_set_uint64(v5, "cache-command", 1uLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __ne_session_update_cached_values_block_invoke;
      handler[3] = &unk_1E812B4D8;
      handler[4] = a1;
      xpc_connection_send_message_with_reply(v3, v5, g_queue, handler);
      xpc_release(v5);
    }

    xpc_release(v3);
  }
}

uint64_t __ne_session_update_cached_values_block_invoke(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E80])
  {
    xpc_dictionary_get_value(a2, "result-data");
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __ne_session_copy_cached_values_locked_block_invoke(uint64_t a1, int a2)
{
  os_unfair_lock_lock(&_ne_session_cache_lock);
  v3 = _ne_session_cache_notify_token;
  os_unfair_lock_unlock(&_ne_session_cache_lock);
  if (v3 == a2)
  {

    ne_session_update_cached_values(&__block_literal_global_228);
  }
}

void __ne_session_copy_cached_values_locked_block_invoke_2(uint64_t a1, void *a2)
{
  os_unfair_lock_lock(&_ne_session_cache_lock);
  if (_ne_session_master_cache)
  {
    xpc_release(_ne_session_master_cache);
    _ne_session_master_cache = 0;
  }

  if (a2 && MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E80])
  {
    _ne_session_master_cache = xpc_retain(a2);
  }

  os_unfair_lock_unlock(&_ne_session_cache_lock);
}

uint64_t ne_session_service_matches_address(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

int64_t ne_session_service_get_dns_service_id_for_interface(const unsigned __int8 *a1, int a2, char *a3, const char *a4)
{
  int64 = 0;
  if (a2 == 1 && a4)
  {
    os_unfair_lock_lock(&_ne_session_cache_lock);
    v8 = ne_session_copy_cached_values_locked();
    if (v8)
    {
      v9 = v8;
      session_dict_from_cache = ne_session_get_session_dict_from_cache(v8, a1, 1);
      domain_dict_from_session_dict = ne_session_get_domain_dict_from_session_dict(session_dict_from_cache, a3, a4);
      if (domain_dict_from_session_dict && (v12 = domain_dict_from_session_dict, MEMORY[0x1C68E6D80]() == MEMORY[0x1E69E9E80]))
      {
        int64 = xpc_dictionary_get_int64(v12, "service-dns-service");
      }

      else
      {
        int64 = 0;
      }

      os_unfair_lock_unlock(&_ne_session_cache_lock);
      xpc_release(v9);
    }

    else
    {
      os_unfair_lock_unlock(&_ne_session_cache_lock);
      return 0;
    }
  }

  return int64;
}

xpc_object_t ne_session_service_copy_cached_match_domains(const unsigned __int8 *a1, int a2)
{
  if (a2 != 1)
  {
    return 0;
  }

  os_unfair_lock_lock(&_ne_session_cache_lock);
  v3 = ne_session_copy_cached_values_locked();
  if (!v3)
  {
    os_unfair_lock_unlock(&_ne_session_cache_lock);
    return 0;
  }

  v4 = v3;
  session_dict_from_cache = ne_session_get_session_dict_from_cache(v3, a1, 1);
  v6 = session_dict_from_cache;
  if (session_dict_from_cache)
  {
    if (MEMORY[0x1C68E6D80](session_dict_from_cache) == MEMORY[0x1E69E9E80])
    {
      value = xpc_dictionary_get_value(v6, "match-domains");
      v6 = value;
      if (!value)
      {
        goto LABEL_6;
      }

      if (MEMORY[0x1C68E6D80](value) == MEMORY[0x1E69E9E50])
      {
        v6 = xpc_retain(v6);
        goto LABEL_6;
      }
    }

    v6 = 0;
  }

LABEL_6:
  os_unfair_lock_unlock(&_ne_session_cache_lock);
  xpc_release(v4);
  return v6;
}

uint64_t ne_session_set_socket_attributes(int a1, char *__s, const char *a3)
{
  if (a1 == -1)
  {
    return 0;
  }

  v4 = __s;
  if (!(__s | a3))
  {
    return 1;
  }

  if (__s)
  {
    v7 = strlen(__s) + 6;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = 0;
  if (a3)
  {
LABEL_7:
    v7 += strlen(a3) + 6;
  }

LABEL_8:
  result = malloc_type_malloc(v7, 0xC9EB4529uLL);
  if (result)
  {
    v8 = result;
    bzero(result, v7);
    v9 = v8;
    if (v4)
    {
      v10 = strlen(v4);
      if (v10 >= 2 && v4[v10 - 1] == 46)
      {
        v11 = v10 - 1;
        __strncpy_chk();
        ne_session_trim_domain_domain_buffer_230[v11] = 0;
        v4 = ne_session_trim_domain_domain_buffer_230;
      }

      v12 = strlen(v4);
      *v8 = 7;
      v13 = (v12 + 1);
      *(v8 + 1) = v13;
      if (v12 == -1)
      {
        v13 = 0;
      }

      else
      {
        memcpy(v8 + 5, v4, v13);
      }

      v9 = &v8[v13 + 5];
    }

    if (a3)
    {
      v14 = strlen(a3);
      *v9 = 8;
      v15 = (v14 + 1);
      *(v9 + 1) = v15;
      if (v14 != -1)
      {
        memcpy((v9 + 5), a3, v15);
      }
    }

    v16 = setsockopt(a1, 0xFFFF, 4361, v8, v7);
    free(v8);
    return v16 == 0;
  }

  return result;
}

uint64_t ne_session_copy_socket_attributes(int a1, void **a2, void **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 256;
  if (a1 == -1)
  {
    goto LABEL_5;
  }

  if (a2 | a3)
  {
    if (!getsockopt(a1, 0xFFFF, 4361, v19, &v18))
    {
      if (a2 && v18)
      {
        v8 = 0;
        v9 = 0;
        while (1)
        {
          v10 = &v19[v8];
          v11 = *&v19[v8 + 1];
          if (v19[v8] == 7)
          {
            break;
          }

          v8 = (v9 + v11 + 5);
          v9 = v8;
          if (v8 >= v18)
          {
            goto LABEL_17;
          }
        }

        if (v11)
        {
          v12 = malloc_type_calloc(v11 + 1, 1uLL, 0x100004077774924uLL);
          *a2 = v12;
          if (v12)
          {
            memcpy(v12, v10 + 5, v11);
          }
        }

        else
        {
          *a2 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
        }
      }

LABEL_17:
      if (a3 && v18)
      {
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v15 = &v19[v13];
          v16 = *&v19[v13 + 1];
          if (v19[v13] == 8)
          {
            break;
          }

          v13 = (v14 + v16 + 5);
          v5 = 1;
          v14 = v13;
          if (v13 >= v18)
          {
            goto LABEL_6;
          }
        }

        if (!v16)
        {
          v5 = 1;
          *a3 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
          goto LABEL_6;
        }

        v17 = malloc_type_calloc(v16 + 1, 1uLL, 0x100004077774924uLL);
        *a3 = v17;
        if (!v17)
        {
          v5 = 1;
          goto LABEL_6;
        }

        memcpy(v17, v15 + 5, v16);
      }

      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

LABEL_3:
  v5 = 1;
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

const char *ne_session_status_to_string(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "invalid";
  }

  else
  {
    return off_1E812B5F8[a1 - 1];
  }
}

uint64_t ne_session_copy_security_session_info(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  *a2 = 0;
  *a3 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __ne_session_copy_security_session_info_block_invoke;
  v13[3] = &unk_1E812AF80;
  v13[4] = &v14;
  v13[5] = a1;
  dispatch_sync(g_queue, v13);
  if (v15[3])
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "SessionCommandType", 5);
    v6 = xpc_connection_send_message_with_reply_sync(v15[3], v5);
    v7 = v6;
    if (v6)
    {
      if (MEMORY[0x1C68E6D80](v6) == MEMORY[0x1E69E9E80])
      {
        *a2 = xpc_dictionary_copy_mach_send();
        *a3 = xpc_dictionary_copy_mach_send();
      }

      else if (MEMORY[0x1C68E6D80](v7) == MEMORY[0x1E69E9E98])
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          string = xpc_dictionary_get_string(v7, *MEMORY[0x1E69E9E28]);
          *buf = 136315138;
          v19 = string;
          _os_log_error_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch security session info: %s", buf, 0xCu);
        }

        v9 = 0;
        goto LABEL_11;
      }
    }

    v9 = 1;
LABEL_11:
    xpc_release(v5);
    xpc_release(v7);
    xpc_release(v15[3]);
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:
  _Block_object_dispose(&v14, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

xpc_object_t __ne_session_copy_security_session_info_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = get_connection(**(a1 + 40));
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    result = xpc_retain(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void ne_session_stop_all_with_plugin_type(int a1, dispatch_queue_t queue, dispatch_block_t block)
{
  if (queue)
  {
    if (block)
    {
      dispatch_async(queue, block);
    }
  }
}

uint64_t ne_session_get_type(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __ne_session_get_type_block_invoke;
  v3[3] = &unk_1E812AFA8;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(g_queue, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

xpc_object_t ne_session_policy_copy_flow_divert_token(const unsigned __int8 *a1, unsigned int a2, xpc_object_t xdict, const char *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (!a4 || uuid_is_null(a1))
  {
    v8 = ne_session_policy_copy_flow_divert_token_with_key(a2, xdict, 0, 0);
    goto LABEL_4;
  }

  if (!ne_session_validate_flow_properties(xdict))
  {
LABEL_15:
    v8 = 0;
    goto LABEL_4;
  }

  v11 = dispatch_semaphore_create(0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = __ne_session_policy_copy_flow_divert_token_block_invoke;
  v15[3] = &unk_1E812AFD0;
  v15[4] = &v16;
  v15[5] = v11;
  v12 = ne_session_create(a1, 2);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (get_flow_divert_token_from_session_manager_token_init != -1)
  {
    dispatch_once(&get_flow_divert_token_from_session_manager_token_init, &__block_literal_global_239);
  }

  *&block = MEMORY[0x1E69E9820];
  *(&block + 1) = 0x40000000;
  v26 = __get_flow_divert_token_from_session_manager_block_invoke_2;
  v27 = &unk_1E812B520;
  v28 = &v21;
  v29 = v12;
  dispatch_sync(g_queue, &block);
  if (*(v22 + 24) == 1)
  {
    atomic_fetch_add_explicit((v12 + 40), 1u, memory_order_relaxed);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = __get_flow_divert_token_from_session_manager_block_invoke_3;
    v20[3] = &__block_descriptor_tmp_244;
    v20[4] = v12;
    out[0] = MEMORY[0x1E69E9820];
    out[1] = 0x40000000;
    out[2] = __ne_session_set_event_handler_block_invoke;
    out[3] = &unk_1E812AC78;
    out[4] = v20;
    v31 = v12;
    v32 = get_flow_divert_token_from_session_manager_token_queue;
    dispatch_sync(g_queue, out);
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v13, "SessionFlowDivertTokenControlUnit", a2);
  if (xdict)
  {
    xpc_dictionary_set_value(v13, "SessionFlowDivertTokenProperties", xdict);
  }

  xpc_dictionary_set_string(v13, "SessionFlowDivertTokenSigningIdentifier", a4);
  out[0] = MEMORY[0x1E69E9820];
  out[1] = 0x40000000;
  out[2] = __get_flow_divert_token_from_session_manager_block_invoke_248;
  out[3] = &unk_1E812B588;
  out[4] = v15;
  v31 = v12;
  ne_session_get_info_with_parameters(v12, 4, v13, 0, get_flow_divert_token_from_session_manager_token_queue, out);
  _Block_object_dispose(&v21, 8);
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v11);
  v8 = v17[3];
  if (!v8)
  {
    memset(out, 0, 37);
    uuid_unparse(a1, out);
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(block) = 136315138;
      *(&block + 4) = out;
      _os_log_error_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_ERROR, "Failed to obtain the flow divert token for configuration %s", &block, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_4:
  _Block_object_dispose(&v16, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

xpc_object_t ne_session_policy_copy_flow_divert_token_with_key(unsigned int a1, xpc_object_t xdict, const char *a3, void *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  length = 0;
  string = xpc_dictionary_get_string(xdict, "flow-host-name");
  data = xpc_dictionary_get_data(xdict, "flow-host-address", &length);
  int64 = xpc_dictionary_get_int64(xdict, "flow-host-port");
  v11 = xpc_dictionary_get_BOOL(xdict, "flow-multipath-requested");
  __n = 0;
  v12 = xpc_dictionary_get_data(xdict, "app-data", &__n);
  uint64 = xpc_dictionary_get_uint64(xdict, "aggregate_unit");
  v13 = ne_session_validate_flow_properties(xdict);
  v14 = 0;
  if (!v13)
  {
    goto LABEL_58;
  }

  if (v11)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v53 = v15;
  if (string)
  {
    v16 = strlen(string) + 5;
    if (!data)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
    if (!data)
    {
      goto LABEL_9;
    }
  }

  if (*data)
  {
    v16 += *data + 5;
  }

LABEL_9:
  v17 = 61;
  if (!a4)
  {
    v17 = 36;
  }

  v18 = v16 + v17;
  xdata = a4;
  if (a3)
  {
    v18 += strlen(a3) + 5;
  }

  if (__n)
  {
    v19 = v12 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = __n + 5;
  if (v19)
  {
    v20 = 0;
  }

  v21 = v20 + v18;
  if (uint64)
  {
    v22 = v21 + 9;
  }

  else
  {
    v22 = v21;
  }

  v23 = malloc_type_malloc(v22, 0x100004077774924uLL);
  v24 = v23;
  v54 = v22;
  if (string)
  {
    v25 = v12;
    v26 = int64;
    v27 = a1;
    v28 = strlen(string);
    v29 = v28;
    v30 = v28 + 5;
    v31 = v22 >= v30;
    v22 -= v30;
    if (!v31)
    {
      goto LABEL_59;
    }

    *v24 = 21;
    *(v24 + 1) = bswap32(v28);
    memcpy(v24 + 5, string, v28);
    v32 = &v24[v29 + 5];
    a1 = v27;
    int64 = v26;
    v12 = v25;
    if (!data)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v32 = v23;
    if (!data)
    {
      goto LABEL_34;
    }
  }

  v33 = *data;
  if (*data)
  {
    v31 = v22 >= v33 + 5;
    v22 -= v33 + 5;
    if (!v31)
    {
      goto LABEL_59;
    }

    *v32 = 22;
    *(v32 + 1) = v33 << 24;
    v34 = v32 + 5;
    memcpy(v34, data, v33);
    v32 = &v34[v33];
  }

LABEL_34:
  if (v22 <= 8)
  {
    goto LABEL_59;
  }

  *v32 = 23;
  *(v32 + 1) = 0x4000000;
  *(v32 + 5) = int64;
  if (v22 - 9 <= 8)
  {
    goto LABEL_59;
  }

  v32[9] = 10;
  *(v32 + 10) = 0x4000000;
  *(v32 + 14) = bswap32(a1);
  is_debug_logging_enabled = nelog_is_debug_logging_enabled();
  if (v22 - 18 <= 8)
  {
    goto LABEL_59;
  }

  v36 = is_debug_logging_enabled ? 7 : 5;
  v32[18] = 20;
  *(v32 + 19) = 0x4000000;
  *(v32 + 23) = v36;
  if (v22 - 27 <= 8)
  {
LABEL_59:
    __assert_rtn("ne_tlv_add", "ne_session.c", 2888, "tlv_iter->remaining >= add_size");
  }

  v32[27] = 29;
  *(v32 + 7) = 0x4000000;
  *(v32 + 8) = v53;
  v37 = v22 - 36;
  if (a3)
  {
    v38 = strlen(a3);
    v39 = v38;
    v40 = v38 + 5;
    v31 = v37 >= v40;
    v37 -= v40;
    v41 = v54;
    if (!v31)
    {
      goto LABEL_59;
    }

    v32[36] = 25;
    *(v32 + 37) = bswap32(v38);
    v42 = v32 + 41;
    memcpy(v42, a3, v38);
    v43 = &v42[v39];
    if (!v12)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v43 = v32 + 36;
    v41 = v54;
    if (!v12)
    {
      goto LABEL_51;
    }
  }

  v44 = __n;
  if (__n)
  {
    v45 = __n;
    v46 = __n + 5;
    v31 = v37 >= v46;
    v37 -= v46;
    if (!v31)
    {
      goto LABEL_59;
    }

    *v43 = 31;
    *(v43 + 1) = bswap32(v44);
    memcpy(v43 + 5, v12, v45);
    v43 += v45 + 5;
  }

LABEL_51:
  if (uint64)
  {
    if (v37 <= 8)
    {
      goto LABEL_59;
    }

    *v43 = 26;
    *(v43 + 1) = 0x4000000;
    *(v43 + 5) = bswap32(uint64);
    v43 += 9;
    v37 -= 9;
  }

  if (xdata)
  {
    macOut = 0uLL;
    v59 = 0;
    bytes_ptr = xpc_data_get_bytes_ptr(xdata);
    v48 = xpc_data_get_length(xdata);
    CCHmac(0, bytes_ptr, v48, v24, v41 - v37, &macOut);
    if (v37 <= 0x18)
    {
      goto LABEL_59;
    }

    *v43 = 18;
    *(v43 + 1) = 335544320;
    v49 = macOut;
    *(v43 + 21) = v59;
    *(v43 + 5) = v49;
    v37 -= 25;
  }

  v14 = xpc_data_create(v24, v41 - v37);
  free(v24);
LABEL_58:
  v50 = *MEMORY[0x1E69E9840];
  return v14;
}

BOOL ne_session_validate_flow_properties(void *a1)
{
  length = 0;
  string = xpc_dictionary_get_string(a1, "flow-host-name");
  data = xpc_dictionary_get_data(a1, "flow-host-address", &length);
  int64 = xpc_dictionary_get_int64(a1, "flow-host-port");
  if (!string)
  {
    if (!data)
    {
      v7 = ne_log_obj();
      result = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      LOWORD(v14[0]) = 0;
      v9 = "Invalid flow properties: missing hostname and address";
      goto LABEL_29;
    }

    goto LABEL_6;
  }

  if (!*string)
  {
    v7 = ne_log_obj();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    LOWORD(v14[0]) = 0;
    v9 = "Invalid flow properties: hostname is empty";
    goto LABEL_29;
  }

  if (data)
  {
LABEL_6:
    v5 = data[1];
    if (v5 == 2)
    {
      v6 = 15;
    }

    else
    {
      if (v5 != 30)
      {
        goto LABEL_16;
      }

      v6 = 27;
    }

    v10 = *data;
    if (v10 > v6 && length >= v10)
    {
      if (v5 == 30)
      {
        v14[0] = 0;
        v14[1] = 0;
        if (*(data + 8) != 0)
        {
          goto LABEL_25;
        }

        v7 = ne_log_obj();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          return 0;
        }

        v15 = 0;
        v9 = "Invalid flow properties: address is IN6ADDR_ANY_INIT";
      }

      else
      {
        LODWORD(v14[0]) = 0;
        if (*(data + 1))
        {
          goto LABEL_25;
        }

        v7 = ne_log_obj();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          return 0;
        }

        v15 = 0;
        v9 = "Invalid flow properties: address is INADDR_ANY";
      }

      v13 = &v15;
      goto LABEL_30;
    }

LABEL_16:
    v12 = ne_log_obj();
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(v14[0]) = 0;
    _os_log_error_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_ERROR, "Invalid host address", v14, 2u);
    return 0;
  }

LABEL_25:
  if (int64)
  {
    return 1;
  }

  v7 = ne_log_obj();
  result = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (result)
  {
    LOWORD(v14[0]) = 0;
    v9 = "Invalid flow properties: invalid port";
LABEL_29:
    v13 = v14;
LABEL_30:
    _os_log_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_INFO, v9, v13, 2u);
    return 0;
  }

  return result;
}

intptr_t __ne_session_policy_copy_flow_divert_token_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_retain(object);
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

uint64_t __get_flow_divert_token_from_session_manager_block_invoke_2(uint64_t result)
{
  v1 = 0;
  v2 = (**(result + 40) + 24);
  do
  {
    v3 = v1;
    v4 = *v2;
    if (v1)
    {
      break;
    }

    v2 = (v4 + 8);
    v1 = 1;
  }

  while (v4);
  if (v4 == 0 && (v3 & 1) != 0)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void __get_flow_divert_token_from_session_manager_block_invoke_3(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v5 = *(a1 + 32);

    ne_session_release(v5);
  }

  else if (a2 == 1)
  {
    block[7] = v2;
    block[8] = v3;
    v4 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __get_flow_divert_token_from_session_manager_block_invoke_4;
    v6[3] = &__block_descriptor_tmp_242;
    v6[4] = v4;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __ne_session_get_status_block_invoke;
    block[3] = &unk_1E812AD10;
    block[5] = v4;
    block[6] = get_flow_divert_token_from_session_manager_token_queue;
    block[4] = v6;
    dispatch_sync(g_queue, block);
  }
}

void __get_flow_divert_token_from_session_manager_block_invoke_248(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(a2, "SessionFlowDivertTokenKey"))
  {
    MEMORY[0x1C68E6D80]();
  }

  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);

  ne_session_release(v4);
}

void __get_flow_divert_token_from_session_manager_block_invoke_4(uint64_t a1, unsigned int a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(v7[0]) = 67109120;
      HIDWORD(v7[0]) = a2;
      _os_log_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_INFO, "Flow divert token session status changed to %d, cleaning up", v7, 8u);
    }

    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __ne_session_cancel_block_invoke;
    v7[3] = &__block_descriptor_tmp_11;
    v7[4] = v5;
    dispatch_sync(g_queue, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

dispatch_queue_t __get_flow_divert_token_from_session_manager_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("flow divert token queue", v0);
  get_flow_divert_token_from_session_manager_token_queue = result;
  return result;
}

xpc_object_t ne_session_copy_app_data_from_flow_divert_socket(int a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = 0;
  if (getsockopt(a1, 0xFFFF, 4358, 0, &v22))
  {
    goto LABEL_2;
  }

  if (!v22)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "flow divert token size is 0";
      v11 = v9;
      v12 = 2;
LABEL_14:
      _os_log_error_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    }

LABEL_2:
    v2 = 0;
    goto LABEL_3;
  }

  v5 = malloc_type_malloc(v22, 0x100004077774924uLL);
  if (!v5)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v24) = v22;
      v10 = "Failed to allocate %u bytes for the flow divert token";
      v11 = v13;
      v12 = 8;
      goto LABEL_14;
    }

    goto LABEL_2;
  }

  v6 = v5;
  if (getsockopt(a1, 0xFFFF, 4358, v5, &v22))
  {
    v7 = *__error();
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v21 = strerror(v7);
      *buf = 136315138;
      v24 = v21;
      _os_log_error_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_ERROR, "getsockopt(SO_FLOW_DIVERT_TOKEN) failed: %s", buf, 0xCu);
    }

    free(v6);
    goto LABEL_2;
  }

  v14 = v22;
  v15 = v6;
  while (v14 >= 5)
  {
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = bswap32(v17);
    if (v17)
    {
      v19 = v18 + 5;
      if (v18 + 5 > v14)
      {
        break;
      }

      v20 = v15 + 5;
    }

    else
    {
      v20 = 0;
      v19 = 5;
    }

    v15 += v19;
    v14 -= v19;
    if (v16 == 31)
    {
      v2 = xpc_data_create(v20, v18);
      goto LABEL_24;
    }
  }

  v2 = 0;
LABEL_24:
  free(v6);
LABEL_3:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

xpc_object_t ne_session_copy_app_data_from_flow_divert_token(void *a1)
{
  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  length = xpc_data_get_length(a1);
  do
  {
    if (length < 5)
    {
      return 0;
    }

    v4 = *bytes_ptr;
    v5 = *(bytes_ptr + 1);
    v6 = bswap32(v5);
    if (v5)
    {
      v7 = v6 + 5;
      if (v6 + 5 > length)
      {
        return 0;
      }

      v8 = bytes_ptr + 5;
    }

    else
    {
      v8 = 0;
      v7 = 5;
    }

    bytes_ptr += v7;
    length -= v7;
  }

  while (v4 != 31);

  return xpc_data_create(v8, v6);
}

uint64_t ne_session_get_config_id_from_network_agent(uint64_t result, unsigned __int8 *a2, _DWORD *a3)
{
  if (result)
  {
    v5 = result;
    if (!strcmp((result + 16), "NetworkExtension") && *(v5 + 212) == 40)
    {
      if (a2)
      {
        uuid_copy(a2, (v5 + 216));
      }

      if (a3)
      {
        *a3 = *(v5 + 232);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ne_session_agent_get_advisory_interface_index(uint64_t result, int a2, _BYTE *a3)
{
  if (result)
  {
    v5 = result;
    if (!strcmp((result + 16), "NetworkExtension") && !strcmp((v5 + 48), "PathController") && *(v5 + 212) == 140)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 272 + 4 * v6);
        if (!v7 || v7 == a2)
        {
          break;
        }

        result = 0;
        if (++v6 == 4)
        {
          return result;
        }
      }

      if (a3)
      {
        *a3 = *(v5 + 288) & 1;
      }

      return *(v5 + 4 * v6 + 256);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ne_session_agent_get_advisory(uint64_t result, int a2, _BYTE *a3, BOOL *a4, BOOL *a5, BOOL *a6, _DWORD *a7, void *a8, void *a9)
{
  if (result)
  {
    v16 = result;
    if (!strcmp((result + 16), "NetworkExtension") && !strcmp((v16 + 48), "PathController") && *(v16 + 212) == 140)
    {
      v17 = 0;
      while (1)
      {
        v18 = *(v16 + 272 + 4 * v17);
        if (!v18 || v18 == a2)
        {
          break;
        }

        result = 0;
        if (++v17 == 4)
        {
          return result;
        }
      }

      if (a3)
      {
        *a3 = *(v16 + 288) & 1;
      }

      if (a4)
      {
        *a4 = (*(v16 + 288) & 2) != 0;
      }

      if (a5)
      {
        *a5 = (*(v16 + 288) & 4) != 0;
      }

      if (a6)
      {
        *a6 = (*(v16 + 288) & 8) != 0;
      }

      if (a7)
      {
        *a7 = *(v16 + 4 * v17 + 256);
      }

      if (a8)
      {
        *a8 = v16 + 289;
      }

      if (a9)
      {
        *a9 = v16 + 321;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *ne_session_stop_reason_to_string(int a1)
{
  if ((a1 - 1) > 0x28)
  {
    return "None";
  }

  else
  {
    return off_1E812B680[a1 - 1];
  }
}

void *ne_copy_signature_info_for_pid(int a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = ne_copy_signing_identifier_for_pid_with_audit_token(a1, 0);
  bytes[0] = 0;
  bytes[1] = 0;
  v16 = 0;
  if (csops())
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = __error();
      v11 = strerror(*v10);
      v12[0] = 67109378;
      v12[1] = a1;
      v13 = 2080;
      v14 = v11;
      _os_log_error_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_ERROR, "Failed to get the code directory hash for %d: %s", v12, 0x12u);
    }

    v4 = 0;
  }

  else
  {
    v4 = xpc_data_create(bytes, 0x14uLL);
  }

  if (!(v4 | v2))
  {
    v6 = 0;
    goto LABEL_19;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      xpc_dictionary_set_value(v5, "SourceAppUniqueIdentifier", v4);
    }

    if (v2)
    {
      xpc_dictionary_set_value(v6, "SourceAppSigningIdentifier", v2);
      if (!v4)
      {
        goto LABEL_17;
      }

LABEL_16:
      xpc_release(v4);
      goto LABEL_17;
    }

LABEL_15:
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = ne_log_obj();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_15;
  }

  LOWORD(bytes[0]) = 0;
  _os_log_fault_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_FAULT, "xpc_dictionary_create failed", bytes, 2u);
  if (v4)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v2)
  {
    xpc_release(v2);
  }

LABEL_19:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

void ne_force_reset_uuid_cache()
{
  os_unfair_lock_lock(&g_uuid_cache_lock);
  if (g_uuid_cache)
  {
    xpc_release(g_uuid_cache);
    g_uuid_cache = 0;
  }

  os_unfair_lock_unlock(&g_uuid_cache_lock);
}

void *ne_copy_uuid_cache_locked()
{
  v58 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&g_uuid_cache_lock);
  g_ne_read_uuid_cache = 0;
  getpid();
  if (!sandbox_check())
  {
    getpid();
    if (!sandbox_check())
    {
      v4 = ne_uuid_cache_changed_cache_change_token;
      if (ne_uuid_cache_changed_cache_change_token == -1)
      {
        v5 = notify_register_check("com.apple.networkextension.uuidcache", &ne_uuid_cache_changed_cache_change_token);
        if (v5)
        {
          v6 = v5;
          ne_uuid_cache_changed_cache_change_token = -1;
          v7 = ne_log_obj();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "com.apple.networkextension.uuidcache";
            *&buf[12] = 1024;
            *&buf[14] = v6;
            _os_log_error_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_ERROR, "Failed to register for %s notifications: %u", buf, 0x12u);
          }
        }

        v4 = ne_uuid_cache_changed_cache_change_token;
      }

      v8 = ne_uuid_cache_changed_cache_generation;
      *v54 = ne_uuid_cache_changed_cache_generation;
      if (v4 < 0)
      {
        goto LABEL_17;
      }

      check = 0;
      v9 = notify_check(v4, &check);
      if (v9)
      {
        v10 = v9;
        v11 = ne_log_obj();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
LABEL_15:
          notify_cancel(ne_uuid_cache_changed_cache_change_token);
          v8 = 0;
          ne_uuid_cache_changed_cache_change_token = -1;
          *v54 = 0;
          goto LABEL_16;
        }

        *buf = 136315650;
        *&buf[4] = "com.apple.networkextension.uuidcache";
        *&buf[12] = 1024;
        *&buf[14] = ne_uuid_cache_changed_cache_change_token;
        *&buf[18] = 1024;
        *&buf[20] = v10;
        v21 = "Failed to check for changes to notification %s, token %d: %u";
LABEL_53:
        _os_log_error_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_ERROR, v21, buf, 0x18u);
        goto LABEL_15;
      }

      if (check)
      {
        state = notify_get_state(ne_uuid_cache_changed_cache_change_token, v54);
        if (state)
        {
          v20 = state;
          v11 = ne_log_obj();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_15;
          }

          *buf = 136315650;
          *&buf[4] = "com.apple.networkextension.uuidcache";
          *&buf[12] = 1024;
          *&buf[14] = ne_uuid_cache_changed_cache_change_token;
          *&buf[18] = 1024;
          *&buf[20] = v20;
          v21 = "Failed to get the state of notification %s, token %d: %u";
          goto LABEL_53;
        }

        v8 = *v54;
      }

LABEL_16:
      if (v8 != ne_uuid_cache_changed_cache_generation)
      {
        v12 = ne_log_obj();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        v14 = *v54;
        if (v13)
        {
          *buf = 134218240;
          *&buf[4] = ne_uuid_cache_changed_cache_generation;
          *&buf[12] = 2048;
          *&buf[14] = *v54;
          _os_log_debug_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_DEBUG, "UUID cache generation changed from %llu to %llu", buf, 0x16u);
          v14 = *v54;
        }

        ne_uuid_cache_changed_cache_generation = v14;
        g_ne_read_uuid_cache = 1;
        if (g_uuid_cache)
        {
          xpc_release(g_uuid_cache);
          g_uuid_cache = 0;
        }

        goto LABEL_23;
      }

LABEL_17:
      ne_uuid_cache_changed_cache_generation = v8;
      v1 = g_uuid_cache;
      if (g_uuid_cache)
      {
        goto LABEL_51;
      }

      g_ne_read_uuid_cache = 1;
LABEL_23:
      v15 = open("/Library/Preferences/com.apple.networkextension.uuidcache.plist", 0, "/Library/Preferences/com.apple.networkextension.uuidcache.plist");
      if (v15 < 0)
      {
        if (*__error() != 2 && *__error() != 1)
        {
          v22 = *__error();
          if (strerror_r(v22, buf, 0x80uLL))
          {
            buf[0] = 0;
          }

          v23 = ne_log_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *v54 = 136315650;
            *&v54[4] = "/Library/Preferences/com.apple.networkextension.uuidcache.plist";
            *&v54[12] = 1024;
            *&v54[14] = v22;
            *&v54[18] = 2080;
            *&v54[20] = buf;
            _os_log_fault_impl(&dword_1C0DA5000, v23, OS_LOG_TYPE_FAULT, "Failed to open %s: [%d] %s", v54, 0x1Cu);
          }
        }

LABEL_50:
        v1 = g_uuid_cache;
        if (!g_uuid_cache)
        {
          goto LABEL_6;
        }

LABEL_51:
        xpc_retain(v1);
        goto LABEL_6;
      }

      v16 = v15;
      memset(&v48, 0, sizeof(v48));
      if (fstat(v15, &v48))
      {
        v17 = *__error();
        if (strerror_r(v17, buf, 0x80uLL))
        {
          buf[0] = 0;
        }

        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *v54 = 136315650;
          *&v54[4] = "/Library/Preferences/com.apple.networkextension.uuidcache.plist";
          *&v54[12] = 1024;
          *&v54[14] = v17;
          *&v54[18] = 2080;
          *&v54[20] = buf;
          _os_log_fault_impl(&dword_1C0DA5000, v18, OS_LOG_TYPE_FAULT, "Failed to fstat %s: [%d] %s", v54, 0x1Cu);
        }

        goto LABEL_49;
      }

      st_size = v48.st_size;
      if ((v48.st_size - 131073) <= 0xFFFFFFFFFFFDFFFFLL)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Preferences/com.apple.networkextension.uuidcache.plist";
          *&buf[12] = 2048;
          *&buf[14] = st_size;
          v26 = "%s size is 0 or is too big: %lu";
          v27 = v25;
          v28 = 22;
LABEL_67:
          _os_log_error_impl(&dword_1C0DA5000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
          goto LABEL_49;
        }

        goto LABEL_49;
      }

      v29 = malloc_type_malloc(v48.st_size, 0x100004077774924uLL);
      if (!v29)
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = st_size;
          v26 = "Failed to allocate %lu bytes";
          v27 = v34;
          v28 = 12;
          goto LABEL_67;
        }

LABEL_49:
        close(v16);
        goto LABEL_50;
      }

      v30 = v29;
      v31 = pread(v16, v29, st_size, 0);
      if (v31 != st_size)
      {
        v35 = v31;
        v36 = *__error();
        if (strerror_r(v36, buf, 0x80uLL))
        {
          buf[0] = 0;
        }

        v37 = ne_log_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          *v54 = 136316162;
          *&v54[4] = "/Library/Preferences/com.apple.networkextension.uuidcache.plist";
          *&v54[12] = 2048;
          *&v54[14] = v35;
          *&v54[22] = 2048;
          *&v54[24] = st_size;
          *&v54[32] = 1024;
          *&v54[34] = v36;
          v55 = 2080;
          v56 = buf;
          _os_log_fault_impl(&dword_1C0DA5000, v37, OS_LOG_TYPE_FAULT, "Failed to read entire contents of %s, %ld != %lu: [%d] %s", v54, 0x30u);
        }

        goto LABEL_58;
      }

      v32 = xpc_create_from_plist();
      if (!v32)
      {
LABEL_58:
        close(v16);
        free(v30);
        goto LABEL_50;
      }

      v33 = v32;
      if (MEMORY[0x1C68E6D80]() != MEMORY[0x1E69E9E80])
      {
LABEL_46:
        xpc_release(v33);
        goto LABEL_58;
      }

      if (ne_copy_uuid_cache_locked_once_token != -1)
      {
        dispatch_once(&ne_copy_uuid_cache_locked_once_token, &__block_literal_global_161);
      }

      string = xpc_dictionary_get_string(v33, "os-version");
      if (string)
      {
        if (ne_copy_uuid_cache_locked_g_my_os_version)
        {
          v39 = string;
          if (strcmp(string, ne_copy_uuid_cache_locked_g_my_os_version))
          {
            v40 = ne_log_obj();
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_77;
            }

            *buf = 136315394;
            *&buf[4] = ne_copy_uuid_cache_locked_g_my_os_version;
            *&buf[12] = 2080;
            *&buf[14] = v39;
            v41 = "Not using the UUID cache because the current OS version (%s) does not equal the cache OS version (%s)";
            p_check = buf;
            v43 = v40;
LABEL_76:
            _os_log_impl(&dword_1C0DA5000, v43, OS_LOG_TYPE_DEFAULT, v41, p_check, 0x16u);
LABEL_77:
            if (g_uuid_cache)
            {
              goto LABEL_58;
            }

            goto LABEL_46;
          }
        }

        else
        {
          v44 = ne_log_obj();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1C0DA5000, v44, OS_LOG_TYPE_ERROR, "Failed to get the current OS version", buf, 2u);
          }
        }
      }

      memset(dst, 0, sizeof(dst));
      length = 0;
      data = xpc_dictionary_get_data(v33, "boot-uuid", &length);
      if (length != 16 || (uuid_copy(dst, data), uuid_is_null(ne_copy_uuid_cache_locked_g_my_boot_session_uuid)) || !uuid_compare(dst, ne_copy_uuid_cache_locked_g_my_boot_session_uuid))
      {
        g_uuid_cache = v33;
        goto LABEL_58;
      }

      memset(buf, 0, 37);
      memset(v54, 0, 37);
      uuid_unparse(ne_copy_uuid_cache_locked_g_my_boot_session_uuid, buf);
      uuid_unparse(dst, v54);
      v46 = ne_log_obj();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_77;
      }

      check = 136315394;
      v50 = buf;
      v51 = 2080;
      v52 = v54;
      v41 = "Not using the UUID cache because the current boot session UUID (%s) does not equal the cache boot session UUID (%s)";
      p_check = &check;
      v43 = v46;
      goto LABEL_76;
    }
  }

  v0 = ne_log_obj();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C0DA5000, v0, OS_LOG_TYPE_DEFAULT, "UUID cache sandbox check failed", buf, 2u);
  }

  v1 = 0;
LABEL_6:
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void __ne_copy_uuid_cache_locked_block_invoke()
{
  ne_copy_uuid_cache_locked_g_my_os_version = ne_session_copy_os_version_string();
  if (!ne_copy_uuid_cache_locked_g_my_os_version)
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C0DA5000, v0, OS_LOG_TYPE_FAULT, "Failed to get the current OS version", buf, 2u);
    }
  }

  if (!ne_session_get_boot_session_uuid(ne_copy_uuid_cache_locked_g_my_boot_session_uuid))
  {
    v1 = ne_log_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      *v2 = 0;
      _os_log_fault_impl(&dword_1C0DA5000, v1, OS_LOG_TYPE_FAULT, "Failed to get the boot session uuid", v2, 2u);
    }
  }
}

void *ne_session_copy_os_version_string()
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (sysctlbyname("kern.osversion", 0, &v9, 0, 0))
  {
    v0 = *__error();
    if (strerror_r(v0, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v1 = ne_log_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      *v11 = v0;
      *&v11[4] = 2080;
      *&v11[6] = __strerrbuf;
      _os_log_fault_impl(&dword_1C0DA5000, v1, OS_LOG_TYPE_FAULT, "Failed to get the size of the kern.osversion sysctl value: [%d] %s", buf, 0x12u);
    }
  }

  else
  {
    v5 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
    if (v5)
    {
      v2 = v5;
      bzero(v5, v9 + 1);
      if (!sysctlbyname("kern.osversion", v2, &v9, 0, 0))
      {
        goto LABEL_7;
      }

      v6 = *__error();
      if (strerror_r(v6, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        *v11 = v9;
        *&v11[8] = 1024;
        *&v11[10] = v6;
        v12 = 2080;
        v13 = __strerrbuf;
        _os_log_fault_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_FAULT, "Failed to get the kern.osversion sysctl value (%lu bytes): [%d] %s", buf, 0x1Cu);
      }

      free(v2);
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *__strerrbuf = 134217984;
        v15 = v9 + 1;
        _os_log_error_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_ERROR, "Failed to allocate %lu bytes for the version string", __strerrbuf, 0xCu);
      }
    }
  }

  v2 = 0;
LABEL_7:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

BOOL ne_session_get_boot_session_uuid(unsigned __int8 *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(in, 0, sizeof(in));
  v7 = 37;
  v2 = sysctlbyname("kern.bootsessionuuid", in, &v7, 0, 0);
  if (v2)
  {
    v3 = *__error();
    if (strerror_r(v3, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      v9 = v3;
      v10 = 2080;
      v11 = __strerrbuf;
      _os_log_fault_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_FAULT, "Failed to get kern.bootsessionuuid: [%d] %s", buf, 0x12u);
    }
  }

  else
  {
    uuid_parse(in, a1);
  }

  result = v2 == 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *ne_copy_uuid_cache()
{
  os_unfair_lock_lock(&g_uuid_cache_lock);
  v0 = ne_copy_uuid_cache_locked();
  os_unfair_lock_unlock(&g_uuid_cache_lock);
  return v0;
}

xpc_object_t ne_copy_cached_uuids_for_bundle_identifier(const char *a1, int a2)
{
  os_unfair_lock_lock(&g_uuid_cache_lock);
  g_ne_read_uuid_cache = 0;
  g_ne_uuid_cache_hit = 0;
  v4 = ne_copy_uuid_cache_locked();
  if (!v4)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v5 = v4;
  v6 = MEMORY[0x1C68E6D80]();
  v7 = MEMORY[0x1E69E9E80];
  if (v6 != MEMORY[0x1E69E9E80])
  {
    goto LABEL_3;
  }

  dictionary = xpc_dictionary_get_dictionary(v5, "uuid-mappings");
  if (dictionary && (v11 = dictionary, MEMORY[0x1C68E6D80]() == v7))
  {
    value = xpc_dictionary_get_value(v11, a1);
    if (value)
    {
      v13 = value;
      v14 = MEMORY[0x1C68E6D80]();
      v15 = MEMORY[0x1E69E9E50];
      if (v14 == MEMORY[0x1E69E9E50])
      {
        if (!xpc_array_get_count(v13) && (a2 & 1) != 0)
        {
          goto LABEL_10;
        }
      }

      else if (a2)
      {
        goto LABEL_10;
      }

      if (MEMORY[0x1C68E6D80](v13) == v15)
      {
        v8 = xpc_array_create(0, 0);
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 0x40000000;
        applier[2] = __ne_copy_cached_uuids_for_bundle_identifier_block_invoke;
        applier[3] = &__block_descriptor_tmp_166;
        applier[4] = v8;
        xpc_array_apply(v13, applier);
        g_ne_uuid_cache_hit = 1;
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    if (a2)
    {
      goto LABEL_10;
    }
  }

  else if (a2)
  {
LABEL_10:
    v8 = ne_copy_cached_synthesized_uuids_for_bundle_identifier_locked(a1, v5);
    goto LABEL_4;
  }

LABEL_3:
  v8 = 0;
LABEL_4:
  xpc_release(v5);
LABEL_6:
  os_unfair_lock_unlock(&g_uuid_cache_lock);
  return v8;
}

xpc_object_t ne_copy_cached_synthesized_uuids_for_bundle_identifier_locked(const char *a1, void *a2)
{
  buffer[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1C68E6D80](a2);
  v5 = MEMORY[0x1E69E9E80];
  if (v4 == MEMORY[0x1E69E9E80])
  {
    dictionary = xpc_dictionary_get_dictionary(a2, "synthesized-uuid-mappings");
    if (dictionary)
    {
      v10 = dictionary;
      if (MEMORY[0x1C68E6D80]() == v5)
      {
        value = xpc_dictionary_get_value(v10, a1);
        v6 = value;
        if (!value)
        {
          goto LABEL_3;
        }

        if (MEMORY[0x1C68E6D80](value) == MEMORY[0x1E69E9E70])
        {
          buffer[0] = 0;
          buffer[1] = 0;
          bytes = xpc_data_get_bytes(v6, buffer, 0, 0x10uLL);
          if (bytes == xpc_data_get_length(v6))
          {
            v13 = xpc_uuid_create(buffer);
            if (v13)
            {
              v14 = v13;
              v6 = xpc_array_create(0, 0);
              xpc_array_append_value(v6, v14);
              xpc_release(v14);
              g_ne_uuid_cache_hit = 1;
              goto LABEL_3;
            }
          }
        }
      }
    }
  }

  v6 = 0;
LABEL_3:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __ne_copy_cached_uuids_for_bundle_identifier_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  buffer[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (MEMORY[0x1C68E6D80](a3) == MEMORY[0x1E69E9E70])
    {
      buffer[0] = 0;
      buffer[1] = 0;
      bytes = xpc_data_get_bytes(a3, buffer, 0, 0x10uLL);
      if (bytes == xpc_data_get_length(a3))
      {
        v6 = xpc_uuid_create(buffer);
        if (v6)
        {
          v7 = v6;
          xpc_array_append_value(*(a1 + 32), v6);
          xpc_release(v7);
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t ne_copy_cached_bundle_identifier_for_uuid(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  os_unfair_lock_lock(&g_uuid_cache_lock);
  g_ne_read_uuid_cache = 0;
  g_ne_uuid_cache_hit = 0;
  v2 = ne_copy_uuid_cache_locked();
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x1C68E6D80]();
    v5 = MEMORY[0x1E69E9E80];
    if (v4 == MEMORY[0x1E69E9E80])
    {
      dictionary = xpc_dictionary_get_dictionary(v3, "uuid-mappings");
      if (!dictionary)
      {
        goto LABEL_17;
      }

      v7 = dictionary;
      if (MEMORY[0x1C68E6D80]() != v5 || (v13[0] = MEMORY[0x1E69E9820], v13[1] = 0x40000000, v13[2] = __ne_copy_cached_bundle_identifier_for_uuid_block_invoke, v13[3] = &unk_1E812B058, v13[4] = &v14, v13[5] = a1, xpc_dictionary_apply(v7, v13), !v15[3]))
      {
LABEL_17:
        if (MEMORY[0x1C68E6D80](v3) == v5 && (v11 = xpc_dictionary_get_dictionary(v3, "synthesized-uuid-mappings")) != 0 && (v12 = v11, MEMORY[0x1C68E6D80]() == v5))
        {
          v19 = 0;
          v20 = &v19;
          v21 = 0x2000000000;
          v22 = 0;
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 0x40000000;
          applier[2] = __ne_copy_cached_bundle_identifier_for_synthesized_uuid_locked_block_invoke;
          applier[3] = &unk_1E812B5B0;
          applier[4] = &v19;
          applier[5] = a1;
          xpc_dictionary_apply(v12, applier);
          v8 = v20[3];
          _Block_object_dispose(&v19, 8);
        }

        else
        {
          v8 = 0;
        }

        v15[3] = v8;
      }
    }

    xpc_release(v3);
  }

  os_unfair_lock_unlock(&g_uuid_cache_lock);
  v9 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t __ne_copy_cached_bundle_identifier_for_uuid_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  if (a3)
  {
    if (MEMORY[0x1C68E6D80](a3) == MEMORY[0x1E69E9E50])
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 0x40000000;
      applier[2] = __ne_copy_cached_bundle_identifier_for_uuid_block_invoke_2;
      applier[3] = &__block_descriptor_tmp_167;
      applier[4] = *(a1 + 40);
      if (!xpc_array_apply(a3, applier))
      {
        v6 = *(*(*(a1 + 32) + 8) + 24);
        if (!v6)
        {
LABEL_7:
          *(*(*(a1 + 32) + 8) + 24) = xpc_string_create(a2);
          return 1;
        }

        length = xpc_string_get_length(v6);
        if (strlen(a2) < length)
        {
          xpc_release(*(*(*(a1 + 32) + 8) + 24));
          goto LABEL_7;
        }
      }
    }
  }

  return 1;
}

uint64_t __ne_copy_cached_bundle_identifier_for_synthesized_uuid_locked_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  buffer[2] = *MEMORY[0x1E69E9840];
  if (a3 && MEMORY[0x1C68E6D80](a3) == MEMORY[0x1E69E9E70] && (buffer[0] = 0, buffer[1] = 0, bytes = xpc_data_get_bytes(a3, buffer, 0, 0x10uLL), bytes == xpc_data_get_length(a3)) && !uuid_compare(buffer, *(a1 + 40)))
  {
    v9 = xpc_string_create(a2);
    result = 0;
    *(*(*(a1 + 32) + 8) + 24) = v9;
  }

  else
  {
    result = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __ne_copy_cached_bundle_identifier_for_uuid_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  buffer[2] = *MEMORY[0x1E69E9840];
  result = !a3 || MEMORY[0x1C68E6D80](a3) != MEMORY[0x1E69E9E70] || (buffer[0] = 0, buffer[1] = 0, bytes = xpc_data_get_bytes(a3, buffer, 0, 0x10uLL), bytes != xpc_data_get_length(a3)) || uuid_compare(buffer, *(a1 + 32)) != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ne_session_is_safeboot()
{
  v6 = *MEMORY[0x1E69E9840];
  *v5 = 0x4200000001;
  v4 = 0;
  v3 = 4;
  if (sysctl(v5, 2u, &v4, &v3, 0, 0))
  {
    v0 = 1;
  }

  else
  {
    v0 = v4 == 0;
  }

  result = !v0;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *ne_is_sockaddr_valid(unsigned __int8 *result, unint64_t a2)
{
  if (result)
  {
    v2 = result[1];
    if (v2 == 2)
    {
      v3 = 15;
    }

    else
    {
      if (v2 != 30)
      {
        return 0;
      }

      v3 = 27;
    }

    v4 = *result;
    return (v4 > v3 && v4 <= a2);
  }

  return result;
}

uint64_t ne_session_set_socket_tracker_attributes(int a1, char *__s, const char *a3, const char *a4)
{
  if (a1 == -1)
  {
    return 0;
  }

  v4 = a4;
  v6 = __s;
  if (!__s && !a3 && !a4)
  {
    return 1;
  }

  if (!__s)
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = strlen(__s) + 6;
  if (a3)
  {
LABEL_9:
    v9 += strlen(a3) + 6;
  }

LABEL_10:
  if (v4)
  {
    v9 += strlen(v4) + 6;
  }

  result = malloc_type_malloc(v9, 0x190DCB2FuLL);
  if (result)
  {
    v10 = result;
    bzero(result, v9);
    v11 = v10;
    if (v6)
    {
      v12 = strlen(v6);
      if (v12 >= 2 && v6[v12 - 1] == 46)
      {
        v13 = v12 - 1;
        __strncpy_chk();
        ne_session_trim_domain_domain_buffer_230[v13] = 0;
        v6 = ne_session_trim_domain_domain_buffer_230;
      }

      v14 = strlen(v6);
      *v10 = 7;
      v15 = (v14 + 1);
      *(v10 + 1) = v15;
      if (v14 == -1)
      {
        v15 = 0;
      }

      else
      {
        memcpy(v10 + 5, v6, v15);
      }

      v11 = &v10[v15 + 5];
    }

    if (a3)
    {
      v16 = strlen(a3);
      *v11 = 11;
      v17 = (v16 + 1);
      *(v11 + 1) = v17;
      if (v16 == -1)
      {
        v17 = 0;
      }

      else
      {
        memcpy((v11 + 5), a3, v17);
      }

      v11 += v17 + 5;
    }

    if (v4)
    {
      v18 = strlen(v4);
      if (v18 >= 2 && v4[v18 - 1] == 46)
      {
        v19 = v18 - 1;
        __strncpy_chk();
        ne_session_trim_domain_domain_buffer_230[v19] = 0;
        v4 = ne_session_trim_domain_domain_buffer_230;
      }

      v20 = strlen(v4);
      *v11 = 12;
      v21 = (v20 + 1);
      *(v11 + 1) = v21;
      if (v20 != -1)
      {
        memcpy((v11 + 5), v4, v21);
      }
    }

    v22 = setsockopt(a1, 0xFFFF, 4361, v10, v9);
    free(v10);
    return v22 == 0;
  }

  return result;
}

char *ne_session_set_socket_context_attribute(int a1, char *__s)
{
  if (a1 == -1)
  {
    return 0;
  }

  if (__s)
  {
    v4 = strlen(__s) + 6;
  }

  else
  {
    v4 = 5;
  }

  result = malloc_type_malloc(v4, 0xC7CABF3DuLL);
  if (result)
  {
    v6 = result;
    bzero(result, v4);
    if (__s)
    {
      v7 = strlen(__s);
      *v6 = 13;
      v8 = (v7 + 1);
      *(v6 + 1) = v8;
      if (v7 != -1)
      {
        memcpy(v6 + 5, __s, v8);
      }
    }

    else
    {
      *v6 = 13;
      *(v6 + 1) = 0;
    }

    v9 = setsockopt(a1, 0xFFFF, 4361, v6, v4);
    free(v6);
    return (v9 == 0);
  }

  return result;
}

uint64_t ne_session_copy_socket_domain_attributes(int a1, void **a2, void **a3, void **a4, void **a5)
{
  v35 = *MEMORY[0x1E69E9840];
  bzero(v34, 0x300uLL);
  v33 = 768;
  if (a1 == -1)
  {
    goto LABEL_7;
  }

  if (a2 || a3 || a4)
  {
    if (!getsockopt(a1, 0xFFFF, 4361, v34, &v33))
    {
      if (a2 && v33)
      {
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v15 = &v34[v13];
          v16 = *&v34[v13 + 1];
          if (v34[v13] == 7)
          {
            break;
          }

          v13 = (v14 + v16 + 5);
          v14 = v13;
          if (v13 >= v33)
          {
            goto LABEL_19;
          }
        }

        if (v16)
        {
          v17 = malloc_type_calloc(v16 + 1, 1uLL, 0x100004077774924uLL);
          *a2 = v17;
          if (v17)
          {
            memcpy(v17, v15 + 5, v16);
          }
        }

        else
        {
          *a2 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
        }
      }

LABEL_19:
      if (a3 && v33)
      {
        v18 = 0;
        v19 = 0;
        while (1)
        {
          v20 = &v34[v18];
          v21 = *&v34[v18 + 1];
          if (v34[v18] == 11)
          {
            break;
          }

          v18 = (v19 + v21 + 5);
          v19 = v18;
          if (v18 >= v33)
          {
            goto LABEL_29;
          }
        }

        if (v21)
        {
          v22 = malloc_type_calloc(v21 + 1, 1uLL, 0x100004077774924uLL);
          *a3 = v22;
          if (v22)
          {
            memcpy(v22, v20 + 5, v21);
          }
        }

        else
        {
          *a3 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
        }
      }

LABEL_29:
      if (a4 && v33)
      {
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v25 = &v34[v23];
          v26 = *&v34[v23 + 1];
          if (v34[v23] == 12)
          {
            break;
          }

          v23 = (v24 + v26 + 5);
          v24 = v23;
          if (v23 >= v33)
          {
            goto LABEL_39;
          }
        }

        if (v26)
        {
          v27 = malloc_type_calloc(v26 + 1, 1uLL, 0x100004077774924uLL);
          *a4 = v27;
          if (v27)
          {
            memcpy(v27, v25 + 5, v26);
          }
        }

        else
        {
          *a4 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
        }
      }

LABEL_39:
      if (a5 && v33)
      {
        v28 = 0;
        v29 = 0;
        while (1)
        {
          v30 = &v34[v28];
          v31 = *&v34[v28 + 1];
          if (v34[v28] == 13)
          {
            break;
          }

          v28 = (v29 + v31 + 5);
          v10 = 1;
          v29 = v28;
          if (v28 >= v33)
          {
            goto LABEL_8;
          }
        }

        if (!v31)
        {
          v10 = 1;
          *a5 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
          goto LABEL_8;
        }

        v32 = malloc_type_calloc(v31 + 1, 1uLL, 0x100004077774924uLL);
        *a5 = v32;
        if (!v32)
        {
          v10 = 1;
          goto LABEL_8;
        }

        memcpy(v32, v30 + 5, v31);
      }

      goto LABEL_5;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v10 = 1;
LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void ne_session_clear_caches()
{
  ne_force_reset_uuid_cache();
  os_unfair_lock_lock(&_ne_session_cache_lock);
  if (_ne_session_cache_notify_token != -1)
  {
    notify_cancel(_ne_session_cache_notify_token);
    _ne_session_cache_notify_token = -1;
  }

  if (_ne_session_master_cache)
  {
    xpc_release(_ne_session_master_cache);
    _ne_session_master_cache = 0;
  }

  os_unfair_lock_unlock(&_ne_session_cache_lock);
}

void ne_session_fetch_server_parameters(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_fetch_server_parameters_block_invoke;
  block[3] = &__block_descriptor_tmp_172_305;
  block[4] = a1;
  dispatch_sync(g_queue, block);
}

void __ne_session_fetch_server_parameters_block_invoke(uint64_t a1)
{
  connection = get_connection(**(a1 + 32));
  if (connection)
  {
    v2 = connection;
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "SessionCommandType", 8);
    xpc_connection_send_message(v2, v3);

    xpc_release(v3);
  }
}

void ne_session_reset_cache(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ne_session_reset_cache_block_invoke;
  block[3] = &__block_descriptor_tmp_173_306;
  block[4] = a1;
  dispatch_sync(g_queue, block);
}

void __ne_session_reset_cache_block_invoke(uint64_t a1)
{
  connection = get_connection(**(a1 + 32));
  if (connection)
  {
    v2 = connection;
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "SessionCommandType", 9);
    xpc_connection_send_message(v2, v3);

    xpc_release(v3);
  }
}

CFMutableDictionaryRef init_app_cache(CFMutableDictionaryRef result, CFIndex capacity)
{
  if (result)
  {
    v2 = result;
    *result = capacity;
    result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v2 + 3) = 0;
    v2 = (v2 + 24);
    *(v2 - 2) = result;
    *(v2 - 2) = 0;
    *(v2 + 1) = v2;
  }

  return result;
}

void dealloc_app_cache(uint64_t a1)
{
  if (a1)
  {
    while (CFDictionaryGetCount(*(a1 + 8)))
    {
      dealloc_appdata_node(a1, **(*(a1 + 32) + 8));
    }

    v2 = *(a1 + 8);

    CFRelease(v2);
  }
}

void dealloc_appdata_node(uint64_t a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = (a1 + 32);
    if (*a2)
    {
      v5 = (*a2 + 8);
    }

    *v5 = v4;
    *v4 = v3;
    CFDictionaryRemoveValue(*(a1 + 8), a2[2]);
    CFRelease(a2[3]);

    free(a2);
  }
}

void *add_appdata_node(void *result, void *a2)
{
  if (result && a2)
  {
    v2 = result[3];
    result += 3;
    *a2 = v2;
    v3 = (v2 + 8);
    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = result + 1;
    }

    *v4 = a2;
    *result = a2;
    a2[1] = result;
  }

  return result;
}

uint64_t remove_appdata_node(uint64_t result, void *a2)
{
  if (result && a2)
  {
    v2 = *a2;
    v3 = a2[1];
    v4 = (result + 32);
    if (*a2)
    {
      v4 = (*a2 + 8);
    }

    *v4 = v3;
    *v3 = v2;
  }

  return result;
}

void *move_node_to_front(void *result, void *a2)
{
  if (result && a2)
  {
    v2 = *a2;
    v3 = a2[1];
    v4 = result + 4;
    v5 = (*a2 + 8);
    if (!*a2)
    {
      v5 = result + 4;
    }

    *v5 = v3;
    *v3 = v2;
    v6 = result[3];
    result += 3;
    *a2 = v6;
    v7 = (v6 + 8);
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    *v8 = a2;
    *result = a2;
    a2[1] = result;
  }

  return result;
}

void *alloc_appdata_node(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = malloc_type_malloc(0x20uLL, 0xE0040B6E8BBF2uLL);
    if (result)
    {
      result[2] = a1;
      result[3] = a2;
    }
  }

  return result;
}

void myCFRelease(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

CFTypeRef myCFRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void myCFReplace(CFTypeRef *a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v3 = CFRetain(cf);
    }

    else
    {
      v3 = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    *a1 = v3;
  }
}

uint64_t myCFEqual(unint64_t cf1, unint64_t a2)
{
  if (!(cf1 | a2))
  {
    return 1;
  }

  result = 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2);
    }
  }

  return result;
}

void myCFDataReleaseReset(CFDataRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(v2);
      if (MutableBytePtr)
      {
        v4 = MutableBytePtr;
        Length = CFDataGetLength(*a1);
        v6 = CFDataGetLength(*a1);
        memset_s(v4, Length, 0, v6);
      }

      CFRelease(*a1);
      *a1 = 0;
    }
  }
}

__CFData *myCFDataCreateMutableCopy(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3)
{
  v3 = 0;
  if (a2)
  {
    if (a3)
    {
      Mutable = CFDataCreateMutable(a1, 0);
      v3 = Mutable;
      if (Mutable)
      {
        CFDataAppendBytes(Mutable, a2, a3);
      }
    }
  }

  return v3;
}

const __CFData *myCFDataCreateMutableCopyOfData(const __CFData *theData)
{
  if (theData)
  {
    theData = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, theData);
    if (!theData)
    {
      v1 = ne_log_obj();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
      {
        *v2 = 0;
        _os_log_fault_impl(&dword_1C0DA5000, v1, OS_LOG_TYPE_FAULT, "CFDataCreateMutableCopy failed", v2, 2u);
      }

      return 0;
    }
  }

  return theData;
}

void myCFDataResetReplace(CFDataRef *a1, CFDataRef theData)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    MutableCopyOfData = myCFDataCreateMutableCopyOfData(theData);
    myCFDataReleaseReset(a1);
    *a1 = MutableCopyOfData;
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "myCFDataResetReplace";
      _os_log_fault_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_FAULT, "%s called with null oldP", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

__CFData *myCFDataCreateMutableFromString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!CFStringGetLength(a1))
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x2F40A8E7uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u);
  v6 = *MEMORY[0x1E695E480];
  v7 = CFStringGetLength(a1);
  MutableCopy = myCFDataCreateMutableCopy(v6, v5, v7);
  memset_s(v5, MaximumSizeForEncoding + 1, 0, MaximumSizeForEncoding + 1);
  free(v5);
  return MutableCopy;
}

void myCFDataResetReplaceFromString(CFDataRef *a1, CFStringRef theString)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    MutableCopy = theString;
    if (theString)
    {
      if (CFStringGetLength(theString) >= 1)
      {
        Length = CFStringGetLength(MutableCopy);
        v5 = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
        v6 = malloc_type_malloc(v5, 0xA1538C9BuLL);
        if (v6)
        {
          v7 = v6;
          CFStringGetCString(MutableCopy, v6, v5, 0x8000100u);
          v8 = *MEMORY[0x1E695E480];
          v9 = CFStringGetLength(MutableCopy);
          MutableCopy = myCFDataCreateMutableCopy(v8, v7, v9);
          memset_s(v7, v5, 0, v5);
          free(v7);
          goto LABEL_9;
        }

        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          v13 = 67109120;
          LODWORD(v14) = v5;
          _os_log_fault_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_FAULT, "malloc(%u) failed", &v13, 8u);
        }
      }

      MutableCopy = 0;
    }

LABEL_9:
    myCFDataReleaseReset(a1);
    *a1 = MutableCopy;
    goto LABEL_10;
  }

  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v13 = 136315138;
    v14 = "myCFDataResetReplaceFromString";
    _os_log_fault_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_FAULT, "%s called with null oldP", &v13, 0xCu);
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
}

const void *NEIsValidCFType(const void *result, uint64_t a2)
{
  if (result)
  {
    return (CFGetTypeID(result) == a2);
  }

  return result;
}

const void *NEGetValueWithType(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = 0;
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a1, a2);
      if (!Value)
      {
        return 0;
      }

      v3 = Value;
      if (CFGetTypeID(Value) != a3)
      {
        return 0;
      }
    }
  }

  return v3;
}

void NEInitCFTypes()
{
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_323);
  }
}

CFTypeID __NEInitCFTypes_block_invoke()
{
  CFSTRING_TYPE = CFStringGetTypeID();
  CFNUMBER_TYPE = CFNumberGetTypeID();
  CFBOOLEAN_TYPE = CFBooleanGetTypeID();
  CFARRAY_TYPE = CFArrayGetTypeID();
  CFDICTIONARY_TYPE = CFDictionaryGetTypeID();
  result = CFDataGetTypeID();
  CFDATA_TYPE = result;
  return result;
}

void *NEMapIntegerToString(void *result, int a2)
{
  if (result)
  {
    v2 = result;
    result = *result;
    if (result)
    {
      v3 = v2 + 2;
      do
      {
        if (*(v3 - 2) == a2)
        {
          break;
        }

        v4 = *v3;
        v3 += 2;
        result = v4;
      }

      while (v4);
    }
  }

  return result;
}

const void **NEMapStringToInteger(const void **result, CFTypeRef cf1)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (*result)
    {
      while (!cf1 || !CFEqual(cf1, v4))
      {
        v5 = v3[2];
        v3 += 2;
        v4 = v5;
        if (!v5)
        {
          return 0;
        }
      }

      return *(v3 + 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t NEInChecksum(unsigned __int16 *a1, int a2)
{
  if (a2 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a2;
    do
    {
      v4 = *a1++;
      v2 += v4;
      a2 = v3 - 2;
      v5 = v3 > 3;
      v3 -= 2;
    }

    while (v5);
  }

  if (a2 == 1)
  {
    v2 += *a1;
  }

  return ~(HIWORD(v2) + v2 + ((HIWORD(v2) + v2) >> 16));
}

void *NECreateAddressStructFromString(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  v7 = malloc_type_malloc(Length + 1, 0xB892E1CAuLL);
  CFStringGetCString(a1, v7, Length + 1, 0x600u);
  v8 = *MEMORY[0x1E695E480];
  if (a2)
  {
    v9 = CFStringCreateWithFormat(v8, 0, @"%@", a2);
  }

  else
  {
    v9 = CFStringCreateWithFormat(v8, 0, @"%d", a3);
  }

  v11 = v9;
  v12 = CFStringGetLength(v9);
  v13 = malloc_type_malloc(v12 + 1, 0x4E69D3C6uLL);
  CFStringGetCString(v11, v13, v12 + 1, 0x600u);
  CFRelease(v11);
  memset(&v19, 0, sizeof(v19));
  v19.ai_socktype = 2;
  v19.ai_flags = 4;
  if (getaddrinfo(v7, v13, &v19, &v18))
  {
    v10 = 0;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = malloc_type_malloc(0x80uLL, 0x1000040AE2C30F4uLL);
    v15 = v18;
    if (v10)
    {
      ai_addr = v18->ai_addr;
      ai_addrlen = v18->ai_addrlen;
      __memcpy_chk();
    }

    freeaddrinfo(v15);
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  free(v7);
LABEL_9:
  if (v13)
  {
    free(v13);
  }

  return v10;
}

const __CFString *NEGetAddressFamilyFromString(CFStringRef theString)
{
  v1 = theString;
  v19 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (theString)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    Length = CFStringGetLength(theString);
    v3 = malloc_type_malloc(Length + 1, 0xBC187EFEuLL);
    CFStringGetCString(v1, v3, Length + 1, 0x600u);
    memset(&v10, 0, sizeof(v10));
    v10.ai_socktype = 2;
    v10.ai_flags = 4;
    if (!getaddrinfo(v3, 0, &v10, &v9))
    {
      v6 = v9;
      ai_addr = v9->ai_addr;
      ai_addrlen = v9->ai_addrlen;
      __memcpy_chk();
      freeaddrinfo(v6);
      v1 = BYTE1(v11);
      if (!v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v1 = 0;
    if (v3)
    {
LABEL_4:
      free(v3);
    }
  }

LABEL_5:
  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

CFDataRef NECreateAddressDataFromString(const __CFString *a1, const __CFString *a2, int *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (!a1)
  {
    v10 = 0;
    goto LABEL_12;
  }

  memset(v19, 0, sizeof(v19));
  Length = CFStringGetLength(a1);
  v7 = malloc_type_malloc(Length + 1, 0x7B63A1B4uLL);
  CFStringGetCString(a1, v7, Length + 1, 0x600u);
  if (a2)
  {
    v8 = CFStringGetLength(a2);
    v9 = malloc_type_malloc(v8 + 1, 0xAAF799E2uLL);
    CFStringGetCString(a2, v9, v8 + 1, 0x600u);
  }

  else
  {
    v9 = 0;
  }

  memset(&v18, 0, sizeof(v18));
  v18.ai_socktype = 2;
  v18.ai_flags = 4;
  if (getaddrinfo(v7, v9, &v18, &v17))
  {
    goto LABEL_7;
  }

  v13 = v17;
  ai_addr = v17->ai_addr;
  ai_addrlen = v17->ai_addrlen;
  __memcpy_chk();
  freeaddrinfo(v13);
  if (BYTE1(v19[0]) == 30)
  {
    v10 = CFDataCreate(*MEMORY[0x1E695E480], v19 + 8, 16);
    if (!a3)
    {
      goto LABEL_8;
    }

    v16 = 30;
    goto LABEL_19;
  }

  if (BYTE1(v19[0]) == 2)
  {
    v10 = CFDataCreate(*MEMORY[0x1E695E480], v19 + 4, 4);
    if (!a3)
    {
      goto LABEL_8;
    }

    v16 = 2;
LABEL_19:
    *a3 = v16;
    goto LABEL_8;
  }

LABEL_7:
  v10 = 0;
LABEL_8:
  if (v7)
  {
    free(v7);
  }

  if (v9)
  {
    free(v9);
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

CFDataRef NECreateAddressStructDataFromString(const __CFString *a1, const __CFString *a2, int *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (!a1)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *bytes = 0u;
  Length = CFStringGetLength(a1);
  v7 = malloc_type_malloc(Length + 1, 0x23183FE5uLL);
  CFStringGetCString(a1, v7, Length + 1, 0x600u);
  if (a2)
  {
    v8 = CFStringGetLength(a2);
    v9 = malloc_type_malloc(v8 + 1, 0x41DA455uLL);
    CFStringGetCString(a2, v9, v8 + 1, 0x600u);
  }

  else
  {
    v9 = 0;
  }

  memset(&v18, 0, sizeof(v18));
  v18.ai_socktype = 2;
  v18.ai_flags = 4;
  if (!getaddrinfo(v7, v9, &v18, &v17))
  {
    v11 = v17;
    ai_addr = v17->ai_addr;
    ai_addrlen = v17->ai_addrlen;
    __memcpy_chk();
    freeaddrinfo(v11);
    v10 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 128);
    v14 = bytes[1];
    if (bytes[1] == 2)
    {
      if (!a3)
      {
        goto LABEL_14;
      }

      v14 = 2;
    }

    else if (!a3 || bytes[1] != 30)
    {
      goto LABEL_14;
    }

    *a3 = v14;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:
  if (v7)
  {
    free(v7);
  }

  if (v9)
  {
    free(v9);
  }

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

CFStringRef NECreateAddressString(CFStringRef result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = BYTE1(result->isa);
    if (v1 == 30)
    {
      if (LOBYTE(result->isa) >= 0x1Cu)
      {
        v2 = 30;
        v3 = 8;
        goto LABEL_8;
      }
    }

    else if (v1 == 2 && LOBYTE(result->isa) > 0xFu)
    {
      v2 = 2;
      v3 = 4;
LABEL_8:
      inet_ntop(v2, result + v3, cStr, 0x40u);
      result = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
      goto LABEL_10;
    }

    result = 0;
  }

LABEL_10:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *NECreateAddressStringWithPort(uint64_t a1)
{
  v2 = NECreateAddressString(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v2);
  CFRelease(v3);
  v5 = *(a1 + 1);
  if (v5 == 2)
  {
    v6 = @":%u";
    goto LABEL_7;
  }

  if (v5 == 30)
  {
    v6 = @".%u";
LABEL_7:
    CFStringAppendFormat(MutableCopy, 0, v6, bswap32(*(a1 + 2)) >> 16);
  }

  return MutableCopy;
}

uint64_t NEGetPortFromAddress(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 1);
    if (v1 == 30 || v1 == 2)
    {
      v3 = *(result + 2);
    }

    else
    {
      v3 = 0;
    }

    return __rev16(v3);
  }

  return result;
}

CFStringRef NECreateAddressStringFromBuffer(CFStringRef result, unint64_t a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (a2 >= 4 && a3 == 2)
    {
      v4 = 2;
LABEL_8:
      inet_ntop(v4, v3, cStr, 0x40u);
      result = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
      goto LABEL_9;
    }

    result = 0;
    if (a2 >= 0x10 && a3 == 30)
    {
      v4 = 30;
      goto LABEL_8;
    }
  }

LABEL_9:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef NECreateIPv4AddressMaskStringFromPrefix(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 > 0x20)
  {
    result = 0;
  }

  else
  {
    v3 = bswap32(-1 << (32 - a1));
    inet_ntop(2, &v3, cStr, 0x40u);
    result = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef NECreateIPv6AddressMaskStringFromPrefix(unsigned int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 > 0x80)
  {
    result = 0;
  }

  else
  {
    v5[0] = 0;
    v5[1] = 0;
    if (a1)
    {
      v1 = a1 >> 3;
      v2 = a1 & 7;
      __memset_chk();
      if (v2)
      {
        *(v5 + v1) = -1 << (8 - v2);
      }
    }

    inet_ntop(30, v5, cStr, 0x40u);
    result = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef NECreateIPv6SubnetAddressWithPrefix(const __CFString *a1, unsigned int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = NECreateIPv6AddressMaskStringFromPrefix(a2);
  v4 = NECreateAddressStructFromString(v3, 0, 0);
  v5 = NECreateAddressStructFromString(a1, 0, 0);
  v6 = v5;
  if (v4 && v5)
  {
    if (v4[1] == 30 && *(v5 + 1) == 30)
    {
      v7 = 0;
      v11[0] = 0;
      v11[1] = 0;
      do
      {
        *(v11 + v7) = v4[v7 + 8] & *(v5 + v7 + 8);
        ++v7;
      }

      while (v7 != 16);
      inet_ntop(30, v11, cStr, 0x40u);
      v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    if (!v4)
    {
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  free(v4);
  if (v6)
  {
LABEL_10:
    free(v6);
  }

LABEL_11:
  if (v3)
  {
    CFRelease(v3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void NESetValueIfPresent(const __CFDictionary *a1, __CFDictionary *a2, void *key)
{
  if (a1 && a2 && key && CFDictionaryContainsKey(a1, key))
  {
    Value = CFDictionaryGetValue(a1, key);

    CFDictionarySetValue(a2, key, Value);
  }
}

void NEAddDateToDictionary(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = CFDateCreate(*MEMORY[0x1E695E480], a3 - *MEMORY[0x1E695E468]);
      if (v5)
      {
        v6 = v5;
        CFDictionaryAddValue(a1, a2, v5);

        CFRelease(v6);
      }
    }
  }
}

void NEAddIntToDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionaryAddValue(a1, a2, v5);
      CFRelease(v6);
    }
  }
}

void NEAddInt64ToDictionary(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionaryAddValue(a1, a2, v5);
      CFRelease(v6);
    }
  }
}

void NEAddIntToArray(__CFArray *a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a1, v3);
      CFRelease(v4);
    }
  }
}

uint64_t NEGetIntFromDictionary(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a1, a2);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        return valuePtr;
      }
    }
  }

  return v3;
}

uint64_t NEGetIntFromArray(const __CFArray *a1, CFIndex a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (a1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
    if (ValueAtIndex)
    {
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }
  }

  return v3;
}

void NEAddAddressToDictionary(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    v5 = *(a3 + 1);
    if (v5 == 2)
    {
      v6 = 4;
    }

    else
    {
      if (v5 != 30)
      {
        goto LABEL_10;
      }

      v6 = 8;
    }

    inet_ntop(v5, (a3 + v6), cStr, 0x40u);
    v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
    if (v7)
    {
      v8 = v7;
      CFDictionaryAddValue(a1, a2, v7);
      CFRelease(v8);
    }
  }

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
}

void NEAddPortToDictionary(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    v3 = *(a3 + 1);
    if (v3 == 30 || v3 == 2)
    {
      NEAddIntToDictionary(a1, a2, bswap32(*(a3 + 2)) >> 16);
    }
  }
}

uint64_t NEGetPrefixForAddressRange(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if (!a1 || !a2)
  {
    return result;
  }

  v4 = *(a1 + 1);
  if (v4 != *(a2 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 == 30)
  {
    v11 = 0;
    v12 = *(a1 + 8);
    v52 = *(a2 + 8);
    v53 = v12;
    result = 32;
    while (1)
    {
      v13 = *(&v53 + v11);
      v14 = *(&v52 + v11);
      if (v13 != v14)
      {
        break;
      }

      v11 += 4;
      result += 32;
      if (v11 == 16)
      {
        result = 128;
        goto LABEL_15;
      }
    }

    v15 = bswap32(v14);
    v16 = bswap32(v13);
    do
    {
      v16 >>= 1;
      v17 = v16 == v15 >> 1;
      v15 >>= 1;
      --result;
    }

    while (!v17);
LABEL_15:
    v18 = 0;
    v19 = *(a1 + 8);
    v52 = *(a2 + 8);
    v53 = v19;
    v20 = 32 - result;
    for (i = result; ; i -= 32)
    {
      if (!i)
      {
        if (*(&v53 + v18) || *(&v52 + v18) != -1)
        {
          return 0xFFFFFFFFLL;
        }

        return result;
      }

      if (i <= 0x1F)
      {
        break;
      }

      ++v18;
      v20 += 32;
      if (v18 == 4)
      {
        return result;
      }
    }

    if (v20 <= 1)
    {
      v20 = 1;
    }

    v26 = v20 - 1;
    v27 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = xmmword_1C0DDA990;
    v29 = xmmword_1C0DDA9A0;
    v30 = xmmword_1C0DDA9B0;
    v31 = 0uLL;
    v32.i64[0] = 0x100000001;
    v32.i64[1] = 0x100000001;
    v33 = vdupq_n_s64(4uLL);
    v34.i64[0] = 0x400000004;
    v34.i64[1] = 0x400000004;
    do
    {
      v35 = v31;
      v36 = v28;
      v37 = v29;
      v31 = vaddq_s32(vshlq_u32(v32, v30), v31);
      v28 = vaddq_s64(v28, v33);
      v29 = vaddq_s64(v29, v33);
      v30 = vaddq_s32(v30, v34);
      v27 -= 4;
    }

    while (v27);
    v38 = vdupq_lane_s64(v26, 0);
    v39 = vaddvq_s32(vbslq_s8(vuzp1q_s32(vcgtq_u64(v37, v38), vcgtq_u64(v36, v38)), v35, v31));
    if ((bswap32(*(&v53 + v18)) & v39) == 0 && (v39 & ~bswap32(*(&v52 + v18))) == 0)
    {
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (v4 != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 4);
  v6 = bswap32(v5);
  v7 = *(a2 + 4);
  v8 = bswap32(v7);
  if (v5 == v7)
  {
    v9 = 0;
    v10 = 32;
  }

  else
  {
    v22 = -3;
    v23 = v8;
    v24 = v6;
    do
    {
      v25 = v22;
      v24 >>= 1;
      v17 = v24 == v23 >> 1;
      v23 >>= 1;
      --v22;
    }

    while (!v17);
    v10 = v25 + 34;
    if (v25 == -2)
    {
      v9 = 0;
    }

    else
    {
      v40 = xmmword_1C0DDA990;
      v41 = xmmword_1C0DDA9A0;
      v42 = xmmword_1C0DDA9B0;
      v43 = -v22 & 0xFFFFFFFFFFFFFFFCLL;
      v44 = 0uLL;
      v45.i64[0] = 0x100000001;
      v45.i64[1] = 0x100000001;
      v46 = vdupq_n_s64(4uLL);
      v47.i64[0] = 0x400000004;
      v47.i64[1] = 0x400000004;
      do
      {
        v48 = v44;
        v49 = v40;
        v50 = v41;
        v44 = vaddq_s32(vshlq_u32(v45, v42), v44);
        v40 = vaddq_s64(v40, v46);
        v41 = vaddq_s64(v41, v46);
        v42 = vaddq_s32(v42, v47);
        v43 -= 4;
      }

      while (v43);
      v51 = vdupq_lane_s64(-3 - v25, 0);
      v9 = vaddvq_s32(vbslq_s8(vuzp1q_s32(vcgtq_u64(v50, v51), vcgtq_u64(v49, v51)), v48, v44));
    }
  }

  if (((v6 | ~v8) & v9) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v10;
  }
}

uint64_t NEGetPrefixForAddressRangeStrings(const __CFString *a1, const __CFString *a2)
{
  v3 = NECreateAddressStructFromString(a1, 0, 0);
  v4 = NECreateAddressStructFromString(a2, 0, 0);
  v5 = NEGetPrefixForAddressRange(v3, v4);
  if (v3)
  {
    free(v3);
  }

  if (v4)
  {
    free(v4);
  }

  return v5;
}

uint64_t NEGetPrefixForIPv4NetmaskString(const __CFString *a1)
{
  v1 = NECreateAddressStructFromString(a1, 0, 0);
  v2 = NECreateAddressStructFromString(@"255.255.255.255", 0, 0);
  v3 = NEGetPrefixForAddressRange(v1, v2);
  if (v1)
  {
    free(v1);
  }

  if (v2)
  {
    free(v2);
  }

  return v3;
}

uint64_t NEGetPrefixForIPv6NetmaskString(const __CFString *a1)
{
  v1 = NECreateAddressStructFromString(a1, 0, 0);
  v2 = NECreateAddressStructFromString(@"ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff", 0, 0);
  v3 = NEGetPrefixForAddressRange(v1, v2);
  if (v1)
  {
    free(v1);
  }

  if (v2)
  {
    free(v2);
  }

  return v3;
}

uint64_t NECompareAddresses(const __CFString *a1, const __CFString *a2)
{
  v2 = 4294967294;
  if (a1 && a2)
  {
    v13 = 0;
    v4 = NECreateAddressDataFromString(a1, 0, &v13 + 1);
    v5 = v4;
    if (v4 && HIDWORD(v13))
    {
      v6 = NECreateAddressDataFromString(a2, 0, &v13);
      if (v6)
      {
        v7 = v6;
        if (v13 == HIDWORD(v13))
        {
          BytePtr = CFDataGetBytePtr(v5);
          v9 = CFDataGetBytePtr(v7);
          Length = CFDataGetLength(v5);
          v11 = memcmp(BytePtr, v9, Length);
          if (v11 >= 0)
          {
            v2 = v11 != 0;
          }

          else
          {
            v2 = 0xFFFFFFFFLL;
          }
        }

        CFRelease(v5);
        v5 = v7;
      }

      goto LABEL_12;
    }

    if (v4)
    {
LABEL_12:
      CFRelease(v5);
    }
  }

  return v2;
}

BOOL NEAddressRangeIsContainedInAddressRange(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  v6 = NECompareAddresses(a1, a3);
  v7 = NECompareAddresses(a2, a4);
  return (v6 + 1) < 2 && v7 < 2;
}

void NEAddDataToDictionary(__CFDictionary *a1, const void *a2, UInt8 *bytes, int a4)
{
  if (a1)
  {
    if (a2)
    {
      if (bytes)
      {
        v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, a4);
        if (v6)
        {
          v7 = v6;
          CFDictionaryAddValue(a1, a2, v6);

          CFRelease(v7);
        }
      }
    }
  }
}

void NEAddSensitiveDataToDictionary(__CFDictionary *a1, const void *a2, const UInt8 *a3, int a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v8 = SecCFAllocatorZeroize();
        v9 = CFDataCreate(v8, a3, a4);
        if (v9)
        {
          v10 = v9;
          CFDictionaryAddValue(a1, a2, v9);

          CFRelease(v10);
        }
      }
    }
  }
}

void NEAppendIntToArray(__CFArray *a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a1, v3);
      CFRelease(v4);
    }
  }
}

const __CFNumber *NEGetValueFromIntArray(const __CFNumber *result, CFIndex a2)
{
  valuePtr = 0;
  if (result)
  {
    v3 = result;
    if (CFArrayGetCount(result) <= a2)
    {
      return 0;
    }

    else
    {
      result = CFArrayGetValueAtIndex(v3, a2);
      if (result)
      {
        CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
        return valuePtr;
      }
    }
  }

  return result;
}

CFDataRef NECreateDataFromString(const __CFString *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (!Length)
  {
    return 0;
  }

  v5 = Length;
  v6 = malloc_type_malloc(Length + 1, 0xBA4F71FDuLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (CFStringGetCString(a1, v6, v5 + 1, 0x600u))
  {
    if (a2)
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = v5;
    }

    v9 = CFDataCreate(*MEMORY[0x1E695E480], v7, v8);
  }

  else
  {
    v9 = 0;
  }

  free(v7);
  return v9;
}

CFStringRef NECreateStringFromData(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    Length = CFDataGetLength(result);
    BytePtr = CFDataGetBytePtr(v1);
    bytes = 0;
    v4 = *MEMORY[0x1E695E480];
    v5 = CFDataCreate(*MEMORY[0x1E695E480], &bytes, 1);
    if (!v5 || (v6 = v5, v10.location = 0, v10.length = Length, location = CFDataFind(v1, v5, v10, 0).location, CFRelease(v6), location == -1))
    {
      v8 = CFDataGetLength(v1);
      return CFStringCreateWithBytes(v4, BytePtr, v8, 0x600u, 0);
    }

    else
    {
      return CFStringCreateWithCString(v4, BytePtr, 0x600u);
    }
  }

  return result;
}

void *NECreateCStringFromCFString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (!Length)
  {
    return 0;
  }

  v3 = Length;
  v4 = malloc_type_calloc(1uLL, Length + 1, 0xAE4AE253uLL);
  if (v4 && !CFStringGetCString(a1, v4, v3 + 1, 0x600u))
  {
    free(v4);
    return 0;
  }

  return v4;
}

void NEAddValueToIntKeyedDictionary(__CFDictionary *a1, int a2, const void *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionaryAddValue(a1, v5, a3);
      CFRelease(v6);
    }
  }
}

const __CFDictionary *NEGetValueFromIntKeyedDictionary(const __CFDictionary *a1, int a2)
{
  Value = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(Value, v3);
      CFRelease(v4);
    }

    else
    {
      return 0;
    }
  }

  return Value;
}

void NERemoveValueFromIntKeyedDictionary(__CFDictionary *a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFDictionaryRemoveValue(a1, v3);
      CFRelease(v4);
    }
  }
}

NSObject *NERepeatingEventCreate(NSObject *a1, dispatch_time_t a2, uintptr_t a3, uint64_t a4, uint64_t a5, int a6, const void *a7, const void *a8)
{
  v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040AA036A7FuLL);
  *v16 = a4;
  v16[2] = a6;
  if (a7)
  {
    *(v16 + 2) = _Block_copy(a7);
  }

  if (a8)
  {
    *(v16 + 3) = _Block_copy(a8);
  }

  v16[3] = 0;
  v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, a3, a1);
  v18 = v17;
  if (v17)
  {
    dispatch_set_context(v17, v16);
    dispatch_set_finalizer_f(v18, repeatingEventFinalizer);
    dispatch_source_set_timer(v18, a2, 1000000 * a4, 1000000 * a5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __NERepeatingEventCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_17;
    handler[4] = v18;
    dispatch_source_set_event_handler(v18, handler);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = __NERepeatingEventCreate_block_invoke_2;
    v20[3] = &__block_descriptor_tmp_18;
    v20[4] = v18;
    dispatch_source_set_cancel_handler(v18, v20);
    dispatch_resume(v18);
  }

  else
  {
    free(v16);
  }

  return v18;
}

uint64_t __NERepeatingEventCreate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  context = dispatch_get_context(v1);
  v3 = context;
  v5 = *(context + 2);
  v4 = *(context + 3);
  *(context + 3) = v4 + 1;
  if (v5)
  {
    v6 = v4 < v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    result = context[2];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_source_cancel(v1);
    result = v3[3];
    if (!result)
    {
      return result;
    }
  }

  v8 = *(result + 16);

  return v8();
}

void __NERepeatingEventCreate_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}