void sub_100002A68(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, 0x90u, a4, &a9, 0x16u);
}

void sub_100002A94(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100002CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002D04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processURLs];
}

uint64_t sub_100002F10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, 0x90u))
  {
    v12 = [*(a1 + 32) path];
    v13 = [v12 fp_obfuscatedPath];
    v14 = [v5 path];
    v15 = [v14 fp_obfuscatedPath];
    v16 = 138413058;
    v17 = v13;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, 0x90u, "[ERROR] error enumerating %@: error %@ at %@%@", &v16, 0x2Au);
  }

  v9 = *(a1 + 40);
  v10 = *(v9 + 128);
  *(v9 + 128) = v6;

  return 1;
}

void sub_100003B70(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  qword_100015690 = [v1 initWithObjects:{v2, v3, objc_opt_class(), 0}];

  _objc_release_x1();
}

id sub_100004920(id a1, PQLResultSet *a2, id *a3)
{
  v3 = a2;
  if ([(PQLResultSet *)v3 BOOLAtIndex:0])
  {
    v4 = objc_alloc_init(BRServerMetrics);
    [v4 setChildCount:&off_100010978];
    [v4 setRecursiveChildCount:&off_100010978];
    [v4 setSharedByMeRecursiveCount:&off_100010978];
    [v4 setSharedAliasRecursiveCount:&off_100010978];
  }

  else
  {
    v4 = [[BRServerMetrics alloc] initFromResultSet:v3 pos:2];
    if (([(PQLResultSet *)v3 BOOLAtIndex:1]& 1) == 0)
    {
      v5 = [v4 sharedByMeRecursiveCount];
      if ([v5 longLongValue] == 1)
      {
        v6 = [v4 sharedAliasRecursiveCount];
        v7 = [v6 longLongValue];

        if (!v7)
        {
          [v4 setSharedAliasRecursiveCount:&off_100010990];
          [v4 setSharedByMeRecursiveCount:&off_100010978];
        }
      }

      else
      {
      }
    }
  }

  return v4;
}

uint64_t start()
{
  v0 = objc_opt_new();
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

void sub_1000051C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 stopAccessingSecurityScopedResource];
  (*(*(a1 + 40) + 16))();
}

void sub_10000553C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005574(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  }

  else
  {
    v10 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v12)
  {
    v13 = *v33;
    do
    {
      v14 = 0;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v32 + 1) + 8 * v14) data];
        [v10 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  if (v8)
  {
    v16 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  }

  else
  {
    v16 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v18)
  {
    v19 = *v29;
    do
    {
      v20 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v28 + 1) + 8 * v20) data];
        [v16 addObject:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  v22 = qword_100015698;
  objc_sync_enter(v22);
  v23 = qword_100015698;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v23 removeObject:WeakRetained];

  objc_sync_exit(v22);
  (*(*(a1 + 40) + 16))();
  v25 = [*(a1 + 32) serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000058B4;
  block[3] = &unk_1000104A8;
  v27 = *(a1 + 32);
  dispatch_sync(v25, block);
}

void sub_100006140(id a1, PQLConnection *a2, NSError *a3, id a4)
{
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_100007E40();
  }
}

void sub_100006360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006380(uint64_t a1)
{
  v2 = [PQLRawInjection rawInjection:&unk_10000BB13 length:0];
  if ([*(a1 + 32) count])
  {
    v3 = [*(a1 + 32) componentsJoinedByString:{@", "}];
    v4 = [PQLFormatInjection formatInjection:@"AND zone_rowid IN (%@)", v3];

    v2 = v4;
  }

  v5 = [*(a1 + 40) numberWithSQL:{@"SELECT COUNT(*) FROM client_unapplied_table WHERE throttle_state IN (1) %@", v2}];
  if ([v5 longLongValue])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100007EBC();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v8 = [*(a1 + 40) numberWithSQL:{@"SELECT COUNT(*) FROM client_items WHERE item_localsyncupstate != 0 AND NOT item_id_is_documents(item_id) %@", v2}];

  if ([v8 longLongValue])
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100007F24();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 40) brc_close];
  }

  return 1;
}

void sub_1000065E0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t sub_100006ED4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006EEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, 0x90u))
  {
    v12 = [*(a1 + 32) path];
    v13 = [v12 fp_obfuscatedPath];
    v14 = [v5 path];
    v15 = [v14 fp_obfuscatedPath];
    v16 = 138413058;
    v17 = v13;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, 0x90u, "[ERROR] error enumerating %@: error %@ at %@%@", &v16, 0x2Au);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;

  return 1;
}

void sub_100007334(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] parent directory is shared%@", &v2, 0xCu);
}

void sub_1000073AC()
{
  sub_100002A88();
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A68(&_mh_execute_header, v3, v4, "[ERROR] Failed to stat file URL %@ to lookup the share alias%@", v5, v6, v7, v8, v9);
}

void sub_100007448()
{
  sub_100002A88();
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A68(&_mh_execute_header, v3, v4, "[ERROR] Failed to locate the documentID for %@ to lookup the share alias%@", v5, v6, v7, v8, v9);
}

void sub_1000074E4()
{
  sub_100002A88();
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A68(&_mh_execute_header, v3, v4, "[ERROR] Failed to open file URL %@ to lookup the share alias%@", v5, v6, v7, v8, v9);
}

void sub_100007580()
{
  sub_100002A88();
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A68(&_mh_execute_header, v3, v4, "[ERROR] Can't locate the item to find the share alias for %@%@", v5, v6, v7, v8, v9);
}

void sub_10000761C()
{
  sub_100002A88();
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A94(&_mh_execute_header, v3, v4, "[DEBUG] Processing document at url %@%@", v5, v6, v7, v8, v9);
}

void sub_1000076B8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Not adding top level share to the recursive item count%@", &v2, 0xCu);
}

void sub_100007730()
{
  sub_100002A88();
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A94(&_mh_execute_header, v3, v4, "[DEBUG] Processing symlink at url %@%@", v5, v6, v7, v8, v9);
}

void sub_1000077CC()
{
  sub_100002A88();
  v1 = [v0 url];
  v2 = [v1 path];
  v3 = [v2 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A94(&_mh_execute_header, v4, v5, "[DEBUG] Processing directory at url %@%@", v6, v7, v8, v9, v10);
}

void sub_100007880()
{
  sub_100002A88();
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A94(&_mh_execute_header, v3, v4, "[DEBUG] Starting processing %@%@", v5, v6, v7, v8, v9);
}

void sub_10000791C()
{
  sub_100002A88();
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A94(&_mh_execute_header, v3, v4, "[DEBUG] Checksumming flat file at %@%@", v5, v6, v7, v8, v9);
}

void sub_1000079B8()
{
  sub_100002A88();
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A94(&_mh_execute_header, v3, v4, "[DEBUG] Skipping checksumming package at %@%@", v5, v6, v7, v8, v9);
}

void sub_100007A54()
{
  sub_100002A88();
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A94(&_mh_execute_header, v3, v4, "[DEBUG] not counting item at url %@ because it's excluded from sync%@", v5, v6, v7, v8, v9);
}

void sub_100007AF0()
{
  sub_100002A88();
  v1 = [v0 path];
  v2 = [v1 fp_obfuscatedPath];
  sub_100002A50();
  sub_100002A94(&_mh_execute_header, v3, v4, "[DEBUG] Skipping descendants of %@%@", v5, v6, v7, v8, v9);
}

void sub_100007BA0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, 0x90u, "[ERROR] Can't locate item with file object id %@%@", &v3, 0x16u);
}

void sub_100007C28()
{
  sub_100002A88();
  v2 = [v1 path];
  v3 = [v2 fp_obfuscatedPath];
  sub_100002A50();
  _os_log_error_impl(&_mh_execute_header, v0, 0x90u, "[ERROR] Can't open file at url to checksum %@%@", v4, 0x16u);
}

void sub_100007CD4()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: fileObjectID.type == BRFileObjectIDTypeDocument || fileObjectID.type == BRFileObjectIDTypeNonDocument%@", &v2, 0xCu);
  }
}

void sub_100007D9C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 path];
  sub_1000065CC();
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] opening telemetry db connection at path: %@%@", v6, 0x16u);
}

void sub_100007E40()
{
  sub_1000065CC();
  v3 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "[CRIT] telemetry database connection encountered unexpected corruption: %@%@", v2, 0x16u);
}