void sub_223F37038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F3A724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return [v0 isEqual:v1];
}

void sub_223F3B3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  __brc_leave_section(&a30);
  _Unwind_Resume(a1);
}

void sub_223F3BFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223F3D6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  __brc_leave_section(&a36);
  _Unwind_Resume(a1);
}

void sub_223F3EED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  __brc_leave_section(&a18);
  _Unwind_Resume(a1);
}

void sub_223F3F56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_223F3F7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

BOOL brc_pack_xattrs(int a1, void *a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v42 = objc_opt_new();
  v43 = a5;
  if (!a5)
  {
    v10 = 1;
    goto LABEL_25;
  }

  v41 = a6;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v46 = v9;
  while (1)
  {
    v13 = v11;
    v14 = *(a4 + 8 * v12);
    v15 = strlen(v14);
    v16 = [v9 data];
    v17 = [v16 length];
    v47 = v11;
    v18 = BRCGetXattrValue(a1, v14, a3 - v17 - v15, &v47);
    v11 = v47;

    if (!v18)
    {
      break;
    }

    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v14 length:v15 encoding:4];
    [v42 setName:v19];

    [v42 setValue:v18];
    v20 = v9;
    v21 = objc_alloc_init(MEMORY[0x277D43178]);
    [v42 writeTo:v21];
    v22 = [v21 data];
    v23 = [v20 data];
    v24 = [v23 length];
    v25 = [v22 length];
    v26 = [v22 length];
    v27 = v24 + v25 + 1;
    do
    {
      ++v27;
      v28 = v26 > 0x7F;
      v26 >>= 7;
    }

    while (v28);

    if (v27 <= a3)
    {
      [v46 writeData:v22 forTag:1];
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v32 = [v46 data];
        v33 = [v32 length];
        *buf = 136315650;
        v49 = v14;
        v50 = 2048;
        v51 = v33;
        v52 = 2112;
        v53 = v29;
        _os_log_debug_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] serialized xattr %s (blob size:%ld)%@", buf, 0x20u);
      }
    }

    else
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v18 length];
        *buf = 136315650;
        v49 = v14;
        v50 = 2048;
        v51 = v31;
        v52 = 2112;
        v53 = v29;
        _os_log_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEFAULT, "[WARNING] skipping xattr %s (size:%zd) because we don't have enough space anymore%@", buf, 0x20u);
      }
    }

LABEL_15:
    v10 = ++v12 >= v43;
    v9 = v46;
    if (v12 == v43)
    {
      v10 = 1;
      goto LABEL_24;
    }
  }

  if ([v11 br_isPOSIXErrorCode:27])
  {
    v18 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v49 = v14;
      v50 = 2112;
      v51 = v18;
      _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Ignoring xattr which is too large %s%@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v34 = v11;
  if (v34)
  {
    v35 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, 0x90u))
    {
      v40 = "(passed to caller)";
      *buf = 136315906;
      v49 = "brc_pack_xattrs";
      v50 = 2080;
      if (!v41)
      {
        v40 = "(ignored by caller)";
      }

      v51 = v40;
      v52 = 2112;
      v53 = v34;
      v54 = 2112;
      v55 = v35;
      _os_log_error_impl(&dword_223E7A000, v36, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (v41)
  {
    v37 = v34;
    *v41 = v34;
  }

LABEL_24:
LABEL_25:

  v38 = *MEMORY[0x277D85DE8];
  return v10;
}

void brc_remove_xattrs(int fd, const char **a2, uint64_t a3)
{
  *&v15[13] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = a3;
    do
    {
      if (fremovexattr(fd, *a2, 0) < 0)
      {
        v6 = brc_bread_crumbs();
        v7 = brc_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *a2;
          v10 = *__error();
          *buf = 136315650;
          v13 = v9;
          v14 = 1024;
          *v15 = v10;
          v15[2] = 2112;
          *&v15[3] = v6;
          _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] removing xattr %s failed %{errno}d%@", buf, 0x1Cu);
        }
      }

      else
      {
        v6 = brc_bread_crumbs();
        v7 = brc_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = *a2;
          *buf = 136315394;
          v13 = v8;
          v14 = 2112;
          *v15 = v6;
          _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] removed xattr %s%@", buf, 0x16u);
        }
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t ubiquitousItemIsDownloading(void *a1)
{
  v1 = a1;
  v2 = +[BRCSystemResourcesManager manager];
  v3 = [v2 isNetworkReachable];

  v4 = MEMORY[0x277CBEC28];
  if (v3)
  {
    if ([v1 isDocument])
    {
      v5 = [v1 asDocument];
      v6 = [v5 downloadStatus];
      v7 = MEMORY[0x277CBEC38];
      if (v6 == 3)
      {
        v7 = v4;
      }

      if (v6)
      {
        v4 = v7;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t ubiquitousItemIsDownloadRequested(void *a1)
{
  if ([a1 isDocument])
  {
    return MEMORY[0x277CBEC38];
  }

  else
  {
    return 0;
  }
}

id ubiquitousItemUploadingError(void *a1)
{
  v1 = a1;
  if (![v1 isDocument])
  {
    goto LABEL_5;
  }

  v2 = [v1 asDocument];
  v3 = [v2 uploadError];

  if (!v3 || [v3 brc_isCloudKitErrorRequiringAssetRescan])
  {

LABEL_5:
    v4 = [v1 syncUpError];
    v3 = v4;
    goto LABEL_6;
  }

  v4 = v3;
LABEL_6:
  v5 = [v4 brc_wrappedError];

  return v5;
}

uint64_t ubiquitousItemIsShared(void *a1)
{
  v1 = a1;
  v2 = [v1 isSharedByMe];
  v3 = MEMORY[0x277CBEC38];
  if ((v2 & 1) == 0)
  {
    v4 = [v1 clientZone];
    v5 = [v4 isSharedZone];

    if (!v5)
    {
      v3 = MEMORY[0x277CBEC28];
    }
  }

  return v3;
}

id ubiquitousSharedItemRole(void *a1)
{
  v1 = a1;
  if ([v1 isSharedByMe])
  {
    v2 = MEMORY[0x277CBE9E0];
LABEL_5:
    v5 = *v2;
    goto LABEL_7;
  }

  v3 = [v1 clientZone];
  v4 = [v3 isSharedZone];

  if (v4)
  {
    v2 = MEMORY[0x277CBE9E8];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

id ubiquitousSharedItemOwnerName(void *a1)
{
  v1 = ubiquitousSharedItemOwnerNameComponents(a1);
  v2 = [v1 br_formattedName];

  return v2;
}

id ubiquitousSharedItemOwnerNameComponents(void *a1)
{
  v1 = a1;
  v2 = [v1 clientZone];
  v3 = [v2 isSharedZone];

  if (v3)
  {
    v4 = [v1 dbFacade];
    v5 = [v1 ownerKey];
    v6 = [v4 userIdentityForKey:v5];

    if (!v6)
    {
      ubiquitousSharedItemOwnerNameComponents_cold_1();
    }

    v7 = [v6 nameComponents];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id ubiquitousItemLastEditorNameComponents(void *a1)
{
  v1 = a1;
  if ([v1 isDocument])
  {
    v2 = [v1 asDocument];
    v3 = [v2 currentVersion];
    v4 = [v1 dbFacade];
    v5 = [v3 lastEditorUserIdentityWithDBFacade:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 nameComponentsAcceptUnknownUser:1];

  return v6;
}

id ubiquitousSharedItemOldPermissions(void *a1)
{
  v1 = a1;
  v2 = [v1 clientZone];
  v3 = [v2 isSharedZone];

  if ((v3 & 1) == 0)
  {
    if ([v1 isSharedByMe])
    {
      if (([v1 sharingOptions] & 0x48) != 0)
      {
        v4 = 16;
        goto LABEL_6;
      }

      if ([v1 isDocument] && (objc_msgSend(v1, "sharingOptions") & 1) != 0)
      {
        v4 = 2;
        goto LABEL_6;
      }
    }

    v7 = 0;
    goto LABEL_12;
  }

  v4 = 32;
LABEL_6:
  v5 = [v1 sharingOptions];
  v6 = MEMORY[0x277CBE9D0];
  if ((v5 & v4) != 0)
  {
    v6 = MEMORY[0x277CBE9C8];
  }

  v7 = *v6;
LABEL_12:

  return v7;
}

id ubiquitousSharedItemCurrentUserPermissions(void *a1)
{
  v1 = a1;
  v2 = [v1 clientZone];
  v3 = [v2 isSharedZone];

  if (v3)
  {
    v4 = [v1 sharingOptions];

    v5 = MEMORY[0x277CBE9C8];
    if ((v4 & 0x20) == 0)
    {
      v5 = MEMORY[0x277CBE9D0];
    }

    goto LABEL_7;
  }

  v6 = [v1 isSharedByMe];

  if (v6)
  {
    v5 = MEMORY[0x277CBE9D0];
LABEL_7:
    v7 = *v5;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

uint64_t ubiquitousItemIsUploading(void *a1)
{
  v1 = a1;
  v2 = +[BRCSystemResourcesManager manager];
  v3 = [v2 isNetworkReachable];

  v4 = MEMORY[0x277CBEC28];
  if (v3)
  {
    if ([v1 isDocument])
    {
      v5 = [v1 asDocument];
      v6 = [v5 uploadStatus];

      v7 = MEMORY[0x277CBEC38];
      if (v6 == 3)
      {
        v7 = v4;
      }

      if (v6)
      {
        v4 = v7;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

id ubiquitousItemLastEditorDeviceName(void *a1)
{
  v1 = a1;
  if ([v1 isDocument])
  {
    v2 = [v1 asDocument];
    v3 = [v2 currentVersion];
    v4 = [v1 dbFacade];
    v5 = [v3 lastEditorDeviceDisplayNameWithDBFacade:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id ubiquitousItemLastEditorName(void *a1)
{
  v1 = ubiquitousItemLastEditorNameComponents(a1);
  v2 = [v1 br_formattedName];

  return v2;
}

id ubiquitousItemIsConflicted(void *a1)
{
  v1 = a1;
  if ([v1 isDocument])
  {
    v2 = MEMORY[0x277CCABB0];
    v3 = [v1 asDocument];
    v4 = [v3 currentVersion];
    v5 = [v4 conflictLoserEtags];
    v6 = [v2 numberWithInt:{objc_msgSend(v5, "count") != 0}];
  }

  else
  {
    v6 = MEMORY[0x277CBEC28];
  }

  return v6;
}

id ubiquitousItemIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 itemID];
  v3 = [v1 session];

  v4 = [v2 zoneUniqueItemIDStringWithSession:v3];

  return v4;
}

id ubiquitousDocumentRecordID(void *a1)
{
  v1 = a1;
  if ([v1 isDocument])
  {
    v2 = [v1 asDocument];
    v3 = [v2 documentRecordID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id ubiquitousEditedSinceShared(void *a1)
{
  v1 = a1;
  if ([v1 isDocument] && (objc_msgSend(v1, "sharingOptions") & 0x48) != 0)
  {
    v2 = [v1 asDocument];
    v3 = [v2 currentVersion];
    v4 = [v3 editedSinceShared];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id ubiquitousIsTopLevelSharedItem(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCABB0];
  v3 = ([v1 sharingOptions] & 4) != 0 && (objc_msgSend(v1, "sharingOptions") & 0x48) != 0;
  v4 = [v2 numberWithInt:v3];

  return v4;
}

void sub_223F427A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a37);
  objc_destroyWeak((v40 - 184));
  objc_destroyWeak((v40 - 128));
  _Unwind_Resume(a1);
}

void sub_223F434E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F436A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F43AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F43D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F43F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223F44414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F44F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223F450B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_223F45644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  __brc_leave_section(&a20);
  _Unwind_Resume(a1);
}

void sub_223F45BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F46060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F466A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  __brc_leave_section(v22 - 88);
  _Unwind_Resume(a1);
}

void sub_223F46F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  __brc_leave_section(v22 - 88);
  _Unwind_Resume(a1);
}

void sub_223F489B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F49B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F4ADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  __brc_leave_section(&a24);
  _Unwind_Resume(a1);
}

void sub_223F4B138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

Class initUIDevice()
{
  if (!UIKitLibrary_frameworkLibrary)
  {
    UIKitLibrary_frameworkLibrary = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
    if (!UIKitLibrary_frameworkLibrary)
    {
      initUIDevice_cold_2();
    }
  }

  Class = objc_getClass("UIDevice");
  classUIDevice = Class;
  if (!Class)
  {
    initUIDevice_cold_1();
  }

  getUIDeviceClass = UIDeviceFunction;

  return Class;
}

id etagFromVersionIdentifier(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@""];;
  v2 = [v1 firstObject];

  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t areSignaturesEquivalent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 versionIdentifier];
  v6 = [v4 versionIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7 & 1) != 0 || [v3 hasOldVersionIdentifier] && (objc_msgSend(v3, "oldVersionIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "versionIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, (v11))
  {
    v8 = 1;
  }

  else if ([v4 hasOldVersionIdentifier])
  {
    v12 = [v4 oldVersionIdentifier];
    v13 = [v3 versionIdentifier];
    v8 = [v12 isEqualToString:v13];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_223F4F950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F4FAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F502D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F51E18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F54AEC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_223F55648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F568E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F5755C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_223F58324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_223F597BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _BRCClassesForContainerState()
{
  if (_BRCClassesForContainerState_onceToken != -1)
  {
    _BRCClassesForContainerState_cold_1();
  }

  v1 = _BRCClassesForContainerState_allowedClasses;

  return v1;
}

void sub_223F643F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, os_activity_scope_state_s state)
{
  _Block_object_dispose((v39 - 176), 8);
  __brc_leave_section(&a36);
  os_activity_scope_leave(&state);
  _Block_object_dispose((v39 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_223F65E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F666F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223F67650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_223F68208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_223F6A19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223F6BC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

__CFString *prettyPrintQueryCursor(void *a1)
{
  v1 = [a1 data];
  v2 = [v1 base64EncodedStringWithOptions:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil-cursor";
  }

  v5 = v4;

  return v4;
}

id prettyPrintMigrationCursor(void *a1)
{
  v1 = a1;
  v2 = [v1 dbEnumerationCursor];

  if (v2)
  {
    v3 = [v1 dbEnumerationCursor];

    [v3 stringValue];
  }

  else
  {
    v3 = [v1 ckQueryCursor];

    prettyPrintQueryCursor(v3);
  }
  v4 = ;

  return v4;
}

void sub_223F7C1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223F8247C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F83264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223F84648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initRadarDraft()
{
  TapToRadarKitLibrary();
  result = objc_getClass("RadarDraft");
  classRadarDraft = result;
  getRadarDraftClass = RadarDraftFunction;
  return result;
}

void TapToRadarKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  if (!TapToRadarKitLibrary_frameworkLibrary)
  {
    TapToRadarKitLibrary_frameworkLibrary = dlopen("/AppleInternal/Library/Frameworks/TapToRadarKit.framework/TapToRadarKit", 2);
    if (!TapToRadarKitLibrary_frameworkLibrary)
    {
      v0 = brc_bread_crumbs();
      v1 = brc_default_log();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v3 = 136315394;
        v4 = dlerror();
        v5 = 2112;
        v6 = v0;
        _os_log_impl(&dword_223E7A000, v1, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't open TapToRadarKit : %s%@", &v3, 0x16u);
      }
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

Class initRadarComponent()
{
  TapToRadarKitLibrary();
  result = objc_getClass("RadarComponent");
  classRadarComponent = result;
  getRadarComponentClass = RadarComponentFunction;
  return result;
}

Class initTapToRadarService()
{
  TapToRadarKitLibrary();
  result = objc_getClass("TapToRadarService");
  classTapToRadarService = result;
  getTapToRadarServiceClass = TapToRadarServiceFunction;
  return result;
}

void sub_223F8BE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223F8C620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _brc_sqlite3_result_archived_value(sqlite3_context *a1, void *a2)
{
  v6 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CCA308]];
  v5 = [v4 encodedData];
  sqlite3_result_blob(a1, [v5 bytes], objc_msgSend(v5, "length"), 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v3);
}

uint64_t dropFPFSMigrationTablesWithDB(void *a1)
{
  v1 = a1;
  if ([v1 execute:@"DROP INDEX IF EXISTS client_items/item_file_id_unique"] && objc_msgSend(v1, "execute:", @"DROP INDEX IF EXISTS client_items/item_doc_id"))
  {
    v2 = [v1 execute:@"DROP INDEX IF EXISTS client_items/trashed_items_migration"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t fillFPFSMigrationNonMigratedFoldersTable(void *a1)
{
  v1 = a1;
  if ([v1 br_isTableExists:@"fpfs_folders_not_migrated"])
  {
    v2 = [v1 execute:{@"INSERT OR IGNORE INTO fpfs_folders_not_migrated SELECT item_id, zone_rowid FROM client_items WHERE item_localsyncupstate IN (5, 6) AND +item_type IN (0, 9, 10, 4)"}];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t dropFPFSMigrationNonMigratedFoldersTable(void *a1)
{
  v1 = a1;
  if ([v1 execute:@"DROP TABLE IF EXISTS fpfs_folders_not_migrated"])
  {
    v2 = [v1 execute:@"DROP INDEX IF EXISTS client_items/items_pending_fpfs_migration"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t br_create_tables_initial(void *a1, void *a2, int a3, void **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  v21 = 0uLL;
  v22 = 0;
  if (!a3)
  {
    if (v7)
    {
      if (([v7 _setupBackupDetector:&v21 error:a4] & 1) == 0)
      {
LABEL_25:
        v14 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v21 = xmmword_2241ABFC0;
      v22 = 0;
    }

    if ([v9 execute:{@"CREATE TABLE backup_detector( old integer, new integer, counter integer, os text not null, br text not null)"}])
    {
      v20 = v21;
      v10 = v22;
      v11 = OSVersion();
      v12 = BRVersion();
      if ([v9 execute:{@"INSERT INTO backup_detector (old, new, counter, os, br) VALUES (%llu, %llu, %llu, %@, %@)", v20, v10, v11, v12}] && objc_msgSend(v9, "execute:", @"CREATE TABLE boot_history(date integer primary key, os text not null, br text not null, bird_schema integer not null, db_schema integer not null)") && objc_msgSend(v9, "execute:", @"CREATE TABLE client_containers( container_id text primary key, container_schema_version integer not null, container_plist blob)") && (objc_msgSend(v9, "execute:", @"CREATE TABLE client_state (v)") & 1) != 0)
      {
        v13 = [v9 execute:@"INSERT INTO client_state values (NULL)"];

        if (v13)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

LABEL_20:
    if (a4)
    {
      v15 = [v9 lastError];
      v16 = *a4;
      *a4 = v15;
    }

    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      br_create_tables_initial_cold_1();
    }

    goto LABEL_25;
  }

  if (![v8 execute:{@"CREATE TABLE devices(key integer primary key, name text unique not null)"}] || !objc_msgSend(v9, "execute:", @"CREATE TABLE server_boot_history(date integer primary key, os text not null, br text not null, bird_schema integer not null, db_schema integer not null)") || !objc_msgSend(v9, "execute:", @"CREATE TABLE server_containers( container_id text primary key, container_schema_version integer not null, container_plist blob)") || (objc_msgSend(v9, "execute:", @"CREATE TABLE server_state (state, config_plist)") & 1) == 0 || (objc_msgSend(v9, "execute:", @"INSERT INTO server_state values (NULL, NULL)") & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  v14 = 1;
LABEL_26:

  return v14;
}

uint64_t br_update_tables_1_000(uint64_t a1, void *a2, char a3, void **a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 fetch:{@"SELECT container_id, container_plist FROM client_containers"}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [v9 enumerateObjectsOfClass:objc_opt_class()];
    v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v24 = a4;
      v25 = v9;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [MEMORY[0x277D82C10] nameWithPrefix:v14 suffix:@"items"];
          v16 = [MEMORY[0x277D82C10] nameWithPrefix:v14 suffix:@"unapplied_table"];
          v17 = [MEMORY[0x277D82C10] nameWithPrefix:v14 suffix:@"server_items"];
          if (![v7 execute:{@"UPDATE %@ SET item_live_conflict_loser_etags = call_block(%@, item_live_conflict_loser_etags) WHERE item_live_conflict_loser_etags IS NOT NULL", v15, &__block_literal_global_32}] || (objc_msgSend(v7, "execute:", @"INSERT OR IGNORE INTO %@ (throttle_id) SELECT item_rank FROM %@ WHERE version_conflict_loser_etags IS NOT NULL AND item_rank IS NOT NULL", v16, v17) & 1) == 0)
          {
            if (v24)
            {
              v18 = [v7 lastError];
              v19 = *v24;
              *v24 = v18;
            }

            v20 = brc_bread_crumbs();
            v21 = brc_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              br_create_tables_initial_cold_1();
            }

            v8 = 0;
            v9 = v25;
            goto LABEL_19;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        v8 = 1;
        v9 = v25;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 1;
    }

LABEL_19:
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t br_update_tables_2_000(void *a1, void *a2, int a3, void **a4)
{
  v82 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (a3)
  {
    if ([v8 execute:{@"CREATE TABLE server_zones(rowid integer PRIMARY KEY, zone_owner text not null, zone_name text not null, zone_plist blob, UNIQUE (zone_owner, zone_name))"}] && objc_msgSend(v8, "execute:", @"CREATE TABLE server_xattr_blobs(zone_rowid integer not null, signature blob not null, data blob not null, PRIMARY KEY(zone_rowid, signature))") && (objc_msgSend(v8, "execute:", @"CREATE TABLE server_pending_fetches(zone_rowid integer not null, record_id blob not null, record blob, PRIMARY KEY (zone_rowid, record_id))") & 1) != 0)
    {
      if ([v8 execute:{@"INSERT INTO server_zones (rowid, zone_owner, zone_name, zone_plist) SELECT NULL, %@, container_id, container_plist FROM server_containers", *MEMORY[0x277CBBF28]}] && (objc_msgSend(v8, "execute:", @"DROP TABLE server_containers") & 1) != 0)
      {
        v10 = [v8 fetch:{@"SELECT rowid, zone_name FROM server_zones"}];
        if ([v10 next])
        {
          do
          {
            v11 = [v10 stringAtIndex:1];
            v12 = [v10 numberAtIndex:0];
            [v9 setObject:v11 forKeyedSubscript:v12];
          }

          while (([v10 next] & 1) != 0);
        }

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        obj = [v9 keyEnumerator];
        v62 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
        if (v62)
        {
          v60 = *v76;
          while (2)
          {
            for (i = 0; i != v62; ++i)
            {
              if (*v76 != v60)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v75 + 1) + 8 * i);
              v15 = [v9 objectForKeyedSubscript:v14];
              v16 = [MEMORY[0x277D82C10] nameWithPrefix:v15 suffix:@"server_xattrs"];
              if (![v8 execute:{@"INSERT INTO server_xattr_blobs SELECT %@, signature, data FROM %@", v14, v16}] || !objc_msgSend(v8, "execute:", @"DROP TABLE %@", v16) || (objc_msgSend(MEMORY[0x277D82C10], "nameWithPrefix:suffix:", v15, @"pending_fetches"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v8, "execute:", @"DROP TABLE %@", v17), v17, (v18 & 1) == 0))
              {
                if (a4)
                {
                  v34 = [v8 lastError];
                  v35 = *a4;
                  *a4 = v34;
                }

                v36 = brc_bread_crumbs();
                v37 = brc_default_log();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
                {
                  br_update_tables_2_000_cold_6();
                }

                goto LABEL_53;
              }
            }

            v62 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
            if (v62)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_20;
      }

      if (a4)
      {
        v32 = [v8 lastError];
        v33 = *a4;
        *a4 = v32;
      }

      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        br_update_tables_2_000_cold_5();
      }
    }

    else
    {
      if (a4)
      {
        v28 = [v8 lastError];
        v29 = *a4;
        *a4 = v28;
      }

      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        br_update_tables_2_000_cold_4();
      }
    }

    goto LABEL_52;
  }

  if (![v8 execute:{@"CREATE TABLE client_zones(rowid integer PRIMARY KEY, zone_owner text not null, zone_name text not null, zone_plist blob, UNIQUE (zone_owner, zone_name))"}] || !objc_msgSend(v8, "execute:", @"CREATE TABLE client_reader_throttle(throttle_id integer primary key, zone_rowid integer not null, throttle_state integer not null, retry_count integer not null default 0, last_try_stamp integer not null default 0, next_retry_stamp integer not null default 0, expire_stamp integer not null default 0)") || !objc_msgSend(v8, "execute:", @"CREATE INDEX client_reader_throttle/zone_rowid ON client_reader_throttle (zone_rowid)") || !objc_msgSend(v8, "execute:", @"CREATE INDEX client_reader_throttle/next_retry_stamp_active_state ON client_reader_throttle (throttle_state, next_retry_stamp ASC, throttle_id ASC) WHERE throttle_state = 1") || !objc_msgSend(v8, "execute:", @"CREATE INDEX client_reader_throttle/zone_rowid__throttle_state ON client_reader_throttle (throttle_state, zone_rowid)") || !objc_msgSend(v8, "execute:", @"CREATE INDEX client_reader_throttle/expire_stamp_inactive_state ON client_reader_throttle (throttle_state, expire_stamp ASC) WHERE throttle_state = 0") || !objc_msgSend(v8, "execute:", @"CREATE TABLE client_unapplied_table(throttle_id integer primary key, zone_rowid integer not null, throttle_state integer not null, retry_count integer not null default 0, last_try_stamp integer not null default 0, next_retry_stamp integer not null default 0, expire_stamp integer not null default 0, item_id blob not null, apply_kind integer not null)") || !objc_msgSend(v8, "execute:", @"CREATE INDEX client_unapplied_table/zone_rowid ON client_unapplied_table (zone_rowid)") || !objc_msgSend(v8, "execute:", @"CREATE INDEX client_unapplied_table/next_retry_stamp_active_state ON client_unapplied_table (throttle_state, next_retry_stamp ASC, throttle_id ASC) WHERE throttle_state = 1") || !objc_msgSend(v8, "execute:", @"CREATE INDEX client_unapplied_table/zone_rowid__kind__throttle_state ON client_unapplied_table (throttle_state, zone_rowid, apply_kind)") || !objc_msgSend(v8, "execute:", @"CREATE INDEX client_unapplied_table/expire_stamp_inactive_state ON client_unapplied_table (throttle_state, expire_stamp ASC) WHERE throttle_state = 0") || !objc_msgSend(v8, "execute:", @"CREATE TABLE client_document_access(zone_rowid text not null , item_rowid integer not null , evictable integer not null , access_time integer not null default 0, PRIMARY KEY (zone_rowid, item_rowid))") || !objc_msgSend(v8, "execute:", @"CREATE INDEX client_document_access/access_item ON client_document_access (access_time)") || !objc_msgSend(v8, "execute:", @"CREATE INDEX client_document_access/evictable ON client_document_access (evictable)") || (objc_msgSend(v8, "execute:", @"DROP TABLE IF EXISTS document_access") & 1) == 0)
  {
    if (a4)
    {
      v24 = [v8 lastError];
      v25 = *a4;
      *a4 = v24;
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      br_update_tables_2_000_cold_1();
    }

LABEL_52:

    v10 = 0;
LABEL_53:
    v19 = 0;
    goto LABEL_54;
  }

  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 1;
  v20 = [v8 fetch:{@"SELECT rowid, zone_name FROM server_zones"}];
  while ([v20 next])
  {
    v21 = [v20 unsignedLongAtIndex:0];
    if (v21 > v72[3])
    {
      v72[3] = v21 + 1;
    }

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
    v23 = [v20 stringAtIndex:1];
    [v9 setObject:v22 forKeyedSubscript:v23];
  }

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __br_update_tables_2_000_block_invoke;
  v68[3] = &unk_278503318;
  v63 = v9;
  v69 = v63;
  v70 = &v71;
  v38 = MEMORY[0x22AA4A310](v68);
  if (([v8 execute:{@"INSERT INTO client_zones (rowid, zone_owner, zone_name, zone_plist)    SELECT call_block(%@, container_id), %@, container_id, container_plist      FROM client_containers", v38, *MEMORY[0x277CBBF28]}] & 1) == 0)
  {

LABEL_71:
    if (a4)
    {
      v41 = [v8 lastError];
      v42 = *a4;
      *a4 = v41;
    }

    v57 = brc_bread_crumbs();
    v43 = brc_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      v44 = [v8 lastError];
      br_update_tables_2_000_cold_2(v44, v57, v80);
    }

LABEL_92:

    v49 = 0;
    v10 = v20;
    goto LABEL_93;
  }

  v39 = [v8 execute:@"DROP TABLE client_containers"];

  if ((v39 & 1) == 0)
  {
    goto LABEL_71;
  }

  [v63 removeAllObjects];
  v10 = [v8 fetch:{@"SELECT rowid, zone_name FROM client_zones"}];
  while (1)
  {

    if (![v10 next])
    {
      break;
    }

    v20 = [v10 stringAtIndex:1];
    v40 = [v10 numberAtIndex:0];
    [v63 setObject:v20 forKeyedSubscript:v40];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v57 = [v63 keyEnumerator];
  v56 = [v57 countByEnumeratingWithState:&v64 objects:v79 count:16];
  if (v56)
  {
    v55 = *v65;
    while (2)
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v65 != v55)
        {
          objc_enumerationMutation(v57);
        }

        v43 = [v63 objectForKeyedSubscript:*(*(&v64 + 1) + 8 * j)];
        obja = [MEMORY[0x277D82C10] nameWithPrefix:v43 suffix:@"items"];
        v61 = [MEMORY[0x277D82C10] nameWithPrefix:v43 suffix:@"desired_additions"];
        v46 = [MEMORY[0x277D82C10] nameWithPrefix:v43 suffix:@"unapplied_table"];
        if (![v8 execute:{@"DROP TABLE %@", v61}] || !objc_msgSend(v8, "execute:", @"UPDATE %@   SET item_state = -1, item_processing_stamp = 1 WHERE item_type = 3   AND item_localsyncupstate = 3", obja) || !objc_msgSend(v8, "execute:", @"DROP TABLE %@", v46) || (objc_msgSend(MEMORY[0x277D82C10], "nameWithPrefix:suffix:", v43, @"reader_throttle"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v8, "execute:", @"DROP TABLE %@", v47), v47, (v48 & 1) == 0))
        {
          if (a4)
          {
            v50 = [v8 lastError];
            v51 = *a4;
            *a4 = v50;
          }

          v52 = brc_bread_crumbs();
          v53 = brc_default_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            v54 = [v8 lastError];
            br_update_tables_2_000_cold_2(v54, v52, v80);
          }

          v20 = v10;
          goto LABEL_92;
        }
      }

      v56 = [v57 countByEnumeratingWithState:&v64 objects:v79 count:16];
      v49 = 1;
      if (v56)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v49 = 1;
  }

LABEL_93:

  _Block_object_dispose(&v71, 8);
  if ((v49 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_20:
  if (v7)
  {
    [BRCStageRegistry migrateStageToVersion2_0WithSession:v7];
  }

  v19 = 1;
LABEL_54:

  v30 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t br_update_tables_3_002(uint64_t a1, void *a2, int a3, void **a4)
{
  v76[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = MEMORY[0x277CBEB98];
  v76[0] = objc_opt_class();
  v76[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
  v9 = [v7 setWithArray:v8];

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __br_update_tables_3_002_block_invoke;
  v72[3] = &unk_2784FF870;
  v11 = v9;
  v73 = v11;
  v12 = MEMORY[0x22AA4A310](v72);
  if (a3)
  {
    if ([v6 execute:{@" CREATE TABLE server_items(zone_rowid integer not null, item_id blob not null, item_rank integer, item_sharing_options integer not null default 0, item_sharing_etag blob default null, item_stat_ckinfo blob, item_state integer not null, item_type integer not null, item_mode integer not null, item_creator_id integer not null, item_birthtime integer not null, item_parent_id blob not null, item_filename text not null, item_origname text, item_hidden_ext integer not null, item_finder_tags blob, item_xattr_signature blob, version_ckinfo blob, version_mtime integer, version_name text, version_size integer, version_thumb_size integer, version_thumb_signature blob, version_content_signature blob, version_xattr_signature blob, version_device integer, version_conflict_loser_etags blob, version_quarantine_info blob, PRIMARY KEY (zone_rowid, item_id), UNIQUE (item_rank))"}])
    {
      if ([v6 execute:{@"CREATE INDEX server_items/path_index ON server_items (zone_rowid, item_parent_id, item_filename)"}])
      {
        if ([v6 execute:{@"CREATE INDEX server_items/alias_map ON server_items (item_type, item_filename, zone_rowid, item_rank) WHERE item_type = 3"}])
        {
          if ([v6 execute:{@"CREATE INDEX server_items/item_rank ON server_items (zone_rowid, item_rank)"}])
          {
            if ([v6 execute:{@"CREATE INDEX server_items/item_parent_id__item_state ON server_items (zone_rowid, item_parent_id, item_state)"}])
            {
              if ([v6 execute:{@"CREATE INDEX server_items/item_xattr_signature ON server_items (zone_rowid, item_xattr_signature)"}])
              {
                if ([v6 execute:{@"CREATE INDEX server_items/version_xattr_signature ON server_items (zone_rowid, version_xattr_signature)"}])
                {
                  if ([v6 execute:{@"CREATE TABLE server_owners(owner_key integer primary key, owner_name text not null, owner_plist blob, UNIQUE (owner_name))"}])
                  {
                    v13 = 0x277D82000uLL;
                    v14 = [MEMORY[0x277D82C10] nameWithPrefix:*MEMORY[0x277CFADA8] suffix:@"server_items"];
                    v15 = [v6 execute:{@"DROP TABLE IF EXISTS %@", v14}];

                    if (v15)
                    {
                      v16 = [v6 fetch:{@"SELECT rowid, zone_name FROM server_zones"}];
                      if ([v16 next])
                      {
                        do
                        {
                          v17 = [v16 stringAtIndex:1];
                          v18 = [v16 numberAtIndex:0];
                          [v10 setObject:v17 forKeyedSubscript:v18];
                        }

                        while (([v16 next] & 1) != 0);
                      }

                      v70 = 0u;
                      v71 = 0u;
                      v68 = 0u;
                      v69 = 0u;
                      v19 = [v10 keyEnumerator];
                      v51 = [v19 countByEnumeratingWithState:&v68 objects:v75 count:16];
                      if (v51)
                      {
                        v53 = *v69;
                        while (2)
                        {
                          v20 = 0;
                          do
                          {
                            if (*v69 != v53)
                            {
                              objc_enumerationMutation(v19);
                            }

                            v55 = v20;
                            v57 = *(*(&v68 + 1) + 8 * v20);
                            v21 = [v10 objectForKeyedSubscript:?];
                            v22 = [*(v13 + 3088) nameWithPrefix:v21 suffix:@"server_items"];
                            v60 = MEMORY[0x22AA4A310](v12);
                            v62 = v22;
                            if (![v6 execute:{@"INSERT INTO server_items (zone_rowid, item_sharing_options, item_id, item_rank, item_stat_ckinfo, item_state, item_type, item_mode, item_creator_id, item_birthtime, item_parent_id, item_filename, item_origname, item_hidden_ext, item_finder_tags, item_xattr_signature, version_ckinfo, version_mtime, version_name, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_device, version_conflict_loser_etags, version_quarantine_info) SELECT %@, call_block(%@, item_iwork_sharing_info), item_id, item_rank, item_stat_ckinfo, item_state, item_type, item_mode, item_creator_id, item_birthtime, item_parent_id, item_filename, item_origname, item_hidden_ext, item_finder_tags, item_xattr_signature, version_ckinfo, version_mtime, version_name, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_device, version_conflict_loser_etags, version_quarantine_info FROM %@", v57, v60, v22}])
                            {
                              goto LABEL_76;
                            }

                            v23 = [*(v13 + 3088) nameWithPrefix:v21 suffix:@"server_items_view"];
                            if (([v6 execute:{@"DROP VIEW IF EXISTS %@", v23}] & 1) == 0)
                            {

LABEL_76:
                              v24 = v62;
LABEL_77:
                              if (a4)
                              {
                                v37 = [v6 lastError];
                                v38 = *a4;
                                *a4 = v37;
                              }

                              v39 = brc_bread_crumbs();
                              v40 = brc_default_log();
                              if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
                              {
                                br_create_tables_initial_cold_1();
                              }

                              goto LABEL_88;
                            }

                            v24 = v62;
                            v58 = [v6 execute:{@"DROP TABLE %@", v62}];

                            if ((v58 & 1) == 0)
                            {
                              goto LABEL_77;
                            }

                            v20 = v55 + 1;
                            v13 = 0x277D82000;
                          }

                          while (v51 != v55 + 1);
                          v25 = 1;
                          v51 = [v19 countByEnumeratingWithState:&v68 objects:v75 count:16];
                          if (v51)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      else
                      {
                        v25 = 1;
                      }

                      goto LABEL_89;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (a4)
    {
      v35 = [v6 lastError];
      v36 = *a4;
      *a4 = v35;
    }

    v19 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_87;
    }

LABEL_86:
    br_create_tables_initial_cold_1();
LABEL_87:
    v16 = 0;
LABEL_88:

    v25 = 0;
LABEL_89:

    goto LABEL_90;
  }

  if (![v6 execute:{@" CREATE TABLE client_items(rowid integer primary key, zone_rowid integer not null, item_id blob not null, item_sharing_options integer not null default 0, item_localsyncupstate integer, item_in_flight_diffs integer, item_local_diffs integer not null, item_notifs_rank integer not null, item_transfer_priority integer, item_processing_stamp integer, item_doc_id integer, item_file_id integer, item_generation, item_localname text, item_bouncedname text, item_staged_file_id integer, item_staged_generation integer, item_stat_ckinfo blob, item_state integer not null, item_type integer not null, item_mode integer not null, item_creator_id integer not null, item_birthtime integer not null, item_parent_id blob not null, item_filename text, item_hidden_ext integer not null, item_finder_tags blob, item_xattr_signature blob, item_live_conflict_loser_etags blob, version_ckinfo blob, version_mtime integer, version_name text, version_size integer, version_thumb_size integer, version_thumb_signature blob, version_content_signature blob, version_xattr_signature blob, version_device integer, version_conflict_loser_etags blob, version_quarantine_info blob, version_uploaded_assets blob, version_upload_error blob, desired_version blob, UNIQUE (zone_rowid, item_id), UNIQUE (zone_rowid, item_doc_id), UNIQUE (zone_rowid, item_file_id), UNIQUE (item_staged_file_id), UNIQUE (zone_rowid, item_parent_id, item_localname))"}]
    || ![v6 execute:{@"CREATE INDEX client_items/item_parent_id__item_state ON client_items (zone_rowid, item_parent_id, item_state)"}]
    || ![v6 execute:{@"CREATE INDEX client_items/item_path ON client_items (zone_rowid, item_parent_id, item_filename)"}]
    || ![v6 execute:{@"CREATE INDEX client_items/alias_map ON client_items (item_type, item_filename, zone_rowid) WHERE item_type = 3"}]
    || ![v6 execute:{@"CREATE INDEX client_items/item_in_flight_diffs ON client_items (zone_rowid, item_in_flight_diffs)"}]
    || ![v6 execute:@"CREATE INDEX client_items/item_bouncedname ON client_items (item_bouncedname) WHERE item_bouncedname IS NOT NULL"]
    || ![v6 execute:{@"CREATE INDEX client_items/lost_scan_index ON client_items (item_state, zone_rowid, item_processing_stamp) WHERE item_state = -1"}]
    || ![v6 execute:{@"CREATE INDEX client_items/zombie_scan_index ON client_items (item_state, zone_rowid, item_processing_stamp) WHERE item_state = -3"}]
    || ![v6 execute:{@"CREATE INDEX client_items/item_notifs_rank ON client_items (zone_rowid, item_notifs_rank)"}]
    || ![v6 execute:{@"CREATE INDEX client_items/download_index ON client_items (zone_rowid, item_staged_file_id, desired_version)"}]
    || ![v6 execute:{@"CREATE INDEX client_items/eviction_index ON client_items (item_localsyncupstate, zone_rowid, version_size) WHERE item_localsyncupstate = 0"}]
    || ![v6 execute:{@"CREATE INDEX client_items/sync_up_enumerator_1 ON client_items (item_localsyncupstate, zone_rowid, item_type) WHERE item_localsyncupstate = 4"}]
    || ![v6 execute:{@"CREATE INDEX client_items/sync_up_enumerator_2 ON client_items (item_localsyncupstate, zone_rowid, item_state) WHERE item_localsyncupstate = 4"}]
    || ![v6 execute:{@" CREATE TABLE client_pkg_items(item_doc_id integer not null, rel_path text not null, zone_rowid integer not null, item_type integer not null, asset_rank integer not null, is_dirty integer, quarantine_info blob, file_id integer not null, signature_or_link blob, generation, size integer, mode integer, mtime integer, PRIMARY KEY (item_doc_id, rel_path ASC))"}]
    || ![v6 execute:{@"CREATE UNIQUE INDEX client_pkg_items/asset_rank ON client_pkg_items (item_doc_id, asset_rank)"}]
    || ![v6 execute:{@"CREATE INDEX client_pkg_items/size ON client_pkg_items (item_doc_id, size)"}]
    || ![v6 execute:{@"CREATE INDEX client_pkg_items/is_dirty ON client_pkg_items (item_doc_id, is_dirty)"}]
    || ![v6 execute:@"CREATE INDEX client_pkg_items/zone_rowid ON client_pkg_items (zone_rowid)"]
    || ![v6 execute:{@"CREATE TABLE client_uploads(throttle_id integer primary key, zone_rowid integer not null, throttle_state integer not null, retry_count integer not null default 0, last_try_stamp integer not null default 0, next_retry_stamp integer not null default 0, expire_stamp integer not null default 0, item_id blob not null, transfer_queue blob not null, transfer_size integer not null, transfer_record blob, transfer_stage blob, transfer_operation blob, UNIQUE(transfer_stage))"}]
    || ![v6 execute:{@"CREATE INDEX client_uploads/gc_index ON client_uploads (throttle_state, expire_stamp ASC) WHERE throttle_state = 0"}]
    || ![v6 execute:{@"CREATE INDEX IF NOT EXISTS client_uploads/scheduling_by_size ON client_uploads (throttle_state, transfer_queue, transfer_operation, transfer_size ASC)  WHERE throttle_state = 1"}]
    || ![v6 execute:{@"CREATE INDEX IF NOT EXISTS client_uploads/scheduling_by_stamp ON client_uploads (throttle_state, transfer_queue, transfer_operation, next_retry_stamp ASC)  WHERE throttle_state = 1"}]
    || ![v6 execute:@"CREATE INDEX client_uploads/transfer_operation ON client_uploads (transfer_operation) WHERE transfer_operation IS NOT NULL"]
    || ![v6 execute:{@"CREATE INDEX client_uploads/zone_rowid__throttle_state ON client_uploads (throttle_state, zone_rowid)"}]
    || ![v6 execute:{@"CREATE INDEX client_uploads/reset_index ON client_uploads (zone_rowid, throttle_state)"}]
    || ![v6 execute:{@"CREATE INDEX client_uploads/out_of_quota_index ON client_uploads (throttle_state, zone_rowid, transfer_size)  WHERE throttle_state = 32"}])
  {
LABEL_83:
    if (a4)
    {
      v41 = [v6 lastError];
      v42 = *a4;
      *a4 = v41;
    }

    v19 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  v26 = *MEMORY[0x277CFADA8];
  v27 = [MEMORY[0x277D82C10] nameWithPrefix:*MEMORY[0x277CFADA8] suffix:@"pkg_items"];
  if (([v6 execute:{@"DROP TABLE IF EXISTS %@", v27}] & 1) == 0)
  {

    goto LABEL_83;
  }

  v28 = [MEMORY[0x277D82C10] nameWithPrefix:v26 suffix:@"items"];
  v29 = [v6 execute:{@"DROP TABLE IF EXISTS %@", v28}];

  if ((v29 & 1) == 0)
  {
    goto LABEL_83;
  }

  v16 = [v6 fetch:{@"SELECT rowid, zone_name FROM client_zones"}];
  if ([v16 next])
  {
    do
    {
      v30 = [v16 stringAtIndex:1];
      v31 = [v16 numberAtIndex:0];
      [v10 setObject:v30 forKeyedSubscript:v31];
    }

    while (([v16 next] & 1) != 0);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v19 = [v10 keyEnumerator];
  v52 = [v19 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v52)
  {
    v54 = *v65;
    while (2)
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v65 != v54)
        {
          objc_enumerationMutation(v19);
        }

        v32 = *(*(&v64 + 1) + 8 * i);
        v21 = [v10 objectForKeyedSubscript:v32];
        v63 = [MEMORY[0x277D82C10] nameWithPrefix:v21 suffix:@"pkg_items"];
        v61 = [MEMORY[0x277D82C10] nameWithPrefix:v21 suffix:@"items"];
        v56 = MEMORY[0x22AA4A310](v12);
        if (![v6 execute:{@"INSERT INTO client_items (rowid, zone_rowid, version_upload_error, item_sharing_options, item_id, item_localsyncupstate, item_in_flight_diffs, item_local_diffs, item_notifs_rank, item_transfer_priority, item_processing_stamp, item_doc_id, item_file_id, item_generation, item_localname, item_bouncedname, item_staged_file_id, item_staged_generation, item_stat_ckinfo, item_state, item_type, item_mode, item_creator_id, item_birthtime, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_live_conflict_loser_etags, version_ckinfo, version_mtime, version_name, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, desired_version) SELECT rowid, %@, NULL, call_block(%@, item_iwork_sharing_info), item_id, item_localsyncupstate, item_in_flight_diffs, item_local_diffs, item_notifs_rank, item_transfer_priority, item_processing_stamp, item_doc_id, item_file_id, item_generation, item_localname, item_bouncedname, item_staged_file_id, item_staged_generation, item_stat_ckinfo, item_state, item_type, item_mode, item_creator_id, item_birthtime, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_live_conflict_loser_etags, version_ckinfo, version_mtime, version_name, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, desired_version FROM %@", v32, v56, v61}])
        {
          goto LABEL_92;
        }

        v33 = [MEMORY[0x277D82C10] nameWithPrefix:v21 suffix:@"items_view"];
        if (![v6 execute:{@"DROP VIEW IF EXISTS %@", v33}] || !objc_msgSend(v6, "execute:", @"DROP TABLE %@", v61) || (objc_msgSend(v6, "execute:", @"INSERT INTO client_pkg_items (zone_rowid, item_doc_id, rel_path, item_type, asset_rank, is_dirty, quarantine_info, file_id, signature_or_link, generation, size, mode, mtime) SELECT %@, item_doc_id, rel_path, item_type, asset_rank, is_dirty, quarantine_info, file_id, signature_or_link, generation, size, mode, mtime FROM %@", v32, v63) & 1) == 0)
        {

LABEL_92:
LABEL_93:
          if (a4)
          {
            v45 = [v6 lastError];
            v46 = *a4;
            *a4 = v45;
          }

          v47 = brc_bread_crumbs();
          v48 = brc_default_log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            br_create_tables_initial_cold_1();
          }

          goto LABEL_88;
        }

        v34 = [v6 execute:{@"DROP TABLE %@", v63}];

        if ((v34 & 1) == 0)
        {
          goto LABEL_93;
        }
      }

      v52 = [v19 countByEnumeratingWithState:&v64 objects:v74 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  if (![v6 execute:@"DELETE FROM client_reader_throttle"] || !objc_msgSend(v6, "execute:", @"INSERT INTO client_reader_throttle (zone_rowid, throttle_id, throttle_state) SELECT zone_rowid, rowid, 1 FROM client_items WHERE item_localsyncupstate = 2") || (objc_msgSend(v6, "execute:", @"INSERT INTO client_uploads (zone_rowid, throttle_id, throttle_state, item_id, transfer_queue, transfer_size) SELECT zone_rowid, rowid, 1, item_id, '_prepare', version_size + version_thumb_size  FROM client_items WHERE item_localsyncupstate = 1") & 1) == 0)
  {
    if (a4)
    {
      v49 = [v6 lastError];
      v50 = *a4;
      *a4 = v49;
    }

    v19 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      br_create_tables_initial_cold_1();
    }

    goto LABEL_88;
  }

  v25 = 1;
LABEL_90:

  v43 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t br_update_tables_4_000(void *a1, void *a2, int a3, void **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (a3)
  {
    v10 = @"DROP TABLE IF EXISTS server_alias_map";
  }

  else
  {
    if (![v8 execute:@"DELETE FROM client_unapplied_table"] || !objc_msgSend(v9, "execute:", @"DROP TABLE IF EXISTS alias_map") || !objc_msgSend(v9, "execute:", @"INSERT INTO client_unapplied_table (zone_rowid, throttle_id, throttle_state, item_id, apply_kind) SELECT zone_rowid, -rowid, 1, item_id, %u FROM client_items WHERE item_localsyncupstate = 1", 0) || !objc_msgSend(v9, "execute:", @"INSERT INTO client_unapplied_table (zone_rowid, throttle_id, throttle_state, item_id, apply_kind) SELECT zone_rowid, item_rank, 1, item_id, %u FROM server_items", 1) || !objc_msgSend(v9, "execute:", @"DROP TABLE IF EXISTS client_desired_additions") || !objc_msgSend(v9, "execute:", @"CREATE TABLE client_downloads(throttle_id integer not null, zone_rowid integer not null, throttle_state integer not null, retry_count integer not null default 0, last_try_stamp integer not null default 0, next_retry_stamp integer not null default 0, expire_stamp integer not null default 0, item_id blob not null, transfer_queue blob not null, transfer_size integer not null, transfer_record blob, transfer_stage blob, transfer_operation blob, download_kind integer not null, download_etag blob not null, download_priority integer not null, download_request_stamp integer not null, download_error blob, UNIQUE(transfer_stage), UNIQUE(throttle_id, download_kind, download_etag))") || !objc_msgSend(v9, "execute:", @"CREATE INDEX client_downloads/scheduling_by_priority ON client_downloads (throttle_state, transfer_queue, transfer_operation, download_priority DESC, download_request_stamp DESC) WHERE throttle_state = 1") || !objc_msgSend(v9, "execute:", @"CREATE INDEX client_downloads/scheduling_by_priority_and_kind ON client_downloads (throttle_state, transfer_queue, transfer_operation, download_kind, download_priority DESC, download_request_stamp DESC) WHERE throttle_state = 1") || !objc_msgSend(v9, "execute:", @"CREATE INDEX client_downloads/scheduling_by_stamp ON client_downloads (throttle_state, transfer_queue, transfer_operation, next_retry_stamp ASC)  WHERE throttle_state = 1") || !objc_msgSend(v9, "execute:", @"CREATE INDEX client_downloads/gc_index ON client_downloads (throttle_state, expire_stamp ASC) WHERE throttle_state = 0") || !objc_msgSend(v9, "execute:", @"CREATE INDEX client_downloads/transfer_operation ON client_downloads (transfer_operation) WHERE transfer_operation IS NOT NULL") || !objc_msgSend(v9, "execute:", @"CREATE INDEX client_downloads/zone_rowid__throttle_state ON client_downloads (throttle_state, zone_rowid)"))
    {
      goto LABEL_18;
    }

    v10 = @"CREATE INDEX client_downloads/reset_index ON client_downloads (zone_rowid, throttle_state)";
  }

  if ([v9 execute:v10])
  {
    v11 = 1;
    goto LABEL_23;
  }

LABEL_18:
  if (a4)
  {
    v12 = [v9 lastError];
    v13 = *a4;
    *a4 = v12;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    br_create_tables_initial_cold_1();
  }

  v11 = 0;
LABEL_23:

  return v11;
}

uint64_t br_update_tables_4_001(void *a1, void *a2, char a3, void **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (a3 & 1) != 0 || ([v8 execute:@"ALTER TABLE client_uploads ADD COLUMN upload_error blob"])
  {
    v10 = 1;
  }

  else
  {
    if (a4)
    {
      v11 = [v9 lastError];
      v12 = *a4;
      *a4 = v11;
    }

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      br_create_tables_initial_cold_1();
    }

    v10 = 0;
  }

  return v10;
}

uint64_t br_update_tables_4_004(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [MEMORY[0x277CFAE20] containersRepositoryURL];
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = 0;
    v5 = [v4 removeItemAtURL:v3 error:&v11];
    v6 = v11;

    if ((v5 & 1) == 0)
    {
      if (([v6 br_isPOSIXErrorCode:2] & 1) != 0 || objc_msgSend(v6, "br_isCocoaErrorCode:", 4))
      {
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          br_update_tables_4_004_cold_1();
        }
      }

      else
      {
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v13 = v3;
          v14 = 2112;
          v15 = v6;
          v16 = 2112;
          v17 = v7;
          _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] can't suppress %@: %@%@", buf, 0x20u);
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t br_update_tables_4_005(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:{@"CREATE INDEX client_downloads/low_disk_index ON client_downloads (throttle_state, throttle_id, download_kind)  WHERE throttle_state = 43"}])
  {
    v8 = [v7 execute:@"DROP INDEX client_document_access/access_item"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_4_006(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:@"CREATE INDEX server_items/version_size ON server_items (version_size)"];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_4_007(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"CREATE TABLE spotlight_ranks(doc_id integer not null, notif_rank integer not null, PRIMARY KEY (doc_id, notif_rank ASC))"}];
  }
}

uint64_t br_update_tables_4_008(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE backup_detector ADD COLUMN uuid blob"])
  {
    v9 = objc_opt_new();
    v10 = [v9 UUIDString];
    v8 = [v7 execute:{@"UPDATE backup_detector SET uuid = %@", v10}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_4_009(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:{@"CREATE INDEX client_pkg_items/item_doc_id ON client_pkg_items (item_doc_id, zone_rowid)"}])
  {
    v8 = [v7 execute:{@"CREATE INDEX client_items/doc_sync_state ON client_items (zone_rowid, item_localsyncupstate, item_type)WHERE item_type = 1  AND item_localsyncupstate IN (2, 3, 4)"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_4_010(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP INDEX client_items/item_notifs_rank"])
  {
    v8 = [v7 execute:{@"CREATE INDEX client_items/item_notifs_rank ON client_items (item_notifs_rank, zone_rowid)"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_4_011(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"CREATE INDEX client_items/spotlight_index ON client_items (item_type, item_state, item_doc_id, item_notifs_rank) WHERE item_type in (1, 2)"}];
  }
}

uint64_t br_update_tables_4_012(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"CREATE INDEX spotlight_ranks/notif_rank ON spotlight_ranks (notif_rank)"];
  }
}

uint64_t br_update_tables_4_013(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE client_items ADD COLUMN item_scope integer NOT NULL DEFAULT 0"] && br_fixup_tables_4_013(v5, v7, 0))
  {
    v8 = [v7 execute:{@"CREATE INDEX item_scope_index ON client_items(zone_rowid, item_notifs_rank, item_scope, item_state)"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_4_014(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"CREATE INDEX pending_download_docs ON client_items(item_doc_id, desired_version) WHERE desired_version != NULL"}];
  }
}

uint64_t br_update_tables_4_016(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    if ([v4 execute:@"ALTER TABLE server_items ADD COLUMN item_depth integer NOT NULL DEFAULT 0"])
    {
      v6 = [v5 execute:{@"CREATE INDEX server_items/item_rank_depth ON server_items (zone_rowid, item_rank, item_depth)"}];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t br_update_tables_4_017(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE client_items ADD COLUMN item_min_supported_os_rowid integer DEFAULT NULL"])
  {
    v8 = [v7 execute:@"CREATE TABLE os_names(name text unique)"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_4_020(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v6 = [v4 execute:{@"UPDATE client_document_access SET evictable = (SELECT version_mtime FROM client_items as ci WHERE ci.rowid = item_rowid) WHERE access_time = 0 AND evictable = 0 AND (SELECT version_size FROM client_items as ci WHERE ci.rowid = item_rowid) > %lld AND (SELECT item_type FROM client_items as ci WHERE ci.rowid = item_rowid) = 1", objc_msgSend(v5, "minAutomaticallyEvictableFilesize")}];

  return v6;
}

uint64_t br_update_tables_5_000(void *a1, void *a2, uint64_t a3, void **a4)
{
  *&v52[5] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if ((a3 & 1) == 0)
  {
    if ([v8 execute:{@" CREATE TABLE app_libraries(rowid integer PRIMARY KEY, app_library_plist blob)"}])
    {
      v45 = a4;
      v46 = v7;
      v44 = a3;
      v11 = [v9 fetch:{@"SELECT rowid, zone_plist FROM client_zones"}];
      if ([v11 next])
      {
        while (1)
        {
          v12 = _BRCClassesForContainerState();
          v13 = [v11 unarchivedObjectOfClasses:v12 atIndex:1];

          if (!v13)
          {
            br_update_tables_5_000_cold_2(&v51, v52);
          }

          v14 = [MEMORY[0x277CBEB38] dictionary];
          v15 = [MEMORY[0x277CBEB38] dictionary];
          v16 = [v13 objectForKeyedSubscript:@"state"];
          v17 = [v16 unsignedIntegerValue];

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*&v17 & 0xC0804];
          [v14 setObject:v18 forKeyedSubscript:@"state"];

          v19 = [v13 objectForKeyedSubscript:@"fileID"];
          [v14 setObject:v19 forKeyedSubscript:@"fileID"];

          v20 = [v13 objectForKeyedSubscript:@"generationID"];
          [v14 setObject:v20 forKeyedSubscript:@"generationID"];

          v21 = [v13 objectForKeyedSubscript:@"maxLostStamp"];
          [v14 setObject:v21 forKeyedSubscript:@"maxLostStamp"];

          v22 = [v13 objectForKeyedSubscript:@"deepScanStamp"];
          [v14 setObject:v22 forKeyedSubscript:@"deepScanStamp"];

          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*&v17 & 0x131710];
          [v15 setObject:v23 forKeyedSubscript:@"state"];

          v24 = [v13 objectForKeyedSubscript:@"requestID"];
          [v15 setObject:v24 forKeyedSubscript:@"requestID"];

          v25 = [v13 objectForKeyedSubscript:@"lastApplyRank"];
          [v15 setObject:v25 forKeyedSubscript:@"lastApplyRank"];

          v26 = [v13 objectForKeyedSubscript:@"appliedTombstoneRanks"];
          [v15 setObject:v26 forKeyedSubscript:@"appliedTombstoneRanks"];

          v27 = [v13 objectForKeyedSubscript:@"syncUpThrottle"];
          [v15 setObject:v27 forKeyedSubscript:@"syncUpThrottle"];

          v28 = [v13 objectForKeyedSubscript:@"syncUpBudget"];
          [v15 setObject:v28 forKeyedSubscript:@"syncUpBudget"];

          v29 = [v13 objectForKeyedSubscript:@"syncDownThrottle"];
          [v15 setObject:v29 forKeyedSubscript:@"syncDownThrottle"];

          v30 = [v11 numberAtIndex:0];
          if (([v9 execute:{@"UPDATE client_zones SET zone_plist = %@ WHERE rowid = %@", v15, v30}] & 1) == 0)
          {
            break;
          }

          if (([v9 execute:{@"INSERT INTO app_libraries (rowid, app_library_plist) VALUES (%@, %@)", v30, v14}] & 1) == 0)
          {
            if (v45)
            {
              v39 = [v9 lastError];
              v40 = *v45;
              *v45 = v39;
            }

            v37 = brc_bread_crumbs();
            v38 = brc_default_log();
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_48;
            }

LABEL_51:
            v43 = [v9 lastError];
            *buf = 138412546;
            v48 = v43;
            v49 = 2112;
            v50 = v37;
            _os_log_fault_impl(&dword_223E7A000, v38, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: migration should work: %@%@", buf, 0x16u);

            goto LABEL_48;
          }

          if (![v11 next])
          {
            goto LABEL_18;
          }
        }

        if (v45)
        {
          v35 = [v9 lastError];
          v36 = *v45;
          *v45 = v35;
        }

        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_51;
        }

LABEL_48:
      }

      else
      {
LABEL_18:
        if ([v9 execute:@"ALTER TABLE client_items ADD COLUMN app_library_rowid"] && objc_msgSend(v9, "execute:", @"UPDATE client_items SET app_library_rowid = zone_rowid") && objc_msgSend(v9, "execute:", @"CREATE UNIQUE INDEX client_items/item_doc_id ON client_items (item_doc_id)") && objc_msgSend(v9, "execute:", @"CREATE UNIQUE INDEX client_items/item_file_id_unique ON client_items (item_file_id, item_state)WHERE item_state != -3") && objc_msgSend(v9, "execute:", @"CREATE INDEX client_items/item_id ON client_items(item_id)") && objc_msgSend(v9, "execute:", @"CREATE INDEX client_items/item_file_id ON client_items (item_file_id)") && objc_msgSend(v9, "execute:", @"DROP INDEX client_items/item_parent_id__item_state") && objc_msgSend(v9, "execute:", @"CREATE INDEX client_items/item_parent_id__item_state ON client_items (item_parent_id, item_state)") && objc_msgSend(v9, "execute:", @"DROP INDEX client_items/item_path") && objc_msgSend(v9, "execute:", @"CREATE INDEX client_items/item_path ON client_items (item_parent_id, item_filename)") && objc_msgSend(v9, "execute:", @"CREATE INDEX client_items/item_parent_id__item_localname ON client_items (item_parent_id, item_localname)") && objc_msgSend(v9, "execute:", @" CREATE TABLE client_pkg_items_tmp(item_doc_id integer not null, rel_path text not null, item_type integer not null, asset_rank integer not null, is_dirty integer, quarantine_info blob, file_id integer not null, signature_or_link blob, generation, size integer, mode integer, mtime integer, PRIMARY KEY (item_doc_id, rel_path ASC))") && objc_msgSend(v9, "execute:", @"INSERT INTO client_pkg_items_tmp (item_doc_id, rel_path, item_type, asset_rank, is_dirty, quarantine_info, file_id, signature_or_link, generation, size, mode, mtime) SELECT item_doc_id, rel_path, item_type, asset_rank, is_dirty, quarantine_info, file_id, signature_or_link, generation, size, mode, mtime FROM client_pkg_items") && objc_msgSend(v9, "execute:", @"DROP TABLE client_pkg_items") && objc_msgSend(v9, "execute:", @"ALTER TABLE client_pkg_items_tmp RENAME TO client_pkg_items") && objc_msgSend(v9, "execute:", @"CREATE INDEX client_pkg_items/size ON client_pkg_items (item_doc_id, size)") && objc_msgSend(v9, "execute:", @"CREATE INDEX client_pkg_items/is_dirty ON client_pkg_items (item_doc_id, is_dirty)") && objc_msgSend(v9, "execute:", @"DROP INDEX item_scope_index") && objc_msgSend(v9, "execute:", @"CREATE INDEX client_items/item_scope_index ON client_items(zone_rowid, item_notifs_rank, item_scope, item_state)") && objc_msgSend(v9, "execute:", @"DROP INDEX pending_download_docs") && (objc_msgSend(v9, "execute:", @"CREATE INDEX client_items/pending_download_docs ON client_items(item_doc_id, desired_version) WHERE desired_version != NULL") & 1) != 0)
        {
          v10 = [v9 execute:@"DROP INDEX client_items/doc_sync_state"];

          v7 = v46;
          a3 = v44;
          if (!v10)
          {
            goto LABEL_50;
          }

          goto LABEL_3;
        }
      }

      v10 = 0;
      v7 = v46;
      goto LABEL_50;
    }

    if (a4)
    {
      v31 = [v9 lastError];
      v32 = *a4;
      *a4 = v31;
    }

    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      br_create_tables_initial_cold_1();
    }

LABEL_17:
    v10 = 0;
    goto LABEL_50;
  }

  if (([v8 execute:@"CREATE INDEX server_items/item_id ON server_items(item_id)"] & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v10 = [BRCItemID migrateItemIDsToVersion5WithDB:v9 serverTruth:a3];
LABEL_50:

  v41 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t br_update_tables_5_001(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    if ([v4 execute:{@"CREATE TABLE users(user_key integer primary key, user_name text not null, user_plist blob, UNIQUE (user_name))"}] && objc_msgSend(v5, "execute:", @"INSERT INTO users(user_key, user_name, user_plist) SELECT owner_key, owner_name, owner_plist FROM server_owners"))
    {
      v6 = [v5 execute:@"DROP TABLE server_owners"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t br_update_tables_5_002(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"ALTER TABLE client_downloads ADD COLUMN unit_count_completed INTEGER DEFAULT 0"];
  }
}

uint64_t br_update_tables_5_003(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE client_document_access RENAME TO client_document_access_tmp"] && objc_msgSend(v7, "execute:", @"CREATE TABLE client_document_access(item_rowid integer primary key, evictable integer not null , access_time integer not null default 0)") && objc_msgSend(v7, "execute:", @"INSERT INTO client_document_access(item_rowid, evictable, access_time) SELECT item_rowid, evictable, access_time FROM client_document_access_tmp") && objc_msgSend(v7, "execute:", @"DROP TABLE client_document_access_tmp"))
  {
    v8 = [v7 execute:@"CREATE INDEX client_document_access/evictable ON client_document_access (evictable)"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_5_004(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!a3)
  {
    if ([v6 execute:@"ALTER TABLE client_items ADD COLUMN item_trash_put_back_parent_id BLOB DEFAULT NULL"])
    {
      v8 = @"ALTER TABLE client_items ADD COLUMN item_trash_put_back_path BLOB DEFAULT NULL";
      goto LABEL_6;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (([v6 execute:@"ALTER TABLE server_items ADD COLUMN item_trash_put_back_parent_id BLOB DEFAULT NULL"] & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = @"ALTER TABLE server_items ADD COLUMN item_trash_put_back_path BLOB DEFAULT NULL";
LABEL_6:
  v9 = [v7 execute:v8];
LABEL_8:

  return v9;
}

uint64_t br_update_tables_5_005(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!a3)
  {
    if ([v6 execute:@"ALTER TABLE client_uploads ADD COLUMN upload_priority integer DEFAULT 0"] && objc_msgSend(v7, "execute:", @"ALTER TABLE client_uploads ADD COLUMN upload_request_stamp integer DEFAULT 0") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_pkg_items/asset_rank ON client_pkg_items (item_doc_id, asset_rank)") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/lost_scan_index") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/zombie_scan_index") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/lost_scan_index ON client_items (item_state, app_library_rowid, item_processing_stamp) WHERE item_state = -1") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/zombie_scan_index ON client_items (item_state, app_library_rowid, item_processing_stamp) WHERE item_state = -3"))
    {
      v8 = @"CREATE INDEX client_items/doc_sync_state ON client_items (zone_rowid, item_localsyncupstate, item_type)WHERE item_type = 1";
      goto LABEL_4;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (([v6 execute:@"DROP INDEX server_items/path_index"] & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = @"CREATE INDEX server_items/path_index ON server_items (item_parent_id, item_filename)";
LABEL_4:
  v9 = [v7 execute:v8];
LABEL_14:

  return v9;
}

uint64_t br_update_tables_5_006(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE client_items ADD COLUMN item_thumb_greedy integer default 0"] && objc_msgSend(v7, "execute:", @"ALTER TABLE client_items ADD COLUMN item_thumb_live_signature blob default null"))
  {
    v8 = [v7 execute:@"CREATE INDEX client_document_access/evictable/item_rowid ON client_document_access (item_rowid)"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_5_007(void *a1, void *a2, char a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = [v6 execute:{@"CREATE TABLE rowid_reservations(rowid integer PRIMARY KEY, container_id text not null, owner text, UNIQUE (container_id, owner))"}];
    v9 = [v7 fetch:{@"SELECT zone_name, zone_owner, rowid FROM server_zones WHERE zone_plist IS NULL"}];
    if ([v9 next])
    {
      do
      {
        v10 = [v9 stringAtIndex:0];
        v11 = [v9 stringAtIndex:1];
        v12 = [v9 numberAtIndex:2];
        [v7 execute:{@"INSERT INTO rowid_reservations  (container_id, owner, rowid)  VALUES (%@, %@, %@)", v10, v11, v12}];
      }

      while (([v9 next] & 1) != 0);
    }

    [v7 execute:@"DELETE FROM server_zones WHERE zone_plist IS NULL"];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = v5;
    v13 = [v5 _privateServerZonesEnumerator:v7];
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    v32 = v9;
    if (v14)
    {
      v15 = v14;
      v16 = *v39;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if (v8)
          {
            v18 = *(*(&v38 + 1) + 8 * i);
            v19 = [v18 dbRowID];
            v20 = [v18 zoneName];
            v8 = [v7 execute:{@"INSERT INTO rowid_reservations  (rowid, container_id, owner) VALUES (%@, %@, %@)", v19, v20, 0}];
          }

          else
          {
            v8 = 0;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v15);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = [v33 _sharedServerZonesEnumerator:v7];
    v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v21);
          }

          if (v8)
          {
            v26 = *(*(&v34 + 1) + 8 * j);
            v27 = [v26 dbRowID];
            v28 = [v26 zoneName];
            v29 = [v26 ownerName];
            v8 = [v7 execute:{@"INSERT INTO rowid_reservations  (rowid, container_id, owner) VALUES (%@, %@, %@)", v27, v28, v29}];
          }

          else
          {
            v8 = 0;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v23);
    }

    v5 = v33;
  }

  else if ([v6 execute:@"ALTER TABLE app_libraries ADD COLUMN app_library_name text default null"] && objc_msgSend(v7, "execute:", @"ALTER TABLE app_libraries ADD COLUMN app_library_owner text default null") && objc_msgSend(v7, "execute:", @"ALTER TABLE app_libraries ADD COLUMN zone_rowid integer default 0"))
  {
    v8 = [v7 execute:{@"UPDATE app_libraries SET app_library_name = (SELECT zone_name FROM client_zones WHERE app_libraries.rowid = client_zones.rowid), app_library_owner = (SELECT zone_owner FROM client_zones WHERE app_libraries.rowid = client_zones.rowid), zone_rowid = rowid"}];
  }

  else
  {
    v8 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t br_update_tables_5_008(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP INDEX client_items/item_parent_id__item_state"])
  {
    v8 = [v7 execute:{@"CREATE INDEX client_items/item_parent_id__item_state ON client_items (app_library_rowid, item_parent_id, item_state)"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_5_009(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    if ([v4 execute:@"ALTER TABLE rowid_reservations RENAME TO rowid_reservations_old"] && objc_msgSend(v5, "execute:", @"CREATE TABLE rowid_reservations(rowid integer PRIMARY KEY, container_id text not null, owner text, UNIQUE (container_id, owner))") && objc_msgSend(v5, "execute:", @"INSERT INTO rowid_reservations (rowid, container_id, owner) SELECT rowid, container_id, owner FROM rowid_reservations_old"))
    {
      v6 = [v5 execute:@"DROP TABLE rowid_reservations_old"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t br_update_tables_5_010(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v3 = @"CREATE UNIQUE INDEX server_zones/zone_name__zone_owner ON server_zones (zone_name, zone_owner)";
  }

  else
  {
    v3 = @"CREATE UNIQUE INDEX client_zones/zone_name__zone_owner ON client_zones (zone_name, zone_owner)";
  }

  return [a2 execute:v3];
}

uint64_t br_update_tables_5_011(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!a3)
  {
    v11 = [v6 numberWithSQL:{@"SELECT COUNT(*) FROM app_libraries GROUP BY app_library_name, app_library_owner"}];
    if ([v11 unsignedLongLongValue] >= 2)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        br_update_tables_5_011_cold_1();
      }
    }

    else
    {

      if ([v7 execute:@"ALTER TABLE app_libraries RENAME TO app_libraries_old"] && objc_msgSend(v7, "execute:", @"CREATE TABLE app_libraries(rowid integer PRIMARY KEY , app_library_plist blob , app_library_name text default null , app_library_owner text default null , zone_rowid integer default 0 , UNIQUE (app_library_name, app_library_owner))") && objc_msgSend(v7, "execute:", @"INSERT INTO app_libraries        (rowid, app_library_plist, app_library_name, app_library_name, app_library_owner, zone_rowid) SELECT rowid, app_library_plist, app_library_name, app_library_name, app_library_owner, zone_rowid FROM app_libraries_old"))
      {
        v12 = [v7 execute:@"DROP TABLE app_libraries_old"];
        v8 = 0;
        goto LABEL_17;
      }
    }

    v8 = 0;
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v8 = [v6 fetch:{@"SELECT rowid FROM rowid_reservations WHERE owner = %@", *MEMORY[0x277CBBF28]}];
  if ([v8 next])
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      br_update_tables_5_011_cold_2();
    }

    goto LABEL_16;
  }

  v12 = 1;
LABEL_17:

  return v12;
}

uint64_t br_update_tables_5_012(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    if ([v4 execute:{@"CREATE TABLE aggregates(key TEXT NOT NULL, value INTEGER NOT NULL DEFAULT 0)"}])
    {
      v6 = [v5 execute:{@"INSERT INTO aggregates (key, value) SELECT 'version_size_sum', COALESCE(SUM(version_size), 0) FROM server_items"}];
    }

    else
    {
      v6 = 0;
    }

    [v5 execute:{@"CREATE TRIGGER insert_version_sum_size AFTER INSERT ON server_items  BEGIN  UPDATE aggregates SET value = (value + COALESCE(new.version_size, 0)) WHERE key = 'version_size_sum';   END"}];
    [v5 execute:{@"CREATE TRIGGER update_version_sum_size UPDATE OF version_size ON server_items  BEGIN  UPDATE aggregates SET value = (value - COALESCE(old.version_size, 0) + COALESCE(new.version_size, 0)) WHERE key = 'version_size_sum';   END"}];
    [v5 execute:{@"CREATE TRIGGER delete_version_sum_size BEFORE DELETE ON server_items  BEGIN  UPDATE aggregates SET value = (value - COALESCE(old.version_size, 0)) WHERE key = 'version_size_sum';   END"}];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t br_update_tables_5_013(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = [v4 execute:{@"CREATE TABLE client_pkg_sizes (item_doc_id integer not null primary key, aggregate_size integer not null default 0, largest_file_size integer not null default 0)"}];
  v6 = v5 & [v4 execute:{@"INSERT INTO client_pkg_sizes SELECT item_doc_id, COALESCE(SUM(size), 0), COALESCE(MAX(size), 0) FROM client_pkg_items GROUP BY item_doc_id"}];
  v7 = [v4 execute:{@"CREATE TRIGGER client_pkg_items/increase_pkg_size AFTER INSERT ON client_pkg_items BEGIN INSERT OR IGNORE INTO client_pkg_sizes VALUES (new.item_doc_id, 0, 0); UPDATE client_pkg_sizes SET aggregate_size = aggregate_size + COALESCE(new.size, 0), largest_file_size = MAX(COALESCE(new.size, 0), largest_file_size) WHERE item_doc_id = new.item_doc_id; END"}];
  v8 = v6 & v7 & [v4 execute:{@"CREATE TRIGGER client_pkg_items/update_pkg_size UPDATE OF size ON client_pkg_items BEGIN UPDATE client_pkg_sizes SET aggregate_size = aggregate_size - COALESCE(old.size, 0) + COALESCE(new.size, 0), largest_file_size = MAX(COALESCE(new.size, 0), largest_file_size) WHERE item_doc_id = new.item_doc_id; END"}];
  v9 = [v4 execute:{@"CREATE TRIGGER client_pkg_items/reduce_pkg_size  BEFORE DELETE ON client_pkg_items BEGIN UPDATE client_pkg_sizes SET aggregate_size = aggregate_size - COALESCE(old.size, 0) WHERE item_doc_id = old.item_doc_id; END"}];
  v10 = [v4 execute:@"DROP INDEX client_pkg_items/size"];

  return v8 & v9 & v10;
}

uint64_t br_update_tables_5_014(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"CREATE TABLE share_metadata_cache( item_rowid integer primary key, share_path text unique not null, share_metadata blob non null)"}];
  }
}

uint64_t br_update_tables_5_015(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = [v4 execute:@"ALTER TABLE app_libraries ADD COLUMN auto_client_item_count INTEGER DEFAULT 0"];
  v6 = v5 & [v4 execute:@"ALTER TABLE app_libraries ADD COLUMN auto_document_count INTEGER DEFAULT 0"];
  v7 = [v4 execute:@"ALTER TABLE app_libraries ADD COLUMN auto_document_with_local_changes_count INTEGER DEFAULT 0"];
  v8 = v6 & v7 & [v4 execute:@"ALTER TABLE app_libraries ADD COLUMN auto_aggregate_size INTEGER DEFAULT 0"];
  v9 = [v4 execute:{@"CREATE TRIGGER client_items/insert_item AFTER INSERT ON client_items BEGIN  UPDATE app_libraries SET auto_client_item_count = auto_client_item_count + 1 WHERE rowid = new.app_library_rowid AND new.item_type != 4 AND new.item_type != 3;  UPDATE app_libraries SET auto_aggregate_size = auto_aggregate_size + COALESCE(new.version_size, 0), auto_document_count = auto_document_count + 1      WHERE rowid = new.app_library_rowid AND new.item_type = 1 AND new.item_state != 1;  UPDATE app_libraries SET auto_document_with_local_changes_count = auto_document_with_local_changes_count + 1 WHERE rowid = new.app_library_rowid AND new.item_type = 1 AND new.item_localsyncupstate >= 2; END"}];
  v10 = v9 & [v4 execute:{@"CREATE TRIGGER client_items/delete_item BEFORE delete ON client_items BEGIN  UPDATE app_libraries SET auto_client_item_count = auto_client_item_count - 1 WHERE rowid = old.app_library_rowid AND old.item_type != 4 AND old.item_type != 3;  UPDATE app_libraries SET auto_aggregate_size = auto_aggregate_size - COALESCE(old.version_size, 0), auto_document_count = auto_document_count - 1      WHERE rowid = old.app_library_rowid AND old.item_type = 1 AND old.item_state != 1;  UPDATE app_libraries SET auto_document_with_local_changes_count = auto_document_with_local_changes_count - 1 WHERE rowid = old.app_library_rowid AND old.item_type = 1 AND old.item_localsyncupstate >= 2; END"}];
  v11 = v8 & v10 & [v4 execute:{@"CREATE TRIGGER client_items/update_size UPDATE OF version_size, item_type, item_state ON client_items BEGIN  UPDATE app_libraries SET    auto_aggregate_size = auto_aggregate_size - COALESCE(old.version_size, 0)  * (old.item_type = 1 AND old.item_state != 1) + COALESCE(new.version_size, 0) * (new.item_type = 1 AND new.item_state != 1), auto_document_count = auto_document_count - (old.item_type = 1 AND old.item_state != 1) + (new.item_type = 1 AND new.item_state != 1)      WHERE rowid = new.app_library_rowid; END"}];
  v12 = [v4 execute:{@"CREATE TRIGGER client_items/update_changes_count UPDATE OF item_type, item_localsyncupstate ON client_items BEGIN  UPDATE app_libraries set auto_document_with_local_changes_count = auto_document_with_local_changes_count - (old.item_type = 1 AND old.item_localsyncupstate >= 2) + (new.item_type = 1 AND new.item_localsyncupstate >= 2) where rowid = new.app_library_rowid; END"}];

  return v11 & v12;
}

uint64_t br_update_tables_5_016(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:@"ALTER TABLE server_items ADD COLUMN pcs_state INTEGER NOT NULL DEFAULT 0"];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_6_001(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP TABLE share_metadata_cache"])
  {
    v8 = [v7 execute:{@"CREATE TABLE share_metadata_cache( item_rowid integer primary key, share_path text unique not null, record_id blob non null)"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_6_004(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 execute:@"ALTER TABLE client_uploads ADD COLUMN app_library_rowid INTEGER"];
    v8 = [v5 execute:@"UPDATE client_uploads SET app_library_rowid = (SELECT app_library_rowid FROM client_items WHERE client_items.rowid = client_uploads.throttle_id) "];
    v9 = [v5 execute:@"ALTER TABLE client_downloads ADD COLUMN app_library_rowid INTEGER "];
    v10 = [v5 execute:@"UPDATE client_downloads SET app_library_rowid = (SELECT app_library_rowid FROM client_items WHERE client_items.rowid = client_downloads.throttle_id) "];
    v11 = [v5 numberWithSQL:@"SELECT 1 FROM client_uploads WHERE app_library_rowid == NULL LIMIT 1"];
    if ([v11 BOOLValue])
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        br_update_tables_6_004_cold_1();
      }

      v6 = 0;
    }

    else
    {
      v6 = v7 & v8 & v9 & v10;
    }

    v14 = [v5 numberWithSQL:@"SELECT 1 FROM client_downloads WHERE app_library_rowid == NULL LIMIT 1"];

    if ([v14 BOOLValue])
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        br_update_tables_6_004_cold_2();
      }

      v6 = 0;
    }
  }

  return v6;
}

uint64_t br_update_tables_6_005(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"DROP TABLE IF EXISTS share_metadata_cache"];
  }
}

uint64_t br_update_tables_6_008(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:{@"CREATE INDEX client_items/item_parent_id_rowid ON client_items(zone_rowid, item_parent_id, rowid)"}])
  {
    v8 = [v7 execute:{@"CREATE TABLE mark_children_lost_progress(zone_rowid INTEGER NOT NULL, item_parent_id BLOB NOT NULL, last_updated_row_id INTEGER NOT NULL, UNIQUE(zone_rowid, item_parent_id))"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_6_009(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"ALTER TABLE client_pkg_items ADD COLUMN xattrs BLOB"];
  }
}

uint64_t br_update_tables_6_010(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = [v4 execute:@"DROP INDEX IF EXISTS client_items/lost_scan_index"];
  v6 = v5 & [v4 execute:@"DROP INDEX IF EXISTS client_items/zombie_scan_index"];
  v7 = [v4 execute:@"DROP INDEX IF EXISTS client_items/lostzombie_scan_index"];
  v8 = [v4 execute:{@"CREATE INDEX client_items/lostzombie_scan_index ON client_items (item_processing_stamp) WHERE item_state IN (-1, -3)"}];

  return v6 & v7 & v8;
}

uint64_t br_update_tables_6_011(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:@"ALTER TABLE server_pending_fetches ADD COLUMN deleted_record_type INTEGER NOT NULL DEFAULT 0"];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_6_013(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = @"SELECT 1 FROM server_items WHERE zone_rowid NOT IN (SELECT rowid from server_zones)";
  }

  else
  {
    v8 = @"SELECT 1 FROM client_items WHERE zone_rowid NOT IN (SELECT rowid from client_zones)";
  }

  v9 = [v6 numberWithSQL:v8];
  if ([v9 BOOLValue])
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      br_update_tables_6_013_cold_1();
    }
  }

  v12 = [v9 BOOLValue];

  return v12 ^ 1u;
}

uint64_t br_update_tables_6_016(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 execute:@"DROP TABLE IF EXISTS sqlite_stat1"] && objc_msgSend(v2, "execute:", @"DROP TABLE IF EXISTS sqlite_stat2") && objc_msgSend(v2, "execute:", @"DROP TABLE IF EXISTS sqlite_stat3"))
  {
    v3 = [v2 execute:@"DROP TABLE IF EXISTS sqlite_stat4"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t br_update_tables_6_017(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"ALTER TABLE mark_children_lost_progress ADD COLUMN item_parent_file_id integer"];
  }
}

uint64_t br_update_tables_7_000(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __br_update_tables_7_000_block_invoke;
  v15[3] = &unk_278503340;
  v15[4] = &v16;
  v7 = MEMORY[0x22AA4A310](v15);
  v8 = MEMORY[0x22AA4A310]();
  v9 = v8;
  v10 = *MEMORY[0x277CBBF28];
  if (!a3)
  {
    v13 = [v6 execute:{@"UPDATE client_items SET item_parent_id = call_block(%@, item_parent_id, item_id) WHERE zone_rowid IN (SELECT rowid FROM client_zones WHERE client_zones.zone_owner != %@)", v8, v10}];

    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = *(v17 + 24) ^ 1;
    goto LABEL_6;
  }

  v11 = [v6 execute:{@"UPDATE server_items SET item_parent_id = call_block(%@, item_parent_id, item_id) WHERE zone_rowid IN (SELECT rowid FROM server_zones WHERE zone_owner != %@)", v8, v10}];

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 0;
LABEL_6:

  _Block_object_dispose(&v16, 8);
  return v12 & 1;
}

void sub_223F9265C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t br_update_tables_7_003(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE client_document_access ADD COLUMN modify_access_time integer NOT NULL DEFAULT 0"] && objc_msgSend(v7, "execute:", @"UPDATE client_document_access SET modify_access_time = MAX(access_time, IFNULL((SELECT version_mtime FROM client_items AS ci WHERE ci.rowid = item_rowid), 0))") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_document_access/modify_access_item ON client_document_access(modify_access_time)"))
  {
    v8 = [v7 execute:{@"INSERT OR IGNORE INTO client_document_access (item_rowid, evictable, access_time, modify_access_time) SELECT rowid, 0, 0, version_mtime FROM client_items WHERE item_type IN (1, 2, 8)"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_8_001(uint64_t a1, void *a2, int a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = a2;
  v4 = [v3 execute:@"DROP INDEX IF EXISTS server_pending_fetches/record_index"];
  v5 = v4 & [v3 execute:@"CREATE INDEX server_pending_fetches/record_is_null ON server_pending_fetches (zone_rowid) WHERE record IS NULL"];
  v6 = [v3 execute:@"CREATE INDEX server_pending_fetches/record_is_not_null ON server_pending_fetches (zone_rowid) WHERE (record >= '')"];

  return v5 & v6;
}

uint64_t br_update_tables_8_002(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE client_document_access ADD COLUMN indexable integer NOT NULL DEFAULT 0"] && objc_msgSend(v7, "execute:", @"UPDATE client_document_access SET indexable = 1 WHERE (SELECT item_scope FROM client_items AS ci WHERE ci.rowid = item_rowid) = 2"))
  {
    v8 = [v7 execute:@"CREATE INDEX client_document_access/indexable ON client_document_access(indexable) WHERE indexable != 0"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_9_000(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE client_document_access RENAME TO client_document_access_tmp"] && objc_msgSend(v7, "execute:", @"CREATE TABLE client_document_access( item_rowid integer primary key, access_time integer not null default 0, modify_access_time integer NOT NULL DEFAULT 0, properties integer NOT NULL DEFAULT 0)") && objc_msgSend(v7, "execute:", @"INSERT INTO client_document_access(item_rowid, access_time, modify_access_time, properties) SELECT item_rowid, access_time, modify_access_time, ((case when indexable != 0 then 0x2 else 0 end) | (case when evictable != 0 then 0x1 else 0 end)) FROM client_document_access_tmp") && objc_msgSend(v7, "execute:", @"DROP INDEX client_document_access/evictable") && objc_msgSend(v7, "execute:", @"DROP INDEX client_document_access/evictable/item_rowid") && objc_msgSend(v7, "execute:", @"DROP INDEX client_document_access/modify_access_item") && objc_msgSend(v7, "execute:", @"DROP INDEX client_document_access/indexable") && objc_msgSend(v7, "execute:", @"DROP TABLE client_document_access_tmp") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_document_access/evictable ON client_document_access (properties) WHERE ((properties & 0x1) != 0)") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_document_access/evictable/item_rowid ON client_document_access (item_rowid);") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_document_access/modify_access_item ON client_document_access(modify_access_time);"))
  {
    v8 = [v7 execute:@"CREATE INDEX client_document_access/indexable ON client_document_access(properties) WHERE ((properties & 0x2) != 0)"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_9_001(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP INDEX client_items/doc_sync_state"])
  {
    v8 = [v7 execute:{@"CREATE INDEX client_items/doc_sync_state ON client_items (zone_rowid, item_localsyncupstate) WHERE item_type IN (1, 6)"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_9_002(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"CREATE INDEX client_document_access/access_item ON client_document_access(access_time);"];
  }
}

uint64_t br_update_tables_9_004(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = [v4 execute:{@"CREATE TRIGGER IF NOT EXISTS client_items/update_app_library AFTER UPDATE OF app_library_rowid ON client_items WHEN new.app_library_rowid <> old.app_library_rowid BEGIN  UPDATE app_libraries SET auto_client_item_count = auto_client_item_count - 1 WHERE rowid = old.app_library_rowid AND old.item_type != 4 AND old.item_type != 3;  UPDATE app_libraries SET auto_aggregate_size = auto_aggregate_size - COALESCE(old.version_size, 0), auto_document_count = auto_document_count - 1      WHERE rowid = old.app_library_rowid AND old.item_type = 1 AND old.item_state != 1;  UPDATE app_libraries SET auto_document_with_local_changes_count = auto_document_with_local_changes_count - 1 WHERE rowid = old.app_library_rowid AND old.item_type = 1 AND old.item_localsyncupstate >= 2;  UPDATE app_libraries SET auto_client_item_count = auto_client_item_count + 1 WHERE rowid = new.app_library_rowid AND new.item_type != 4 AND new.item_type != 3;  UPDATE app_libraries SET auto_aggregate_size = auto_aggregate_size + COALESCE(new.version_size, 0), auto_document_count = auto_document_count + 1      WHERE rowid = new.app_library_rowid AND new.item_type = 1 AND new.item_state != 1;  UPDATE app_libraries SET auto_document_with_local_changes_count = auto_document_with_local_changes_count + 1 WHERE rowid = new.app_library_rowid AND new.item_type = 1 AND new.item_localsyncupstate >= 2; END"}];
  v6 = [v4 execute:{@"UPDATE app_libraries SET auto_client_item_count=(SELECT COUNT(*) FROM client_items WHERE app_library_rowid = app_libraries.rowid AND item_type != 4 AND item_type != 3), auto_document_count=(SELECT COUNT(*) FROM client_items WHERE app_library_rowid = app_libraries.rowid AND item_type = 1 AND item_state != 1), auto_aggregate_size=(SELECT COALESCE(SUM(version_size), 0) FROM client_items WHERE app_libraries.rowid = app_library_rowid AND item_type = 1 AND item_state != 1), auto_document_with_local_changes_count=(SELECT COUNT(*) FROM client_items WHERE app_library_rowid = app_libraries.rowid AND item_type = 1 AND item_localsyncupstate >= 2)"}];

  return v5 & v6;
}

uint64_t br_update_tables_10_000(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  v8 = [v6 execute:{@"CREATE TABLE client_sync_up(throttle_id integer not null, zone_rowid integer not null, throttle_state integer not null, in_flight_diffs integer, retry_count integer not null default 0, last_try_stamp integer not null default 0, next_retry_stamp integer not null default 0, expire_stamp integer not null default 0, UNIQUE(throttle_id, zone_rowid))"}];
  v9 = [v7 execute:@"ALTER TABLE client_items  ADD COLUMN item_parent_zone_rowid integer"];
  v10 = [v7 execute:{@"INSERT OR IGNORE INTO client_sync_up( throttle_id, zone_rowid, throttle_state, in_flight_diffs) SELECT  rowid, zone_rowid, 1, item_in_flight_diffs FROM client_items WHERE  item_localsyncupstate = 4"}];
  v11 = [v7 execute:@"UPDATE client_items SET item_parent_zone_rowid = zone_rowid"];
  v12 = 0;
  if (v8 && v9 && v10 && v11)
  {
    if (v5)
    {
      +[BRCDaemon isDaemonRunning];
    }

    goto LABEL_8;
  }

LABEL_9:

  return v12;
}

uint64_t br_update_tables_11_000(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!a3)
  {
    if ([v6 execute:@"ALTER TABLE app_libraries RENAME TO app_libraries_old"]
      && [v7 execute:{@"CREATE TABLE app_libraries(rowid integer PRIMARY KEY, app_library_plist blob, app_library_name text unique default null, zone_rowid integer default 0, auto_client_item_count integer default 0, auto_document_count INTEGER DEFAULT 0, auto_document_with_local_changes_count INTEGER DEFAULT 0, auto_aggregate_size INTEGER DEFAULT 0)"}]
      && [v7 execute:{@"INSERT INTO app_libraries  (rowid, app_library_plist, app_library_name, zone_rowid, auto_client_item_count, auto_document_count, auto_document_with_local_changes_count, auto_aggregate_size) SELECT rowid, app_library_plist, app_library_name, zone_rowid, auto_client_item_count, auto_document_count, auto_document_with_local_changes_count, auto_aggregate_size   FROM app_libraries_old WHERE app_library_owner = %@ OR app_library_owner IS NULL", *MEMORY[0x277CBBF28]}]
      && [v7 execute:@"DROP TABLE app_libraries_old"]
      && [BRCItemID migrateItemIDsToVersion11WithDB:v7 serverTruth:0]
      && [v7 execute:@"ALTER TABLE mark_children_lost_progress RENAME TO mark_children_lost_progress_old"]
      && [v7 execute:{@"CREATE TABLE mark_children_lost_progress (zone_rowid INTEGER NOT NULL, item_parent_id BLOB NOT NULL, last_updated_row_id INTEGER NOT NULL, item_parent_file_id INTEGER, app_library_rowid INTEGER NOT NULL, PRIMARY KEY(zone_rowid, item_parent_id))"}]
      && [v7 execute:{@"INSERT INTO mark_children_lost_progress (zone_rowid, item_parent_id, last_updated_row_id, item_parent_file_id, app_library_rowid) SELECT o.zone_rowid, o.item_parent_id, o.last_updated_row_id, o.item_parent_file_id, c.app_library_rowid   FROM mark_children_lost_progress_old AS o INNER JOIN client_items AS c     ON o.zone_rowid = c.zone_rowid AND o.item_parent_id = c.item_id"}]
      && [v7 execute:@"DROP TABLE mark_children_lost_progress_old"]
      && [v7 execute:@"ALTER TABLE client_downloads RENAME TO client_downloads_old"]
      && [v7 execute:{@"CREATE TABLE client_downloads(throttle_id integer not null, zone_rowid integer not null, app_library_rowid integer not null, throttle_state integer not null, retry_count integer not null default 0, last_try_stamp integer not null default 0, next_retry_stamp integer not null default 0, expire_stamp integer not null default 0, transfer_queue blob not null, transfer_size integer not null, transfer_record blob, transfer_stage blob, transfer_operation blob, download_kind integer not null, download_etag blob not null, download_priority integer not null, download_request_stamp integer not null, download_error blob, unit_count_completed INTEGER DEFAULT 0, UNIQUE(transfer_stage), UNIQUE(throttle_id, download_kind, download_etag))"}]
      && [v7 execute:{@"INSERT INTO client_downloads (throttle_id, zone_rowid, app_library_rowid, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp, transfer_queue, transfer_size, transfer_record, transfer_stage, transfer_operation, download_kind, download_etag, download_priority, download_request_stamp, download_error, unit_count_completed) SELECT throttle_id, zone_rowid, app_library_rowid, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp, transfer_queue, transfer_size, transfer_record, transfer_stage, transfer_operation, download_kind, download_etag, download_priority, download_request_stamp, download_error, unit_count_completed FROM client_downloads_old"}]
      && [v7 execute:@"DROP TABLE client_downloads_old"]
      && [v7 execute:@"ALTER TABLE client_uploads RENAME TO client_uploads_old"]
      && [v7 execute:{@"CREATE TABLE client_uploads(throttle_id integer primary key, zone_rowid integer not null, app_library_rowid integer not null, throttle_state integer not null, retry_count integer not null default 0, last_try_stamp integer not null default 0, next_retry_stamp integer not null default 0, expire_stamp integer not null default 0, transfer_queue blob not null, transfer_size integer not null, transfer_record blob, transfer_stage blob, transfer_operation blob, upload_error blob, upload_priority integer DEFAULT 0, upload_request_stamp integer DEFAULT 0, UNIQUE(transfer_stage))"}]
      && [v7 execute:{@"INSERT INTO client_uploads (throttle_id, zone_rowid, app_library_rowid, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp, transfer_queue, transfer_size, transfer_record, transfer_stage, transfer_operation, upload_error, upload_priority, upload_request_stamp) SELECT throttle_id, zone_rowid, app_library_rowid, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp, transfer_queue, transfer_size, transfer_record, transfer_stage, transfer_operation, upload_error, upload_priority, upload_request_stamp FROM client_uploads_old"}]
      && [v7 execute:@"DROP TABLE client_uploads_old"]
      && [v7 execute:@"ALTER TABLE client_unapplied_table RENAME TO client_unapplied_table_old"]
      && [v7 execute:{@"CREATE TABLE client_unapplied_table(throttle_id integer primary key, zone_rowid integer not null, throttle_state integer not null, retry_count integer not null default 0, last_try_stamp integer not null default 0, next_retry_stamp integer not null default 0, expire_stamp integer not null default 0, apply_kind integer not null)"}]
      && [v7 execute:{@"INSERT INTO client_unapplied_table (throttle_id, zone_rowid, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp, apply_kind) SELECT throttle_id, zone_rowid, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp, apply_kind FROM client_unapplied_table_old"}]
      && [v7 execute:@"DROP TABLE client_unapplied_table_old"]
      && [v7 execute:{@"CREATE INDEX client_downloads/scheduling_by_priority ON client_downloads (throttle_state, transfer_queue, transfer_operation, download_priority DESC, download_request_stamp DESC) WHERE throttle_state = 1"}]
      && [v7 execute:{@"CREATE INDEX client_downloads/scheduling_by_priority_and_kind ON client_downloads (throttle_state, transfer_queue, transfer_operation, download_kind, download_priority DESC, download_request_stamp DESC) WHERE throttle_state = 1"}]
      && [v7 execute:{@"CREATE INDEX client_downloads/scheduling_by_stamp ON client_downloads (throttle_state, transfer_queue, transfer_operation, next_retry_stamp ASC)  WHERE throttle_state = 1"}]
      && [v7 execute:{@"CREATE INDEX client_downloads/gc_index ON client_downloads (throttle_state, expire_stamp ASC) WHERE throttle_state = 0"}]
      && [v7 execute:@"CREATE INDEX client_downloads/transfer_operation ON client_downloads (transfer_operation) WHERE transfer_operation IS NOT NULL"]
      && [v7 execute:{@"CREATE INDEX client_downloads/zone_rowid__throttle_state ON client_downloads (throttle_state, zone_rowid)"}]
      && [v7 execute:{@"CREATE INDEX client_downloads/reset_index ON client_downloads (zone_rowid, throttle_state)"}]
      && [v7 execute:{@"CREATE INDEX client_downloads/low_disk_index ON client_downloads (throttle_state, throttle_id, download_kind)  WHERE throttle_state = 43"}]
      && [v7 execute:{@"CREATE INDEX client_uploads/gc_index ON client_uploads (throttle_state, expire_stamp ASC) WHERE throttle_state = 0"}]
      && [v7 execute:{@"CREATE INDEX IF NOT EXISTS client_uploads/scheduling_by_size ON client_uploads (throttle_state, transfer_queue, transfer_operation, transfer_size ASC)  WHERE throttle_state = 1"}]
      && [v7 execute:{@"CREATE INDEX IF NOT EXISTS client_uploads/scheduling_by_stamp ON client_uploads (throttle_state, transfer_queue, transfer_operation, next_retry_stamp ASC)  WHERE throttle_state = 1"}]
      && [v7 execute:@"CREATE INDEX client_uploads/transfer_operation ON client_uploads (transfer_operation) WHERE transfer_operation IS NOT NULL"]
      && [v7 execute:{@"CREATE INDEX client_uploads/zone_rowid__throttle_state ON client_uploads (throttle_state, zone_rowid)"}]
      && [v7 execute:{@"CREATE INDEX client_uploads/reset_index ON client_uploads (zone_rowid, throttle_state)"}]
      && [v7 execute:{@"CREATE INDEX client_uploads/out_of_quota_index ON client_uploads (throttle_state, zone_rowid, transfer_size)  WHERE throttle_state = 32"}]
      && [v7 execute:@"CREATE INDEX client_unapplied_table/zone_rowid ON client_unapplied_table (zone_rowid)"]
      && [v7 execute:{@"CREATE INDEX client_unapplied_table/next_retry_stamp_active_state ON client_unapplied_table (throttle_state, next_retry_stamp ASC, throttle_id ASC) WHERE throttle_state = 1"}]
      && [v7 execute:{@"CREATE INDEX client_unapplied_table/zone_rowid__kind__throttle_state ON client_unapplied_table (throttle_state, zone_rowid, apply_kind)"}])
    {
      v8 = [v7 execute:{@"CREATE INDEX client_unapplied_table/expire_stamp_inactive_state ON client_unapplied_table (throttle_state, expire_stamp ASC) WHERE throttle_state = 0"}];
      goto LABEL_7;
    }

LABEL_48:
    v9 = 0;
    goto LABEL_49;
  }

  if (![v6 execute:@"ALTER TABLE rowid_reservations RENAME TO rowid_reservations_old"] || !objc_msgSend(v7, "execute:", @"CREATE TABLE rowid_reservations(rowid integer PRIMARY KEY, container_id text unique not null)") || !objc_msgSend(v7, "execute:", @"INSERT INTO rowid_reservations (rowid, container_id) SELECT rowid, container_id FROM rowid_reservations_old WHERE owner = %@ OR owner IS NULL", *MEMORY[0x277CBBF28]) || !objc_msgSend(v7, "execute:", @"DROP TABLE rowid_reservations_old"))
  {
    goto LABEL_48;
  }

  v8 = [BRCItemID migrateItemIDsToVersion11WithDB:v7 serverTruth:1];
LABEL_7:
  v9 = v8;
LABEL_49:

  return v9;
}

uint64_t br_update_tables_11_001(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:{@"CREATE INDEX client_items/mark_children_lost_index ON client_items(item_parent_zone_rowid, item_parent_id, rowid ASC) WHERE item_state = 0"}] && objc_msgSend(v7, "execute:", @"create index client_items/faults_enumeration ON client_items(zone_rowid, rowid) WHERE item_type = 2") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/sync_up_enumerator_1") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/sync_up_enumerator_2") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/sync_up_enumerator_1 ON client_items(item_parent_zone_rowid, item_parent_id) WHERE item_localsyncupstate = 4 AND item_state IN (0, 1)"))
  {
    v8 = [v7 execute:{@"CREATE INDEX client_items/sync_up_enumerator_2 ON client_items(zone_rowid) WHERE item_localsyncupstate IN (2, 3, 4)"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_11_002(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v3 = @"ALTER TABLE server_items ADD COLUMN item_lastusedtime integer DEFAULT NULL";
  }

  else
  {
    v3 = @"ALTER TABLE client_items ADD COLUMN item_lastusedtime integer DEFAULT NULL";
  }

  return [a2 execute:v3];
}

uint64_t br_update_tables_11_003(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v3 = @"ALTER TABLE server_items ADD COLUMN item_favoriterank integer DEFAULT NULL";
  }

  else
  {
    v3 = @"ALTER TABLE client_items ADD COLUMN item_favoriterank integer DEFAULT NULL";
  }

  return [a2 execute:v3];
}

uint64_t br_update_tables_12_000(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP INDEX spotlight_ranks/notif_rank"] && objc_msgSend(v7, "execute:", @"DROP TABLE spotlight_ranks") && objc_msgSend(v7, "execute:", @"CREATE TABLE tombstones(file_object_id      integer not null, file_object_id_type integer not null, notif_rank          integer not null, PRIMARY KEY (file_object_id, notif_rank ASC))") && objc_msgSend(v7, "execute:", @"CREATE INDEX tombstones/notif_rank ON tombstones (notif_rank)") && objc_msgSend(v7, "execute:", @"ALTER TABLE client_items ADD COLUMN item_user_visible integer not null default 1") && objc_msgSend(v7, "execute:", @"UPDATE client_document_access SET properties = properties & 1"))
  {
    v8 = [v7 execute:@"DROP INDEX client_document_access/indexable"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_12_001(uint64_t a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = a2;
    [v3 execute:@"UPDATE client_downloads SET app_library_rowid = (SELECT app_library_rowid FROM client_items WHERE client_downloads.throttle_id = client_items.rowid) WHERE throttle_state != 0"];
    [v3 execute:@"UPDATE client_uploads SET app_library_rowid = (SELECT app_library_rowid FROM client_items WHERE client_uploads.throttle_id = client_items.rowid) WHERE throttle_state != 0"];
  }

  return 1;
}

uint64_t br_update_tables_13_000(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!a3)
  {
    if ([v6 execute:@"ALTER TABLE client_items ADD COLUMN item_alias_target text"])
    {
      v8 = @"UPDATE client_items SET item_alias_target = item_filename, item_filename = NULL WHERE item_type = 3";
      goto LABEL_6;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (([v6 execute:@"ALTER TABLE server_items ADD COLUMN item_alias_target text"] & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = @"UPDATE server_items SET item_alias_target = item_filename, item_filename =  WHERE item_type = 3";
LABEL_6:
  v9 = [v7 execute:v8];
LABEL_8:

  return v9;
}

uint64_t br_update_tables_13_001(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:{@"UPDATE server_items SET version_quarantine_info = %@, item_rank = NULL WHERE length(version_quarantine_info) == 0 AND version_quarantine_info IS NOT NULL", 0}];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_13_002(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = objc_opt_new();
  v6 = [v5 UUIDString];
  v7 = [v4 execute:{@"UPDATE backup_detector SET uuid = %@", v6}];

  return v7;
}

uint64_t br_update_tables_13_003(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:{@"UPDATE client_items SET item_local_diffs = item_local_diffs | %llu & ~%llu WHERE item_local_diffs & %llu != 0", 0x2000, 0x80000000000000, 0x80000000000000}])
  {
    v8 = [v7 execute:{@"UPDATE client_items SET item_local_diffs = item_local_diffs | %llu WHERE item_type = 5 AND item_stat_ckinfo IS NULL AND (item_local_diffs & %llu)==0", 0x2000, 0x2000}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_14_000(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE client_items ADD COLUMN item_tmpbounceno INTEGER"] && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/item_tmpbounceno ON client_items (item_tmpbounceno) WHERE item_tmpbounceno IS NOT NULL") && objc_msgSend(v7, "execute:", @"UPDATE client_items SET item_tmpbounceno = call_block(%p, item_bouncedname) WHERE item_bouncedname IS NOT NULL", &__block_literal_global_1155) && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/item_bouncedname") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/item_parent_id__item_localname") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/item_parent_id__item_bouncedname ON client_items (item_parent_zone_rowid, item_parent_id, item_bouncedname) WHERE item_bouncedname IS NOT NULL") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/item_parent_id__item_localname ON client_items (item_parent_zone_rowid, item_parent_id, item_localname) WHERE item_localname IS NOT NULL"))
  {
    v8 = [v7 execute:{@"UPDATE client_items SET item_bouncedname = call_block(%p, item_filename, item_localname) WHERE item_localname IS NOT NULL", &__block_literal_global_1173}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_14_001(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP INDEX client_items/item_path"] && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/item_filename_path ON client_items (item_parent_zone_rowid, item_parent_id, item_filename)") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/item_localname_path ON client_items (item_parent_zone_rowid, item_parent_id, item_localname)") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/item_bouncedname_path ON client_items (item_parent_zone_rowid, item_parent_id, item_bouncedname)") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/shared_item_library ON client_items (app_library_rowid, item_state) WHERE item_creator_id != 0;") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/item_id") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/item_file_id") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/item_file_id_unique"))
  {
    v8 = [v7 execute:{@"CREATE UNIQUE INDEX client_items/item_file_id_unique ON client_items(item_file_id) WHERE item_state IN (0, -1)"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_14_002(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"CREATE INDEX client_sync_up/next_retry ON client_sync_up (next_retry_stamp) WHERE throttle_state = 1"] && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/sync_up_enumerator_1") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/sync_up_enumerator_2"))
  {
    v8 = [v7 execute:{@"CREATE INDEX client_items/sync_up_enumerator ON client_items(item_state, item_type) WHERE item_localsyncupstate = 4 AND item_min_supported_os_rowid IS NULL"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_14_003(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  if (a3)
  {
    v5 = 1;
  }

  else
  {
    v7 = brc_current_date_nsec();
    if ([v4 execute:{@"UPDATE client_items SET item_user_visible = 0 WHERE item_scope IN (0, 1)"}] && objc_msgSend(v4, "execute:", @"UPDATE client_items SET item_user_visible = 0 WHERE item_scope = 3 AND (SELECT parent.item_filename FROM client_items AS parent WHERE parent.item_id = item_parent_id AND parent.zone_rowid = item_parent_zone_rowid)") && objc_msgSend(v4, "execute:", @"UPDATE client_items SET item_user_visible = 0 WHERE item_filename LIKE '.%%' AND item_scope = 2"))
    {
      v5 = [v4 execute:{@"UPDATE client_items SET item_state = -1, item_processing_stamp = inc_and_fetch64(%p) WHERE item_user_visible = 0 AND item_scope = 2 AND item_type = 0 AND item_state = 0", &v7}];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t br_update_tables_15_000(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:@"DROP TABLE server_pending_fetches"];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_15_001(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP INDEX client_items/item_notifs_rank"] && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/item_notifs_rank_children ON client_items (item_parent_id, item_parent_zone_rowid, item_notifs_rank) WHERE item_state IN (0, -1)") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/item_notifs_rank_library ON client_items (item_notifs_rank, app_library_rowid) WHERE item_state IN (0, -1)") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/alias_map"))
  {
    v8 = [v7 execute:{@"CREATE INDEX client_items/alias_map ON client_items(item_type, item_alias_target) WHERE item_type = 3"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_15_002(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    if ([v4 execute:@"DROP INDEX server_items/alias_map"])
    {
      v6 = [v5 execute:{@"CREATE INDEX server_items/alias_map ON server_items(item_type, item_alias_target) WHERE item_type = 3"}];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t br_update_tables_15_003(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP INDEX client_items/item_localname_path"] && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/item_bouncedname_path") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/item_parent_id_rowid") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/spotlight_index") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/item_parent_id__item_state") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/download_index") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/eviction_index") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/item_in_flight_diffs") && objc_msgSend(v7, "execute:", @"DROP INDEX client_uploads/scheduling_by_size") && objc_msgSend(v7, "execute:", @"DROP INDEX client_pkg_items/is_dirty") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/pending_download_docs") && objc_msgSend(v7, "execute:", @"DROP INDEX client_document_access/evictable") && objc_msgSend(v7, "execute:", @"DROP INDEX client_document_access/evictable/item_rowid") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/app_library_rowid ON client_items (app_library_rowid)") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/item_parent_id_rowid ON client_items (item_parent_id, app_library_rowid, rowid)") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/working_set_index ON client_items (item_notifs_rank) WHERE item_user_visible = 1") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/eviction_index ON client_items (version_mtime, app_library_rowid) WHERE item_localsyncupstate = 0 AND item_state != 1") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_sync_up/sync_state_index ON client_sync_up (zone_rowid, throttle_state)") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_sync_up/throttle_id ON client_sync_up (throttle_id)") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_sync_up/zone_rowid ON client_sync_up (zone_rowid)") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_sync_up/expire_stamp_inactive_state ON client_sync_up (throttle_state, expire_stamp) WHERE throttle_state = 0"))
  {
    v8 = [v7 execute:{@"CREATE INDEX client_uploads/scheduling_by_priority ON client_uploads (throttle_state, transfer_queue, upload_priority DESC, upload_request_stamp DESC, transfer_size ASC)  WHERE throttle_state = 1 AND transfer_operation IS NULL"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_16_000(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!a3)
  {
    if ([v6 execute:@"ALTER TABLE client_items ADD COLUMN item_side_car_ckinfo BLOB"] && objc_msgSend(v7, "execute:", @"ALTER TABLE client_items ADD COLUMN item_creator INTEGER") && objc_msgSend(v7, "execute:", @"ALTER TABLE client_items ADD COLUMN version_edited_since_shared INTEGER"))
    {
      v8 = @"DROP INDEX client_items/eviction_index";
      goto LABEL_10;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if (![v6 execute:@"ALTER TABLE server_items ADD COLUMN item_side_car_ckinfo BLOB"] || !objc_msgSend(v7, "execute:", @"ALTER TABLE server_items ADD COLUMN item_creator INTEGER") || (objc_msgSend(v7, "execute:", @"ALTER TABLE server_items ADD COLUMN version_edited_since_shared INTEGER") & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = @"CREATE TABLE side_car_lookahead(record_name text primary key , root_alias_record_name text NOT NULL, item_side_car_ckinfo BLOB NOT NULL , item_favoriterank integer , item_lastusedtime integer)";
LABEL_10:
  v9 = [v7 execute:v8];
LABEL_12:

  return v9;
}

uint64_t br_update_tables_16_001(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE client_items ADD COLUMN visible_child_count integer"] && objc_msgSend(v7, "execute:", @"CREATE TRIGGER visible_child_count/deletion AFTER DELETE ON client_items BEGIN UPDATE OR IGNORE client_items SET visible_child_count = visible_child_count - 1 WHERE (old.item_user_visible = 1 OR old.item_scope = 3) AND old.item_parent_id = item_id AND old.item_parent_zone_rowid = zone_rowid AND old.item_filename != .Trash ; END"))
  {
    v8 = [v7 execute:@"CREATE TRIGGER visible_child_count/insertion AFTER INSERT ON client_items BEGIN UPDATE OR IGNORE client_items SET visible_child_count = visible_child_count + 1 WHERE (new.item_user_visible = 1 OR new.item_scope = 3) AND new.item_filename != .Trash AND new.item_parent_id = item_id AND new.item_parent_zone_rowid = zone_rowid ; END"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_16_002(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    if ([v4 execute:@"ALTER TABLE server_items ADD COLUMN quota_used INTEGER"] && objc_msgSend(v5, "execute:", @"ALTER TABLE server_items ADD COLUMN recursive_child_count INTEGER") && objc_msgSend(v5, "execute:", @"ALTER TABLE server_items ADD COLUMN shared_children_count INTEGER") && objc_msgSend(v5, "execute:", @"ALTER TABLE server_items ADD COLUMN shared_alias_count INTEGER"))
    {
      v6 = [v5 execute:@"ALTER TABLE server_items ADD COLUMN child_count INTEGER"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t br_update_tables_16_003(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:{@"CREATE INDEX server_items/item_parent_id__item_type ON server_items(zone_rowid, item_type, item_parent_id)"}];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_16_005(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:@"ALTER TABLE side_car_lookahead ADD COLUMN item_finder_tags blob"];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_16_006(void *a1, void *a2, int a3, void **a4)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  if (a3)
  {
    v9 = +[BRCMigrationQueryOperation folderSharesMigrationKey];
    v37[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v11 = _br_setupMigrationQueryOnServerTruth(v7, v8, v10, a4);

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = [v7 _sharedServerZonesEnumerator:v8];
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = [v17 changeState];
          [v18 forgetChangeTokens];

          if (v11)
          {
            v19 = [v7 serverReadWriteDatabaseFacade];
            v11 = [v19 saveServerZone:v17];
          }

          else
          {
            v11 = 0;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v7 _sharedClientZonesEnumerator];
    v20 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      LOBYTE(v11) = 1;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v12);
          }

          v24 = *(*(&v27 + 1) + 8 * j);
          [v24 setStateBits:256];
          if (v11)
          {
            v11 = [v7 saveClientZoneToDB:v24];
          }

          else
          {
            v11 = 0;
          }
        }

        v21 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v21);
    }

    else
    {
      v11 = 1;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t br_update_tables_16_009(void *a1, void *a2, int a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!a3)
  {
    v31 = 1;
    goto LABEL_28;
  }

  v35 = v5;
  v8 = [v6 fetch:{@"SELECT record_name, root_alias_record_name, item_favoriterank, item_lastusedtime, item_finder_tags, item_side_car_ckinfo FROM side_car_lookahead WHERE length(root_alias_record_name) = 36"}];
  if (![v8 next])
  {
    v41 = 1;
    goto LABEL_27;
  }

  v41 = 1;
  v9 = 0x2784FD000uLL;
  v36 = v7;
  while (1)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v8 stringAtIndex:0];
    v12 = [v8 stringAtIndex:1];
    v13 = [objc_alloc(*(v9 + 2888)) initWithUUIDString:v12];
    v14 = [v11 componentsSeparatedByString:@"/"];
    if ([v14 count] != 2)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v44 = v26;
        _os_log_fault_impl(&dword_223E7A000, v27, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Ignoring corrupt side car file%@", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      goto LABEL_22;
    }

    v40 = v11;
    v42 = v13;
    v15 = v7;
    v16 = objc_alloc(*(v9 + 2888));
    v17 = [v14 lastObject];
    v18 = [v16 initWithUUIDString:v17];

    v19 = [v8 numberAtIndex:2];
    v20 = [v8 numberAtIndex:3];
    v21 = [v8 dataAtIndex:4];
    v22 = [v8 objectOfClass:objc_opt_class() atIndex:5];
    v38 = v18;
    context = v10;
    v37 = v22;
    if (v41)
    {
      v34 = v18;
      v23 = v21;
      v7 = v15;
      v24 = [v15 execute:{@"UPDATE server_items SET item_favoriterank = %@, item_lastusedtime = %@, item_finder_tags = %@, item_side_car_ckinfo = %@, item_rank = NULL WHERE item_id = %@ AND zone_rowid IN (SELECT zone_rowid FROM server_items WHERE item_id = %@)", v19, v20, v21, v22, v42, v34}];
      if ([v15 changes] <= 1)
      {
        if (v24)
        {
          v41 = [v15 execute:{@"DELETE FROM side_car_lookahead WHERE record_name = %@", v40}];
        }

        else
        {
          v41 = 0;
        }

        v30 = 1;
        v25 = v42;
        goto LABEL_21;
      }

      v41 = v24;
      v25 = v42;
    }

    else
    {
      v23 = v21;
      v7 = v15;
      v41 = 0;
      if ([v15 changes] < 2)
      {
        v30 = 1;
        v25 = v42;
        goto LABEL_21;
      }

      v25 = v42;
    }

    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v44 = v28;
      _os_log_fault_impl(&dword_223E7A000, v29, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Found more than one match for that query%@", buf, 0xCu);
    }

    v30 = 0;
    v7 = v36;
LABEL_21:

    objc_autoreleasePoolPop(context);
    v9 = 0x2784FD000;
    if (!v30)
    {
      break;
    }

LABEL_22:
    if (([v8 next] & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v41 = 0;
LABEL_27:

  v5 = v35;
  v31 = v41;
LABEL_28:

  v32 = *MEMORY[0x277D85DE8];
  return v31 & 1;
}

uint64_t br_update_tables_16_010(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    if ([v4 execute:@"DROP TRIGGER IF EXISTS server_items/sharing_state_propagation"] && objc_msgSend(v5, "execute:", @"DROP TRIGGER IF EXISTS server_items/learn_parent_sharing_state") && objc_msgSend(v5, "execute:", @"DROP TRIGGER IF EXISTS server_items/sharing_state_insertion") && objc_msgSend(v5, "execute:", @"CREATE TRIGGER server_items/sharing_state_propagation AFTER UPDATE OF item_sharing_options ON server_items BEGIN UPDATE server_items SET item_sharing_options = (item_sharing_options & (~124)) | (new.item_sharing_options & 120) WHERE new.item_sharing_options != old.item_sharing_options AND new.item_type IN (0, 9, 10) AND new.item_state = 0 AND item_parent_id = new.item_id AND zone_rowid = new.zone_rowid AND (item_sharing_options & 4) == 0 AND (item_sharing_options & 120) != (new.item_sharing_options & 120); END") && objc_msgSend(v5, "execute:", @"CREATE TRIGGER server_items/learn_parent_sharing_state AFTER UPDATE OF item_parent_id ON server_items BEGIN UPDATE server_items SET item_sharing_options = ((item_sharing_options & (~124)) | IFNULL((SELECT item_sharing_options & 120 FROM server_items as pi WHERE pi.item_id = new.item_parent_id AND pi.zone_rowid = new.zone_rowid), 0)) WHERE new.item_parent_id != old.item_parent_id AND item_id = new.item_id AND zone_rowid = new.zone_rowid AND item_state = 0 AND (item_sharing_options & 4) == 0; END"))
    {
      v6 = [v5 execute:{@"CREATE TRIGGER server_items/sharing_state_insertion AFTER INSERT ON server_items BEGIN UPDATE server_items SET item_sharing_options = ((item_sharing_options & (~124)) | IFNULL((SELECT item_sharing_options & 120 FROM server_items as pi WHERE pi.item_id = new.item_parent_id AND pi.zone_rowid = new.zone_rowid), 0)) WHERE (new.item_sharing_options & 4) == 0 AND item_id = new.item_id AND zone_rowid = new.zone_rowid; UPDATE server_items SET item_sharing_options = (item_sharing_options & (~124)) | (new.item_sharing_options & 120) WHERE (new.item_sharing_options & 4) != 0 AND new.item_type IN (0, 9, 10) AND new.item_state = 0 AND item_parent_id = new.item_id AND zone_rowid = new.zone_rowid AND (item_sharing_options & 4) == 0 AND (item_sharing_options & 120) != (new.item_sharing_options & 120); END"}];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t br_update_tables_16_011(void *a1, void *a2, int a3, void **a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a2;
    v7 = a1;
    v8 = +[BRCMigrationQueryOperation folderShareAliasesMigrationKey];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = _br_setupMigrationQueryOnServerTruth(v7, v6, v9, a4);
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t br_update_tables_16_012(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return item_errors_recreate_schema(a2, 0);
  }
}

uint64_t br_update_tables_16_014(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"UPDATE client_items AS parent SET visible_child_count = (SELECT COUNT(*) FROM client_items AS child WHERE child.item_parent_id = parent.item_id AND child.item_parent_zone_rowid = parent.zone_rowid AND (child.item_user_visible = 1 OR (child.item_scope == 3 AND child.item_filename != .Trash, 9, 10, 4)")}];
  }
}

uint64_t br_update_tables_16_016(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:{@"CREATE TABLE telemetry_events(rowid integer PRIMARY KEY, payload blob NOT NULL)"}])
  {
    v8 = [v7 execute:{@"CREATE TABLE telemetry_failure_counts(item_id integer NOT NULL, zone_rowid integer NOT NULL, retry_count integer NOT NULL, PRIMARY KEY (item_id, zone_rowid))"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_16_018(void *a1, void *a2, char a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v25 = a2;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [v5 _privateClientZonesEnumerator];
    v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      v27 = 1;
      do
      {
        v10 = 0;
        v24 = v8;
        do
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * v10);
          if ([v11 isSyncBlockedBecauseAppNotInstalled])
          {
            v12 = [v11 dbRowID];
            v13 = [v25 fetch:{@"SELECT rowid, app_library_name, app_library_plist, zone_rowid FROM app_libraries WHERE zone_rowid = %@", v12}];

            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __br_update_tables_16_018_block_invoke;
            v32[3] = &unk_2784FF910;
            v14 = v5;
            v33 = v14;
            v15 = [v13 enumerateObjects:v32];
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v16 = v15;
            v17 = [v16 countByEnumeratingWithState:&v28 objects:v38 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = v5;
              v20 = *v29;
              while (2)
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v29 != v20)
                  {
                    objc_enumerationMutation(v16);
                  }

                  if ([*(*(&v28 + 1) + 8 * i) hasLocalChanges])
                  {
                    [v11 clearStateBits:4096];
                    if (v27)
                    {
                      v27 = [v14 saveClientZoneToDB:v11];
                    }

                    else
                    {
                      v27 = 0;
                    }

                    goto LABEL_21;
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v28 objects:v38 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }

LABEL_21:
              v5 = v19;
              v8 = v24;
            }
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v8);
    }

    else
    {
      v27 = 1;
    }

    v6 = v27;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

uint64_t br_update_tables_16_019(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = [a2 numberWithSQL:@"SELECT 1 FROM client_items WHERE item_bouncedname LIKE '%%.icloud'"];
  v3 = [v4 BOOLValue] ^ 1;

  return v3;
}

uint64_t br_update_tables_16_020(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP TRIGGER IF EXISTS visible_child_count/reparent"] && objc_msgSend(v7, "execute:", @"DROP TRIGGER IF EXISTS visible_child_count/visibility") && objc_msgSend(v7, "execute:", @"CREATE TRIGGER visible_child_count/reparent AFTER UPDATE OF item_parent_id, item_parent_zone_rowid ON client_items WHEN (new.item_parent_id != old.item_parent_id OR new.item_parent_zone_rowid != old.item_parent_zone_rowid) BEGIN UPDATE OR IGNORE client_items SET   visible_child_count = visible_child_count - 1  WHERE (old.item_user_visible = 1 OR old.item_scope = 3) AND item_id = old.item_parent_id AND zone_rowid = old.item_parent_zone_rowid AND old.item_filename != .Trash ; UPDATE OR IGNORE client_items SET   visible_child_count = visible_child_count + 1  WHERE (old.item_user_visible = 1 OR old.item_scope = 3) AND item_id = new.item_parent_id AND zone_rowid = new.item_parent_zone_rowid AND new.item_filename != .Trash ; END"))
  {
    v8 = [v7 execute:{@"CREATE TRIGGER visible_child_count/visibility AFTER UPDATE OF item_user_visible, item_scope ON client_items WHEN (new.item_user_visible != old.item_user_visible OR new.item_scope != old.item_scope) BEGIN UPDATE OR IGNORE client_items SET   visible_child_count = visible_child_count + (new.item_user_visible | (new.item_scope == 3)) - (old.item_user_visible | (old.item_scope == 3)) WHERE item_id == new.item_parent_id AND zone_rowid = new.item_parent_zone_rowid AND new.item_filename != .Trash ; END"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_16_022(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"CREATE INDEX client_items/sync_state_job_recovery ON client_items(item_localsyncupstate) WHERE item_localsyncupstate != 0"])
  {
    v8 = [v7 execute:@"CREATE INDEX client_items/download_job ON client_items(rowid) WHERE desired_version IS NOT NULL"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_18_000(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP INDEX IF EXISTS client_items/shared_item_library"] && objc_msgSend(v7, "execute:", @"UPDATE client_downloads SET transfer_queue = '_retry' WHERE transfer_queue = 'com.apple.SharedDocs'"))
  {
    v8 = [v7 execute:@"UPDATE client_uploads SET transfer_queue = '_retry' WHERE transfer_queue = 'com.apple.SharedDocs'"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_19_000(uint64_t a1, void *a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a3)
  {
    v5 = [MEMORY[0x277D77BF8] sharedManager];
    v6 = [v5 currentPersona];
    v7 = [v6 isDataSeparatedPersona];

    if ((v7 & 1) == 0)
    {
      v8 = [v4 fetch:@"SELECT config_plist FROM server_state WHERE config_plist IS NOT NULL"];
      if ([v8 next])
      {
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        v11 = objc_opt_class();
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = objc_opt_class();
        v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
        v16 = [v8 unarchivedObjectOfClasses:v15 atIndex:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = +[BRCUserDefaults cachedServerConfigurationPath];
          [v16 writeToFile:v17 atomically:1];
        }

        else
        {
          v17 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v17;
            _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Cannot decode configuration plist from the database%@", buf, 0xCu);
          }
        }
      }
    }

    if ([v4 execute:@"CREATE TABLE server_state_tmp (state)"] && objc_msgSend(v4, "execute:", @"INSERT INTO server_state_tmp (state) SELECT state FROM server_state") && objc_msgSend(v4, "execute:", @"DROP TABLE server_state"))
    {
      v18 = [v4 execute:@"ALTER TABLE server_state_tmp RENAME TO server_state"];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t br_update_tables_19_001(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE client_items ADD COLUMN version_old_zone_item_id blob"] && objc_msgSend(v7, "execute:", @"ALTER TABLE client_items ADD COLUMN version_old_zone_rowid integer"))
  {
    v8 = [v7 execute:@"CREATE INDEX client_items/version_old_zone_rowid ON client_items (version_old_zone_rowid)"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_20_001(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE client_items ADD COLUMN version_block_sync_until_timestamp integer default null"] && objc_msgSend(v7, "execute:", @"ALTER TABLE client_items ADD COLUMN version_block_sync_until_bundle_id text default null") && objc_msgSend(v7, "execute:", @"ALTER TABLE client_items ADD COLUMN version_block_sync_until_resuming integer default null"))
  {
    v8 = [v7 execute:@"CREATE INDEX client_items/version_block_sync_timestamp ON client_items (version_block_sync_until_timestamp)"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_20_003(void *a1, void *a2, int a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    if ([v6 execute:{@"CREATE TRIGGER server_items/orphan_reschedule AFTER INSERT ON server_items BEGIN UPDATE server_items SET item_depth = 0 WHERE new.item_type IN (0, 9, 10)   AND item_parent_id = new.item_id   AND zone_rowid = new.zone_rowid   AND item_depth = -2   AND item_rank IS NULL; END"}])
    {
      v8 = [v7 execute:{@"CREATE TRIGGER server_items/orphan_reschedule_propagation AFTER UPDATE OF item_depth ON server_items BEGIN UPDATE server_items SET item_depth = 0 WHERE new.item_depth = 0 AND old.item_depth = -2   AND new.item_type IN (0, 9, 10)   AND item_parent_id = new.item_id   AND zone_rowid = new.zone_rowid   AND item_depth = -2   AND item_rank IS NULL; END"}];
    }

    else
    {
      v8 = 0;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v20 = [v5 _privateServerZonesEnumerator:v7];
    v21 = [v20 countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v56;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v56 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v55 + 1) + 8 * i);
          v26 = [v25 changeState];
          v27 = [v26 changeToken];

          if (v27)
          {
            [v25 setStateBits:60];
          }

          if (v8)
          {
            v28 = [v5 serverReadWriteDatabaseFacade];
            v8 = [v28 saveServerZone:v25];
          }

          else
          {
            v8 = 0;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v42 = v5;
    v9 = v5;
    v10 = v7;
    v11 = [v9 _appLibrariesEnumerator:v7 version:2];
    v12 = [v11 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v52;
      v8 = 1;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v52 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v51 + 1) + 8 * j);
          v17 = [v16 dbRowID];
          v18 = [v10 numberWithSQL:{@"SELECT 1 FROM client_items WHERE app_library_rowid = %@ AND item_stat_ckinfo IS NOT NULL LIMIT 1", v17}];

          if ([v18 BOOLValue])
          {
            [v16 setStateBits:369098752];
            if (v8)
            {
              v19 = [v42 clientReadWriteDatabaseFacade];
              v8 = [v19 saveAppLibrary:v16 supportsEnhancedDrivePrivacy:0];
            }

            else
            {
              v8 = 0;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v13);
    }

    else
    {
      v8 = 1;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v29 = [v42 _privateClientZonesEnumerator];
    v30 = [v29 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v48;
      v7 = v10;
      v5 = v42;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v47 + 1) + 8 * k);
          if (([v34 state] & 0x10000) != 0)
          {
            [v34 setStateBits:256];
            [v34 clearStateBits:0x10000];
            if (v8)
            {
              v8 = [v42 saveClientZoneToDB:v34];
            }

            else
            {
              v8 = 0;
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v31);
    }

    else
    {
      v7 = v10;
      v5 = v42;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v20 = [v5 _sharedClientZonesEnumerator];
    v35 = [v20 countByEnumeratingWithState:&v43 objects:v59 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v44;
      do
      {
        for (m = 0; m != v36; ++m)
        {
          if (*v44 != v37)
          {
            objc_enumerationMutation(v20);
          }

          v39 = *(*(&v43 + 1) + 8 * m);
          if (([v39 state] & 0x10000) != 0)
          {
            [v39 setStateBits:256];
            [v39 clearStateBits:0x10000];
            if (v8)
            {
              v8 = [v5 saveClientZoneToDB:v39];
            }

            else
            {
              v8 = 0;
            }
          }
        }

        v36 = [v20 countByEnumeratingWithState:&v43 objects:v59 count:16];
      }

      while (v36);
    }
  }

  v40 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

uint64_t br_update_tables_20_004(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:@"CREATE INDEX server_items/item_lastusedtime ON server_items(item_lastusedtime DESC)"];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_20_005(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return recursive_table_recreate_schema(a2);
  }
}

uint64_t br_update_tables_20_006(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"CREATE TABLE IF NOT EXISTS ciconia_history(date integer NOT NULL, os text NOT NULL, br text NOT NULL, bird_schema integer NOT NULL, db_schema integer NOT NULL, ciconia_version integer NOT NULL, last_error text, duration real NOT NULL, uuid text NOT NULL, PRIMARY KEY (uuid))"}];
  }
}

uint64_t br_update_tables_21_000(void *a1, void *a2, char a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if ([MEMORY[0x277CFAE28] hasDaemonicParts])
  {
    v7 = [v5 xattrStager];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_new();
  v9 = v8;
  if (a3)
  {
    v10 = [v6 fetch:{@"SELECT signature, data FROM server_xattr_blobs"}];
    if ([v10 next])
    {
      do
      {
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 dataAtIndex:0];
        v13 = [v10 dataAtIndex:1];
        v21 = 0;
        if (([v9 containsObject:v12] & 1) == 0)
        {
          if (v7 && ([v7 saveXattrBlob:v13 forSignature:v12 error:&v21] & 1) == 0)
          {
            v14 = brc_bread_crumbs();
            v15 = brc_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412802;
              v26 = v12;
              v27 = 2112;
              v28 = v21;
              v29 = 2112;
              v30 = v14;
              _os_log_fault_impl(&dword_223E7A000, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't save xattr blob for signature %@.  Continuing anyway - %@%@", buf, 0x20u);
            }
          }

          else if ([v9 count] <= 0x7F)
          {
            [v9 addObject:v12];
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      while (([v10 next] & 1) != 0);
    }

    v18 = [v6 execute:@"DROP TABLE server_xattr_blobs"];
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __br_update_tables_21_000_block_invoke;
    v22[3] = &unk_278501FB0;
    v23 = v8;
    v24 = v7;
    v16 = v9;
    v17 = MEMORY[0x22AA4A310](v22);
    [v6 execute:{@"UPDATE client_pkg_items SET xattrs = call_block(%p, xattrs) WHERE xattrs IS NOT NULL", v17}];

    v18 = 1;
    v10 = v23;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t br_update_tables_21_001(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"CREATE INDEX client_items/share_id on client_items(app_library_rowid) WHERE (item_sharing_options & 4) != 0"])
  {
    v8 = [v7 execute:@"CREATE INDEX client_items/oob_sync_ack on client_items(zone_rowid) WHERE (item_local_diffs & 1152921504606846976) != 0"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_21_002(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"CREATE INDEX ciconia_history/counting_index ON ciconia_history(ciconia_version)"];
  }
}

uint64_t br_update_tables_21_003(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if ((a3 & 1) == 0)
  {
    if ([v6 execute:@"CREATE INDEX client_items/item_xattr_signature ON client_items(item_xattr_signature)"])
    {
      v8 = @"CREATE INDEX client_items/version_xattr_signature ON client_items(version_xattr_signature)";
      goto LABEL_8;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (![v6 execute:@"DROP INDEX IF EXISTS server_items/item_xattr_signature"] || !objc_msgSend(v7, "execute:", @"DROP INDEX IF EXISTS server_items/version_xattr_signature") || !objc_msgSend(v7, "execute:", @"CREATE INDEX server_items/item_xattr_signature ON server_items(item_xattr_signature)"))
  {
    goto LABEL_9;
  }

  v8 = @"CREATE INDEX server_items/version_xattr_signature ON server_items(version_xattr_signature)";
LABEL_8:
  v9 = [v7 execute:v8];
LABEL_10:

  return v9;
}

uint64_t br_update_tables_21_004(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"ALTER TABLE telemetry_events ADD COLUMN priority integer not null default 0"])
  {
    v8 = [v7 execute:@"CREATE INDEX telemetry_events/priority ON telemetry_events (priority) WHERE priority = 1"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_21_005(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if ((a3 & 1) == 0)
  {
    if ([v6 execute:@"DROP INDEX client_document_access/modify_access_item"] && objc_msgSend(v7, "execute:", @"DROP INDEX tombstones/notif_rank") && objc_msgSend(v7, "execute:", @"CREATE INDEX tombstones/notif_rank ON tombstones (notif_rank)") && objc_msgSend(v7, "execute:", @"DROP INDEX client_items/version_block_sync_timestamp") && objc_msgSend(v7, "execute:", @"CREATE INDEX client_items/version_block_sync_until_timestamp ON client_items (version_block_sync_until_timestamp) WHERE version_block_sync_until_timestamp IS NOT NULL") && (objc_msgSend(v7, "execute:", @"CREATE INDEX telemetry_events/priority__rowid ON telemetry_events (priority, rowid)") & 1) != 0)
    {
      v8 = @"CREATE INDEX client_items/item_type_dir-fault ON client_items (item_type) WHERE item_type IN (9, 10)";
      goto LABEL_4;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (![v6 execute:{@"CREATE INDEX server_items/item_type_dir-fault ON server_items (item_type) WHERE item_type IN (9, 10)"}])
  {
    goto LABEL_12;
  }

  v8 = @"CREATE INDEX server_items/item_type_folder ON server_items (item_type) WHERE item_type IN (0, 9, 10)";
LABEL_4:
  v9 = [v7 execute:v8];
LABEL_13:

  return v9;
}

uint64_t br_update_tables_21_006(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"ALTER TABLE ciconia_history ADD COLUMN last_originator integer default 0"];
  }
}

uint64_t br_update_tables_30_000(void *a1, void *a2, char a3, void **a4)
{
  v82 = *MEMORY[0x277D85DE8];
  v70 = a1;
  v6 = a2;
  v7 = [BRCUserDefaults defaultsForMangledID:0];
  v8 = [v7 dbMigrationBatchSize];

  if ((a3 & 1) == 0)
  {
    v69 = [v6 numberWithSQL:@"SELECT COUNT(*) FROM client_items"];
    if ([MEMORY[0x277CFAE28] hasDaemonicParts] && (objc_msgSend(v70, "stageRegistry"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __br_update_tables_30_000_block_invoke;
      v72[3] = &unk_2784FF870;
      v67 = v10;
      v73 = v67;
      v11 = MEMORY[0x22AA4A310](v72);
      v12 = [v6 execute:{@"UPDATE client_items SET item_localsyncupstate = call_block(%p, rowid, item_file_id, item_localsyncupstate) WHERE item_type NOT IN (0, 4, 9, 10) AND item_scope = 3 AND (item_stat_ckinfo IS NULL OR item_localsyncupstate IN (2, 3, 4))", v11}];
    }

    else
    {
      v67 = 0;
      v12 = 1;
    }

    v13 = 0;
    while ((v12 & 1) != 0)
    {
      v14 = [v6 execute:{@"UPDATE client_items AS ci SET item_stat_ckinfo = (SELECT item_stat_ckinfo from server_items WHERE item_id = ci.item_id) WHERE ci.item_stat_ckinfo IS NULL AND ci.zone_rowid IN (SELECT rowid FROM client_zones AS cz WHERE cz.zone_owner = __defaultOwner__, 4, 9, 10) AND item_localsyncupstate < 100 AND EXISTS (SELECT item_stat_ckinfo from server_items WHERE item_id = ci.item_id) LIMIT %llu"), v8}];
      v13 += [v6 changes];
      if (v14)
      {
        v12 = 1;
        if ([v6 changes] >= v8)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    [v6 changes];
    LOBYTE(v14) = 0;
LABEL_13:
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      br_update_tables_30_000_cold_1();
    }

    v17 = 0;
    while ((v14 & 1) != 0)
    {
      v18 = [v6 execute:{@"DELETE FROM client_items AS ci WHERE ci.item_stat_ckinfo IS NULL AND ci.zone_rowid IN (SELECT rowid FROM client_zones AS cz WHERE cz.zone_owner = __defaultOwner__, 4, 9, 10) AND item_localsyncupstate < 100 LIMIT %llu"), v8}];
      v17 += [v6 changes];
      if (v18)
      {
        LOBYTE(v14) = 1;
        if ([v6 changes] >= v8)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    [v6 changes];
    LOBYTE(v18) = 0;
LABEL_21:
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      br_update_tables_30_000_cold_2();
    }

    v21 = 0;
    while ((v18 & 1) != 0)
    {
      v22 = [v6 execute:{@"DELETE FROM client_items WHERE item_type = 3 LIMIT %llu", v8}];
      v21 += [v6 changes];
      if (v22)
      {
        LOBYTE(v18) = 1;
        if ([v6 changes] >= v8)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    [v6 changes];
    v22 = 0;
LABEL_29:
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      br_update_tables_30_000_cold_3();
    }

    if (v22)
    {
      while (1)
      {
        v25 = [v6 execute:@"DELETE FROM client_downloads"];
        [v6 changes];
        if (!v25)
        {
          break;
        }

        if ([v6 changes] < v8)
        {
          if ([v6 execute:@"DROP INDEX IF EXISTS client_items/lostzombie_scan_index"] && objc_msgSend(v6, "execute:", @"DROP INDEX IF EXISTS client_items/item_tmpbounceno") && objc_msgSend(v6, "execute:", @"DROP INDEX IF EXISTS client_items/item_notifs_rank_children") && objc_msgSend(v6, "execute:", @"DROP INDEX IF EXISTS client_items/doc_sync_state") && objc_msgSend(v6, "execute:", @"DROP INDEX IF EXISTS client_sync_up/zone_rowid") && objc_msgSend(v6, "execute:", @"DROP INDEX IF EXISTS client_sync_up/sync_state_index") && objc_msgSend(v6, "execute:", @"DROP INDEX IF EXISTS client_sync_up/throttle_id") && objc_msgSend(v6, "execute:", @"DROP INDEX IF EXISTS client_downloads/zone_rowid__throttle_state") && objc_msgSend(v6, "execute:", @"DROP INDEX IF EXISTS client_uploads/zone_rowid__throttle_state") && objc_msgSend(v6, "execute:", @"DROP INDEX IF EXISTS client_uploads/group_by") && objc_msgSend(v6, "execute:", @"DROP INDEX IF EXISTS client_downloads/group_by"))
          {
            v26 = [v6 execute:@"DROP INDEX IF EXISTS client_items/working_set_index"];
            goto LABEL_48;
          }

          break;
        }
      }
    }

    else
    {
      [v6 changes];
    }

    v26 = 0;
LABEL_48:
    v27 = 0;
    do
    {
      v28 = objc_autoreleasePoolPush();
      v78 = 0;
      v79 = &v78;
      v80 = 0x2020000000;
      v81 = v27;
      if ((v26 & 1) == 0)
      {
        _Block_object_dispose(&v78, 8);
        objc_autoreleasePoolPop(v28);
LABEL_61:
        v66 = [v6 changes];
        goto LABEL_62;
      }

      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __br_update_tables_30_000_block_invoke_1801;
      v71[3] = &unk_278503340;
      v71[4] = &v78;
      v29 = MEMORY[0x22AA4A310](v71);
      v30 = [v6 execute:{@"UPDATE client_items SET item_localsyncupstate = call_block(%p, item_localsyncupstate, item_file_id, rowid) WHERE item_state IN (0, -1) AND item_type NOT IN (2, 7) AND item_scope != 3 AND rowid > %llu ORDER BY rowid ASC LIMIT %llu", v29, v27, v8}];

      v27 = v79[3];
      _Block_object_dispose(&v78, 8);
      objc_autoreleasePoolPop(v28);
      if (!v30)
      {
        goto LABEL_61;
      }

      v26 = 1;
    }

    while ([v6 changes] >= v8);
    v66 = [v6 changes];
    if ([v6 execute:{@"UPDATE client_items SET item_file_id = NULL, item_generation = NULL, item_doc_id = NULL WHERE item_state IN (0, -1) AND (item_type IN (2, 7) OR item_scope = 3) AND item_localsyncupstate NOT IN (888, 999)"}] && objc_msgSend(v6, "execute:", @"UPDATE client_items SET desired_version = NULL, item_localname = NULL, item_tmpbounceno = NULL, item_thumb_greedy = NULL, item_thumb_live_signature = NULL") && objc_msgSend(v6, "execute:", @"UPDATE client_items SET item_scope = 2 WHERE item_scope = 1 AND call_block(%p, item_id)", &__block_literal_global_1813))
    {
      while ([v6 execute:{@"UPDATE client_items SET item_type = 1 WHERE item_type = 2 LIMIT %llu", v8}])
      {
        if ([v6 changes] < v8)
        {
          do
          {
            v31 = [v6 execute:{@"UPDATE client_items SET item_type = 6 WHERE item_type = 7 LIMIT %llu", v8}];
          }

          while (v31 && [v6 changes] >= v8);
          goto LABEL_63;
        }
      }
    }

LABEL_62:
    v31 = 0;
LABEL_63:
    if (v31)
    {
      while ([v6 execute:{@"UPDATE client_items SET item_state = 0, item_scope = IFNULL((        WITH RECURSIVE item_parents_scopes (item_scope, item_id, zone_rowid) AS(           SELECT ci.item_scope, ci.item_parent_id, ci.item_parent_zone_rowid            FROM client_items AS ci            WHERE ci.item_id = client_items.item_parent_id                AND ci.zone_rowid = client_items.item_parent_zone_rowid            UNION ALL            SELECT li.item_scope, li.item_parent_id, li.item_parent_zone_rowid            FROM client_items as li                 INNER JOIN item_parents_scopes AS p USING (item_id, zone_rowid)       )        SELECT item_scope        FROM item_parents_scopes        WHERE item_scope > 0        LIMIT 1 ), call_block(%p, item_parent_id, (SELECT al.app_library_name FROM app_libraries AS al WHERE al.rowid = app_library_rowid)))WHERE item_state IN (-1, -2) AND item_scope = 0 LIMIT %llu", &__block_literal_global_1821, v8}])
      {
        if ([v6 changes] < v8)
        {
          while ([v6 execute:{@"UPDATE client_items SET item_state = 0 WHERE item_state IN (-1, -2) LIMIT %llu", v8}])
          {
            if ([v6 changes] < v8)
            {
              while ([v6 execute:{@"UPDATE client_items SET item_state = 1 WHERE item_state = -3 LIMIT %llu", v8}])
              {
                if ([v6 changes] < v8)
                {
                  if ([v6 execute:{@"UPDATE client_items SET item_processing_stamp = NULL WHERE item_type NOT IN (0, 4, 9, 10) AND item_processing_stamp IS NOT NULL"}]
                    && [v6 execute:{@"UPDATE client_unapplied_table SET throttle_state = 1 WHERE throttle_state IN (18, 26, 29)"}]
                    && [v6 execute:@"DROP TRIGGER IF EXISTS client_pkg_items/increase_pkg_size"]
                    && [v6 execute:@"DROP TRIGGER IF EXISTS client_pkg_items/update_pkg_size"]
                    && [v6 execute:@"DROP TRIGGER IF EXISTS client_pkg_items/reduce_pkg_size"]
                    && [v6 execute:{@"CREATE TRIGGER client_pkg_upload_items/sync_idle_delete AFTER UPDATE OF item_localsyncupstate, item_state ON client_items BEGIN DELETE FROM client_pkg_upload_items WHERE (new.item_state = 1 OR new.item_localsyncupstate IN (1, 0)) AND item_rowid = new.rowid ; END"}]
                    && [v6 execute:{@"CREATE TRIGGER client_pkg_upload_items/update_pkg_size AFTER UPDATE OF size ON client_pkg_upload_items BEGIN UPDATE client_pkg_upload_sizes SET aggregate_size = aggregate_size - COALESCE(old.size, 0) + COALESCE(new.size, 0), largest_file_size = MAX(COALESCE(new.size, 0), largest_file_size) WHERE item_rowid = new.item_rowid; END"}]
                    && [v6 execute:{@"CREATE TRIGGER client_pkg_upload_items/reduce_pkg_size  BEFORE DELETE ON client_pkg_upload_items BEGIN UPDATE client_pkg_upload_sizes SET aggregate_size = aggregate_size - COALESCE(old.size, 0) WHERE item_rowid = old.item_rowid; END"}]
                    && [v6 execute:@"DROP TRIGGER IF EXISTS insert_version_sum_size"]
                    && [v6 execute:@"DROP TRIGGER IF EXISTS update_version_sum_size"]
                    && [v6 execute:@"DROP TRIGGER IF EXISTS delete_version_sum_size"]
                    && [v6 execute:@"DROP TABLE IF EXISTS client_reader_throttle"]
                    && [v6 execute:@"DROP TABLE IF EXISTS mark_children_lost_progress"]
                    && [v6 execute:@"DROP TABLE IF EXISTS client_pkg_items"]
                    && [v6 execute:@"DROP TABLE IF EXISTS client_pkg_sizes"]
                    && [v6 execute:@"DROP TABLE IF EXISTS client_document_access"]
                    && [v6 execute:@"DROP TABLE IF EXISTS aggregates"]
                    && [v6 execute:@"DELETE FROM client_uploads"]
                    && [v6 execute:@"DELETE FROM client_sync_up"]
                    && [v6 execute:@"DELETE FROM tombstones"]
                    && [v6 execute:@"ALTER TABLE client_items ADD COLUMN item_local_change_count integer"]
                    && [v6 execute:@"ALTER TABLE client_items ADD COLUMN item_old_version_identifier text"]
                    && [v6 execute:@"ALTER TABLE client_items ADD COLUMN version_local_change_count integer"]
                    && [v6 execute:@"ALTER TABLE client_items ADD COLUMN version_old_version_identifier text"]
                    && [v6 execute:@"CREATE INDEX client_items/next_propagation ON client_items(item_processing_stamp) WHERE item_processing_stamp IS NOT NULL"]
                    && [v6 execute:@"CREATE INDEX client_items/item_notifs_rank ON client_items (item_notifs_rank)"]
                    && [v6 execute:{@"CREATE INDEX client_items/items_needing_sync ON client_items(item_localsyncupstate, zone_rowid) WHERE item_localsyncupstate IN (3, 4)"}]
                    && [v6 execute:@"CREATE INDEX client_items/lost_file_id ON client_items(item_localsyncupstate) WHERE item_localsyncupstate = 7"]
                    && [v6 execute:{@"CREATE INDEX client_items/items_pending_fpfs_migration ON client_items(item_localsyncupstate) WHERE item_localsyncupstate IN (5, 6)"}]
                    && [v6 execute:{@"CREATE INDEX client_sync_up/sync_state_index ON client_sync_up (zone_rowid, throttle_state) WHERE throttle_state != 0"}])
                  {
                    v32 = [v6 execute:@"CREATE INDEX client_sync_up/throttle_id ON client_sync_up(throttle_id) WHERE throttle_state != 0"];
                    goto LABEL_106;
                  }

                  goto LABEL_105;
                }
              }

              goto LABEL_105;
            }
          }

          break;
        }
      }
    }

LABEL_105:
    v32 = 0;
LABEL_106:
    v33 = [v6 numberWithSQL:@"SELECT 1 from client_items LIMIT 1"];
    v34 = [v33 BOOLValue];

    if ((v34 & v32) == 1)
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        br_update_tables_30_000_cold_6();
      }

      v37 = [v70 clientReadWriteDatabaseFacade];
      v38 = [v69 unsignedLongLongValue];
      v39 = v37;
      v40 = currentClientStateDictionary(v39);
      v41 = objc_opt_new();
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v42 = v40;
      v43 = [v42 countByEnumeratingWithState:&v74 objects:&v78 count:16];
      if (v43)
      {
        v44 = *v75;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v75 != v44)
            {
              objc_enumerationMutation(v42);
            }

            v46 = *(*(&v74 + 1) + 8 * i);
            if ([v46 hasPrefix:@"fsevents"])
            {
              [v41 addObject:v46];
            }
          }

          v43 = [v42 countByEnumeratingWithState:&v74 objects:&v78 count:16];
        }

        while (v43);
      }

      [v42 removeObjectsForKeys:v41];
      [v42 setObject:&unk_2837B01F0 forKeyedSubscript:@"kBRCFPFSMigrationStateKey"];
      v47 = objc_opt_new();
      v48 = [v47 UUIDString];
      [v42 setObject:v48 forKeyedSubscript:@"kBRCFPFSMigrationUUIDKey"];

      v49 = [MEMORY[0x277CBEAA8] now];
      [v42 setObject:v49 forKeyedSubscript:@"kBRCFPFSMigrationStartTimeKey"];

      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v38];
      [v42 setObject:v50 forKeyedSubscript:@"kBRCFPFSMigrationInitialItemCountKey"];

      v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v66];
      [v42 setObject:v51 forKeyedSubscript:@"kBRCFPFSMigrationInitialItemsNeedMigratingCountKey"];

      [v42 setObject:&unk_2837B0208 forKeyedSubscript:@"kBRCFPFSMigrationMigratedTypesStatKey"];
      [v42 setObject:&unk_2837B0208 forKeyedSubscript:@"kBRCFPFSMigrationNonMigratedTypesStatKey"];
      [v42 setObject:&unk_2837B0208 forKeyedSubscript:@"kBRCFPFSMigrationBouncedItemCountStatKey"];
      [v42 setObject:&unk_2837B0208 forKeyedSubscript:@"kBRCFPFSMigrationBouncedMatrixStatKey"];
      [v42 setObject:&unk_2837B0208 forKeyedSubscript:@"kBRCFPFSMigrationNewItemsInDBStatKey"];
      v52 = [v39 updateClientStateDictionary:v42];
      v53 = brc_bread_crumbs();
      v54 = brc_default_log();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        br_update_tables_30_000_cold_7();
      }

      if ((v52 & 1) == 0)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v55 = [v6 lastError];
      if (v55)
      {
        v56 = [v6 lastError];
        v57 = [v56 isSqliteErrorCode:12];

        if ((v57 & 1) == 0)
        {
          v60 = brc_bread_crumbs();
          v61 = brc_default_log();
          if (os_log_type_enabled(v61, 0x90u))
          {
            br_update_tables_30_000_cold_4();
          }

          if (a4)
          {
            v62 = [v6 lastError];
            v63 = *a4;
            *a4 = v62;
          }

          goto LABEL_137;
        }
      }

      v58 = brc_bread_crumbs();
      v59 = brc_default_log();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        br_update_tables_30_000_cold_5();
      }

      if (!v32 || !dropFPFSMigrationTablesWithDB(v6))
      {
LABEL_137:
        v9 = 0;
        goto LABEL_138;
      }
    }

    if ([v6 execute:{@"INSERT INTO client_uploads  (throttle_id, zone_rowid, app_library_rowid, throttle_state, transfer_queue, transfer_size) SELECT rowid, zone_rowid, app_library_rowid, 1, '_prepare', version_size + version_thumb_size FROM client_items WHERE item_localsyncupstate == %d", 999}] && objc_msgSend(v6, "execute:", @"UPDATE client_items SET item_localsyncupstate = 3 WHERE item_localsyncupstate = %d", 999) && objc_msgSend(v6, "execute:", @"UPDATE client_items SET item_localsyncupstate = 4 WHERE item_localsyncupstate = %d", 888) && recursive_table_recreate_schema(v6))
    {
      v9 = [v6 execute:{@"CREATE TABLE IF NOT EXISTS fpfs_folders_not_migrated(item_id blob NOT NULL, zone_rowid integer NOT NULL, PRIMARY KEY (item_id, zone_rowid))"}];
LABEL_138:

      goto LABEL_139;
    }

    goto LABEL_137;
  }

  v9 = 1;
LABEL_139:

  v64 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t br_update_tables_30_001(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"ALTER TABLE client_items ADD COLUMN fp_creation_item_identifier text default null"];
  }
}

uint64_t br_update_tables_30_004(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v3 = @"ALTER TABLE server_boot_history ADD COLUMN device_id integer DEFAULT NULL";
  }

  else
  {
    v3 = @"ALTER TABLE boot_history ADD COLUMN device_id integer DEFAULT NULL";
  }

  return [a2 execute:v3];
}

uint64_t br_update_tables_30_005(void *a1, void *a2, char a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v7 = a1;
    v6 = [v5 execute:@"DROP INDEX client_items/download_job"];
    v8 = [v7 clientReadWriteDatabaseFacade];

    v9 = currentClientStateDictionary(v8);

    if (v6 && ([v9 objectForKeyedSubscript:@"kBRCFPFSMigrationStateKey"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "integerValue"), v10, v11 == 1))
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        br_update_tables_30_005_cold_2();
      }

      v6 = [v5 execute:@"CREATE INDEX client_items/trashed_items_migration ON client_items(item_localsyncupstate) WHERE item_scope = 3 AND item_localsyncupstate = 5"];
    }

    else
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        br_update_tables_30_005_cold_1();
      }
    }
  }

  return v6;
}

uint64_t br_update_tables_30_009(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"CREATE INDEX client_items/trashed_items_enumerator ON client_items (item_notifs_rank) WHERE item_scope = 3 AND item_user_visible = 1"];
  }
}

uint64_t br_update_tables_30_010(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = [v4 execute:@"DROP INDEX IF EXISTS client_sync_up/sync_state_index"];
  v6 = v5 & [v4 execute:{@"CREATE INDEX IF NOT EXISTS client_sync_up/throttle_state_index ON client_sync_up (throttle_state, zone_rowid) WHERE throttle_state != 0"}];
  v7 = [v4 execute:@"DROP INDEX IF EXISTS client_uploads/blocked_on_sync_up_state_index"];
  v8 = [v4 execute:@"CREATE INDEX client_uploads/blocked_on_sync_up_state_index ON client_uploads (throttle_state) WHERE throttle_state = 31"];

  return v6 & v7 & v8;
}

uint64_t br_update_tables_30_012(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"UPDATE client_uploads AS cu SET throttle_state = 1 WHERE cu.throttle_state = 33 AND (SELECT 1 from client_zones AS cz WHERE cz.rowid = cu.zone_rowid AND cz.zone_owner != %@)", *MEMORY[0x277CBBF28]}];
  }
}

uint64_t br_update_tables_30_013(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"DELETE FROM client_items AS ci WHERE ci.item_file_id = 0 AND ci.item_localsyncupstate IN (5, 6) AND ci.item_filename IS NULL AND ci.item_bouncedname IS NULL AND ci.item_stat_ckinfo IS NULL AND NOT EXISTS (SELECT 1 FROM server_items AS si WHERE si.item_id = ci.item_id)"}];
  }
}

uint64_t br_update_tables_30_015(uint64_t a1, void *a2, char a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 execute:{@"UPDATE client_uploads SET transfer_queue = '_prepare', transfer_record = NULL, transfer_stage = NULL, transfer_operation = NULL WHERE throttle_state = 1 AND upload_error LIKE '%%(16/3002)%%'"}];
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = [v5 changes];
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[NOTICE] Recovered %lld stuck upload jobs%@", &v11, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t br_update_tables_30_016(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"CREATE INDEX client_items/corrupt_sharing_options ON client_items(rowid) WHERE zone_rowid != item_parent_zone_rowid AND (item_sharing_options & 4) = 0"];
  }
}

uint64_t br_update_tables_30_017(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP INDEX IF EXISTS ciconia_history/counting_index"])
  {
    v8 = [v7 execute:@"DROP TABLE IF EXISTS ciconia_history"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_30_018(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:@"ALTER TABLE server_items ADD COLUMN content_boundary_key blob"];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_30_020(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!a3)
  {
    if ([v6 execute:@"ALTER TABLE app_libraries ADD COLUMN child_basehash_salt blob default null"])
    {
      v8 = @"ALTER TABLE app_libraries ADD COLUMN salting_state integer default 1";
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (![v6 execute:@"ALTER TABLE server_items ADD COLUMN child_basehash_salt blob default null"] || (objc_msgSend(v7, "execute:", @"ALTER TABLE server_items ADD COLUMN basehash_salt_validation_key blob default null") & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = @"ALTER TABLE server_items ADD COLUMN salting_state integer default 1";
LABEL_7:
  v9 = [v7 execute:v8];
LABEL_9:

  return v9;
}

uint64_t br_update_tables_31_000(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP TABLE IF EXISTS telemetry_events"] && objc_msgSend(v7, "execute:", @"DROP INDEX IF EXISTS telemetry_events/priority"))
  {
    v8 = [v7 execute:@"DROP INDEX IF EXISTS telemetry_events/priority__rowid"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_31_001(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"CREATE INDEX client_items/fp_creation_item_identifier ON client_items (fp_creation_item_identifier) WHERE fp_creation_item_identifier IS NOT NULL"];
  }
}

uint64_t br_update_tables_31_002(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = [v4 execute:@"ALTER TABLE item_errors RENAME TO temp_item_errors"];
  v6 = v5 & item_errors_recreate_schema(v4, 1);
  v7 = [v4 execute:@"INSERT OR REPLACE INTO item_errors SELECT * FROM temp_item_errors"];
  v8 = [v4 execute:@"DROP TABLE temp_item_errors"];

  return v6 & v7 & v8;
}

uint64_t br_update_tables_31_003(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"CREATE TABLE aggregated_daily_telemetry(app_telemetry_identifier integer NOT NULL, zone_mangled_id text NOT NULL, item_id text NOT NULL, advanced_data_protection_enabled text NOT NULL, error_domain text NOT NULL, error_code int NOT NULL, error_description text NOT NULL, count int NOT NULL DEFAULT 1, PRIMARY KEY (app_telemetry_identifier, zone_mangled_id, item_id, advanced_data_protection_enabled, error_domain, error_code))"}];
  }
}

uint64_t br_update_tables_31_004(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"ALTER TABLE aggregated_daily_telemetry RENAME advanced_data_protection_enabled TO enhanced_drive_privacy_enabled"];
  }
}

uint64_t br_update_tables_31_005(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = [v4 execute:{@"CREATE TABLE named_throttles_history(throttle_id text NOT NULL, sub_category text NOT NULL, last_run integer NOT NULL, os_version text NOT NULL, expiration integer NOT NULL, allow_same_build integer NOT NULL, PRIMARY KEY (throttle_id, sub_category))"}];
  v6 = v5 & [v4 execute:@"CREATE INDEX named_throttles_history/throttle_idON named_throttles_history (throttle_id)"];
  v7 = [v4 execute:@"CREATE INDEX named_throttles_history/expirationON named_throttles_history (expiration)"];

  return v6 & v7;
}

uint64_t br_update_tables_31_006(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"CREATE INDEX IF NOT EXISTS client_uploads/throttle_state ON client_uploads (throttle_state)"];
  }
}

uint64_t br_update_tables_31_102(void *a1, void *a2, int a3, void **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!a3)
  {
    v18 = [v7 clientReadWriteDatabaseFacade];
    v19 = currentClientStateDictionary(v18);

    [v19 removeObjectForKey:@"localMigrationKey"];
    v20 = [v7 clientReadWriteDatabaseFacade];
    v17 = [v20 updateClientStateDictionary:v19];

    goto LABEL_13;
  }

  v10 = [v8 fetch:@"SELECT state FROM server_state"];
  if (![v10 next])
  {
    v12 = 0;
LABEL_12:

    v17 = 1;
    goto LABEL_13;
  }

  v11 = [v10 unarchivedObjectOfClass:objc_opt_class() atIndex:0];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  [v11 abortMigrationsOfMigrationKey:@"private-zones-document-additional-resources"];
  if ([v9 execute:{@"UPDATE server_state SET state = %@", v12}])
  {
    goto LABEL_12;
  }

  if (a4)
  {
    v13 = [v9 lastError];
    v14 = *a4;
    *a4 = v13;
  }

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    br_create_tables_initial_cold_1();
  }

  v17 = 0;
LABEL_13:

  return v17;
}

uint64_t br_update_tables_31_103(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if ((a3 & 1) == 0)
  {
    [v6 execute:{@"UPDATE client_uploads SET throttle_state = 1, next_retry_stamp = 0  WHERE throttle_id IN (SELECT cu.throttle_id from client_uploads AS cu LEFT JOIN client_items AS ci                       ON cu.throttle_id = ci.rowid                        WHERE cu.throttle_state = 33                         AND call_block(%p, ci.version_upload_error))", &__block_literal_global_2101}];
    if ([v7 changes])
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        br_update_tables_31_103_cold_1();
      }
    }
  }

  return 1;
}

uint64_t br_update_tables_31_104(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"CREATE INDEX tombstones/file_object_idON tombstones (file_object_id)"];
  }
}

uint64_t br_update_tables_31_105(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP TRIGGER IF EXISTS client_pkg_upload_items/reduce_pkg_size"] && objc_msgSend(v7, "execute:", @"DROP TRIGGER IF EXISTS client_pkg_upload_items/increase_pkg_size") && objc_msgSend(v7, "execute:", @"DROP TRIGGER IF EXISTS client_pkg_upload_items/update_pkg_size") && objc_msgSend(v7, "execute:", @"ALTER TABLE client_pkg_upload_sizes DROP COLUMN aggregate_size") && objc_msgSend(v7, "execute:", @"CREATE TRIGGER client_pkg_upload_items/increase_pkg_size AFTER INSERT ON client_pkg_upload_items BEGIN INSERT OR IGNORE INTO client_pkg_upload_sizes VALUES (new.item_rowid, 0); UPDATE client_pkg_upload_sizes SET largest_file_size = MAX(COALESCE(new.size,0), largest_file_size) WHERE item_rowid = new.item_rowid; END"))
  {
    v8 = [v7 execute:{@"CREATE TRIGGER client_pkg_upload_items/update_pkg_size AFTER UPDATE OF size ON client_pkg_upload_items BEGIN UPDATE client_pkg_upload_sizes SET largest_file_size = MAX(COALESCE(new.size, 0), largest_file_size) WHERE item_rowid = new.item_rowid; END"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_31_106(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP TRIGGER IF EXISTS item_errors/disk-insertion"] && objc_msgSend(v7, "execute:", @"DROP TRIGGER IF EXISTS item_errors/disk-deletion") && objc_msgSend(v7, "execute:", @"DROP TRIGGER IF EXISTS item_errors/disk-update-away"))
  {
    v8 = [v7 execute:@"DROP TRIGGER IF EXISTS item_errors/disk-update-into"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_32_000(void *a1, void *a2, char a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if ((a3 & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v5 _privateClientZonesEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if (([v12 state] & 0x400) != 0)
          {
            v13 = [v12 zoneName];
            v14 = [v5 _appLibraryByName:v13 db:v6];

            if (!v14)
            {
              br_update_tables_32_000_cold_1(&v22, &v23);
            }

            [v14 setStateBits:2];
            [v12 clearStateBits:1024];
            v15 = [v5 clientReadWriteDatabaseFacade];
            [v15 saveAppLibrary:v14];

            [v5 saveClientZoneToDB:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v9);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t br_update_tables_32_001(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"UPDATE client_unapplied_table SET throttle_state = 1 WHERE throttle_state = 23"];
  }
}

uint64_t br_update_tables_32_002(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    if ([v4 execute:@"DROP TRIGGER IF EXISTS client_items/update_size"] && objc_msgSend(v5, "execute:", @"DROP TRIGGER IF EXISTS client_items/update_app_library") && objc_msgSend(v5, "execute:", @"DROP TRIGGER IF EXISTS client_items/insert_item") && objc_msgSend(v5, "execute:", @"DROP TRIGGER IF EXISTS client_items/delete_item") && objc_msgSend(v5, "execute:", @"ALTER TABLE app_libraries DROP COLUMN auto_document_count") && objc_msgSend(v5, "execute:", @"ALTER TABLE app_libraries DROP COLUMN auto_aggregate_size"))
    {
      v7 = [v5 execute:@"ALTER TABLE app_libraries DROP COLUMN auto_client_item_count"];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v5 execute:@"CREATE TRIGGER IF NOT EXISTS client_items/update_app_library AFTER UPDATE OF app_library_rowid ON client_items WHEN new.app_library_rowid <> old.app_library_rowid BEGIN  UPDATE app_libraries SET auto_document_with_local_changes_count = auto_document_with_local_changes_count - 1 WHERE rowid = old.app_library_rowid AND old.item_type = 1 AND old.item_localsyncupstate >= 2;  UPDATE app_libraries SET auto_document_with_local_changes_count = auto_document_with_local_changes_count + 1 WHERE rowid = new.app_library_rowid AND new.item_type = 1 AND new.item_localsyncupstate >= 2; END"] & v7;
    v9 = [v5 execute:@"CREATE TRIGGER client_items/insert_item AFTER INSERT ON client_items BEGIN  UPDATE app_libraries SET auto_document_with_local_changes_count = auto_document_with_local_changes_count + 1 WHERE rowid = new.app_library_rowid AND new.item_type = 1 AND new.item_localsyncupstate >= 2; END"];
    v6 = v8 & v9 & [v5 execute:@"CREATE TRIGGER client_items/delete_item BEFORE delete ON client_items BEGIN  UPDATE app_libraries SET auto_document_with_local_changes_count = auto_document_with_local_changes_count - 1 WHERE rowid = old.app_library_rowid AND old.item_type = 1 AND old.item_localsyncupstate >= 2; END"];
  }

  return v6;
}

uint64_t br_update_tables_32_003(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:{@"CREATE INDEX server_items/partially_salted_folders ON server_items (zone_rowid, item_id) WHERE item_type IN (0, 9, 10) AND salting_state = 2"}];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_32_004(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP INDEX IF EXISTS tombstones/notif_rank"] && objc_msgSend(v7, "execute:", @"ALTER TABLE tombstones ADD COLUMN expiration integer"))
  {
    v8 = [v7 execute:{@"CREATE INDEX tombstones/expiration ON tombstones (notif_rank, expiration)"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_32_005(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = [v4 execute:@"ALTER TABLE aggregated_daily_telemetry RENAME TO temp_aggregated_daily_telemetry"];
  v6 = v5 & [v4 execute:{@"CREATE TABLE aggregated_daily_telemetry( app_telemetry_identifier integer NOT NULL, zone_mangled_id text NOT NULL, item_id text NOT NULL, enhanced_drive_privacy_enabled text NOT NULL, error_domain text NOT NULL, error_code int NOT NULL, error_description text NOT NULL, underlying_error_domain text NOT NULL DEFAULT '', underlying_error_code int NOT NULL DEFAULT 0, count int NOT NULL DEFAULT 1, PRIMARY KEY (app_telemetry_identifier, zone_mangled_id, item_id, enhanced_drive_privacy_enabled, error_domain, error_code, underlying_error_domain, underlying_error_code))"}];
  v7 = [v4 execute:{@"INSERT OR REPLACE INTO aggregated_daily_telemetry SELECT app_telemetry_identifier, zone_mangled_id, item_id, enhanced_drive_privacy_enabled, error_domain, error_code, error_description, '', 0, count FROM temp_aggregated_daily_telemetry"}];
  v8 = v6 & v7 & [v4 execute:@"DROP TABLE temp_aggregated_daily_telemetry"];
  v9 = [v4 execute:@"ALTER TABLE item_errors RENAME TO temp_item_errors"];
  v10 = v9 & item_errors_recreate_schema(v4, 2);
  v11 = v8 & v10 & [v4 execute:{@"INSERT OR REPLACE INTO item_errors SELECT item_rowid, error_domain, error_code, error_message, error_timestamp, '', 0, service FROM temp_item_errors"}];
  v12 = [v4 execute:@"DROP TABLE temp_item_errors"];

  return v11 & v12;
}

uint64_t br_update_tables_32_100(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"UPDATE client_uploads SET throttle_state = 1 WHERE throttle_state = 30"];
  }
}

uint64_t br_update_tables_32_101(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:@"CREATE INDEX client_visible_items_syncing ON client_items (item_localsyncupstate) WHERE item_localsyncupstate != 0 AND item_scope = 2"];
  }
}

uint64_t br_update_tables_32_102(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:{@"CREATE TABLE server_share_items_participants( record_id blob non null, user_name blob non null, requester integer not null, PRIMARY KEY (record_id, user_name))"}];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_32_103(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:@"CREATE INDEX server_share_items_participants/requesters ON server_share_items_participants (requester) WHERE requester == 1"];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_32_104(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"UPDATE client_sync_up SET retry_count = 0, next_retry_stamp = 0  WHERE throttle_id IN(      SELECT su.throttle_id FROM client_sync_up su JOIN client_items ci ON su.throttle_id = ci.rowid              WHERE ci.item_type IN (6, 7))"}];
  }
}

uint64_t br_update_tables_33_000(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:@"CREATE INDEX server_share_items_participants/record_id ON server_share_items_participants (record_id)"];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_33_001(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:@"DROP INDEX IF EXISTS client_uploads/scheduling_by_priority"] && objc_msgSend(v7, "execute:", @"ALTER TABLE client_uploads DROP COLUMN upload_request_stamp"))
  {
    v8 = [v7 execute:{@"CREATE INDEX client_uploads/scheduling_by_priority ON client_uploads (throttle_state, transfer_queue, upload_priority DESC, transfer_size ASC)  WHERE throttle_state = 1 AND transfer_operation IS NULL"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_update_tables_33_002(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    v6 = [v4 execute:@"DROP INDEX IF EXISTS server_share_items_participants/record_id"];
    v7 = [v5 execute:@"DROP INDEX IF EXISTS server_share_items_participants/requesters"];
    v8 = 0;
    if (v6 && v7)
    {
      if ([v5 execute:@"DROP TABLE server_share_items_participants"] && objc_msgSend(v5, "execute:", @"CREATE TABLE server_share_items_participants( item_id blob non null, zone_rowid integer non null, user_key integer non null, participant_flags integer not null,  PRIMARY KEY (item_id, zone_rowid, user_key))"))
      {
        v8 = [v5 execute:@"CREATE INDEX server_share_items_participants/requesters ON server_share_items_participants ((participant_flags & 1)) "];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t br_update_tables_33_003(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 execute:{@"CREATE INDEX server_share_items_participants/item_id ON server_share_items_participants (item_id, zone_rowid)"}];
  }

  else
  {
    return 1;
  }
}

uint64_t br_update_tables_34_000(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    if ([v4 execute:@"DROP INDEX IF EXISTS server_items/share_root"])
    {
      v6 = [v5 execute:{@"CREATE INDEX server_items/share_root ON server_items(item_rank, zone_rowid) WHERE (item_sharing_options & 4) != 0"}];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t br_internal_fixup_10_000(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = [v4 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT 1 FROM client_items WHERE item_state in (0, -1)  AND NOT EXISTS (SELECT 1 FROM app_libraries WHERE client_items.app_library_rowid = app_libraries.rowid)"}];

  v3 = [v5 BOOLValue] ^ 1;
  return v3;
}

uint64_t br_internal_fixup_20_005(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return recursive_table_recreate_schema(a2);
  }
}

uint64_t br_fixup_tables_4_013(void *a1, void *a2, char a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v5 _privateClientZonesEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      LOBYTE(v7) = 1;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (v7)
          {
            v7 = upgradeItemScopesForClientZone(*(*(&v24 + 1) + 8 * i), v6);
          }

          else
          {
            v7 = 0;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    else
    {
      v7 = 1;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [v5 _sharedClientZonesEnumerator];
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if (v7)
          {
            v7 = upgradeItemScopesForClientZone(*(*(&v20 + 1) + 8 * j), v6);
          }

          else
          {
            v7 = 0;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t br_fixup_tables_4_019(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!a3)
  {
    if ([v6 execute:{@"UPDATE client_items SET item_filename = call_block(%@, item_filename) WHERE item_filename != call_block(%@, item_filename)", &__block_literal_global_2247, &__block_literal_global_2247}] && objc_msgSend(v7, "execute:", @"UPDATE client_items SET version_name = call_block(%@, version_name) WHERE version_name IS NOT NULL AND version_name != call_block(%@, version_name)", &__block_literal_global_2247, &__block_literal_global_2247) && objc_msgSend(v7, "execute:", @"UPDATE client_items SET item_localname = call_block(%@, item_localname) WHERE item_localname IS NOT NULL AND item_localname != call_block(%@, item_localname)", &__block_literal_global_2247, &__block_literal_global_2247))
    {
      v8 = @"UPDATE client_items SET item_bouncedname = call_block(%@, item_bouncedname) WHERE item_bouncedname IS NOT NULL AND item_bouncedname != call_block(%@, item_bouncedname)";
      goto LABEL_9;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (![v6 execute:{@"UPDATE server_items SET item_filename = call_block(%@, item_filename) WHERE item_filename != call_block(%@, item_filename)", &__block_literal_global_2247, &__block_literal_global_2247}] || (objc_msgSend(v7, "execute:", @"UPDATE server_items SET item_origname = call_block(%@, item_origname) WHERE item_origname IS NOT NULL AND item_origname != call_block(%@, item_origname)", &__block_literal_global_2247, &__block_literal_global_2247) & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = @"UPDATE server_items SET version_name = call_block(%@, version_name) WHERE version_name IS NOT NULL AND version_name != call_block(%@, version_name)";
LABEL_9:
  v9 = [v7 execute:{v8, &__block_literal_global_2247, &__block_literal_global_2247}];
LABEL_11:

  return v9;
}

uint64_t br_fixup_tables_4_020(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"UPDATE client_document_access     SET evictable = call_block(%@, access_time, (SELECT version_mtime FROM client_items AS ci WHERE ci.rowid = item_rowid))  WHERE evictable > 0", &__block_literal_global_2273}];
  }
}

uint64_t br_fixup_tables_7_001(void *a1, void *a2, int a3, void **a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a2;
    v7 = a1;
    v8 = +[BRCMigrationQueryOperation documentSharesMigrationKey];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = _br_setupMigrationQueryOnServerTruth(v7, v6, v9, a4);
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t br_fixup_tables_7_002(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = 1;
  }

  else if ([v6 execute:{@"UPDATE client_uploads SET throttle_state = 1 WHERE throttle_id in (SELECT throttle_id FROM client_items, client_uploads WHERE client_items.rowid = client_uploads.throttle_id AND item_localsyncupstate = 3)"}])
  {
    v8 = [v7 execute:{@"INSERT INTO client_uploads (throttle_id, zone_rowid, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp, item_id, transfer_queue, transfer_size, transfer_record, transfer_stage, transfer_operation, upload_error, upload_priority, upload_request_stamp, app_library_rowid) SELECT client_items.rowid, zone_rowid, 1, 0, 0, 0, 0, item_id, _prepare, version_size + version_thumb_size, NULL, NULL, NULL, NULL, -1, 0, app_library_rowid FROM client_items WHERE item_type IN (1, 6) AND item_localsyncupstate = 3 AND rowid NOT IN (SELECT throttle_id from client_uploads)"}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t br_fixup_tables_15_004(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return [a2 execute:{@"INSERT OR REPLACE INTO client_uploads  (throttle_id, zone_rowid, app_library_rowid, transfer_size, throttle_state, transfer_queue) SELECT rowid, zone_rowid, app_library_rowid, version_size + version_thumb_size, 1, %s FROM client_items WHERE item_localsyncupstate == 3 AND rowid NOT IN (SELECT throttle_id FROM client_uploads WHERE throttle_state != 0)", "_prepare"}];
  }
}

uint64_t br_unmigrated_items_fixup(void *a1, void *a2, char a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v7 = [a2 numberWithSQL:{@"SELECT 1 FROM client_items WHERE item_localsyncupstate IN (5, 6) LIMIT 1"}];
    if ([v7 BOOLValue])
    {
      v8 = [v5 clientReadWriteDatabaseFacade];
      v9 = [v8 clientStateDictionary];
      v10 = [v9 mutableCopy];

      v11 = [v10 objectForKeyedSubscript:@"kBRCFPFSMigrationStateKey"];
      v12 = [v11 intValue];
      if (v12 != 3 && v12)
      {
        v6 = 1;
      }

      else
      {
        [v10 setObject:&unk_2837B0220 forKeyedSubscript:@"kBRCFPFSMigrationStateKey"];
        v13 = [v5 clientReadWriteDatabaseFacade];
        v6 = [v13 updateClientStateDictionary:v10];

        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412546;
          v19 = v10;
          v20 = 2112;
          v21 = v14;
          _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Updated client state to %@%@", &v18, 0x16u);
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t br_resolve_fp_cannot_synchronize_error()
{
  v0 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  if (v0)
  {
    v1 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-2005 userInfo:MEMORY[0x277CBEC10]];
    [v0 signalErrorResolved:v1 completionHandler:&__block_literal_global_2292];
  }

  return 1;
}

uint64_t br_optimize_storage_settings_fixup(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    [BRCImportUtil forceIngestionForItemID:*MEMORY[0x277CC6348] completionHandler:&__block_literal_global_2295];
  }

  return 1;
}

uint64_t br_reindex_file_provider_items_fixup(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v4 = a2;
  v5 = objc_opt_new();
  v6 = [v5 UUIDString];
  v7 = [v4 execute:{@"UPDATE backup_detector SET uuid = %@", v6}];

  return v7;
}

uint64_t br_abort_existing_share_migration(uint64_t a1, void *a2, int a3, void **a4)
{
  v6 = a2;
  v7 = v6;
  if (!a3)
  {
    goto LABEL_12;
  }

  v8 = [v6 fetch:@"SELECT state FROM server_state"];
  if (![v8 next])
  {
    v9 = 0;
LABEL_11:

LABEL_12:
    v17 = 1;
    goto LABEL_13;
  }

  v9 = [v8 unarchivedObjectOfClass:objc_opt_class() atIndex:0];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = +[BRCMigrationQueryOperation folderSharesMigrationKey];
  [v9 abortMigrationsOfMigrationKey:v10];

  v11 = +[BRCMigrationQueryOperation documentSharesMigrationKey];
  [v9 abortMigrationsOfMigrationKey:v11];

  v12 = +[BRCMigrationQueryOperation refetchExistingSharesMigrationKey];
  [v9 abortMigrationsOfMigrationKey:v12];

  if ([v7 execute:{@"UPDATE server_state SET state = %@", v9}])
  {
    goto LABEL_11;
  }

  if (a4)
  {
    v13 = [v7 lastError];
    v14 = *a4;
    *a4 = v13;
  }

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    br_create_tables_initial_cold_1();
  }

  v17 = 0;
LABEL_13:

  return v17;
}

uint64_t br_db_fixup_0(uint64_t a1, void *a2, char a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a3)
  {
    v5 = 1;
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] Recovering symbolic links%@", &v13, 0xCu);
    }

    v5 = [v4 execute:@"UPDATE client_items SET item_notifs_rank = bump_notifs_rank_and_trigger_notifs(rowid) WHERE item_type = 5"];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 changes];
      v13 = 134218242;
      v14 = v10;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] Recovered %lld symbolic links%@", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t br_db_fixup_1(uint64_t a1, void *a2, char a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a3)
  {
    v5 = 1;
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] Recovering packages%@", &v13, 0xCu);
    }

    v5 = [v4 execute:{@"UPDATE client_items SET item_notifs_rank = bump_notifs_rank_and_trigger_notifs(rowid) WHERE item_type IN (1, 2, 8) AND HEX(SUBSTR(version_content_signature, 1, 1)) = '1B'"}];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 changes];
      v13 = 134218242;
      v14 = v10;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] Recovered %lld packages%@", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t br_db_fixup_2(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = v4;
  if ((a3 & 1) == 0)
  {
    v6 = v4;
    v7 = [BRCUserDefaults defaultsForMangledID:0];
    [v7 dbFixupContentPolicyRecoverAfterTimeInterval];
    v9 = dispatch_time(0, (v8 * 1000000000.0));
    v10 = [v6 dbFixupQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __br_fixup_contentPolicy_block_invoke;
    block[3] = &unk_2784FF450;
    v14 = v6;
    v11 = v6;
    dispatch_after(v9, v10, block);
  }

  return 1;
}

uint64_t br_db_fixup_4(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v8 = [v6 execute:{@"UPDATE client_items as ci SET item_processing_stamp = 1, item_state = 1 WHERE ci.item_state = -3 AND ci.item_type IN (0, 9, 10) AND EXISTS (SELECT 1 FROM client_items AS oi WHERE oi.version_old_zone_item_id = ci.item_id AND oi.version_old_zone_rowid = ci.zone_rowid AND oi.item_state = 1 LIMIT 1)"}];
  v9 = [v7 changes];
  if (v8 && v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      br_db_fixup_4_cold_1();
    }

    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

uint64_t br_db_fixup_6(uint64_t a1, void *a2, char a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    if ([v4 execute:@"UPDATE client_uploads SET upload_error = ci.version_upload_error FROM client_uploads AS cu LEFT JOIN client_items as ci ON cu.throttle_id = ci.rowid WHERE cu.upload_error NOT NULL AND ci.version_upload_error NOT NULL AND cu.throttle_state = 33"])
    {
      v6 = [v5 execute:{@"UPDATE client_uploads SET transfer_queue = '_prepare', transfer_record = NULL, transfer_stage = NULL, transfer_operation = NULL, throttle_state = 1, upload_error = NULL, retry_count = 0 WHERE throttle_state = 33 AND call_block(%p, upload_error)", &__block_literal_global_2313}];
    }

    else
    {
      v6 = 0;
    }

    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v15 = [v5 changes];
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[NOTICE] Recovered %lld stuck upload jobs on CKErrorServerRejectedRequest from client_uploads%@", buf, 0x16u);
    }

    if (v6)
    {
      v6 = [v5 execute:{@"UPDATE client_items SET version_upload_error = NULL, item_notifs_rank = bump_notifs_rank_and_trigger_notifs(rowid) WHERE version_upload_error NOT NULL AND call_block(%p, version_upload_error)", &__block_literal_global_2313}];
    }

    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 changes];
      *buf = 134218242;
      v15 = v11;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] Recovered %lld stuck upload jobs on CKErrorServerRejectedRequest from client_items%@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t br_db_fixup_9(void *a1, void *a2, char a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [a1 _appLibrariesEnumerator:v5];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      v6 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (([v12 state] & 0x40000) == 0)
          {
            v13 = [v12 isDocumentScopePublic];
            if ((v13 & v6) == 1)
            {
              v14 = [v12 documentsFolderItemID];
              v6 = [v5 execute:{@"UPDATE client_items SET item_notifs_rank = bump_notifs_rank() WHERE item_id = %@", v14}];
            }

            else
            {
              v6 &= v13 ^ 1;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

void __br_update_tables_1_000_block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *a4;
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = _unarchivedSqliteValue(v5, v8);

  if ([v9 count])
  {
    v12 = @"l";
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    _brc_sqlite3_result_archived_value(a2, v10);
  }

  else
  {
    sqlite3_result_null(a2);
  }

  v11 = *MEMORY[0x277D85DE8];
}

id _unarchivedSqliteValue(sqlite3_value *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = sqlite3_value_blob(a1);
  v7 = [v5 initWithBytesNoCopy:v6 length:sqlite3_value_bytes(a1) freeWhenDone:0];
  v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v7 error:0];
  v9 = [v8 decodeObjectOfClasses:v4 forKey:*MEMORY[0x277CCA308]];

  return v9;
}

void __br_update_tables_2_000_block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCACA8] newFromSqliteValue:*a4];
  v10 = [v6 objectForKeyedSubscript:v7];

  if (v10)
  {
    v8 = [v10 unsignedLongLongValue];
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);
    v8 = *(v9 + 24);
    *(v9 + 24) = v8 + 1;
  }

  sqlite3_result_int64(a2, v8);
}

void __br_update_tables_3_002_block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  if (sqlite3_value_type(*a4) == 4)
  {
    v7 = _unarchivedSqliteValue(*a4, *(a1 + 32));
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sqlite3_result_int(a2, [v7 options]);

      return;
    }
  }

  sqlite3_result_int(a2, 0);
}

void __br_update_tables_7_000_block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = sqlite3_value_blob(*a4);
  v8 = sqlite3_value_bytes(*a4);
  v9 = v8;
  if (*(*(*(a1 + 32) + 8) + 24) != 1)
  {
    if (v8 != 5)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, 0x90u))
      {
        __br_update_tables_7_000_block_invoke_cold_1();
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
      v13 = a2;
      v12 = v7;
      v14 = v9;
      goto LABEL_19;
    }

    v11 = sqlite3_value_blob(a4[1]);
    if (sqlite3_value_bytes(a4[1]) == 21)
    {
      if (*v7 == 1)
      {
        v24[0] = 5;
        *&v24[1] = *(v7 + 1);
        *&v24[5] = *(v11 + 5);
        v12 = v24;
        v13 = a2;
        v14 = 21;
LABEL_19:
        sqlite3_result_blob(v13, v12, v14, 0xFFFFFFFFFFFFFFFFLL);
        v21 = *MEMORY[0x277D85DE8];
        return;
      }

      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        v22 = *v7;
        v23 = *v11;
        *v24 = 67109634;
        *&v24[4] = v22;
        *&v24[8] = 1024;
        *&v24[10] = v23;
        *&v24[14] = 2112;
        *&v24[16] = v19;
        _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] type mismatch with parent %d or item %d%@", v24, 0x18u);
      }
    }

    else
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        __br_update_tables_7_000_block_invoke_cold_2();
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    v13 = a2;
    v12 = v7;
    v14 = 5;
    goto LABEL_19;
  }

  v10 = *MEMORY[0x277D85DE8];

  sqlite3_result_blob(a2, v7, v8, 0xFFFFFFFFFFFFFFFFLL);
}

void __br_update_tables_14_000_block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_value_text(*a4)];
  if (_CFURLCStringIsPromiseName())
  {
    v6 = [v5 substringWithRange:{1, objc_msgSend(v5, "length") - 8}];

    v5 = v6;
  }

  v9 = 0;
  v7 = [v5 br_stringByDeletingPathBounceNo:&v9];
  v8 = v9;
  if (v9 <= 1)
  {
    if ((__br_update_tables_14_000_block_invoke_cold_1(&v9, a2, &v10) & 1) == 0)
    {
      goto LABEL_5;
    }

    v8 = v10;
  }

  sqlite3_result_int64(a2, v8);
LABEL_5:
}

void __br_update_tables_14_000_block_invoke_1171(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = sqlite3_value_text(*a4);
  v7 = sqlite3_value_text(a4[1]);
  if (_CFURLCStringIsPromiseName())
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v11 = [v9 substringWithRange:{1, objc_msgSend(v9, "length") - 8}];

    v20 = 0;
    v21 = 0;
    v19 = 0;
    v12 = [v10 br_stringByDeletingPathBounceNo:&v21 andPathExtension:&v19];
    v13 = v19;
    v14 = [v11 br_stringByDeletingPathBounceNo:&v20];
    if (v21 == v20 || v20 <= 1 && __br_update_tables_14_000_block_invoke_1171_cold_1(&v20, &v22))
    {

      objc_autoreleasePoolPop(v8);
      sqlite3_result_null(a2);
    }

    else
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v17 = [v16 stringValue];
      v18 = [v15 br_representableHFSFileNameWithBase:v12 suffix:v17 extension:v13 makeDotFile:0];

      sqlite3_result_text(a2, [v18 fileSystemRepresentation], -1, 0xFFFFFFFFFFFFFFFFLL);
      objc_autoreleasePoolPop(v8);
    }
  }

  else
  {

    sqlite3_result_text(a2, v7, -1, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t _br_setupMigrationQueryOnServerTruth(void *a1, void *a2, void *a3, void **a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v37 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = [v6 _privateServerZonesEnumerator:v7];
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        v15 = [v14 changeState];
        v16 = [v15 changeToken];

        if (v16)
        {
          v17 = [v14 mangledID];
          [v8 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v18 = [v7 fetch:@"SELECT state FROM server_state"];
    if ([v18 next])
    {
      v19 = [v18 unarchivedObjectOfClass:objc_opt_class() atIndex:0];
      if (v19)
      {
        v35 = v6;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v20 = v37;
        v21 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v39;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v39 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v38 + 1) + 8 * j);
              v26 = [v8 allObjects];
              [v19 initiateMigrationQueryForMangledIDs:v26 key:v25];
            }

            v22 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v22);
        }

        v27 = [v7 execute:{@"UPDATE server_state SET state = %@", v19}];
        v6 = v35;
        [v35 updateServerState:v19];
        if ((v27 & 1) == 0)
        {
          if (a4)
          {
            v28 = [v7 lastError];
            v29 = *a4;
            *a4 = v28;
          }

          v30 = brc_bread_crumbs();
          v31 = brc_default_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            br_create_tables_initial_cold_1();
          }

          v32 = 0;
          goto LABEL_29;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v32 = 1;
LABEL_29:

    goto LABEL_30;
  }

  v32 = 1;
LABEL_30:

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t item_errors_recreate_schema(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 execute:@"DROP TABLE IF EXISTS item_errors"];
  if (v4)
  {
    v4 = [v3 execute:@"DROP INDEX IF EXISTS item_errors/error_group"];
    if (v4)
    {
      v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/deletion"];
      if (v4)
      {
        v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/upload-deletion"];
        if (v4)
        {
          v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/upload-idle"];
          if (v4)
          {
            v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/download-deletion"];
            if (v4)
            {
              v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/download-idle"];
              if (v4)
              {
                v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/quota-insertion"];
                if (v4)
                {
                  v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/quota-deletion"];
                  if (v4)
                  {
                    v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/quota-update-away"];
                    if (v4)
                    {
                      v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/quota-update-into"];
                      if (v4)
                      {
                        v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/disk-insertion"];
                        if (v4)
                        {
                          v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/disk-deletion"];
                          if (v4)
                          {
                            v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/disk-update-away"];
                            if (v4)
                            {
                              v4 = [v3 execute:@"DROP TRIGGER IF EXISTS item_errors/disk-update-into"];
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
        }
      }
    }
  }

  if (a2 == 1)
  {
    if (!v4)
    {
      goto LABEL_41;
    }

    v5 = @"CREATE TABLE item_errors(item_rowid integer NOT NULL, error_domain TEXT NOT NULL default unknown, error_code integer NOT NULL default 0, error_message TEXT, error_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, service integer NOT NULL, PRIMARY KEY (item_rowid, error_domain, error_code, service))";
  }

  else
  {
    if (a2)
    {
      if (!v4)
      {
        goto LABEL_35;
      }

      v4 = [v3 execute:{@"CREATE TABLE item_errors(item_rowid integer NOT NULL, error_domain TEXT NOT NULL default unknown, error_code integer NOT NULL default 0, error_message TEXT, error_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, underlying_error_domain TEXT NOT NULL default '', underlying_error_code integer NOT NULL default 0, service integer NOT NULL, PRIMARY KEY (item_rowid, error_domain, error_code, underlying_error_domain, underlying_error_code, service))"}];
      if (!v4)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }

    if (!v4)
    {
      goto LABEL_41;
    }

    v5 = @"CREATE TABLE item_errors(item_rowid integer NOT NULL, error_domain TEXT NOT NULL default unknown, error_code integer NOT NULL default 0, error_message TEXT, error_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, service integer NOT NULL, PRIMARY KEY (item_rowid, error_domain, error_code, error_message, service))";
  }

  if (([v3 execute:v5] & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_26:
  v4 = [v3 execute:@"CREATE TRIGGER item_errors/deletion AFTER DELETE ON client_items BEGIN DELETE FROM item_errors WHERE item_rowid = old.rowid; END"];
  if (v4)
  {
    v4 = [v3 execute:@"CREATE TRIGGER item_errors/upload-deletion AFTER DELETE ON client_uploads BEGIN DELETE FROM item_errors WHERE item_rowid = old.throttle_id AND service = 1; END"];
    if (v4)
    {
      v4 = [v3 execute:@"CREATE TRIGGER item_errors/upload-idle AFTER UPDATE OF throttle_state ON client_uploads WHEN (new.throttle_state = 0  AND old.throttle_state != 0) BEGIN DELETE FROM item_errors WHERE item_rowid = old.throttle_id AND service = 1; END"];
      if (v4)
      {
        v4 = [v3 execute:@"CREATE TRIGGER item_errors/download-deletion AFTER DELETE ON client_downloads BEGIN DELETE FROM item_errors WHERE item_rowid = old.throttle_id AND service = 2; END"];
        if (v4)
        {
          v4 = [v3 execute:@"CREATE TRIGGER item_errors/download-idle AFTER UPDATE OF throttle_state ON client_downloads WHEN (new.throttle_state = 0  AND old.throttle_state != 0) BEGIN DELETE FROM item_errors WHERE item_rowid = old.throttle_id AND service = 2; END"];
          if (v4)
          {
            v4 = [v3 execute:{@"CREATE TRIGGER item_errors/quota-insertion AFTER INSERT ON client_uploads WHEN new.throttle_state = 32 BEGIN INSERT OR REPLACE INTO item_errors (item_rowid, error_domain, error_code, service)       VALUES (new.throttle_id, CKErrorDomain, 25, 1); END"}];
            if (v4)
            {
              v4 = [v3 execute:@"CREATE TRIGGER item_errors/quota-deletion AFTER DELETE ON client_uploads WHEN old.throttle_state = 32 BEGIN DELETE FROM item_errors WHERE item_rowid = old.throttle_id    AND error_domain = CKErrorDomain    AND error_code = 25    AND service = 1; END"];
              if (v4)
              {
                v4 = [v3 execute:@"CREATE TRIGGER item_errors/quota-update-away AFTER UPDATE OF throttle_state ON client_uploads WHEN (old.throttle_state = 32    AND new.throttle_state != 32) BEGIN DELETE FROM item_errors  WHERE item_rowid = old.throttle_id    AND error_domain = CKErrorDomain    AND error_code = 25    AND service = 1; END"];
                if (v4)
                {
                  v4 = [v3 execute:{@"CREATE TRIGGER item_errors/quota-update-into AFTER UPDATE OF throttle_state ON client_uploads WHEN (old.throttle_state != 32    AND new.throttle_state = 32) BEGIN INSERT OR REPLACE INTO item_errors (item_rowid, error_domain, error_code, service)       VALUES (new.throttle_id, CKErrorDomain, 25, 1); END"}];
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_35:
  if (a2 > 1)
  {
    if (v4)
    {
      goto LABEL_50;
    }

LABEL_41:
    v6 = 0;
    goto LABEL_42;
  }

  if (!v4 || ![v3 execute:{@"CREATE TRIGGER item_errors/disk-insertion AFTER INSERT ON client_downloads WHEN new.throttle_state = 43 BEGIN INSERT OR REPLACE INTO item_errors (item_rowid, error_domain, error_code, service)       VALUES (new.throttle_id, BRCloudDocsErrorDomain, 34, 2); END"}] || !objc_msgSend(v3, "execute:", @"CREATE TRIGGER item_errors/disk-deletion AFTER DELETE ON client_downloads WHEN old.throttle_state = 43 BEGIN DELETE FROM item_errors WHERE item_rowid = old.throttle_id    AND error_domain = BRCloudDocsErrorDomain    AND error_code = 34    AND service = 2; END") || !objc_msgSend(v3, "execute:", @"CREATE TRIGGER item_errors/disk-update-away AFTER UPDATE OF throttle_state ON client_downloads WHEN (old.throttle_state = 43  AND new.throttle_state != 43) BEGIN DELETE FROM item_errors  WHERE item_rowid = old.throttle_id    AND error_domain = BRCloudDocsErrorDomain    AND error_code = 34    AND service = 2; END") || (objc_msgSend(v3, "execute:", @"CREATE TRIGGER item_errors/disk-update-into AFTER UPDATE OF throttle_state ON client_downloads WHEN (old.throttle_state != 43  AND new.throttle_state = 43) BEGIN INSERT OR REPLACE INTO item_errors (item_rowid, error_domain, error_code, service)       VALUES (new.throttle_id, BRCloudDocsErrorDomain, 34, 2); END") & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_50:
  v6 = [v3 execute:{@"INSERT INTO item_errors (item_rowid, error_domain, error_code, service) SELECT throttle_id, CKErrorDomain, 25, 1          FROM client_uploads WHERE throttle_state = 32"}];
LABEL_42:
  v7 = [BRCUserDefaults defaultsForMangledID:0];
  v8 = [v3 fetch:{@"SELECT throttle_id, upload_error FROM client_uploads WHERE throttle_state != 32   AND throttle_state != 0   AND (retry_count > %llu OR throttle_state = 33)", objc_msgSend(v7, "uploadRetryCountForFailure")}];
  if ([v8 next])
  {
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v8 unsignedLongLongAtIndex:0];
      v11 = [v8 objectOfClass:objc_opt_class() atIndex:1];
      v12 = [v11 domain];
      [v3 execute:{@"INSERT INTO item_errors (item_rowid, error_domain, error_code, service) VALUES (%llu, %@, %lu, 1)", v10, v12, objc_msgSend(v11, "code")}];

      objc_autoreleasePoolPop(v9);
    }

    while (([v8 next] & 1) != 0);
  }

  if (v6)
  {
    v6 = [v3 execute:{@"INSERT INTO item_errors (item_rowid, error_domain, error_code, service) SELECT throttle_id, BRCloudDocsErrorDomain, 34, 2          FROM client_downloads WHERE throttle_state = 43"}];
  }

  v13 = [v3 fetch:{@"SELECT throttle_id, download_error FROM client_downloads WHERE throttle_state != 43   AND throttle_state != 0   AND (retry_count > %llu OR throttle_state = 41)", objc_msgSend(v7, "downloadRetryCountForFailure")}];

  if ([v13 next])
  {
    do
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [v13 unsignedLongLongAtIndex:0];
      v16 = [v13 objectOfClass:objc_opt_class() atIndex:1];
      v17 = [v16 domain];
      [v3 execute:{@"INSERT INTO item_errors (item_rowid, error_domain, error_code, service) VALUES (%llu, %@, %lu, 2)", v15, v17, objc_msgSend(v16, "code")}];

      objc_autoreleasePoolPop(v14);
    }

    while (([v13 next] & 1) != 0);
  }

  return v6;
}

id __br_update_tables_16_018_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newAppLibraryFromPQLResultSet:a2 version:2];

  return v2;
}

uint64_t recursive_table_recreate_schema(void *a1)
{
  v1 = a1;
  v2 = [v1 execute:@"DROP TABLE IF EXISTS item_recursive_properties"];
  v3 = v2 & [v1 execute:@"DROP INDEX IF EXISTS item_recursive_properties/item_id"];
  v4 = [v1 execute:@"DROP INDEX IF EXISTS item_recursive_properties/item_parent_id"];
  v5 = v3 & v4 & [v1 execute:@"DROP TRIGGER IF EXISTS item_recursive_properties/insertion"];
  v6 = [v1 execute:@"DROP TRIGGER IF EXISTS item_recursive_properties/deletion"];
  v7 = v6 & [v1 execute:@"DROP TRIGGER IF EXISTSitem_recursive_properties/reparent"];
  v8 = v5 & v7 & [v1 execute:@"DROP TRIGGER IF EXISTS item_recursive_properties/recursive_update"];
  v9 = [v1 execute:@"DROP TRIGGER IF EXISTS item_recursive_properties/recursive_reparent"];
  v10 = v9 & [v1 execute:@"DROP TRIGGER IF EXISTS item_recursive_properties/recursive_delete"];
  v11 = v10 & [v1 execute:@"DROP TRIGGER IF EXISTS item_recursive_properties/item_id_update"];
  v12 = v8 & v11 & [v1 execute:{@"CREATE TABLE item_recursive_properties( item_rowid integer not null primary key, item_id blob not null, item_parent_id blob, item_type integer not null, zone_rowid integer not null, item_parent_zone_rowid  integer not null, dir_faults_count integer not null default 0, over_quota_count integer not null default 0, shared_by_me_count integer not null default 0, shared_to_me_count integer not null default 0, uploaded_size integer not null default 0, uploaded_count integer not null default 0, needs_upload_size integer not null default 0, needs_upload_count integer not null default 0, synced_up_count integer not null default 0, needs_sync_up_count integer not null default 0, needs_delete_doc_count  integer not null default 0)"}];
  v13 = [v1 execute:{@"CREATE UNIQUE INDEX item_recursive_properties/item_id_zone_rowidON item_recursive_properties (item_id, zone_rowid)"}];
  v14 = v13 & [v1 execute:{@"CREATE INDEX item_recursive_properties/item_parent_id_zone_rowidON item_recursive_properties (item_parent_id, item_parent_zone_rowid)"}];
  v15 = v14 & [v1 execute:{@"CREATE TRIGGER item_recursive_properties/item_id_update AFTER UPDATE OF item_id, zone_rowid ON client_items WHEN (new.item_id != old.item_id OR new.zone_rowid != old.zone_rowid)  AND new.item_type IN (0, 9, 10, 4, 1, 2, 8) BEGIN UPDATE OR IGNORE item_recursive_properties SET   item_parent_id = new.item_id, item_parent_zone_rowid = new.zone_rowid WHERE item_parent_id == old.item_id   AND item_parent_zone_rowid = old.zone_rowid ; UPDATE OR IGNORE item_recursive_properties SET   item_id = new.item_id, zone_rowid = new.zone_rowid WHERE item_rowid == new.rowid ; END"}];
  v16 = v15 & [v1 execute:{@"INSERT INTO item_recursive_properties (item_rowid, item_id, item_parent_id, item_type, zone_rowid, item_parent_zone_rowid)SELECT rowid, item_id, item_parent_id, item_type, zone_rowid, item_parent_zone_rowid FROM client_items WHERE item_type IN (0, 9, 10, 4)"}];
  v17 = v12 & v16 & [v1 execute:{@"CREATE TRIGGER item_recursive_properties/insertion AFTER INSERT ON client_items WHEN new.item_filename != '.Trash' AND new.item_type IN (0, 9, 10, 4) BEGIN INSERT OR IGNORE INTO item_recursive_properties   (item_rowid, item_id, item_parent_id, item_type) VALUES   (new.rowid, new.item_id, new.item_parent_id, new.item_type); END"}];
  v18 = [v1 execute:{@"CREATE TRIGGER item_recursive_properties/deletion AFTER DELETE ON client_items WHEN old.item_type IN (0, 9, 10, 4, 1, 2, 8) BEGIN DELETE FROM item_recursive_properties WHERE item_rowid == old.rowid ; END"}];
  v19 = v18 & [v1 execute:{@"CREATE TRIGGER item_recursive_properties/reparent AFTER UPDATE OF item_parent_id, item_parent_zone_rowid ON client_items WHEN (new.item_parent_id != old.item_parent_id OR new.item_parent_zone_rowid != old.item_parent_zone_rowid)  AND new.item_type IN (0, 9, 10, 4, 1, 2, 8) BEGIN UPDATE OR IGNORE item_recursive_properties SET   item_parent_id = new.item_parent_id, item_parent_zone_rowid = new.item_parent_zone_rowid WHERE item_rowid == new.rowid AND item_parent_id IS NOT NULL ; END"}];
  v20 = v19 & [v1 execute:{@"CREATE TRIGGER item_recursive_properties/recursive_update AFTER UPDATE OF dir_faults_count, over_quota_count, shared_by_me_count, shared_to_me_count, uploaded_size, uploaded_count, needs_upload_size, needs_upload_count, synced_up_count, needs_sync_up_count, needs_delete_doc_count ON item_recursive_properties BEGIN UPDATE item_recursive_properties SET  dir_faults_count = dir_faults_count + new.dir_faults_count - old.dir_faults_count, over_quota_count = over_quota_count + new.over_quota_count - old.over_quota_count, shared_by_me_count = shared_by_me_count + new.shared_by_me_count - old.shared_by_me_count, shared_to_me_count = shared_to_me_count + new.shared_to_me_count - old.shared_to_me_count, needs_upload_size = needs_upload_size + new.needs_upload_size - old.needs_upload_size, needs_upload_count = needs_upload_count + new.needs_upload_count - old.needs_upload_count, needs_sync_up_count = needs_sync_up_count + new.needs_sync_up_count - old.needs_sync_up_count, needs_delete_doc_count = needs_delete_doc_count + new.needs_delete_doc_count - old.needs_delete_doc_count, uploaded_size = uploaded_size + MAX((new.uploaded_size - old.uploaded_size), 0), uploaded_count = uploaded_count + MAX((new.uploaded_count - old.uploaded_count), 0), synced_up_count = synced_up_count + MAX((new.synced_up_count - old.synced_up_count), 0)  WHERE item_id == old.item_parent_id AND  zone_rowid == old.item_parent_zone_rowid AND  new.item_parent_id == old.item_parent_id AND  new.item_parent_zone_rowid == old.item_parent_zone_rowid AND (new.dir_faults_count != old.dir_faults_count OR  new.over_quota_count != old.over_quota_count OR  new.shared_by_me_count != old.shared_by_me_count OR  new.shared_to_me_count != old.shared_to_me_count OR  new.needs_upload_size != old.needs_upload_size OR  new.needs_upload_count != old.needs_upload_count OR  new.needs_sync_up_count != old.needs_sync_up_count OR  new.needs_delete_doc_count != old.needs_delete_doc_count OR (new.uploaded_size != old.uploaded_size AND new.uploaded_size != 0) OR (new.uploaded_count != old.uploaded_count AND new.uploaded_count != 0) OR (new.synced_up_count != old.synced_up_count AND new.synced_up_count != 0)) ; UPDATE item_recursive_properties SET  uploaded_size = 0  WHERE item_rowid == old.item_rowid AND (needs_upload_size == 0 AND needs_sync_up_count == 0) AND uploaded_size != 0; UPDATE item_recursive_properties SET  uploaded_count = 0  WHERE item_rowid == old.item_rowid AND (needs_upload_count == 0 AND needs_sync_up_count == 0) AND uploaded_count != 0; UPDATE item_recursive_properties SET  synced_up_count = 0  WHERE item_rowid == old.item_rowid AND (needs_sync_up_count == 0) AND synced_up_count != 0;DELETE FROM item_recursive_properties WHERE  item_rowid == old.item_rowid AND uploaded_size == 0 AND needs_upload_size == 0 AND  uploaded_count == 0 AND needs_upload_count == 0 AND  synced_up_count  == 0 AND needs_sync_up_count == 0 AND  needs_delete_doc_count == 0 AND  over_quota_count == 0 AND shared_by_me_count == 0 AND  shared_to_me_count  == 0 AND item_type NOT IN (0, 9, 10, 4); END"}];
  v21 = v20 & [v1 execute:{@"CREATE TRIGGER item_recursive_properties/recursive_reparent AFTER UPDATE OF item_parent_id, item_parent_zone_rowid ON item_recursive_properties WHEN ((new.item_parent_id != old.item_parent_id OR new.item_parent_zone_rowid != old.item_parent_zone_rowid)        AND ((SELECT 1 FROM item_recursive_properties WHERE item_id = new.item_parent_id AND zone_rowid = new.item_parent_zone_rowid LIMIT 1)              OR item_id_is_root(new.item_parent_id))) BEGIN UPDATE item_recursive_properties SET  dir_faults_count = dir_faults_count - old.dir_faults_count, over_quota_count = over_quota_count - old.over_quota_count, shared_by_me_count = shared_by_me_count - old.shared_by_me_count, shared_to_me_count = shared_to_me_count - old.shared_to_me_count, needs_upload_size = needs_upload_size - old.needs_upload_size, needs_upload_count = needs_upload_count - old.needs_upload_count, needs_sync_up_count = needs_sync_up_count - old.needs_sync_up_count, needs_delete_doc_count = needs_delete_doc_count - old.needs_delete_doc_count  WHERE item_id == old.item_parent_id AND  zone_rowid = old.item_parent_zone_rowid; UPDATE item_recursive_properties SET  dir_faults_count = dir_faults_count + new.dir_faults_count, over_quota_count = over_quota_count + new.over_quota_count, shared_by_me_count = shared_by_me_count + new.shared_by_me_count, shared_to_me_count = shared_to_me_count + new.shared_to_me_count, needs_upload_size = needs_upload_size + new.needs_upload_size, needs_upload_count = needs_upload_count + new.needs_upload_count, needs_sync_up_count = needs_sync_up_count + new.needs_sync_up_count, needs_delete_doc_count = needs_delete_doc_count + new.needs_delete_doc_count  WHERE item_id == new.item_parent_id AND  zone_rowid = new.item_parent_zone_rowid; END"}];
  v22 = v21 & [v1 execute:{@"CREATE TRIGGER item_recursive_properties/recursive_delete AFTER DELETE ON item_recursive_properties BEGIN UPDATE item_recursive_properties SET  dir_faults_count = dir_faults_count - old.dir_faults_count, over_quota_count = over_quota_count - old.over_quota_count, shared_by_me_count = shared_by_me_count - old.shared_by_me_count, shared_to_me_count = shared_to_me_count - old.shared_to_me_count, needs_upload_size = needs_upload_size - old.needs_upload_size, needs_upload_count = needs_upload_count - old.needs_upload_count, needs_sync_up_count = needs_sync_up_count - old.needs_sync_up_count, needs_delete_doc_count = needs_delete_doc_count - old.needs_delete_doc_count  WHERE item_id == old.item_parent_id AND  zone_rowid = old.item_parent_zone_rowid AND(0 != old.dir_faults_count OR  0 != old.over_quota_count OR  0 != old.shared_by_me_count OR  0 != old.shared_to_me_count OR  0 != old.needs_upload_size OR  0 != old.needs_upload_count OR  0 != old.needs_sync_up_count OR  0 != old.needs_delete_doc_count); END"}];
  v23 = v17 & v22 & [v1 execute:{@"INSERT OR IGNORE INTO item_recursive_properties (item_rowid, item_id, item_parent_id, item_type, zone_rowid, item_parent_zone_rowid) SELECT rowid, item_id, item_parent_id, call_block(%p, item_type), zone_rowid, item_parent_zone_rowid FROM client_items WHERE (item_sharing_options & 4) != 0 OR item_localsyncupstate IN (3, 4) AND item_type IN (1, 2, 8)", &__block_literal_global_1655}];
  v24 = [v1 execute:{@"UPDATE item_recursive_properties SET shared_by_me_count = call_block(%p, shared_by_me_count, 1, (SELECT cz.zone_owner FROM client_zones AS cz WHERE cz.rowid = zone_rowid)), shared_to_me_count = call_block(%p, shared_to_me_count, 0, (SELECT cz.zone_owner FROM client_zones AS cz WHERE cz.rowid = zone_rowid)) WHERE item_rowid IN (SELECT rowid FROM client_items WHERE (item_sharing_options & 4) != 0)", &__block_literal_global_1658, &__block_literal_global_1658}];
  v25 = v24 & [v1 execute:@"UPDATE item_recursive_properties SET shared_to_me_count = 1 WHERE item_rowid IN (SELECT rowid FROM client_items WHERE (item_sharing_options & 4) != 0 AND zone_rowid != item_parent_zone_rowid)"];
  v26 = v25 & [v1 execute:{@"UPDATE item_recursive_properties SET dir_faults_count = dir_faults_count + 1 WHERE item_type IN (9, 10)"}];
  v27 = v26 & [v1 execute:{@"UPDATE item_recursive_properties AS ip SET needs_upload_size = (SELECT ci.version_size from client_items AS ci WHERE ci.rowid = ip.item_rowid), needs_upload_count = 1 WHERE item_rowid IN (SELECT rowid FROM client_items WHERE item_localsyncupstate = 3 AND item_type IN (1, 2, 8))"}];
  v28 = v27 & [v1 execute:{@"UPDATE item_recursive_properties AS ip SET needs_sync_up_count = needs_sync_up_count + 1 WHERE item_rowid IN (SELECT rowid FROM client_items WHERE item_localsyncupstate = 4 AND item_type IN (1, 2, 8))"}];
  v29 = [v1 execute:{@"UPDATE item_recursive_properties AS ip SET needs_delete_doc_count = needs_delete_doc_count + 1 WHERE item_rowid IN (SELECT rowid FROM client_items WHERE item_state IN (1, -3) AND item_type IN (1, 2, 8))"}];

  return v23 & v28 & v29;
}

void __recursive_table_recreate_schema_block_invoke(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __recursive_table_recreate_schema_block_invoke_cold_1();
  }

  v6 = sqlite3_value_int(*a4);
  if (v6 << 24 == 0x2000000 || v6 << 24 == 0x8000000)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v8 == 7)
  {
    v8 = 6;
  }

  sqlite3_result_int(a2, v8);
}

void __recursive_table_recreate_schema_block_invoke_1656(uint64_t a1, sqlite3_context *a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    __recursive_table_recreate_schema_block_invoke_1656_cold_1();
  }

  v6 = sqlite3_value_int64(*a4);
  v7 = sqlite3_value_int(*(a4 + 8));
  v8 = [MEMORY[0x277CCACA8] newFromSqliteValue:*(a4 + 16)];
  sqlite3_result_int64(a2, v6 + ((v7 == 0) ^ [v8 isEqualToString:*MEMORY[0x277CBBF28]]));
}

void __br_update_tables_21_000_block_invoke(uint64_t a1, sqlite3_context *a2, int a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 != 1)
  {
    __br_update_tables_21_000_block_invoke_cold_1();
  }

  v7 = [MEMORY[0x277CBEA90] newFromSqliteValue:*a4];
  v8 = [v7 brc_signature];
  v13 = 0;
  if (([*(a1 + 32) containsObject:v8] & 1) == 0)
  {
    v9 = *(a1 + 40);
    if (v9 && ([v9 saveXattrBlob:v7 forSignature:v8 error:&v13] & 1) == 0)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v15 = v8;
        v16 = 2112;
        v17 = v13;
        v18 = 2112;
        v19 = v10;
        _os_log_fault_impl(&dword_223E7A000, v11, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't save xattr blob for signature %@.  Continuing anyway - %@%@", buf, 0x20u);
      }
    }

    else if ([*(a1 + 32) count] <= 0x7F)
    {
      [*(a1 + 32) addObject:v8];
    }
  }

  sqlite3_result_blob(a2, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);

  v12 = *MEMORY[0x277D85DE8];
}

void __br_update_tables_30_000_block_invoke(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3 != 3)
  {
    __br_update_tables_30_000_block_invoke_cold_1();
  }

  v7 = sqlite3_value_int64(*a4);
  v8 = sqlite3_value_int64(a4[1]);
  v9 = sqlite3_value_int(a4[2]);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __br_update_tables_30_000_block_invoke_cold_2();
  }

  v12 = *(a1 + 32);
  v18 = 0;
  v13 = [v12 rescueUnuploadedFile:v8 error:&v18];
  v14 = v18;
  if (v13)
  {
    if (v9 == 3)
    {
      v9 = 999;
    }

    else
    {
      v9 = 888;
    }
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v20 = v14;
      v21 = 2048;
      v22 = v7;
      v23 = 2112;
      v24 = v15;
      _os_log_fault_impl(&dword_223E7A000, v16, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed rescuing unuploaded file %@ for rowid: %llu%@", buf, 0x20u);
    }
  }

  sqlite3_result_int(a2, v9);

  v17 = *MEMORY[0x277D85DE8];
}

void __br_update_tables_30_000_block_invoke_1801(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 3)
  {
    __br_update_tables_30_000_block_invoke_1801_cold_1();
  }

  v7 = sqlite3_value_int64(a4[1]);
  v8 = sqlite3_value_int64(a4[2]);
  v9 = *(*(a1 + 32) + 8);
  if (v8 > *(v9 + 24))
  {
    *(v9 + 24) = v8;
  }

  if (v7)
  {
    if (sqlite3_value_int(*a4) == 1)
    {
      v10 = 6;
    }

    else
    {
      v10 = 5;
    }
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __br_update_tables_30_000_block_invoke_1801_cold_2();
    }

    v10 = 0;
  }

  sqlite3_result_int(a2, v10);
}

void __br_update_tables_30_000_block_invoke_1811(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v5 = [BRCItemID isDocumentsItemIDWithSQLiteValue:*a4];

  sqlite3_result_int(a2, v5);
}

void __br_update_tables_30_000_block_invoke_2(uint64_t a1, sqlite3_context *a2, int a3, void *a4)
{
  if (a3 != 2)
  {
    __br_update_tables_30_000_block_invoke_2_cold_1();
  }

  v6 = [BRCItemID newFromSqliteValue:*a4];
  v7 = [MEMORY[0x277CCACA8] newFromSqliteValue:a4[1]];
  if ([v6 isNonDesktopRoot])
  {
    if ([v7 isEqualToString:*MEMORY[0x277CFAD68]])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __br_update_tables_30_000_block_invoke_2_cold_2();
    }

    v8 = 0;
  }

  sqlite3_result_int(a2, v8);
}

id currentClientStateDictionary(void *a1)
{
  v1 = [a1 clientStateDictionary];
  v2 = [v1 mutableCopy];

  return v2;
}

void __br_update_tables_31_103_block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  if (sqlite3_value_type(*a4) == 4)
  {
    v6 = [MEMORY[0x277CCA9B8] newFromSqliteValue:*a4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 brc_isCloudKitRequestRejectedError];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  sqlite3_result_int(a2, v8);
}

uint64_t upgradeItemScopesForClientZone(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 isCloudDocsZone] & 1) != 0 || objc_msgSend(v3, "isSharedZone"))
  {
    v5 = [v3 dbRowID];
    v6 = [v4 execute:{@"UPDATE client_items SET item_scope = 2 WHERE zone_rowid = %@ AND item_scope = 0 AND item_state != -2", v5, v10}];
  }

  else
  {
    v9 = [v3 dbRowID];
    v7 = [v4 execute:{@"UPDATE client_items SET item_scope = 2 WHERE zone_rowid = %@ AND item_scope = 0 AND migration_is_parented_or_equal_to_old_doc_id(%p, item_parent_id) AND item_state != -2", v9, v3}];

    if (!v7)
    {
      goto LABEL_5;
    }

    v5 = [v3 dbRowID];
    v6 = [v4 execute:{@"UPDATE client_items SET item_scope = 1 WHERE zone_rowid = %@ AND item_scope = 0 AND NOT migration_is_parented_or_equal_to_old_doc_id(%p, item_parent_id) AND item_state != -2", v5, v3}];
  }

  v7 = v6;

LABEL_5:
  return v7;
}

void __br_fixup_tables_4_019_block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:sqlite3_value_text(*a4)];
  v8 = [v7 fileSystemRepresentation];
  v9 = strlen(v8);
  sqlite3_result_text(a2, v8, v9, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v6);
}

void __br_fixup_tables_4_020_block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = sqlite3_value_int64(*a4);
  if (!v6)
  {
    v7 = sqlite3_value_int64(a4[1]);
    if (v7 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v7;
    }
  }

  sqlite3_result_int64(a2, v6);
}

void __br_resolve_fp_cannot_synchronize_error_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __br_resolve_fp_cannot_synchronize_error_block_invoke_cold_1();
  }
}

void __br_optimize_storage_settings_fixup_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      __br_optimize_storage_settings_fixup_block_invoke_cold_1();
    }
  }

  else
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __br_optimize_storage_settings_fixup_block_invoke_cold_2();
    }
  }
}

void __br_fixup_contentPolicy_block_invoke_2()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __br_fixup_contentPolicy_block_invoke_2_cold_1();
  }
}

void __br_fixup_upload_jobs_stuck_on_server_rejected_block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v5 = [MEMORY[0x277CCA9B8] newFromSqliteValue:*a4];
  v7 = v5;
  if (v5)
  {
    v6 = [v5 brc_isCloudKitErrorServerRejectedRequest];
  }

  else
  {
    v6 = 1;
  }

  sqlite3_result_int(a2, v6);
}

void sub_223F9B020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223F9D87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t itemsHaveTheSameKind(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 isDirectory] & 1) != 0 || (objc_msgSend(v4, "contentType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "br_isDirectoryType"), v5, v6))
  {
    v7 = [v3 isDirectory];
    v8 = [v4 contentType];
    v9 = v7 ^ [v8 br_isDirectoryType];

    v10 = v9 ^ 1u;
  }

  else if (([v3 isSymLink] & 1) != 0 || (objc_msgSend(v4, "contentType"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "br_isSymbolicLinkType"), v12, v13))
  {
    v14 = [v3 isSymLink];
    v15 = [v4 contentType];
    v10 = v14 ^ [v15 br_isSymbolicLinkType] ^ 1;
  }

  else
  {
    v16 = [v3 isFinderBookmark];
    v17 = [v4 contentType];
    v18 = [v17 br_isAliasFileType];

    if (v16 == v18)
    {
      v10 = [v3 isDocument];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void sub_223F9E540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_223FA03F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_223FA0B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223FA4794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223FA64DC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Unwind_Resume(a1);
}

void sub_223FA7E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 232), 8);
  _Block_object_dispose((v40 - 200), 8);
  _Block_object_dispose((v40 - 168), 8);
  _Block_object_dispose((v40 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t BRContainerStatusFromSyncState(char a1)
{
  if ((a1 & 0xA) != 0)
  {
    v1 = (2 * ((a1 & 5) != 0)) | 4;
  }

  else
  {
    v1 = 2 * ((a1 & 5) != 0);
  }

  if (v1 <= 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

void sub_223FAA39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void checkErrorIsRetriable(sqlite3_context *a1, sqlite3_value **a2, id *a3)
{
  if (sqlite3_value_type(*a2) != 4)
  {
LABEL_5:

    sqlite3_result_int(a1, 1);
    return;
  }

  v6 = objc_alloc(MEMORY[0x277CBEA90]);
  v7 = sqlite3_value_blob(*a2);
  v11 = [v6 initWithBytesNoCopy:v7 length:sqlite3_value_bytes(*a2) freeWhenDone:0];
  v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v11 error:0];
  v9 = [v8 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  v10 = v9;
  if (!v9 || ([v9 brc_isEverRetriable] & 1) != 0)
  {

    goto LABEL_5;
  }

  if (a3)
  {
    objc_storeStrong(a3, v10);
  }

  sqlite3_result_int(a1, 0);
}

void sub_223FAD9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223FAF118(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_223FAF404(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

BOOL -[BRCClientZone _blockExistingOperationIfNecessary:onNewOperation:considerPriority:](BRCClientZone *self, SEL a2, id a3, id a4, BOOL a5)
{
  v5 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (([(NSMutableArray *)self->_blockedOperationsOnInitialSync containsObject:v8]& 1) == 0)
  {
    if (v5)
    {
      v11 = [v8 nonDiscretionary];
      v12 = [v9 nonDiscretionary];
      if (v11)
      {
        if (!v12)
        {
          goto LABEL_11;
        }
      }
    }

    if ([v8 isExecuting])
    {
      goto LABEL_11;
    }

    v13 = [v8 nextTryDate];
    [v13 timeIntervalSinceNow];
    v15 = v14;
    v16 = [BRCUserDefaults defaultsForMangledID:0];
    [v16 throttleThresholdToBlockExistingOpOnNewOp];
    v18 = v17;

    if (v15 <= v18)
    {
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }

    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412802;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v19;
      _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] Existing op %@ is heavily throttled. Blocking execution on incoming op %@%@", &v23, 0x20u);
    }

    [v8 addDependency:v9];
  }

  v10 = 1;
LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

void -[BRCClientZone _blockSyncDownOnStitchingOperations](BRCClientZone *self, SEL a2)
{
  v72 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v3 = [(NSMutableDictionary *)self->_runningListOperations allValues];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v61;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v61 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v60 + 1) + 8 * i);
        if (![(BRCClientZone *)self _blockExistingOperationIfNecessary:v8 onNewOperation:self->_syncDownOperation considerPriority:1])
        {
          v9 = [(_BRCOperation *)self->_syncDownOperation nonDiscretionary];
          v10 = [v8 nonDiscretionary];
          if (v9 && !v10)
          {
            v11 = brc_bread_crumbs();
            v12 = brc_default_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v68 = v8;
              v69 = 2112;
              v70 = v11;
              _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync down has greater priority than %@%@", buf, 0x16u);
            }

            v13 = [(BRCClientZone *)self cancelListOperationAndReschedule:v8];
          }

          [(_BRCOperation *)self->_syncDownOperation addDependency:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v5);
  }

  fetchRecentsOperation = self->_fetchRecentsOperation;
  if (fetchRecentsOperation && ![(BRCClientZone *)self _blockExistingOperationIfNecessary:fetchRecentsOperation onNewOperation:self->_syncDownOperation considerPriority:0])
  {
    if ([(_BRCOperation *)self->_syncDownOperation nonDiscretionary])
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(BRCClientZone *)&self->_fetchRecentsOperation _blockSyncDownOnStitchingOperations];
      }

      [(_BRCOperation *)self->_fetchRecentsOperation cancel];
    }

    [(_BRCOperation *)self->_syncDownOperation addDependency:self->_fetchRecentsOperation];
  }

  v47 = v3;
  v17 = [(NSMutableDictionary *)self->_fetchParentOperations allValues];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v57;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v57 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v56 + 1) + 8 * j);
        if (![(BRCClientZone *)self _blockExistingOperationIfNecessary:v22 onNewOperation:self->_syncDownOperation considerPriority:1])
        {
          v23 = [(_BRCOperation *)self->_syncDownOperation nonDiscretionary];
          v24 = [v22 nonDiscretionary];
          if (v23 && !v24)
          {
            v25 = brc_bread_crumbs();
            v26 = brc_default_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v68 = v22;
              v69 = 2112;
              v70 = v25;
              _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync down has greater priority than %@%@", buf, 0x16u);
            }

            v27 = [(BRCClientZone *)self cancelFetchParentChainOperationAndReschedule:v22];
          }

          [(_BRCOperation *)self->_syncDownOperation addDependency:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v19);
  }

  v28 = [(NSMutableDictionary *)self->_locateRecordOperations allValues];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v53;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v53 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v52 + 1) + 8 * k);
        if (![(BRCClientZone *)self _blockExistingOperationIfNecessary:v33 onNewOperation:self->_syncDownOperation considerPriority:1])
        {
          v34 = [(_BRCOperation *)self->_syncDownOperation nonDiscretionary];
          v35 = [v33 nonDiscretionary];
          if (v34 && !v35)
          {
            v36 = brc_bread_crumbs();
            v37 = brc_default_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v68 = v33;
              v69 = 2112;
              v70 = v36;
              _os_log_debug_impl(&dword_223E7A000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync down has greater priority than %@%@", buf, 0x16u);
            }

            v38 = [(BRCClientZone *)self cancelLocateRecordOperationAndReschedule:v33];
          }

          [(_BRCOperation *)self->_syncDownOperation addDependency:v33];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v30);
  }

  if (![(_BRCOperation *)self->_syncDownOperation nonDiscretionary])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v39 = self->_blockedOperationsOnInitialSync;
    v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v49;
      do
      {
        for (m = 0; m != v41; ++m)
        {
          if (*v49 != v42)
          {
            objc_enumerationMutation(v39);
          }

          if ([*(*(&v48 + 1) + 8 * m) nonDiscretionary])
          {
            v44 = brc_bread_crumbs();
            v45 = brc_default_log();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v68 = v44;
              _os_log_debug_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEBUG, "[DEBUG] Boosting sync down op to be non-discretionary because we have blocked operations which are non-discretionary%@", buf, 0xCu);
            }

            [(_BRCOperation *)self->_syncDownOperation setNonDiscretionary:1];
          }
        }

        v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v41);
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_223FB068C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FB2BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FB3880(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_223FB3F60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FB6488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void -[BRCClientZone _blockLowPriorityStitchingOperationsForOperation:](BRCClientZone *self, SEL a2, id a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(BRCPQLConnection *)self->_db assertOnQueue];
  v5 = [(BRCServerZone *)self->_serverZone changeState];
  v6 = [v5 changeToken];

  if (v6)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v7 = [(NSMutableDictionary *)self->_fetchParentOperations allValues];
    v8 = [v7 countByEnumeratingWithState:&v65 objects:v77 count:16];
    v56 = self;
    if (v8)
    {
      v9 = v8;
      v10 = *v66;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v66 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v65 + 1) + 8 * i);
          if (([v12 isCancelled] & 1) == 0)
          {
            v13 = [v4 nonDiscretionary];
            v14 = [v12 nonDiscretionary];
            if (v13)
            {
              if (!v14)
              {
                v15 = brc_bread_crumbs();
                v16 = brc_default_log();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                {
                  v17 = [v12 operationID];
                  v18 = [v4 operationID];
                  *buf = 138412802;
                  v72 = v17;
                  v73 = 2112;
                  v74 = v18;
                  v75 = 2112;
                  v76 = v15;
                  _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Blocking low-priority parent fetch operation %@ on %@%@", buf, 0x20u);

                  self = v56;
                }

                [v12 blockOnHighPriorityOperation:v4];
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v9);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v19 = [(NSMutableDictionary *)self->_locateRecordOperations allValues];
    v20 = [v19 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v62;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v62 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v61 + 1) + 8 * j);
          if (([v24 isCancelled] & 1) == 0)
          {
            v25 = [v4 nonDiscretionary];
            v26 = [v24 nonDiscretionary];
            if (v25)
            {
              if (!v26)
              {
                v27 = brc_bread_crumbs();
                v28 = brc_default_log();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  v29 = [v24 operationID];
                  v30 = [v4 operationID];
                  *buf = 138412802;
                  v72 = v29;
                  v73 = 2112;
                  v74 = v30;
                  v75 = 2112;
                  v76 = v27;
                  _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] Blocking low-priority locate record operation %@ on %@%@", buf, 0x20u);

                  self = v56;
                }

                [v24 blockOnHighPriorityOperation:v4];
              }
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v21);
    }

    v31 = [(_BRCOperation *)self->_fetchRecentsOperation nonDiscretionary];
    if ([v4 nonDiscretionary] && !v31 && (-[BRCFetchRecentAndFavoriteDocumentsOperation isCancelled](self->_fetchRecentsOperation, "isCancelled") & 1) == 0 && self->_fetchRecentsOperation)
    {
      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v52 = [(_BRCOperation *)self->_fetchRecentsOperation operationID];
        v53 = [v4 operationID];
        *buf = 138412802;
        v72 = v52;
        v73 = 2112;
        v74 = v53;
        v75 = 2112;
        v76 = v32;
        _os_log_debug_impl(&dword_223E7A000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] Blocking low-priority fetch recents operation %@ on %@%@", buf, 0x20u);

        self = v56;
      }

      [(_BRCOperation *)self->_fetchRecentsOperation blockOnHighPriorityOperation:v4];
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v34 = [(NSMutableDictionary *)self->_runningListOperations allValues];
    v35 = [v34 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v35)
    {
      v37 = v35;
      v38 = *v58;
      *&v36 = 138412802;
      v54 = v36;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v58 != v38)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v57 + 1) + 8 * k);
          if (([v40 isCancelled] & 1) == 0)
          {
            if ([v40 hasObservers])
            {
              v41 = [v4 nonDiscretionary];
              v42 = [v40 nonDiscretionary];
              if (v41 && !v42)
              {
                v43 = brc_bread_crumbs();
                v44 = brc_default_log();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                {
                  v55 = [v40 operationID];
                  v49 = [v4 operationID];
                  *buf = v54;
                  v72 = v55;
                  v73 = 2112;
                  v74 = v49;
                  v50 = v49;
                  v75 = 2112;
                  v76 = v43;
                  _os_log_debug_impl(&dword_223E7A000, v44, OS_LOG_TYPE_DEBUG, "[DEBUG] Blocking low-priority list operation %@ on %@%@", buf, 0x20u);

                  self = v56;
                }

                [v40 blockOnHighPriorityOperation:v4];
              }
            }

            else
            {
              v45 = brc_bread_crumbs();
              v46 = brc_default_log();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v72 = v40;
                v73 = 2112;
                v74 = v45;
                _os_log_debug_impl(&dword_223E7A000, v46, OS_LOG_TYPE_DEBUG, "[DEBUG] Removing list operation with no observers %@%@", buf, 0x16u);
              }

              [v40 cancel];
              runningListOperations = self->_runningListOperations;
              v48 = [v40 folderToList];
              [(NSMutableDictionary *)runningListOperations removeObjectForKey:v48];
            }
          }
        }

        v37 = [v34 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v37);
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_223FB9714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a27);
  _Unwind_Resume(a1);
}

void sub_223FBA0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223FBA6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223FBAA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223FBB5E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_223FBBB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_223FBF6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223FC0B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223FC0CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223FC0E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223FC12EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FC1C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_17_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 56);
  return result;
}

void sub_223FC48DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _BRRestorePersona();
  __brc_leave_section(&a28);
  _Unwind_Resume(a1);
}

void sub_223FC5070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FC5A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FC724C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  __brc_leave_section(&a44);
  _Block_object_dispose((v44 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_223FC7FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FC8420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FCAAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223FCBD04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void sub_223FCC958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  __brc_leave_section(&a26);
  __brc_leave_section(&a29);
  __brc_leave_section(&a38);
  _Unwind_Resume(a1);
}

void sub_223FCD408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  __brc_leave_section(&a29);
  __brc_leave_section(&a38);
  _Unwind_Resume(a1);
}

void sub_223FCE1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _BRRestorePersona();
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FCF000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FCF3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FCF970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FCFE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose((v34 - 192), 8);
  __brc_leave_section(&a34);
  _Unwind_Resume(a1);
}

void sub_223FD0220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FD0564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FD0910(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FD0BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FD116C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FD1664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FD1B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __brc_leave_section(&a17);
  __brc_leave_section(&a26);
  _Unwind_Resume(a1);
}

void sub_223FD2200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  __brc_leave_section(&a19);
  __brc_leave_section(&a28);
  _Unwind_Resume(a1);
}

void sub_223FD2838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __brc_leave_section(&a17);
  __brc_leave_section(&a26);
  _Unwind_Resume(a1);
}

void sub_223FD2E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __brc_leave_section(&a17);
  __brc_leave_section(&a26);
  _Unwind_Resume(a1);
}

void sub_223FD331C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FD4168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FD4594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FD4D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __brc_leave_section(&a17);
  __brc_leave_section(&a26);
  _Unwind_Resume(a1);
}

void sub_223FD5B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  __brc_leave_section(va);
  __brc_leave_section(va1);
  _Unwind_Resume(a1);
}

void sub_223FD6090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __brc_leave_section(&a17);
  __brc_leave_section(&a26);
  _Unwind_Resume(a1);
}

void sub_223FD66C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __brc_leave_section(&a17);
  __brc_leave_section(&a26);
  _Unwind_Resume(a1);
}

void sub_223FD705C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  __brc_leave_section(va);
  __brc_leave_section(va1);
  _Unwind_Resume(a1);
}

void sub_223FD773C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __brc_leave_section(&a17);
  __brc_leave_section(&a26);
  _Unwind_Resume(a1);
}

void sub_223FD85B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FD8A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FD91E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  __brc_leave_section(va);
  __brc_leave_section(va1);
  _Unwind_Resume(a1);
}

void sub_223FD9C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FDB4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FDB8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FDBC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FDC8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  __brc_leave_section(&a26);
  __brc_leave_section(&a29);
  __brc_leave_section(&a38);
  _Unwind_Resume(a1);
}

uint64_t BRFieldXattrReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___BRFieldXattr__name;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___BRFieldXattr__value;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AppTelemetryTelemetryMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(AppTelemetryTimeSeriesEvent);
        [a1 addEvents:v13];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !AppTelemetryTimeSeriesEventReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}