char *sub_100001DB0(void *a1)
{
  v1 = a1;
  [v1 fileSystemRepresentation];
  v2 = fpfs_path_return_assigned_provider_domain_xattr();
  if (v2)
  {
    v3 = malloc_type_malloc(1uLL, 0xB7807CC1uLL);
    if (v3)
    {
      v4 = v3;
      v5 = getxattr([v1 fileSystemRepresentation], v2, v3, 0, 0, 0);
      if (v5 >= 1 && v5 <= 0)
      {
        v4[v5] = 0;
        v2 = [NSString stringWithUTF8String:v4];
      }

      else
      {
        v2 = 0;
      }

      free(v4);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id sub_100001EA4(void *a1)
{
  v1 = a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001F5C;
  v4[3] = &unk_10001C988;
  v2 = objc_opt_new();
  v5 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];

  return v2;
}

void sub_100001F5C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = sub_100001EA4(v5);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v6 = [v5 path];
  }

  v7 = v6;

  v5 = v7;
LABEL_6:
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
}

void sub_100002028(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[FPDaemonConnection sharedConnection];
  v5 = [v4 connectionProxy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000020EC;
  v7[3] = &unk_10001C9B0;
  v8 = v3;
  v6 = v3;
  [v5 providerDomainsCompletionHandler:v7];
}

void sub_1000020EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v16 = v8;
      v17 = *v20;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v6);
          }

          sub_10000A8EC(@"%@", v9, v10, v11, v12, v13, v14, v15, *(*(&v19 + 1) + 8 * i));
        }

        v16 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_100002224(int a1, char *const *a2, void *a3)
{
  v25 = a1;
  v24 = a2;
  v3 = a3;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_1000024C0;
  v22[4] = sub_1000024D0;
  v23 = 0;
  v4 = dispatch_group_create();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_1000024C0;
  v20[4] = sub_1000024D0;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000025DC;
  v17[3] = &unk_10001CA38;
  v17[4] = v20;
  v17[5] = v18;
  sub_1000024D8(&v25, &v24, "B:N", &off_10001C9D0, v17);
  dispatch_group_enter(v4);
  v5 = v25;
  v6 = v24;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000026A8;
  v12[3] = &unk_10001CA88;
  v14 = v22;
  v7 = v4;
  v13 = v7;
  v15 = v20;
  v16 = v18;
  sub_10000C5F8(v5, v6, 2, v12);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002B80;
  v9[3] = &unk_10001CAB0;
  v10 = v3;
  v11 = v22;
  v8 = v3;
  dispatch_group_notify(v7, &_dispatch_main_q, v9);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);

  _Block_object_dispose(v22, 8);
}

void sub_100002490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000024C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000024D8(int *a1, char *const **a2, const char *a3, const option *a4, void *a5)
{
  v9 = a5;
  v10 = 1;
  optreset = 1;
  optind = 1;
  if (a3 | a4)
  {
    for (i = v9; ; i[2](i, v11, optarg))
    {
      v11 = getopt_long(*a1, *a2, a3, a4, 0);
      if (v11 == -1)
      {
        break;
      }

      if (v11 == 63 || v11 == 58)
      {
        sub_1000035F0();
      }
    }

    v10 = optind;
    v9 = i;
  }

  *a1 -= v10;
  *a2 += optind;
}

void sub_1000025DC(uint64_t a1, int a2, char *__s1)
{
  if (a2 == 78)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (a2 == 66)
  {
    if (!strcmp(__s1, "root"))
    {
      v8 = (*(*(a1 + 32) + 8) + 40);

      objc_storeStrong(v8, NSFileProviderRootContainerItemIdentifier);
    }

    else
    {
      v5 = [NSString stringWithUTF8String:__s1];
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      _objc_release_x1();
    }
  }
}

void sub_1000026A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v22 = a3;
  if (v22)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          dispatch_group_enter(*(a1 + 32));
          if (*(*(*(a1 + 48) + 8) + 40))
          {
            v11 = [FPItemID alloc];
            v12 = [v10 identifier];
            v13 = [v11 initWithProviderDomainID:v12 itemIdentifier:*(*(*(a1 + 48) + 8) + 40)];

            v14 = +[FPDaemonConnection sharedConnectionProxy];
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_100002998;
            v27[3] = &unk_10001CA60;
            v27[4] = v10;
            v23 = *(a1 + 32);
            v15 = v23;
            v28 = v23;
            [v14 waitForChangesOnItemsBelowItemWithID:v13 completionHandler:v27];
          }

          else
          {
            v16 = +[FPDaemonConnection sharedConnectionProxy];
            v17 = [v10 identifier];
            v18 = v5;
            v19 = *(*(*(a1 + 56) + 8) + 24);
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_100002A8C;
            v25[3] = &unk_10001CA60;
            v25[4] = v10;
            v24 = *(a1 + 32);
            v20 = v24;
            v26 = v24;
            v21 = v19;
            v5 = v18;
            [v16 waitForStabilizationOfDomainWithID:v17 mode:v21 completionHandler:v25];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v7);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100002998(uint64_t a1, void *a2)
{
  v29 = a2;
  if ([v29 fp_isFeatureUnsupportedError])
  {
    v3 = [*(a1 + 32) identifier];
    sub_10000A8EC(@"☑️  domain %@ does not support stabilization", v4, v5, v6, v7, v8, v9, v10, v3);
  }

  else
  {
    v3 = [*(a1 + 32) identifier];
    if (v29)
    {
      v28 = [v29 localizedDescription];
      sub_10000AA00(@"⚠️  stabilization of domain %@ failed: %@", v18, v19, v20, v21, v22, v23, v24, v3);

      v25 = *(*(a1 + 48) + 8);
      v26 = *(v25 + 40);
      if (!v26)
      {
        v26 = v29;
      }

      v27 = v26;
      v3 = *(v25 + 40);
      *(v25 + 40) = v27;
    }

    else
    {
      sub_10000A8EC(@"✅  domain %@ is stable", v11, v12, v13, v14, v15, v16, v17, v3);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100002A8C(uint64_t a1, void *a2)
{
  v29 = a2;
  if ([v29 fp_isFeatureUnsupportedError])
  {
    v3 = [*(a1 + 32) identifier];
    sub_10000A8EC(@"☑️  domain %@ does not support stabilization", v4, v5, v6, v7, v8, v9, v10, v3);
  }

  else
  {
    v3 = [*(a1 + 32) identifier];
    if (v29)
    {
      v28 = [v29 localizedDescription];
      sub_10000AA00(@"⚠️  stabilization of domain %@ failed: %@", v18, v19, v20, v21, v22, v23, v24, v3);

      v25 = *(*(a1 + 48) + 8);
      v26 = *(v25 + 40);
      if (!v26)
      {
        v26 = v29;
      }

      v27 = v26;
      v3 = *(v25 + 40);
      *(v25 + 40) = v27;
    }

    else
    {
      sub_10000A8EC(@"✅  domain %@ is stable", v11, v12, v13, v14, v15, v16, v17, v3);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_100002B9C(uint64_t a1, const char **a2)
{
  v13 = 0;
  *v14 = 0;
  v3 = posix_spawn_file_actions_init(&v13);
  if (v3)
  {
    v4 = v3;
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v6 = posix_spawn_file_actions_adddup2(&v13, 2, 2);
  if (v6)
  {
    v4 = v6;
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v7 = posix_spawn_file_actions_adddup2(&v13, 1, 1);
  if (v7)
  {
    v4 = v7;
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v8 = posix_spawn_file_actions_adddup2(&v13, 0, 0);
  if (v8)
  {
    v4 = v8;
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      sub_1000117D4(v4);
    }

LABEL_13:

    return v4;
  }

  v10 = posix_spawnp(v14, *a2, &v13, 0, a2, environ);
  if (v10)
  {
    v4 = v10;
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100011854(a2, v4);
    }
  }

  else
  {
      ;
    }

    posix_spawn_file_actions_destroy(&v13);
    if ((v14[1] & 0xFF00) != 0)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    if ((v14[1] & 0x7F) != 0)
    {
      return 3;
    }

    else
    {
      return v12;
    }
  }

  return v4;
}

void sub_100002E80(int a1, char *const *a2, void *a3)
{
  v55 = a1;
  v54 = a2;
  v3 = a3;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1000024C0;
  v43 = sub_1000024D0;
  v44 = objc_opt_new();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1000024C0;
  v37 = sub_1000024D0;
  v38 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000032BC;
  v26[3] = &unk_10001CBE0;
  v28 = &v33;
  v29 = &v50;
  v30 = v49;
  v31 = &v45;
  v4 = v3;
  v27 = v4;
  v32 = &v39;
  sub_1000024D8(&v55, &v54, "R:r:w:d:et:", &off_10001CAD0, v26);
  v5 = *(v51 + 24);
  if (v5 == ([v40[5] count] != 0))
  {
    sub_1000035F0();
  }

  v6 = v55;
  if (v55 >= 1 && *(v46 + 24) == 1)
  {
    v7 = [NSError fp_errorWithPOSIXCode:22 description:@"Can't specify both a timeout and a subcommand"];
    (*(v4 + 2))(v4, v7);
  }

  else if (*(v51 + 24) == 1)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000361C;
    v24[3] = &unk_10001CC08;
    v25 = v4;
    [NSFileCoordinator _getDebugInfoWithCompletionHandler:v24];
    v7 = v25;
  }

  else
  {
    v8 = [NoopFilePresenter alloc];
    v9 = [(NoopFilePresenter *)v8 initWithURL:v34[5]];
    v10 = [[NSFileCoordinator alloc] initWithFilePresenter:v9];
    v11 = objc_opt_new();
    v12 = v40[5];
    v13 = objc_opt_new();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003674;
    v15[3] = &unk_10001CC30;
    v14 = v11;
    v16 = v14;
    v7 = v9;
    v17 = v7;
    v18 = v4;
    v19 = &v39;
    v23 = v6;
    v20 = &v45;
    v21 = v49;
    v22 = v54;
    [v10 coordinateAccessWithIntents:v12 queue:v13 byAccessor:v15];
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v50, 8);
}

void sub_100003260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 160), 8);
  _Block_object_dispose((v37 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000032BC(void *a1, int a2, uint64_t a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000024C0;
  v25 = sub_1000024D0;
  v26 = 0;
  v5 = (a2 - 82);
  if (v5 <= 0x25)
  {
    if (((1 << (a2 - 82)) & 0x2100040001) != 0)
    {
      v7 = dispatch_group_create();
      dispatch_group_enter(v7);
      v8 = [NSString stringWithUTF8String:a3];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100003554;
      v17[3] = &unk_10001CBB8;
      v19 = a1[5];
      v20 = &v21;
      v9 = v7;
      v18 = v9;
      sub_10000AB2C(v8, 1, 0, v17);

      dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_9;
    }

    if (v5 == 19)
    {
      v12 = a1[6];
    }

    else
    {
      if (v5 != 34)
      {
        goto LABEL_9;
      }

      v10 = [NSString stringWithUTF8String:a3];
      [v10 doubleValue];
      *(*(a1[7] + 8) + 24) = v11;

      v12 = a1[8];
    }

    *(*(v12 + 8) + 24) = 1;
  }

LABEL_9:
  if (v22[5])
  {
    (*(a1[4] + 16))();
    v13 = 0;
    goto LABEL_24;
  }

  v13 = 0;
  if (a2 <= 113)
  {
    if (a2 != 82)
    {
      if (a2 != 100)
      {
        goto LABEL_24;
      }

      v14 = 1;
      goto LABEL_21;
    }

    v15 = 0x20000;
LABEL_19:
    v16 = [NSFileAccessIntent readingIntentWithURL:*(*(a1[5] + 8) + 40) options:v15];
    goto LABEL_22;
  }

  if (a2 != 119)
  {
    if (a2 != 114)
    {
      goto LABEL_24;
    }

    v15 = 0;
    goto LABEL_19;
  }

  v14 = 8;
LABEL_21:
  v16 = [NSFileAccessIntent writingIntentWithURL:*(*(a1[5] + 8) + 40) options:v14];
LABEL_22:
  v13 = v16;
  if (v16)
  {
    [*(*(a1[9] + 8) + 40) addObject:v16];
  }

LABEL_24:

  _Block_object_dispose(&v21, 8);
}

void sub_100003538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003554(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000035F0()
{
  v0 = getprogname();
  printf("File Provider control utility.\n%s <command> <options>\n\nCommands:\n  dump [<domain|provider>]                                       - dump state of fileprovider's daemon\n      -l, --limit-dump-size                                                 limit the number of items dumped\n  diagnose                                                       - dump state of fileprovider's daemon in several files \n      -l, --limit-dump-size                                                 limit the number of items dumped\n      -o, --output                                                          output path for the diagnose\n  evaluate <item>                                                - evaluate finder actions and decorations on item\n  evaluate <action> [<item>] <target item>                       - evaluate finder interactions\n  check | repair                                                 - run FPCK\n      -f                                                                perform a full dump (all items)\n      -a <path>                                                         perform check under path\n      -b <path>                                                         operate on an already created DB backup. If this is set you need to set -a to point to the domain root\n      -o <path>                                                         write output into file at path\n      -P                                                                no-pager output\n      -d                                                                dimisss low-importance invariants\n      -v                                                                print out files with broken invariants\n      -m [<providerDomainID>]                                           perform check on the d2d migration backup\n      -x xpc|daemon                                                     launch in XPC Service vs daemon (default)\n  obfuscate [<filename>/<path>...]                               - return the obfuscated form of the filename\n", v0);
  exit(64);
}

uint64_t sub_10000361C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000A8EC(@"%@", a2, a3, a4, a5, a6, a7, a8, a2);
  v9 = *(*(a1 + 32) + 16);

  return v9();
}

void sub_100003674(uint64_t a1, void *a2)
{
  v24 = a2;
  [*(a1 + 32) timeIntervalSinceNow];
  sub_10000A8EC(@"%.3f seconds passed before coordination callback was invoked.", v4, v5, v6, v7, v8, v9, v10, COERCE__INT64(-v3));
  if (v24)
  {
    [NSFileCoordinator removeFilePresenter:*(a1 + 40)];
    v18 = *(*(a1 + 48) + 16);
LABEL_3:
    v18();
    goto LABEL_4;
  }

  sub_10000A8EC(@"Acquired coordinations with intents %@", v11, v12, v13, v14, v15, v16, v17, *(*(*(a1 + 56) + 8) + 40));
  if (*(a1 + 88) <= 0)
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      [NSDate dateWithTimeIntervalSinceNow:*(*(*(a1 + 72) + 8) + 24)];
    }

    else
    {
      +[NSDate distantFuture];
    }
    v23 = ;
    [NSThread sleepUntilDate:v23];

    [NSFileCoordinator removeFilePresenter:*(a1 + 40)];
    v18 = *(*(a1 + 48) + 16);
    goto LABEL_3;
  }

  v20 = sub_100002B9C(v19, *(a1 + 80));
  [NSFileCoordinator removeFilePresenter:*(a1 + 40)];
  v21 = *(a1 + 48);
  if (v20)
  {
    v22 = [NSError fp_errorWithPOSIXCode:v20];
    (*(v21 + 16))(v21, v22);
  }

  else
  {
    (*(v21 + 16))(v21, 0);
  }

LABEL_4:
}

void sub_100003814(int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1 > 1)
  {
    v7 = [NSString stringWithUTF8String:*(a2 + 8)];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000391C;
    v8[3] = &unk_10001CC80;
    v9 = v5;
    sub_10000AB2C(v7, 1, 1, v8);
  }

  else
  {
    v6 = [NSError fp_errorWithPOSIXCode:22 description:@"Error: must supply path"];
    (*(v5 + 2))(v5, v6);
  }
}

void sub_10000391C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [v5 fp_shortDescription];
    sub_10000A8EC(@"Attempting to materialize item at %@", v8, v9, v10, v11, v12, v13, v14, v7);

    FPPrecheckTCCReadAccess();
    v15 = +[FPDaemonConnection sharedConnectionProxy];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100003A34;
    v16[3] = &unk_10001CC58;
    v18 = *(a1 + 32);
    v17 = v6;
    [v15 materializeURL:v17 completionHandler:v16];
  }
}

void sub_100003A34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v40 = 0;
    v5 = +[NSFileManager defaultManager];
    v6 = [*(a1 + 32) path];
    v7 = [v5 fileExistsAtPath:v6 isDirectory:&v40];

    if (v7)
    {
      v8 = v40;
      v9 = [*(a1 + 32) fp_shortDescription];
      v17 = v9;
      if (v8 == 1)
      {
        sub_10000A8EC(@"ls %@:", v10, v11, v12, v13, v14, v15, v16, v9);

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v18 = +[NSFileManager defaultManager];
        v19 = [*(a1 + 32) path];
        v20 = [v18 enumeratorAtPath:v19];

        v21 = [v20 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v37;
          do
          {
            v24 = 0;
            do
            {
              if (*v37 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [*(*(&v36 + 1) + 8 * v24) fileSystemRepresentation];
              sub_10000A8EC(@"%s", v26, v27, v28, v29, v30, v31, v32, v25);
              v24 = v24 + 1;
            }

            while (v22 != v24);
            v22 = [v20 countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v22);
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        sub_10000A8EC(@"file %@:", v10, v11, v12, v13, v14, v15, v16, v9);

        v35 = [*(a1 + 32) path];
        execl("/usr/bin/file", "/usr/bin/file", "-b", [v35 fileSystemRepresentation], 0);
      }
    }

    else
    {
      v33 = *(a1 + 40);
      v34 = [NSError fp_errorWithPOSIXCode:2 description:@"Error: file doesn't exist after materialization"];
      (*(v33 + 16))(v33, v34);
    }
  }
}

id sub_100003CEC(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000024C0;
  v9 = sub_1000024D0;
  v10 = 0;
  v1 = [NSString stringWithUTF8String:a1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003E10;
  v4[3] = &unk_10001CCD0;
  v4[4] = &v5;
  sub_10000AB2C(v1, 1, 1, v4);

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_100003DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003E10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    FPPrecheckTCCReadAccess();
    v7 = +[FPDaemonConnection synchronousSharedConnectionProxy];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003F04;
    v8[3] = &unk_10001CCA8;
    v10 = *(a1 + 32);
    v9 = v5;
    [v7 materializeURL:v9 completionHandler:v8];
  }
}

void sub_100003F04(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v27 = 0;
    v5 = +[NSFileManager defaultManager];
    v6 = [*(a1 + 32) path];
    v7 = [v5 fileExistsAtPath:v6 isDirectory:&v27];

    if ((v7 & 1) == 0)
    {
      v8 = [NSError fp_errorWithPOSIXCode:2 description:@"Error: file doesn't exist after materialization"];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    if (v27 == 1)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = +[NSFileManager defaultManager];
      v12 = [*(a1 + 32) path];
      v13 = [v11 enumeratorAtPath:v12];

      v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        while (1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if (!--v15)
          {
            v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
            if (!v15)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      v17 = *(a1 + 32);
      v18 = *(*(a1 + 40) + 8);
      obj = *(v18 + 40);
      v13 = [NSFileHandle fileHandleForReadingFromURL:v17 error:&obj];
      objc_storeStrong((v18 + 40), obj);
      if (v13)
      {
        v19 = *(*(a1 + 40) + 8);
        v21 = 0;
        v20 = [v13 readDataUpToLength:10 error:&v21];
        objc_storeStrong((v19 + 40), v21);

        [v13 closeFile];
      }
    }
  }
}

id sub_100004144(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000024C0;
  v14 = sub_1000024D0;
  v15 = 0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = [NSString stringWithUTF8String:a1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000042A8;
  v7[3] = &unk_10001CCF8;
  v9 = &v10;
  v4 = v2;
  v8 = v4;
  sub_10000AB2C(v3, 0, 1, v7);

  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void sub_100004290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000042A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    FPPrecheckTCCReadAccess();
    v7 = +[FPDaemonConnection synchronousSharedConnectionProxy];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000043C0;
    v11[3] = &unk_10001CCA8;
    v10 = *(a1 + 32);
    v8 = v10;
    v12 = v10;
    v9 = [v7 evictItemAtURL:v5 evenIfEnumeratingFP:1 andClearACLForConsumer:0 evictionReason:2 completionHandler:v11];
  }
}

void sub_1000043C0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100004420(unsigned int a1, char *const *a2, void *a3)
{
  v21 = a1;
  v20 = a2;
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000481C;
  v15[3] = &unk_10001CD60;
  v15[4] = &v16;
  sub_1000024D8(&v21, &v20, "n", &off_10001CD18, v15);
  v4 = v21;
  if (v21 <= 0)
  {
    v10 = [NSError fp_errorWithPOSIXCode:22 description:@"Error: must supply path"];
    v3[2](v3, v10);
  }

  else
  {
    v5 = v20;
    if (*(v17 + 24) == 1)
    {
      v14 = v3;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = sub_1000024C0;
      v38 = sub_1000024D0;
      v39 = 0;
      v6 = dispatch_group_create();
      do
      {
        dispatch_group_enter(v6);
        v7 = [NSString stringWithUTF8String:*v5];
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_100005EA4;
        v31 = &unk_10001CF80;
        v8 = v6;
        v32 = v8;
        v33 = &v34;
        sub_10000AB2C(v7, 0, 1, &v28);

        ++v5;
        --v4;
      }

      while (v4);
      block = _NSConcreteStackBlock;
      v23 = 3221225472;
      v9 = sub_1000064F0;
    }

    else
    {
      v14 = v3;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = sub_1000024C0;
      v38 = sub_1000024D0;
      v39 = 0;
      v11 = dispatch_group_create();
      do
      {
        dispatch_group_enter(v11);
        v12 = [NSString stringWithUTF8String:*v5];
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_10000650C;
        v31 = &unk_10001CF80;
        v8 = v11;
        v32 = v8;
        v33 = &v34;
        sub_10000AB2C(v12, 0, 1, &v28);

        ++v5;
        --v4;
      }

      while (v4);
      block = _NSConcreteStackBlock;
      v23 = 3221225472;
      v9 = sub_1000066DC;
    }

    v24 = v9;
    v25 = &unk_10001CAB0;
    v26 = v14;
    v27 = &v34;
    v13 = v14;
    dispatch_group_notify(v8, &_dispatch_main_q, &block);

    _Block_object_dispose(&v34, 8);
  }

  _Block_object_dispose(&v16, 8);
}

void sub_1000047EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000481C(uint64_t result, int a2)
{
  if (a2 == 110)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_100004838(unsigned int a1, char *const *a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004BD0;
  v6[3] = &unk_10001CDB0;
  v7 = a3;
  v5 = v7;
  sub_1000048DC(a1, a2, v6);
}

void sub_1000048DC(unsigned int a1, char *const *a2, void *a3)
{
  v33 = a1;
  v32 = a2;
  v3 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000066F8;
  v15[3] = &unk_10001CFA8;
  v15[4] = &v20;
  v15[5] = &v28;
  v15[6] = &v24;
  v15[7] = &v16;
  sub_1000024D8(&v33, &v32, "flAo:pd:", &off_10001CDD0, v15);
  v4 = v33;
  if (v33 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSString stringWithUTF8String:*v32];
  }

  v6 = v29[3];
  if (v6 && (*v6 != 45 || *(v6 + 1)))
  {
    v7 = open(v6, 1797, 384);
    if ((v7 & 0x80000000) != 0)
    {
      v11 = v32;
      v12 = v17[3];
      v13 = v21[3];
      v14 = [NSError fp_errorWithPOSIXCode:*__error()];
      v3[2](v3, v4, v11, v12, 0, v13, v5, v14);

      v10 = 0;
      goto LABEL_13;
    }

    v8 = [[NSFileHandle alloc] initWithFileDescriptor:v7 closeOnDealloc:1];
  }

  else
  {
    if (*(v25 + 24) == 1)
    {
      v9 = [[FPCTLTermDumper alloc] initWithFd:1 forceColor:0];
      [v9 startPager];
    }

    v8 = +[NSFileHandle fileHandleWithStandardOutput];
  }

  v10 = v8;
  (v3)[2](v3, v4, v32, v17[3], v8, v21[3], v5, 0);
LABEL_13:

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
}

void sub_100004B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100004BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v12 = a5;
  v13 = a7;
  if (a8)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = [FPDaemonConnection connectionForUser:geteuid()];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100004CDC;
    v15[3] = &unk_10001CD88;
    v16 = *(a1 + 32);
    [v14 dumpStateTo:v12 providerFilter:v13 options:a6 completionHandler:v15];
  }
}

void sub_100004CEC(unsigned int a1, char *const *a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004D90;
  v6[3] = &unk_10001CDB0;
  v7 = a3;
  v5 = v7;
  sub_1000048DC(a1, a2, v6);
}

void sub_100004D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = a5;
  v12 = a7;
  if (a8)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v13 = [FPDaemonConnection connectionForUser:geteuid()];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100004E8C;
    v14[3] = &unk_10001CD88;
    v15 = *(a1 + 32);
    [v13 dumpTelemetryTo:v11 providerFilter:v12 completionHandler:v14];
  }
}

void sub_100004E9C(unsigned int a1, char *const *a2, void *a3)
{
  v70 = a1;
  v69 = a2;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_1000024C0;
  v63 = sub_1000024D0;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_1000024C0;
  v57 = sub_1000024D0;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 1;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1000024C0;
  v43 = sub_1000024D0;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 2;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005308;
  v19[3] = &unk_10001CEB8;
  v21 = &v45;
  v22 = &v31;
  v23 = &v59;
  v24 = &v65;
  v25 = &v49;
  v26 = &v53;
  v27 = &v35;
  v5 = a3;
  v30 = a1;
  v28 = &v39;
  v29 = a2;
  v20 = v5;
  sub_1000024D8(&v70, &v69, "shtfa:o:Pdvb:mx:D", &off_10001CDD0, v19);
  if (*(v46 + 24) == 1)
  {
    sub_1000035F0();
  }

  v6 = v66[3];
  if (v6 && (*v6 != 45 || *(v6 + 1)))
  {
    v7 = open(v6, 1797, 384);
    if ((v7 & 0x80000000) != 0)
    {
      v11 = v70;
      v12 = v69;
      v13 = v60[5];
      v14 = v54[5];
      v15 = v32[3];
      v16 = v40[5];
      v17 = v36[3];
      v18 = [NSError fp_errorWithPOSIXCode:*__error()];
      (*(v5 + 2))(v5, v11, v12, 0, v13, v14, v15, v16, v17, v18);

      v10 = 0;
      goto LABEL_11;
    }

    v8 = [[NSFileHandle alloc] initWithFileDescriptor:v7 closeOnDealloc:1];
  }

  else
  {
    if (*(v50 + 24) == 1)
    {
      v9 = [[FPCTLTermDumper alloc] initWithFd:1 forceColor:0];
      [v9 startPager];
    }

    v8 = +[NSFileHandle fileHandleWithStandardOutput];
  }

  v10 = v8;
  (*(v5 + 2))(v5, v70, v69, v8, v60[5], v54[5], v32[3], v40[5], v36[3], 0);
LABEL_11:

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);
}

void sub_100005290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 256), 8);
  _Block_object_dispose((v41 - 224), 8);
  _Block_object_dispose((v41 - 176), 8);
  _Block_object_dispose((v41 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100005308(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 <= 103)
  {
    if (a2 > 97)
    {
      if (a2 != 98)
      {
        if (a2 == 100)
        {
          v4 = *(*(a1 + 48) + 8);
          v5 = *(v4 + 24) | 2;
        }

        else
        {
          if (a2 != 102)
          {
            return;
          }

          v4 = *(*(a1 + 48) + 8);
          v5 = *(v4 + 24) | 1;
        }

        goto LABEL_37;
      }

      v17 = [NSString stringWithUTF8String:?];
      v6 = [NSURL fileURLWithPath:v17];
      v7 = [v6 URLByStandardizingPath];
      v8 = *(a1 + 80);
    }

    else
    {
      if (a2 == 68)
      {
        v4 = *(*(a1 + 48) + 8);
        v5 = *(v4 + 24) | 0x40;
        goto LABEL_37;
      }

      if (a2 == 80)
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        return;
      }

      if (a2 != 97)
      {
        return;
      }

      v17 = [NSString stringWithUTF8String:?];
      v6 = [NSURL fileURLWithPath:v17];
      v7 = [v6 URLByStandardizingPath];
      v8 = *(a1 + 56);
    }

    v9 = *(v8 + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    goto LABEL_31;
  }

  if (a2 > 114)
  {
    if (a2 <= 117)
    {
      if (a2 == 115)
      {
        v4 = *(*(a1 + 48) + 8);
        v5 = *(v4 + 24) | 0x20;
      }

      else
      {
        if (a2 != 116)
        {
          return;
        }

        v4 = *(*(a1 + 48) + 8);
        v5 = *(v4 + 24) | 0x10;
      }

      goto LABEL_37;
    }

    if (a2 != 118)
    {
      if (a2 != 120)
      {
        return;
      }

      v17 = [NSString stringWithUTF8String:?];
      if ([v17 isEqualToString:@"daemon"])
      {
        *(*(*(a1 + 88) + 8) + 24) = 0;
LABEL_32:

        return;
      }

      if ([v17 isEqualToString:@"xpc"])
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
        goto LABEL_32;
      }

      v6 = [NSError fp_invalidArgumentError:@"-x check unrecognized option %@", v17];
      v11 = *(*(*(a1 + 56) + 8) + 40);
      v12 = *(*(*(a1 + 80) + 8) + 40);
      v13 = *(*(*(a1 + 48) + 8) + 24);
      v14 = *(a1 + 104);
      v15 = *(*(*(a1 + 96) + 8) + 40);
      v16 = *(*(*(a1 + 88) + 8) + 24);
      (*(*(a1 + 32) + 16))(*(a1 + 32), *(a1 + 112));
LABEL_31:

      goto LABEL_32;
    }

    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 24) | 4;
LABEL_37:
    *(v4 + 24) = v5;
    return;
  }

  switch(a2)
  {
    case 'h':
      *(*(*(a1 + 40) + 8) + 24) = 1;
      return;
    case 'm':
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 24) | 8;
      goto LABEL_37;
    case 'o':
      *(*(*(a1 + 64) + 8) + 24) = a3;
      break;
  }
}

void sub_100005600(int a1, uint64_t a2, void *a3)
{
  v19 = a3;
  if (a1 > 1)
  {
    v6 = (a2 + 8);
    v7 = a1 - 1;
    do
    {
      v8 = [NSString alloc];
      v9 = *v6++;
      v10 = [v8 initWithCString:v9 encoding:4];
      v11 = [v10 fp_alwaysObfuscatedPath];
      sub_10000A8EC(@"%@", v12, v13, v14, v15, v16, v17, v18, v11);

      --v7;
    }

    while (v7);
  }

  else
  {
    v5 = [NSError fp_errorWithPOSIXCode:22 description:@"Error: please provide a name of a file"];
    v19[2](v19, v5);
  }

  v19[2](v19, 0);
}

void sub_100005708(int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1 > 1)
  {
    v7 = [NSString stringWithUTF8String:*(a2 + 8)];
    v8 = [NSURL fileURLWithPath:v7];

    v47 = 0;
    v9 = FPGetImportCookieForURL();
    v10 = 0;
    if (v9)
    {
      if ([v9 hasExpired])
      {
        sub_10000A8EC(@"cookie has expired", v11, v12, v13, v14, v15, v16, v17, v41);
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v18 = [v9 entries];
      v19 = [v18 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v19)
      {
        v20 = v19;
        v42 = v10;
        v21 = *v44;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v43 + 1) + 8 * i);
            v24 = [v9 entries];
            v25 = [v24 objectForKeyedSubscript:v23];

            v26 = [v25 domainPathRelativeToVolumeRoot];
            [v25 fileID];
            sub_10000A8EC(@"%@ %llu", v27, v28, v29, v30, v31, v32, v33, v26);
          }

          v20 = [v18 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v20);
        v10 = v42;
      }
    }

    else
    {
      v18 = [v8 path];
      sub_10000A8EC(@"no import cookie for %@", v34, v35, v36, v37, v38, v39, v40, v18);
    }

    v5[2](v5, v10);
  }

  else
  {
    v6 = [NSError fp_errorWithPOSIXCode:22 description:@"error: missing operation"];
    v5[2](v5, v6);
  }
}

uint64_t start(int a1, char *const *a2)
{
  v4 = fp_default_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000118EC(v5);
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  getpid();
  v27 = 0;
  if (sandbox_check())
  {
    errx(1, "Trying to invoke fileproviderctl from a sandboxed process", 0);
  }

  if (os_variant_has_internal_content())
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000119A4(v6);
    }

    execv("/usr/local/bin/fileproviderctl_internal", a2);
  }

  v7 = objc_autoreleasePoolPush();
  if (!getuid())
  {
    sub_10000AA00(@"⚠️  running as root, file operations might not work correctly", v8, v9, v10, v11, v12, v13, v14, 0);
  }

  fpfs_enable_fts_thread_fchdir();
  if ((fpfs_set_support_long_paths_iopolicy() & 0x80000000) != 0)
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = __error();
      sub_100011A28(v26, buf, v25);
    }

    exit(1);
  }

  v15 = a1 - 1;
  if (a1 <= 1)
  {
    sub_1000035F0();
  }

  v16 = objc_autoreleasePoolPush();
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100005D88;
  v29[3] = &unk_10001CEE0;
  v29[4] = &v30;
  v17 = objc_retainBlock(v29);
  v19 = *(a2 + 1);
  v18 = a2 + 1;
  v20 = [NSString stringWithUTF8String:v19];
  if ([v20 isEqualToString:@"dump"])
  {
    sub_100004838(v15, v18, v17);
  }

  else if ([v20 isEqualToString:@"dumpTelemetry"])
  {
    sub_100004CEC(v15, v18, v17);
  }

  else if (([v20 isEqualToString:@"check"] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"repair"))
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100005DF0;
    v28[3] = &unk_10001CEE0;
    v28[4] = &v30;
    v21 = objc_retainBlock(v28);
    if ([v20 isEqualToString:@"check"])
    {
      sub_10000D618(v15, v18, v21);
    }

    else
    {
      sub_10000D7A4(v15, v18, v21);
    }
  }

  else if ([v20 isEqualToString:@"evaluate"])
  {
    sub_1000085A4(v15, v18, v17);
  }

  else if ([v20 isEqualToString:@"obfuscate"])
  {
    sub_100005600(v15, v18, v17);
  }

  else
  {
    if (![v20 isEqualToString:@"diagnose"])
    {
      sub_1000035F0();
    }

    sub_1000098A4(v15, v18, v17);
  }

  v22 = +[NSRunLoop mainRunLoop];
  [v22 run];

  objc_autoreleasePoolPop(v16);
  objc_autoreleasePoolPop(v7);
  v23 = *(v31 + 6);
  _Block_object_dispose(&v30, 8);
  return v23;
}

void sub_100005D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005D88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = [v3 description];
    sub_10000AA00(@"Error: %@\n", v6, v7, v8, v9, v10, v11, v12, v5);

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  exit(*(*(*(a1 + 32) + 8) + 24));
}

void sub_100005DF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v5 = v3;
  v6 = [v3 domain];
  if ([v6 isEqualToString:@"FPCKDomain"])
  {
    v7 = [v5 code];

    if (v7 == 65)
    {
      v4 = 65;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [v5 description];
  sub_10000AA00(@"Error: %@\n", v9, v10, v11, v12, v13, v14, v15, v8);

  v4 = 1;
LABEL_8:
  *(*(*(a1 + 32) + 8) + 24) = v4;
  exit(*(*(*(a1 + 32) + 8) + 24));
}

void sub_100005EA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = a3;
    objc_sync_enter(v6);
    v8 = *(*(a1 + 40) + 8);
    v11 = *(v8 + 40);
    v9 = (v8 + 40);
    v10 = v11;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    objc_storeStrong(v9, v12);
    objc_sync_exit(v6);

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v13 = 0;
    v14 = +[FPItemManager defaultManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005FE0;
    v17[3] = &unk_10001CF58;
    v18 = v5;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v19 = v15;
    v20 = v16;
    [v14 fetchItemForURL:v18 completionHandler:v17];
  }
}

void sub_100005FE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v30 = NSURLErrorKey;
      v31 = *(a1 + 32);
      v19 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v14 = [NSError errorWithDomain:NSFileProviderErrorDomain code:-1005 userInfo:v19];
    }

    v20 = *(a1 + 40);
    objc_sync_enter(v20);
    v21 = *(*(a1 + 48) + 8);
    v24 = *(v21 + 40);
    v22 = (v21 + 40);
    v23 = v24;
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = v14;
    }

    objc_storeStrong(v22, v25);
    objc_sync_exit(v20);

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    sub_10000A8EC(@"Evicting %@", v7, v8, v9, v10, v11, v12, v13, v5);
    v15 = +[FPDaemonConnection sharedConnection];
    v16 = [v15 connectionProxy];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000061C8;
    v26[3] = &unk_10001CF30;
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v27 = v17;
    v29 = v18;
    v28 = v5;
    [v16 providerDomainsCompletionHandler:v26];

    v14 = v27;
  }
}

void sub_1000061C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v8 = *(*(a1 + 48) + 8);
    v11 = *(v8 + 40);
    v9 = (v8 + 40);
    v10 = v11;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    objc_storeStrong(v9, v12);
    objc_sync_exit(v7);

    goto LABEL_17;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = [v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v13)
  {
    goto LABEL_16;
  }

  v21 = v13;
  v22 = 0;
  v23 = *v40;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v40 != v23)
      {
        objc_enumerationMutation(v5);
      }

      v25 = *(*(&v39 + 1) + 8 * i);
      v26 = [*(a1 + 40) providerDomainID];
      v27 = [v25 isEqualToString:v26];

      if (v27)
      {
        v28 = [v5 objectForKeyedSubscript:v25];
        v29 = [NSFileProviderManager alloc];
        v30 = [*(a1 + 40) providerID];
        v31 = [v28 domain];
        v32 = [v29 _initWithProviderIdentifier:v30 domain:v31];

        v33 = [*(a1 + 40) itemIdentifier];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10000645C;
        v36[3] = &unk_10001CF08;
        v34 = *(a1 + 32);
        v35 = *(a1 + 48);
        v37 = v34;
        v38 = v35;
        [v32 evictItemWithIdentifier:v33 completionHandler:v36];

        v22 = 1;
      }
    }

    v21 = [v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v21);
  if ((v22 & 1) == 0)
  {
LABEL_16:
    sub_10000A8EC(@"[UNREACH] Domain not found for item : %@", v14, v15, v16, v17, v18, v19, v20, *(a1 + 40));
LABEL_17:
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_10000645C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  objc_sync_enter(v4);
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = v10;
  if (v8)
  {
    v9 = v7;
  }

  objc_storeStrong(v6, v9);
  objc_sync_exit(v4);

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000650C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = a3;
    objc_sync_enter(v6);
    v8 = *(*(a1 + 40) + 8);
    v11 = *(v8 + 40);
    v9 = (v8 + 40);
    v10 = v11;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    objc_storeStrong(v9, v12);
    objc_sync_exit(v6);

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v13 = 0;
    FPPrecheckTCCReadAccess();
    v7 = +[FPDaemonConnection sharedConnectionProxy];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100006648;
    v17[3] = &unk_10001CF08;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v18 = v14;
    v19 = v15;
    v16 = [v7 evictItemAtURL:v5 evenIfEnumeratingFP:1 andClearACLForConsumer:0 evictionReason:2 completionHandler:v17];
  }
}

void sub_100006648(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  objc_sync_enter(v4);
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v9 = v10;
  if (v8)
  {
    v9 = v7;
  }

  objc_storeStrong(v6, v9);
  objc_sync_exit(v4);

  dispatch_group_leave(*(a1 + 32));
}

void *sub_1000066F8(void *result, int a2, uint64_t a3)
{
  if (a2 <= 107)
  {
    if (a2 != 65)
    {
      if (a2 != 100)
      {
        if (a2 != 102)
        {
          return result;
        }

        v3 = *(result[4] + 8);
        v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
        goto LABEL_12;
      }

      v5 = result[7];
      goto LABEL_15;
    }

    v3 = *(result[4] + 8);
    v4 = *(v3 + 24) | 2;
LABEL_12:
    *(v3 + 24) = v4;
    return result;
  }

  switch(a2)
  {
    case 'l':
      v3 = *(result[4] + 8);
      v4 = *(v3 + 24) | 1;
      goto LABEL_12;
    case 'o':
      v5 = result[5];
LABEL_15:
      *(*(v5 + 8) + 24) = a3;
      return result;
    case 'p':
      *(*(result[6] + 8) + 24) = 1;
      break;
  }

  return result;
}

id sub_10000680C(void *a1)
{
  v1 = [a1 fp_map:&stru_10001CFE8];
  v2 = [v1 componentsJoinedByString:{@", "}];

  return v2;
}

id sub_100006868(id a1, FPTag *a2)
{
  v2 = a2;
  v3 = [(FPTag *)v2 label];
  v4 = [(FPTag *)v2 color];

  v5 = [NSString stringWithFormat:@"%@#%i", v3, v4];

  return v5;
}

void sub_10000758C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = sub_10000B058(a3, a4);
    [v4 dumpImage:v5 characterWidth:2 characterHeight:1];
  }
}

void sub_1000075F8(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v6 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v10 = *v28;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v27 + 1) + 8 * i);
      v13 = [v12 type];
      v14 = [v13 isEqualToString:v6];

      if (v14)
      {
        [*(a1 + 40) startFgColor:a3 attr:2];
        v15 = *(a1 + 48);
        v26 = 0;
        v16 = [v12 labelWithItem:v15 error:&v26];
        v17 = v26;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }

        [*(a1 + 40) write:{@" %@", v18}];
        if (!a4)
        {
          goto LABEL_19;
        }

        v19 = [v12 imageType];
        v20 = [UTType typeWithIdentifier:v19];
        v21 = [v20 isDeclared];

        if (v21)
        {
          if (!*(a1 + 56))
          {
LABEL_19:

            goto LABEL_20;
          }

          v22 = @" (%@)";
        }

        else
        {
          [*(a1 + 40) startFgColor:1 attr:2];
          v22 = @" (undeclared type %@)";
        }

        v23 = *(a1 + 40);
        v24 = [v12 imageType];
        [v23 write:{v22, v24}];

        goto LABEL_19;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_20:
}

void sub_100007828(void *a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000078C4;
  v4[3] = &unk_10001CC80;
  v5 = a2;
  v3 = v5;
  sub_10000AB2C(a1, 0, 1, v4);
}

void sub_1000078C4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = +[FPItemManager defaultManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000079B0;
    v7[3] = &unk_10001D0F0;
    v9 = *(a1 + 32);
    v8 = v5;
    [v6 fetchItemForURL:v8 completionHandler:v7];
  }
}

void sub_1000079B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v166 = v5;
  if (!v6)
  {
    if (!v5)
    {
      sub_10000AA00(@"No item for URL %@\n", v7, v8, v9, v10, v11, v12, v13, *(a1 + 32));
      v81 = *(a1 + 32);
      v82 = *(a1 + 40);
      v205 = NSURLErrorKey;
      v206 = v81;
      v83 = [NSDictionary dictionaryWithObjects:&v206 forKeys:&v205 count:1];
      v84 = [NSError errorWithDomain:NSFileProviderErrorDomain code:-1005 userInfo:v83];
      (*(v82 + 16))(v82, v84);

      v14 = v83;
      goto LABEL_60;
    }

    v163 = a1;
    v199 = 0;
    v165 = [FPProviderDomain providerDomainForItem:v5 cachePolicy:0 error:&v199];
    v169 = v199;
    if (!v165)
    {
      (*(*(a1 + 40) + 16))();
LABEL_59:

      v14 = v169;
      goto LABEL_60;
    }

    v15 = [sub_1000082B8() actionsForProviderDomain:v165];
    v16 = sub_1000082B8();
    v204 = v5;
    v17 = [NSArray arrayWithObjects:&v204 count:1];
    v168 = [v16 extensionMatchingDictionaryForItems:v17 fpProviderDomain:v165];

    sub_10000A8EC(@"Evaluating actions against %@", v18, v19, v20, v21, v22, v23, v24, v168);
    sub_10000A8EC(@"\nActions:", v25, v26, v27, v28, v29, v30, v31, v157);
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    obj = v15;
    v32 = [obj countByEnumeratingWithState:&v195 objects:v203 count:16];
    if (v32)
    {
      v33 = *v196;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v196 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v195 + 1) + 8 * i);
          v36 = [v35 predicate];
          if ([v36 evaluateWithObject:v168])
          {
            v37 = @"YES";
          }

          else
          {
            v37 = @"NO";
          }

          v38 = v37;

          v39 = [v35 identifier];
          v160 = [v35 predicate];
          sub_10000A8EC(@"%@: %@ - %@", v40, v41, v42, v43, v44, v45, v46, v39);
        }

        v32 = [obj countByEnumeratingWithState:&v195 objects:v203 count:16];
      }

      while (v32);
    }

    sub_10000A8EC(@"\nDecorations:", v47, v48, v49, v50, v51, v52, v53, v158);
    v54 = [v166 itemDecorations];
    v162 = dispatch_semaphore_create(0);
    v191 = 0u;
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v55 = v54;
    v56 = 0;
    v57 = [v55 countByEnumeratingWithState:&v191 objects:v202 count:16];
    if (v57)
    {
      v58 = *v192;
      do
      {
        for (j = 0; j != v57; j = j + 1)
        {
          if (*v192 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v56 |= [*(*(&v191 + 1) + 8 * j) requiresFetchingInfoFirst];
        }

        v57 = [v55 countByEnumeratingWithState:&v191 objects:v202 count:16];
      }

      while (v57);
    }

    v60 = [v55 fp_map:&stru_10001D078];
    v61 = [v166 decorations];
    v189[0] = _NSConcreteStackBlock;
    v189[1] = 3221225472;
    v189[2] = sub_1000083A0;
    v189[3] = &unk_10001D0A0;
    v161 = v60;
    v190 = v161;
    v164 = [v61 fp_filter:v189];

    if (v164)
    {
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v69 = v164;
      v77 = [v69 countByEnumeratingWithState:&v185 objects:v201 count:16];
      if (v77)
      {
        v78 = *v186;
        do
        {
          for (k = 0; k != v77; k = k + 1)
          {
            if (*v186 != v78)
            {
              objc_enumerationMutation(v69);
            }

            sub_10000A8EC(@"%@: missing or invalid", v70, v71, v72, v73, v74, v75, v76, *(*(&v185 + 1) + 8 * k));
          }

          v77 = [v69 countByEnumeratingWithState:&v185 objects:v201 count:16];
        }

        while (v77);
      }
    }

    if (v56)
    {
      sub_10000A8EC(@"Item decorations require fetching item hierarchy", v62, v63, v64, v65, v66, v67, v68, v159);
      v179 = 0;
      v180 = &v179;
      v181 = 0x3032000000;
      v182 = sub_1000083C4;
      v183 = sub_1000083D4;
      v184 = 0;
      v175[0] = _NSConcreteStackBlock;
      v175[1] = 3221225472;
      v175[2] = sub_1000083DC;
      v175[3] = &unk_10001D0C8;
      v178 = &v179;
      v80 = v162;
      v176 = v80;
      v177 = v55;
      [FPItemDecoration fetchInfoForItem:v166 completionHandler:v175];
      dispatch_semaphore_wait(v80, 0xFFFFFFFFFFFFFFFFLL);
      if (v180[5])
      {
        (*(*(v163 + 40) + 16))();

        _Block_object_dispose(&v179, 8);
LABEL_58:

        goto LABEL_59;
      }

      _Block_object_dispose(&v179, 8);
    }

    else
    {
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v85 = v55;
      v86 = [v85 countByEnumeratingWithState:&v171 objects:v200 count:16];
      if (v86)
      {
        v87 = *v172;
        do
        {
          v88 = 0;
          v89 = v169;
          do
          {
            if (*v172 != v87)
            {
              objc_enumerationMutation(v85);
            }

            v90 = *(*(&v171 + 1) + 8 * v88);
            v170 = v89;
            v91 = [v90 labelWithItem:v166 error:&v170];
            v169 = v170;

            v92 = [v90 decorationIdentifier];
            v100 = v92;
            if (v91)
            {
              sub_10000A8EC(@"%@: %@", v93, v94, v95, v96, v97, v98, v99, v92);
            }

            else
            {
              sub_10000A8EC(@"%@ failed: %@", v93, v94, v95, v96, v97, v98, v99, v92);
            }

            v88 = v88 + 1;
            v89 = v169;
          }

          while (v86 != v88);
          v86 = [v85 countByEnumeratingWithState:&v171 objects:v200 count:16];
        }

        while (v86);
      }
    }

    v101 = [v166 humanReadableCapabilities];
    sub_10000A8EC(@"\nCapabilities: %@", v102, v103, v104, v105, v106, v107, v108, v101);

    v109 = [v166 contentPolicy];
    sub_10000A8EC(@"\nContent Policy: %ld", v110, v111, v112, v113, v114, v115, v116, v109);
    v117 = [v166 inheritedContentPolicy];
    sub_10000A8EC(@"\nInherited Content Policy: %ld", v118, v119, v120, v121, v122, v123, v124, v117);
    v125 = [v166 effectiveContentPolicy];
    sub_10000A8EC(@"\nEffective Content Policy: %ld", v126, v127, v128, v129, v130, v131, v132, v125);
    if ([v166 isEvictedWithClone])
    {
      v140 = @"yes";
    }

    else
    {
      v140 = @"no";
    }

    sub_10000A8EC(@"\nEvicted with clone: %@", v133, v134, v135, v136, v137, v138, v139, v140);
    if ([v166 isSyncPaused])
    {
      v148 = @"yes";
    }

    else
    {
      v148 = @"no";
    }

    sub_10000A8EC(@"\nSync is paused: %@", v141, v142, v143, v144, v145, v146, v147, v148);
    if ([v166 supportsUploadWithFailOnConflict])
    {
      v156 = @"yes";
    }

    else
    {
      v156 = @"no";
    }

    sub_10000A8EC(@"\nProvider supports upload with fail on conflict: %@", v149, v150, v151, v152, v153, v154, v155, v156);
    (*(*(v163 + 40) + 16))();
    goto LABEL_58;
  }

  v14 = v6;
  (*(*(a1 + 40) + 16))();
LABEL_60:
}

id sub_1000082B8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100021498;
  v7 = qword_100021498;
  if (!qword_100021498)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100009334;
    v3[3] = &unk_10001D180;
    v3[4] = &v4;
    sub_100009334(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100008380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000083C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000083DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    v8 = *(a1 + 32);
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = a1;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v7 = 0;
      v12 = *v29;
      do
      {
        v13 = 0;
        v14 = v7;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v28 + 1) + 8 * v13);
          v27 = v14;
          v16 = [v15 labelWithInfo:v5 error:&v27];
          v7 = v27;

          v17 = [v15 decorationIdentifier];
          v25 = v17;
          if (v16)
          {
            sub_10000A8EC(@"%@: %@", v18, v19, v20, v21, v22, v23, v24, v17);
          }

          else
          {
            sub_10000A8EC(@"%@ failed: %@", v18, v19, v20, v21, v22, v23, v24, v17);
          }

          v13 = v13 + 1;
          v14 = v7;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v26 + 32);
  }

  dispatch_semaphore_signal(v8);
}

void sub_1000085A4(int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1 <= 1)
  {
    v6 = [NSError fp_errorWithPOSIXCode:22 description:@"Error: fileproviderctl evaluate <item>"];
    v5[2](v5, v6);
LABEL_5:

    goto LABEL_18;
  }

  if (a1 == 2)
  {
    v6 = [NSString stringWithUTF8String:*(a2 + 8)];
    sub_100007828(v6, v5);
    goto LABEL_5;
  }

  v53[0] = FPPreflightActionCreate;
  v53[1] = FPPreflightActionMove;
  v53[2] = FPPreflightActionMoveOut;
  v53[3] = FPPreflightActionMoveIn;
  v53[4] = FPPreflightActionCopy;
  v53[5] = FPPreflightActionCopyIn;
  v53[6] = FPPreflightActionCopyOut;
  v53[7] = FPPreflightActionTrash;
  v53[8] = FPPreflightActionDelete;
  v53[9] = FPPreflightActionRename;
  v53[10] = FPPreflightActionIgnore;
  v33 = [NSArray arrayWithObjects:v53 count:11];
  [NSString stringWithUTF8String:*(a2 + 8)];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100008B48;
  v7 = v37[3] = &unk_10001D0A0;
  v38 = v7;
  v32 = [v33 fp_filter:v37];
  v15 = [v32 lastObject];
  if (v15)
  {
    v16 = +[NSMutableArray array];
    v17 = (a2 + 16);
    v18 = a1 - 2;
    do
    {
      v19 = [NSString stringWithUTF8String:*v17];
      [v16 addObject:v19];

      ++v17;
      --v18;
    }

    while (v18);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100008BB8;
    v34[3] = &unk_10001D158;
    v36 = v5;
    v35 = v15;
    v20 = v16;
    v31 = v34;
    v21 = dispatch_group_create();
    v22 = +[NSMutableArray array];
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = sub_1000083C4;
    v51[4] = sub_1000083D4;
    v52 = 0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v23 = v20;
    v24 = [v23 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v24)
    {
      v25 = *v48;
      while (1)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v26 = +[NSNull null];
        [v22 addObject:v26];

        if (!--v24)
        {
          v24 = [v23 countByEnumeratingWithState:&v47 objects:v54 count:16];
          if (!v24)
          {
            break;
          }
        }
      }
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000094D4;
    v43[3] = &unk_10001D230;
    v27 = v21;
    v44 = v27;
    v28 = v22;
    v45 = v28;
    v46 = v51;
    [v23 enumerateObjectsUsingBlock:v43];
    v29 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009874;
    block[3] = &unk_10001D258;
    v41 = v31;
    v42 = v51;
    v40 = v28;
    v30 = v28;
    dispatch_group_notify(v27, v29, block);

    _Block_object_dispose(v51, 8);
  }

  else
  {
    sub_10000AA00(@"%@ is not a valid action; possible actions are %@", v8, v9, v10, v11, v12, v13, v14, v7);
    v23 = [NSError fp_errorWithPOSIXCode:22 description:@"Error: fileproviderctl evaluate <action> <items>"];
    v5[2](v5, v23);
  }

LABEL_18:
}

id sub_100008B48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 lowercaseString];
  v5 = [v3 lowercaseString];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void sub_100008BB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 firstObject];
    v96 = 0;
    v9 = [FPProviderDomain providerDomainForItem:v8 cachePolicy:0 error:&v96];
    v7 = v96;

    if (!v9)
    {
      (*(*(a1 + 40) + 16))();
LABEL_36:

      goto LABEL_37;
    }

    v10 = FPPreflightActionMove;
    if (([*(a1 + 32) isEqualToString:FPPreflightActionMove] & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", FPPreflightActionCopy))
    {
      if ([v5 count] <= 1)
      {
        v11 = *(a1 + 40);
        [NSError fp_errorWithPOSIXCode:22 description:@"Error: %@ and %@ require at least two items (sources and destination)", v10, FPPreflightActionCopy];
        v12 = LABEL_8:;
        (*(v11 + 16))(v11, v12);
        v13 = v7;
LABEL_35:

        v7 = v13;
        goto LABEL_36;
      }

      v12 = [v5 mutableCopy];
      [v12 removeLastObject];
      v14 = [v5 lastObject];
    }

    else
    {
      v15 = FPPreflightActionCreate;
      if ([*(a1 + 32) isEqualToString:FPPreflightActionCreate])
      {
        if ([v5 count] != 1)
        {
          v11 = *(a1 + 40);
          [NSError fp_errorWithPOSIXCode:22 description:@"Error: %@ requires exactly one item (parent folder)", v15, v72];
          goto LABEL_8;
        }

        v14 = [v5 lastObject];
        v12 = 0;
      }

      else
      {
        v12 = v5;
        v14 = 0;
      }
    }

    v16 = *(a1 + 32);
    v17 = [v12 fp_map:&stru_10001D130];
    [v14 itemIdentifier];
    v74 = v73 = v17;
    sub_10000A8EC(@"Evaluating %@ with source items %@, destination item %@", v18, v19, v20, v21, v22, v23, v24, v16);

    v25 = [FPPreflightUserInteraction evaluationObjectsForAction:*(a1 + 32) sourceItems:v12 destinationItem:v14 domainUserInfo:0 sourceItemKeysAllowList:0 destinationItemKeysAllowList:0];
    v26 = [v5 firstObject];
    v95 = v7;
    v27 = [FPPreflightUserInteraction interactionsForProviderItem:v26 error:&v95];
    v13 = v95;

    v34 = v25;
    if (v27)
    {
      v76 = v13;
      v77 = v14;
      v78 = v12;
      v79 = a1;
      v80 = v9;
      v81 = v5;
      sub_10000A8EC(@"Evaluating interactions against %@", v13, v28, v29, v30, v31, v32, v33, v25);
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v75 = v27;
      obj = v27;
      v88 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
      if (v88)
      {
        v87 = *v92;
        v85 = FPIsSuppressed;
        v84 = FPCanBeSuppressed;
        v35 = &stru_10001E8F8;
        v83 = FPHelpURLKey;
        v86 = v25;
        do
        {
          for (i = 0; i != v88; i = i + 1)
          {
            if (*v92 != v87)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v91 + 1) + 8 * i);
            v38 = [v37 evaluateWithObjectsByName:v34 suppressionDelegate:0];
            v39 = [v38 count];
            v40 = sub_1000091A0(v37);
            v48 = v40;
            if (v39)
            {
              v90 = v40;
              v49 = v35;
              v50 = [v38 firstObject];
              v51 = [v50 userInfo];
              v52 = [v51 objectForKeyedSubscript:v85];
              v89 = [v52 BOOLValue];

              v53 = [v50 userInfo];
              v54 = [v53 objectForKeyedSubscript:v84];
              v55 = [v54 BOOLValue];

              v56 = [v50 userInfo];
              v57 = [v56 objectForKeyedSubscript:v83];

              if (v57)
              {
                v58 = [NSString stringWithFormat:@", %@", v57, v73, v74];
                v35 = v49;
              }

              else
              {
                v35 = v49;
                v58 = v49;
              }

              v59 = [v50 localizedDescription];
              v60 = [v50 localizedRecoverySuggestion];
              v61 = v60;
              v62 = @", can be suppressed";
              if (!v55)
              {
                v62 = v35;
              }

              v63 = @", suppressed";
              if (!v89)
              {
                v63 = v35;
              }

              v64 = [NSString stringWithFormat:@"%@ - %@%@%@ %@", v59, v60, v62, v63, v58];

              v48 = v90;
              v73 = v64;
              sub_10000A8EC(@"%@ - %@", v65, v66, v67, v68, v69, v70, v71, v90);

              v34 = v86;
            }

            else
            {
              sub_10000A8EC(@"%@ - no match", v41, v42, v43, v44, v45, v46, v47, v40);
            }
          }

          v88 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
        }

        while (v88);
      }

      v9 = v80;
      v5 = v81;
      v12 = v78;
      a1 = v79;
      v13 = v76;
      v14 = v77;
      v27 = v75;
    }

    (*(*(a1 + 40) + 16))();

    goto LABEL_35;
  }

  v7 = v6;
  (*(*(a1 + 40) + 16))();
LABEL_37:
}

id sub_1000091A0(void *a1)
{
  v1 = a1;
  v2 = [v1 userInteractionIdentifier];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [v1 userInteractionIdentifier];
    v5 = [v1 predicate];
    v6 = [NSString stringWithFormat:@"%@: %@", v4, v5];
  }

  else
  {
    v4 = [v1 predicate];
    v6 = [NSString stringWithFormat:@"%@", v4];
  }

  return v6;
}

id sub_100009280(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithUTF8String:a1];
  v4 = [NSURL fileURLWithPath:v3];

  v7 = 0;
  if ([v4 getResourceValue:&v7 forKey:NSURLUbiquitousItemDownloadingStatusKey error:a2])
  {
    v5 = [v7 isEqualTo:NSURLUbiquitousItemDownloadingStatusCurrent];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

Class sub_100009334(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1000214A0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100009460;
    v3[4] = &unk_10001D1B8;
    v3[5] = v3;
    v4 = off_10001D1A0;
    v5 = 0;
    qword_1000214A0 = _sl_dlopen();
  }

  if (!qword_1000214A0)
  {
    sub_100011AF0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FPUIManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100011A74();
  }

  qword_100021498 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100009460(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000214A0 = result;
  return result;
}

void sub_1000094D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  dispatch_group_enter(v5);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000095AC;
  v9[3] = &unk_10001D208;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = v7;
  v12 = v8;
  v11 = *(a1 + 32);
  v13 = a3;
  sub_10000AB2C(v6, 0, 1, v9);
}

void sub_1000095AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 40));
    objc_sync_exit(v7);
  }

  else
  {
    v8 = +[FPItemManager defaultManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000096F8;
    v13[3] = &unk_10001D1E0;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v14 = v9;
    v17 = v10;
    v11 = v5;
    v12 = *(a1 + 56);
    v15 = v11;
    v18 = v12;
    v16 = *(a1 + 40);
    [v8 fetchItemForURL:v11 completionHandler:v13];
  }
}

void sub_1000096F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  else if (v5)
  {
    [*(a1 + 32) replaceObjectAtIndex:*(a1 + 64) withObject:v5];
  }

  else
  {
    sub_10000AA00(@"No item for URL %@\n", v8, v9, v10, v11, v12, v13, v14, *(a1 + 40));
    v15 = *(a1 + 40);
    v20 = NSURLErrorKey;
    v21 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = [NSError errorWithDomain:NSFileProviderErrorDomain code:-1005 userInfo:v16];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  dispatch_group_leave(*(a1 + 48));
  objc_sync_exit(v7);
}

uint64_t sub_100009874(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  if (*(*(*(v3 + 8) + 8) + 40))
  {
    return (*(v2 + 16))(v2, 0);
  }

  else
  {
    return (*(v2 + 16))(v2, *(a1 + 32));
  }
}

void sub_1000098A4(int a1, char *const *a2, void *a3)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100009B18;
  v14[3] = &unk_10001D2F8;
  v5 = a3;
  v15 = v5;
  v26 = a1;
  v25 = a2;
  v6 = v14;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000A4A4;
  v19[3] = &unk_10001CA38;
  v19[4] = v20;
  v19[5] = &v21;
  sub_1000024D8(&v26, &v25, "lAo:", &off_10001D318, v19);
  v7 = v22[3];
  if (!v7)
  {
    v8 = NSTemporaryDirectory();
    v9 = [v8 stringByAppendingPathComponent:@"FileProviderDiagnose"];

    v10 = +[NSFileManager defaultManager];
    [v10 removeItemAtPath:v9 error:0];

    v11 = [v9 fileSystemRepresentation];
    v22[3] = v11;

    v7 = v22[3];
  }

  v12 = [NSString stringWithUTF8String:v7];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000A4F8;
  v16[3] = &unk_10001D3A0;
  v13 = v6;
  v17 = v13;
  v18 = v20;
  sub_10000AB2C(v12, 1, 0, v16);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);
}

void sub_100009AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100009B18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v52 = 0;
    v7 = [v5 path];
    v8 = [v6 fileExistsAtPath:v7 isDirectory:&v52];

    if (v8)
    {
      if ((v52 & 1) == 0)
      {
        v16 = [NSString stringWithFormat:@"A file (not dir) already exists at %@.", v5];
        sub_10000A8EC(@"%@. Aborting.", v17, v18, v19, v20, v21, v22, v23, v16);
        v24 = *(a1 + 32);
        v25 = [NSError fp_errorWithPOSIXCode:22 description:@"%@", v16];
        (*(v24 + 16))(v24, v25);

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      sub_10000A8EC(@"Creating diagnose directory at %@.\n", v9, v10, v11, v12, v13, v14, v15, v5);
      v51 = 0;
      v26 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:&__NSDictionary0__struct error:&v51];
      v27 = v51;
      v16 = v27;
      if ((v26 & 1) == 0)
      {
        sub_10000A8EC(@"Can't create diagnose folder, error: %@.\n", v28, v29, v30, v31, v32, v33, v34, v27);
        (*(*(a1 + 32) + 16))();
        goto LABEL_10;
      }
    }

    v35 = dispatch_group_create();
    sub_10000A8EC(@"Getting domains.\n", v36, v37, v38, v39, v40, v41, v42, v44);
    dispatch_group_enter(v35);
    v43 = +[FPDaemonConnection sharedConnection];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100009DCC;
    v47[3] = &unk_10001D2A8;
    v50 = a2;
    v48 = v5;
    v49 = v35;
    v16 = v35;
    [v43 providerDomainsCompletionHandler:v47];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A490;
    block[3] = &unk_10001D2D0;
    v46 = *(a1 + 32);
    dispatch_group_notify(v16, &_dispatch_main_q, block);

    goto LABEL_10;
  }

  (*(*(a1 + 32) + 16))();
LABEL_11:
}

void sub_100009DCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v46 = v5;
  if (v5)
  {
    v7 = [v5 fp_prettyDescription];
    sub_10000A8EC(@"Getting domains found error %@.\n", v8, v9, v10, v11, v12, v13, v14, v7);
  }

  v49 = *(a1 + 48);
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10000A42C;
  v54[3] = &unk_10001D280;
  v15 = *(a1 + 32);
  v55 = *(a1 + 40);
  v51 = v15;
  v47 = v6;
  v45 = v54;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3032000000;
  v65[3] = sub_10000A5C0;
  v65[4] = sub_10000A5D0;
  v66 = 0;
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v44 = dispatch_queue_create("concurrent_domain_dump_queue", v16);

  group = dispatch_group_create();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v17 = [v47 allKeys];
  v18 = [v17 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v18)
  {
    v19 = 0;
    v50 = *v62;
    obj = v17;
    do
    {
      v53 = v18;
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v62 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v61 + 1) + 8 * i);
        v22 = [v51 path];
        v23 = [v21 fp_obfuscatedProviderDomainID];
        v24 = [v23 pathComponents];
        v25 = [v24 mutableCopy];

        v26 = [v25 firstObject];
        [v25 removeObjectAtIndex:0];
        if ([v25 count])
        {
          v27 = [v25 componentsJoinedByString:@":"];
          if (fp_shouldObfuscateFilenames())
          {
            v28 = [(__CFString *)v27 stringByAppendingFormat:@"_%d", v19];

            v27 = v28;
          }
        }

        else
        {
          v27 = @"default";
        }

        v29 = [v22 stringByAppendingPathComponent:v26];
        v30 = [FPTask sanitizeStringForFilename:v27];
        v31 = [v29 stringByAppendingPathComponent:v30];

        v32 = [v31 stringByDeletingLastPathComponent];
        v33 = +[NSFileManager defaultManager];
        [v33 fp_createPathIfNeeded:v32];

        dispatch_group_enter(group);
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v57 = sub_10000A5D8;
        v58 = &unk_10001CCA8;
        v60 = v65;
        v59 = group;
        v34 = v21;
        v35 = v56;
        v36 = [v31 stringByAppendingString:@"_dump.log"];
        v37 = v36;
        v38 = open([v36 fileSystemRepresentation], 2565, 384);
        if ((v38 & 0x80000000) != 0)
        {
          v41 = *__error();
          v42 = *__error();
          v43 = __error();
          v39 = [NSError fp_errorWithPOSIXCode:v41 description:@"%d (%s): %@", v42, strerror(*v43), @"Unable to create file for domain dump", v44];
          v57(v35, v39);
        }

        else
        {
          v39 = [[NSFileHandle alloc] initWithFileDescriptor:v38 closeOnDealloc:1];
          v40 = [FPDaemonConnection connectionForUser:geteuid()];
          block = _NSConcreteStackBlock;
          v68 = 3221225472;
          v69 = sub_10000A654;
          v70 = &unk_10001D3C8;
          v71 = v36;
          v72 = v35;
          [v40 dumpStateTo:v39 providerFilter:v34 options:v49 completionHandler:&block];
        }

        v19 = (v19 + 1);
      }

      v17 = obj;
      v18 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v18);
  }

  block = _NSConcreteStackBlock;
  v68 = 3221225472;
  v69 = sub_10000A638;
  v70 = &unk_10001CAB0;
  v71 = v45;
  v72 = v65;
  dispatch_group_notify(group, &_dispatch_main_q, &block);

  _Block_object_dispose(v65, 8);
}

void sub_10000A42C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 fp_prettyDescription];
    sub_10000A8EC(@"dump_domains found error %@.\n", v4, v5, v6, v7, v8, v9, v10, v3);
  }

  v11 = *(a1 + 32);

  dispatch_group_leave(v11);
}

uint64_t sub_10000A4A4(uint64_t result, int a2, uint64_t a3)
{
  switch(a2)
  {
    case 'A':
      v3 = *(*(result + 32) + 8);
      v4 = *(v3 + 24) | 2;
      goto LABEL_8;
    case 'o':
      *(*(*(result + 40) + 8) + 24) = a3;
      break;
    case 'l':
      v3 = *(*(result + 32) + 8);
      v4 = *(v3 + 24) | 1;
LABEL_8:
      *(v3 + 24) = v4;
      break;
  }

  return result;
}

void sub_10000A4F8(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = [v5 lastPathComponent];
  v7 = [v6 isEqualToString:@"FileProvider"];

  v8 = *(a1 + 32);
  v9 = *(*(*(a1 + 40) + 8) + 24);
  if ((v7 & 1) == 0)
  {
    v10 = [v5 URLByAppendingPathComponent:@"FileProvider"];

    v5 = v10;
  }

  (*(v8 + 16))(v8, v9, v5, v11);
}

uint64_t sub_10000A5C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A5D8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10000A654(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v11 = a2;
  sub_10000A8EC(@"Finished dump at %@\n", v4, v5, v6, v7, v8, v9, v10, v3);
  (*(*(a1 + 40) + 16))();
}

void sub_10000A6BC(uint64_t a1, const char *a2, char *a3)
{
  puts(a3);
  v5 = getprogname();
  v6 = "";
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = "";
  }

  if (a2)
  {
    v6 = " ";
  }

  printf("Usage: %s %s%s<verb> <options>, where <verb> is as follows:\n\n", v5, v7, v6);
  for (i = a1 + 24; *(i + 8) || *(i + 16); i += 48)
  {
    if (*i == 1)
    {
      v11 = *(i - 16);
      v13 = *(i - 8);
      v9 = **(i - 24);
      printf("    %c|%s %s\n        %s\n\n");
    }

    else
    {
      v10 = *(i - 16);
      v12 = *(i - 8);
      printf("    %s %s\n        %s\n\n");
    }
  }

  exit(64);
}

void sub_10000A788(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v19 = a4;
  v7 = (a2 - 1);
  if (a2 <= 1)
  {
    printf("Error: argc <= %d: (argc = %d)\n", 1, a2);
    exit(65);
  }

  v10 = *(a3 + 8);
  v8 = (a3 + 8);
  v9 = v10;
  for (i = (a1 + 40); ; i += 6)
  {
    v12 = *(i - 1);
    if (!v12 && !*i)
    {
      goto LABEL_20;
    }

    if (*(i - 2))
    {
      v13 = strlen(v9);
      v14 = *(i - 5);
      if (v13 == 1 && *v9 == *v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = *(i - 5);
    }

    if (strcmp(v9, v14))
    {
      continue;
    }

LABEL_11:
    if (v12)
    {
      v15 = v12(v7, v8);
      if (v15)
      {
        v16 = v15;
        if (v15 != 64)
        {
          v17 = __error();
          v18 = strerror(*v17);
          printf("error: %s\n", v18);
          exit(v16);
        }

        v9 = *v8;
LABEL_20:
        fprintf(__stderrp, "Unknown command '%s'\n", v9);
        v15 = 64;
      }

      exit(v15);
    }

    if (*i)
    {
      break;
    }
  }

  (*i)(v7, v8, v19);
}

void sub_10000A8EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];

  fprintf(__stdoutp, "%s\n", [v10 UTF8String]);
}

void sub_10000A974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];

  fputs([v10 UTF8String], __stdoutp);
  fflush(__stdoutp);
}

void sub_10000AA00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];

  fprintf(__stderrp, "%s\n", [v10 UTF8String]);
}

BOOL sub_10000AA88(void *a1)
{
  v1 = [a1 path];
  getpid();
  [v1 fileSystemRepresentation];
  v2 = sandbox_check() == 0;

  return v2;
}

void sub_10000AB2C(void *a1, char a2, char a3, void *a4)
{
  v7 = a1;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000AEB0;
  v24[3] = &unk_10001D3F0;
  v26 = a3;
  v8 = a4;
  v25 = v8;
  v9 = objc_retainBlock(v24);
  if ([v7 length] <= 0x3FF)
  {
    v10 = [v7 stringByExpandingTildeInPath];

    v7 = v10;
  }

  v11 = [v7 characterAtIndex:{objc_msgSend(v7, "length") - 1}];
  if (![v7 hasPrefix:@"fp:"])
  {
    v12 = +[NSFileManager defaultManager];
    if ([v7 hasPrefix:@"/"])
    {
      v13 = [NSURL fileURLWithPath:v7 isDirectory:v11 == 47];
      v14 = v13;
      if (v11 == 47)
      {
        v15 = [v13 URLByResolvingSymlinksInPath];

        v14 = v15;
        if ([v15 fp_isSymlink])
        {
          sub_100011B70();
        }
      }
    }

    else if ([v7 hasPrefix:@"file://"])
    {
      v14 = [NSURL URLWithString:v7];
    }

    else
    {
      v16 = getcwd(0, 0);
      if (!v16 || (v17 = v16, [NSString stringWithUTF8String:v16], v18 = objc_claimAutoreleasedReturnValue(), free(v17), !v18))
      {
        v14 = [NSError fp_errorWithPOSIXCode:*__error() description:@"Couldn't determine current working directory"];
        (v9[2])(v9, 0, 0, v14);
LABEL_19:

        goto LABEL_20;
      }

      v19 = [v18 stringByAppendingPathComponent:v7];
      v14 = [NSURL fileURLWithPath:v19];
    }

    v20 = [v14 path];
    v21 = faccessat(-2, [v20 fileSystemRepresentation], 0, 32);

    if ((a2 & 1) != 0 || !v21)
    {
      (v9[2])(v9, v14, v21 == 0, 0);
    }

    else
    {
      v22 = [NSError fp_errorWithPOSIXCode:2 description:@"Couldn't find a file for %@", v7];
      (v9[2])(v9, 0, 0, v22);
    }

    goto LABEL_19;
  }

  v23 = v9;
  FPDocumentURLFromBookmarkableString();
  v12 = v23;
LABEL_20:
}

void sub_10000AEB0(uint64_t a1, void *a2, int a3, void *a4)
{
  v11 = a2;
  v7 = a4;
  if (v7 || !a3 || (v8 = *(a1 + 40), sub_10000AA88(v11)))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [NSError fp_errorWithPOSIXCode:1 description:@"Couldn't access src file %@ (exist: %d)", v11, 1];
    (*(v9 + 16))(v9, 0, v10);
  }
}

void sub_10000AFA8(const char *a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 stringWithFileSystemRepresentation:a1 length:strlen(a1)];

  sub_10000AB2C(v9, a2, a3, v7);
}

id sub_10000B058(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 isEqualToString:FPThumbnailFormatLICachedBitmap])
  {
    v5 = LICreateIconFromCachedBitmap();
    v6 = [sub_10000B164() imageWithCGImage:v5];
    CFRelease(v5);
    v7 = sub_10000B244(v6);
LABEL_5:

    goto LABEL_7;
  }

  if ([v4 isEqualToString:FPThumbnailFormatBRUndecorated])
  {
    v6 = [sub_10000B164() imageWithData:v3];
    v8 = [v6 _applicationIconImageForFormat:2 precomposed:0];
    v7 = sub_10000B244(v8);

    goto LABEL_5;
  }

  v7 = v3;
LABEL_7:

  return v7;
}

id sub_10000B164()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000214A8;
  v7 = qword_1000214A8;
  if (!qword_1000214A8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000C6D4;
    v3[3] = &unk_10001D180;
    v3[4] = &v4;
    sub_10000C6D4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000B244(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_1000214B8;
  v9 = off_1000214B8;
  if (!off_1000214B8)
  {
    v3 = sub_10000C72C();
    v7[3] = dlsym(v3, "UIImagePNGRepresentation");
    off_1000214B8 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    sub_100011B9C();
  }

  v4 = v2(v1);

  return v4;
}

void sub_10000B354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B36C(void *a1)
{
  v1 = a1;
  v2 = [v1 domainFullDisplayName];
  [v1 isUsingFPFS];
  [v1 isEnabled];
  [v1 isHidden];
  [v1 needsAuthentication];
  [v1 testingModes];
  [v1 testingModes];
  [v1 disconnectionState];
  v3 = [v1 disconnectionReason];
  v4 = FPConnectionStateToPrettyString();
  v25 = [v1 identifier];
  sub_10000A8EC(@" - %@%@%@%@%@%@%@%@\n\t%@", v5, v6, v7, v8, v9, v10, v11, v2);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [v1 storageURLs];
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v26 + 1) + 8 * i) fp_shortDescription];
        sub_10000A8EC(@"\t%@", v18, v19, v20, v21, v22, v23, v24, v17);
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }
}

BOOL sub_10000B5B4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B6B0;
  v11[3] = &unk_10001D440;
  v12 = a3;
  v6 = v12;
  v7 = [a1 fp_filter:v11];
  v8 = [v7 count];
  if (v8 == 1)
  {
    v9 = [v7 firstObject];
    [v5 addObject:v9];
  }

  return v8 == 1;
}

void sub_10000B6C0(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B874;
  v15[3] = &unk_10001D538;
  v19 = v21;
  v8 = v7;
  v16 = v8;
  v20 = a2;
  v9 = v5;
  v17 = v9;
  v10 = v6;
  v18 = v10;
  v11 = [FPProviderDomain beginMonitoringProviderDomainChangesWithHandler:v15];
  v12 = v11;
  if (v11)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000C2B4;
    v13[3] = &unk_10001D560;
    v14 = v11;
    dispatch_group_notify(v8, &_dispatch_main_q, v13);
  }

  _Block_object_dispose(v21, 8);
}

void sub_10000B874(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 32));
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v4 = [v3 allValues];
    v5 = v4;
    v6 = *(a1 + 64);
    if ((v6 & 1) == 0)
    {
      v7 = [v4 fp_filter:&stru_10001D480];

      v6 = *(a1 + 64);
      v5 = v7;
    }

    if ((v6 & 4) != 0)
    {
      v8 = [v5 fp_filter:&stru_10001D4A0];

      v5 = v8;
    }

    v9 = +[NSMutableSet set];
    v10 = *(a1 + 40);
    if (v10)
    {
      v18 = [v10 count];
      if (!v18)
      {
        v61 = 0;
        sub_10000AA00(@"Available providers:", v11, v12, v13, v14, v15, v16, v17, v58);
        goto LABEL_38;
      }

      v60 = v3;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v19 = *(a1 + 40);
      v20 = [v19 countByEnumeratingWithState:&v80 objects:v87 count:16];
      if (v20)
      {
        v21 = v20;
        v61 = v18;
        v66 = *v81;
        v65 = 0;
        v62 = a1;
        v63 = v9;
        do
        {
          v22 = 0;
          v64 = v21;
          do
          {
            if (*v81 != v66)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v80 + 1) + 8 * v22);
            v79[0] = _NSConcreteStackBlock;
            v79[1] = 3221225472;
            v79[2] = sub_10000C024;
            v79[3] = &unk_10001D4C8;
            v79[4] = v23;
            v24 = [v5 fp_filter:v79];
            if (![v24 count])
            {
              v78[0] = _NSConcreteStackBlock;
              v78[1] = 3221225472;
              v78[2] = sub_10000C068;
              v78[3] = &unk_10001D4C8;
              v78[4] = v23;
              v25 = [v5 fp_filter:v78];

              v24 = v25;
            }

            if ([v24 count])
            {
              if ((*(a1 + 64) & 2) != 0)
              {
                v33 = v24;
                if ([v33 count] < 2)
                {
                  goto LABEL_25;
                }

                v77[0] = _NSConcreteStackBlock;
                v77[1] = 3221225472;
                v77[2] = sub_10000C0FC;
                v77[3] = &unk_10001D4C8;
                v77[4] = v23;
                if (sub_10000B5B4(v33, v9, v77))
                {
                  goto LABEL_24;
                }

                v76[0] = _NSConcreteStackBlock;
                v76[1] = 3221225472;
                v76[2] = sub_10000C140;
                v76[3] = &unk_10001D4C8;
                v76[4] = v23;
                if (sub_10000B5B4(v33, v9, v76))
                {
                  goto LABEL_24;
                }

                v75[0] = _NSConcreteStackBlock;
                v75[1] = 3221225472;
                v75[2] = sub_10000C184;
                v75[3] = &unk_10001D4C8;
                v75[4] = v23;
                if (sub_10000B5B4(v33, v9, v75) || (v74[0] = _NSConcreteStackBlock, v74[1] = 3221225472, v74[2] = sub_10000C1C8, v74[3] = &unk_10001D4C8, v74[4] = v23, sub_10000B5B4(v33, v9, v74)))
                {
LABEL_24:
                  v24 = v33;
                }

                else
                {
LABEL_25:
                  v24 = v33;
                  if ([v33 count] >= 2)
                  {
                    v24 = [v33 fp_filter:&stru_10001D4E8];
                  }

                  if ([v24 count] == 1)
                  {
                    v34 = [v24 firstObject];
                    [v9 addObject:v34];
                  }

                  else
                  {
                    v35 = [v33 objectAtIndexedSubscript:0];
                    v36 = [v35 identifier];
                    v65 = 1;
                    [v33 objectAtIndexedSubscript:1];
                    v37 = v19;
                    v39 = v38 = v5;
                    v59 = [v39 identifier];
                    sub_10000AA00(@"multiple matches found for %@: %@ and %@", v40, v41, v42, v43, v44, v45, v46, v23);

                    v5 = v38;
                    v19 = v37;

                    a1 = v62;
                    v9 = v63;
                  }

                  v21 = v64;
                }
              }

              else
              {
                [v9 addObjectsFromArray:v24];
              }
            }

            else
            {
              sub_10000AA00(@"File provider %@ not found. Available providers:", v26, v27, v28, v29, v30, v31, v32, v23);
              v65 = 1;
            }

            v22 = v22 + 1;
          }

          while (v21 != v22);
          v21 = [v19 countByEnumeratingWithState:&v80 objects:v87 count:16];
        }

        while (v21);

        v3 = v60;
        if ((v65 & 1) == 0)
        {
          goto LABEL_50;
        }

LABEL_38:
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v48 = [v3 allValues];
        v49 = [v48 countByEnumeratingWithState:&v70 objects:v86 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v71;
          do
          {
            for (i = 0; i != v50; i = i + 1)
            {
              if (*v71 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v70 + 1) + 8 * i);
              if ([v53 supportsEnumeration])
              {
                sub_10000B36C(v53);
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v70 objects:v86 count:16];
          }

          while (v50);
        }

        v54 = *(a1 + 48);
        if (v61)
        {
          v84 = NSLocalizedDescriptionKey;
          v85 = @"Could not find a matching provider";
          v55 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v56 = [NSError errorWithDomain:NSFileProviderErrorDomain code:-2001 userInfo:v55];
          (*(v54 + 16))(v54, 0, v56);
        }

        else
        {
          (*(v54 + 16))(v54, 0, 0);
        }

        goto LABEL_51;
      }
    }

    else
    {
      v47 = [NSMutableSet setWithArray:v5];

      v9 = v47;
    }

LABEL_50:
    v57 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C254;
    block[3] = &unk_10001D510;
    v69 = *(a1 + 48);
    v9 = v9;
    v68 = v9;
    dispatch_async(v57, block);

LABEL_51:
  }
}

id sub_10000C024(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 localizedCaseInsensitiveContainsString:*(a1 + 32)];

  return v4;
}

uint64_t sub_10000C068(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domainFullDisplayName];
  if ([v4 localizedCaseInsensitiveContainsString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 domain];
    v7 = [v6 displayName];
    v5 = [v7 localizedCaseInsensitiveContainsString:*(a1 + 32)];
  }

  return v5;
}

id sub_10000C0FC(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_10000C140(uint64_t a1, void *a2)
{
  v3 = [a2 domainDisplayName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_10000C184(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

id sub_10000C1C8(uint64_t a1, void *a2)
{
  v3 = [a2 domainDisplayName];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

BOOL sub_10000C20C(id a1, FPProviderDomain *a2)
{
  v2 = a2;
  if (([(FPProviderDomain *)v2 isHidden]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(FPProviderDomain *)v2 isEnabled];
  }

  return v3;
}

void sub_10000C254(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) allObjects];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_10000C2C8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v9 = v3;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C3DC;
  v7[3] = &unk_10001D588;
  v6 = v4;
  v8 = v6;
  sub_10000B6C0(v5, 2, v7);
  if (v3)
  {
  }
}

void sub_10000C3DC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_10000C458(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v9 = v3;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C56C;
  v7[3] = &unk_10001D588;
  v6 = v4;
  v8 = v6;
  sub_10000B6C0(v5, 2, v7);
  if (v3)
  {
  }
}

void sub_10000C56C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [a2 firstObject];
  v6 = [v7 identifier];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_10000C5F8(int a1, uint64_t *a2, int a3, void *a4)
{
  v7 = a4;
  v12 = v7;
  if (a1)
  {
    v8 = [NSMutableArray arrayWithCapacity:a1];
    if (a1 >= 1)
    {
      v9 = a1;
      do
      {
        v10 = *a2++;
        v11 = [NSString stringWithUTF8String:v10];
        [v8 addObject:v11];

        --v9;
      }

      while (v9);
    }

    sub_10000B6C0(v8, a3, v12);
  }

  else
  {
    sub_10000B6C0(0, a3, v7);
  }
}

Class sub_10000C6D4(uint64_t a1)
{
  sub_10000C72C();
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100011C14();
  }

  qword_1000214A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000C72C()
{
  v2[0] = 0;
  if (!qword_1000214B0)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_10000C824;
    v2[4] = &unk_10001D1B8;
    v2[5] = v2;
    v3 = off_10001D5A8;
    v4 = 0;
    qword_1000214B0 = _sl_dlopen();
  }

  v0 = qword_1000214B0;
  if (!qword_1000214B0)
  {
    sub_100011C90(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_10000C824(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000214B0 = result;
  return result;
}

void *sub_10000C898(uint64_t a1)
{
  v2 = sub_10000C72C();
  result = dlsym(v2, "UIImagePNGRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000214B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000C8E8(void *a1, uint64_t a2, void *a3, void *a4, char a5, char a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  v16 = a1;
  v17 = a3;
  v18 = a4;
  v28 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a12;
  dispatch_group_enter(v17);
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_10000CC24;
  v61 = sub_10000CC34;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_10000CC24;
  v55 = sub_10000CC34;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_10000CC24;
  v49 = sub_10000CC34;
  v50 = 0;
  if (v20)
  {
    objc_storeStrong(&v62, a8);
    v22 = v52;
    v23 = v20;
    v24 = v22[5];
    v22[5] = v23;
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000CC3C;
    block[3] = &unk_10001D5F0;
    v41 = v19;
    v42 = &v45;
    v43 = &v57;
    v44 = &v51;
    dispatch_sync(v18, block);
    v24 = v41;
  }

  if (v58[5])
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000CE48;
    v29[3] = &unk_10001D640;
    v38 = a5;
    v39 = a6;
    v34 = &v57;
    v35 = &v51;
    v36 = a10;
    v30 = v16;
    v37 = a11;
    v31 = v19;
    v25 = v28;
    v32 = v28;
    v33 = v21;
    dispatch_sync(v18, v29);
  }

  else
  {
    (*(v21 + 2))(v21, v46[5]);
    v25 = v28;
  }

  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);
}

void sub_10000CBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000CC24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000CC3C(uint64_t a1)
{
  v2 = +[FPDaemonConnection sharedConnection];
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000CCDC;
  v4[3] = &unk_10001D5C8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  [v2 copyDatabaseForFPCKStartingAtPath:v3 completionHandler:v4];
}

void sub_10000CCDC(void *a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 description];
    NSLog(@"Error copying FPFS databases for FPCK: %@", v7);

    v8 = *(a1[4] + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = [v23 allKeys];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [v23 allKeys];
      v14 = [v13 objectAtIndexedSubscript:0];
      v15 = [v14 copy];
      v16 = *(a1[5] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v10 = [v23 objectForKeyedSubscript:*(*(a1[5] + 8) + 40)];
      v18 = [v10 copy];
      v19 = *(a1[6] + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    else
    {
      v21 = [NSError errorWithDomain:NSFileProviderInternalErrorDomain code:21 userInfo:0];
      v22 = *(a1[4] + 8);
      v10 = *(v22 + 40);
      *(v22 + 40) = v21;
    }
  }
}

void sub_10000CE48(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 96);
  v4 = *(a1 + 97);
  v5 = +[NSMutableString string];
  v15 = [NSURL fileURLWithPath:*(*(*(a1 + 64) + 8) + 40) isDirectory:1];
  v6 = [NSURL fileURLWithPath:*(*(*(a1 + 72) + 8) + 40) isDirectory:0];
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] 🧹 fileproviderctl launching FPCK", buf, 2u);
  }

  v8 = __rbit32(v2 & 3 ^ 1) >> 29;
  if (v3)
  {
    v8 |= 8uLL;
    v9 = 12;
  }

  else
  {
    v9 = 8;
  }

  if (v4)
  {
    v8 |= 0x10uLL;
  }

  v10 = (4 * v2) & 0x20 | (((v2 >> 4) & 7) << 8) | v8;

  v11 = +[FPDaemonConnection sharedConnection];
  v12 = *(a1 + 88);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000D070;
  v16[3] = &unk_10001D618;
  v22 = (v2 & 4) != 0;
  v17 = v5;
  v13 = *(a1 + 32);
  v18 = *(a1 + 40);
  v21 = v10;
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v14 = v5;
  [v11 runFPCKForDomainWithID:v13 domainRootURL:v15 databaseBackupPath:v6 options:v10 reason:v9 launchType:v12 completionHandler:v16];
}

void sub_10000D070(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
LABEL_35:
    v36 = [v12 description];
    NSLog(@"💣 FPCK failed completing: %@", v36);

    goto LABEL_36;
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) appendString:v9];
  }

  v13 = [*(a1 + 40) lastPathComponent];
  v14 = [NSString stringWithFormat:@"\nFPCK for %@:\n", v13];

  [*(a1 + 32) appendString:v14];
  if ([v10 numberOfBrokenFilesInFSAndFSSnapshotCheck] < 1)
  {
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"✅ disk <-> FSSnapshot succeeded on %ld files.\n", [v10 numberOfFilesChecked]);
    v12 = 0;
  }

  else
  {
    v12 = [NSError errorWithDomain:@"FPCKDomain" code:65 userInfo:0];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"❌ disk <-> FSSnapshot failed on %ld/%ld files. \n", [v10 numberOfBrokenFilesInFSAndFSSnapshotCheck], objc_msgSend(v10, "numberOfFilesChecked"));
  }

  [*(a1 + 32) appendString:v15];

  if ([v10 numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck] < 1)
  {
    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"✅ FSSnapshot <-> FPSnapshot succeeded on %ld files. \n\n", [v10 numberOfFilesChecked]);
  }

  else
  {
    v16 = [NSError errorWithDomain:@"FPCKDomain" code:65 userInfo:0];

    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"❌ FSSnapshot <-> FPSnapshot failed on %ld/%ld files. \n\n", [v10 numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck], objc_msgSend(v10, "numberOfFilesChecked"));
    v12 = v16;
  }

  [*(a1 + 32) appendString:v17];

  if ([v10 numberOfBrokenFilesInReconciliationTableCheck] < 1)
  {
    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"✅ ReconciliationTable checks succeeded on %ld files. \n\n", [v10 numberOfFilesChecked]);
  }

  else
  {
    v18 = [NSError errorWithDomain:@"FPCKDomain" code:65 userInfo:0];

    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"❌ ReconciliationTable checks failed on %ld/%ld files. \n\n", [v10 numberOfBrokenFilesInReconciliationTableCheck], objc_msgSend(v10, "numberOfFilesChecked"));
    v12 = v18;
  }

  [*(a1 + 32) appendString:v19];

  if ((*(a1 + 64) & 0x20) != 0)
  {
    if ([v10 numberOfBrokenFilesInBackupManifestCheck] >= 1)
    {
      v20 = [NSError errorWithDomain:@"FPCKDomain" code:65 userInfo:0];

      v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"❌ Backup Manifest <-> FSSnapshot failed on %ld/%ld files. \n\n", [v10 numberOfBrokenFilesInBackupManifestCheck], objc_msgSend(v10, "numberOfFilesChecked"));
      v12 = v20;
LABEL_18:
      [*(a1 + 32) appendString:v21];

      goto LABEL_19;
    }

    if ((*(a1 + 64) & 0x20) != 0)
    {
      v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"✅ Backup Manifest <-> FSSnapshot succeeded on %ld files. \n\n", [v10 numberOfFilesChecked]);
      goto LABEL_18;
    }
  }

LABEL_19:
  if (*(a1 + 72) == 1 && [v11 count])
  {
    v37 = v12;
    v38 = v14;
    v40 = v10;
    v41 = v9;
    [*(a1 + 32) appendString:@"\n✉️   Telemetry report:\n\n"];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v39 = v11;
    v22 = v11;
    v23 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v43 + 1) + 8 * i);
          v28 = [v22 objectForKey:v27];
          v29 = [NSString stringWithFormat:@"%@: %@\n", v27, v28];

          [*(a1 + 32) appendString:v29];
        }

        v24 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v24);
    }

    [*(a1 + 32) appendString:@"\n======================================\n\n"];
    v10 = v40;
    v9 = v41;
    v14 = v38;
    v11 = v39;
    v12 = v37;
  }

  v30 = [*(a1 + 32) dataUsingEncoding:4];
  if (!v30)
  {
    v31 = [@"<Invalid report format>" dataUsingEncoding:4];
  }

  v32 = *(a1 + 48);
  v42 = 0;
  v33 = [v32 writeData:v30 error:&v42];
  v34 = v42;
  v35 = v34;
  if ((v33 & 1) == 0)
  {
    NSLog(@"Error writing FPCK report: %@", v34);
    if (!v12)
    {
      v12 = v35;
    }
  }

  if (v12)
  {
    goto LABEL_35;
  }

LABEL_36:
  (*(*(a1 + 56) + 16))();
}

void sub_10000D628(unsigned int a1, char *const *a2, char a3, char a4, void *a5)
{
  v9 = a5;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_10000CC24;
  v20[4] = sub_10000CC34;
  v21 = dispatch_group_create();
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("fpck", v10);

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000D7B4;
  v14[3] = &unk_10001D708;
  v12 = v9;
  v16 = v12;
  v17 = v20;
  v13 = v11;
  v15 = v13;
  v18 = a3;
  v19 = a4;
  sub_100004E9C(a1, a2, v14);

  _Block_object_dispose(v20, 8);
}

void sub_10000D78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D7B4(uint64_t a1, int a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a10;
  if (!v21)
  {
    if (!v18 && v19)
    {
      v22 = *(a1 + 40);
      v23 = [NSError fp_invalidArgumentError:@"Usage: -b is set, you need to set -a to point to the domain's root"];
      (*(v22 + 16))(v22, v23);

      goto LABEL_29;
    }

    v85 = 0;
    v86 = &v85;
    v87 = 0x3032000000;
    v88 = sub_10000CC24;
    v89 = sub_10000CC34;
    v90 = 0;
    if ((a7 & 8) != 0)
    {
      v28 = *(*(*(a1 + 48) + 8) + 40);
      v30 = *(a1 + 32);
      v29 = *(a1 + 40);
      v62 = v28;
      v60 = v30;
      v59 = v17;
      v57 = v20;
      v66 = v29;
      v109 = 0;
      v110 = &v109;
      v111 = 0x3032000000;
      v112 = sub_10000CC24;
      v113 = sub_10000CC34;
      v114 = objc_opt_new();
      v31 = [@"/.b/9" stringByAppendingPathComponent:@"Library/Mobile Documents"];
      v32 = [NSURL fileURLWithPath:v31 isDirectory:1];

      v33 = sub_100001DB0(v32);
      NSLog(@"snapshotMobileDocumentsURL at %@ is %@", v32, v33);
      if (v33)
      {
        [v110[5] setValue:v32 forKey:v33];
      }

      v55 = v33;
      v56 = v32;
      v34 = [@"/.b/9" stringByAppendingPathComponent:@"Library/CloudStorage"];
      v68 = [NSURL fileURLWithPath:v34 isDirectory:1];

      v35 = +[NSFileManager defaultManager];
      v108 = 0;
      v64 = [v35 contentsOfDirectoryAtURL:v68 includingPropertiesForKeys:0 options:1 error:&v108];
      v36 = v108;

      if (v36)
      {
        v37 = fp_current_or_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100011D10();
        }
      }

      v107[0] = _NSConcreteStackBlock;
      v107[1] = 3221225472;
      v107[2] = sub_10000E634;
      v107[3] = &unk_10001D730;
      v107[4] = &v109;
      [v64 enumerateObjectsUsingBlock:v107];
      v38 = [@"/.b/9" stringByAppendingPathComponent:@"Library/Application Support/FileProvider"];
      v39 = [NSURL fileURLWithPath:v38 isDirectory:1];

      NSLog(@"snapshotFPAppSupportURL is %@", v39);
      v40 = +[NSFileManager defaultManager];
      v106 = 0;
      v41 = [v40 contentsOfDirectoryAtURL:v39 includingPropertiesForKeys:0 options:1 error:&v106];
      v42 = v106;

      if (v42)
      {
        v43 = fp_current_or_default_log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_100011D10();
        }

        v66[2](v66, v42);
      }

      else
      {
        v104[0] = 0;
        v104[1] = v104;
        v104[2] = 0x3032000000;
        v104[3] = sub_10000CC24;
        v104[4] = sub_10000CC34;
        v105 = 0;
        v94[0] = _NSConcreteStackBlock;
        v94[1] = 3221225472;
        v94[2] = sub_10000E6BC;
        v94[3] = &unk_10001D758;
        v95 = @"database/db";
        v100 = &v109;
        v96 = v57;
        v103 = (a7 & 4) != 0;
        v48 = v62;
        v97 = v48;
        v49 = v60;
        v98 = v49;
        v50 = v59;
        v101 = v104;
        v102 = a9;
        v99 = v50;
        [v41 enumerateObjectsUsingBlock:v94];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000E940;
        block[3] = &unk_10001CAB0;
        v92 = v66;
        v93 = v104;
        dispatch_group_notify(v48, v49, block);

        _Block_object_dispose(v104, 8);
      }

      _Block_object_dispose(&v109, 8);
      v47 = v62;
    }

    else
    {
      if (v18)
      {
        obj = 0;
        v24 = [FPProviderDomain providerDomainForURL:v18 error:&obj];
        objc_storeStrong(&v90, obj);
        v25 = v86[5];
        if (v25)
        {
          v26 = [v25 description];
          NSLog(@"Error while fetching providerDomainID for url %@: %@", v18, v26);
        }

        else
        {
          if (v24)
          {
            v51 = [v24 identifier];
            [v24 isUsingFPFS];
            v65 = *(a1 + 32);
            v67 = *(*(*(a1 + 48) + 8) + 40);
            v63 = *(a1 + 56);
            v61 = *(a1 + 57);
            v70 = [v18 path];
            v52 = [v19 path];
            v82[0] = _NSConcreteStackBlock;
            v82[1] = 3221225472;
            v82[2] = sub_10000E0E8;
            v82[3] = &unk_10001D668;
            v58 = *(a1 + 40);
            v53 = v58;
            v83 = v58;
            sub_10000C8E8(v51, 0, v67, v65, v63, v61, v17, v70, v52, a7, a9, v82);

            goto LABEL_27;
          }

          NSLog(@"No providerDomainID for url %@", v18);
          v54 = [NSError errorWithDomain:NSFileProviderErrorDomain code:-2001 userInfo:0];
          v26 = v86[5];
          v86[5] = v54;
        }

        v27 = v86[5];
        (*(*(a1 + 40) + 16))();
LABEL_27:

        goto LABEL_28;
      }

      v69 = +[FPDaemonConnection sharedConnection];
      v44 = [v69 connectionProxy];
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_10000E154;
      v71[3] = &unk_10001D6E0;
      v75 = &v85;
      v45 = *(a1 + 40);
      v80 = a2;
      v46 = *(a1 + 48);
      v74 = v45;
      v76 = v46;
      v77 = a3;
      v72 = *(a1 + 32);
      v81 = *(a1 + 56);
      v73 = v17;
      v78 = a7;
      v79 = a9;
      [v44 providerDomainsCompletionHandler:v71];

      v47 = v74;
    }

LABEL_28:
    _Block_object_dispose(&v85, 8);

    goto LABEL_29;
  }

  (*(*(a1 + 40) + 16))();
LABEL_29:
}

void sub_10000E084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose((v46 - 256), 8);
  _Block_object_dispose((v46 - 152), 8);
  _Block_object_dispose(&a46, 8);
  _Unwind_Resume(a1);
}

void sub_10000E0E8(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  (*(*(a1 + 32) + 16))();
}

void sub_10000E154(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = [*(*(*(a1 + 56) + 8) + 40) description];
    NSLog(@"Error while fetching providerDomainID: %@", v5);

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(a1 + 96);
    v7 = *(a1 + 72);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000E290;
    v12[3] = &unk_10001D6B8;
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    v15 = v8;
    v16 = v9;
    v13 = *(a1 + 32);
    v19 = *(a1 + 100);
    v10 = *(a1 + 40);
    v18 = *(a1 + 80);
    v11 = *(a1 + 56);
    v14 = v10;
    v17 = v11;
    sub_10000C5F8(v6, v7, 4, v12);
  }
}

void sub_10000E290(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 description];
    NSLog(@"Error while parsing provider domains: %@", v8);

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    NSLog(@"🧹 About to launch FPCK checks for %lu domains", [v5 count]);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v32 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          v14 = [v13 storageURLs];
          v15 = [v14 count];

          if (v15)
          {
            v16 = [v13 storageURLs];
            v17 = [v16 objectAtIndexedSubscript:0];
            v18 = [v17 path];

            v19 = [v13 identifier];
            v20 = *(a1 + 88);
            v21 = *(a1 + 89);
            v22 = *(a1 + 32);
            v23 = *(a1 + 40);
            v24 = *(a1 + 72);
            v25 = *(a1 + 80);
            v37[0] = _NSConcreteStackBlock;
            v26 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
            v27 = *(*(*(a1 + 56) + 8) + 40);
            v37[1] = 3221225472;
            v37[2] = sub_10000E5A4;
            v37[3] = &unk_10001D690;
            v38 = v26;
            sub_10000C8E8(v19, 0, v27, v22, v20, v21, v23, v18, 0, v24, v25, v37);
          }

          else
          {
            v18 = [v13 identifier];
            NSLog(@"Skipping %@, usingFPFS %d", v18, [v13 isUsingFPFS]);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v10);
    }

    v28 = *(*(*(a1 + 56) + 8) + 40);
    v29 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E618;
    block[3] = &unk_10001CAB0;
    v30 = *(a1 + 48);
    v31 = *(a1 + 64);
    v35 = v30;
    v36 = v31;
    dispatch_group_notify(v28, v29, block);

    v7 = 0;
    v5 = v32;
  }
}

void sub_10000E5A4(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 32) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(*(*(a1 + 40) + 8) + 40));
}

void sub_10000E634(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_100001DB0(v4);
  NSLog(@"csProviderDomainID at %@ is %@", v4, v3);
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) setValue:v4 forKey:v3];
  }
}

void sub_10000E6BC(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(@"enumerating... %@", v3);
  v4 = [v3 lastPathComponent];
  v5 = [v4 isEqualToString:@"backup"];

  if ((v5 & 1) == 0)
  {
    v6 = [v3 URLByAppendingPathComponent:*(a1 + 32)];
    v7 = +[NSFileManager defaultManager];
    v8 = [v6 path];
    v9 = [v7 fileExistsAtPath:v8];

    if (v9)
    {
      v10 = sub_100001DB0(v3);
      v11 = [*(*(*(a1 + 72) + 8) + 40) objectForKey:v10];
      if (v11)
      {
        v12 = *(a1 + 40);
        if (!v12 || [v12 isEqualToString:v10])
        {
          NSLog(@"found providerDomainID (%@) for db at %@, that matches rootURL %@", v10, v3, v11);
          if (*(a1 + 96))
          {
            v13 = 15;
          }

          else
          {
            v13 = 11;
          }

          v17 = *(a1 + 56);
          v18 = *(a1 + 48);
          v19 = *(a1 + 64);
          v14 = [v11 path];
          v15 = [v6 path];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10000E8D4;
          v20[3] = &unk_10001CCA8;
          v16 = *(a1 + 88);
          v22 = *(a1 + 80);
          v21 = *(a1 + 48);
          sub_10000C8E8(v10, 0, v18, v17, 0, 0, v19, v14, v15, v13, v16, v20);
        }
      }
    }
  }
}

void sub_10000E8D4(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000E974(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_10000E998(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for FPProviderDomainID();
    sub_1000115E8(0, &qword_100021428, FPProviderDomain_ptr);
    sub_100011780(&qword_100021430, type metadata accessor for FPProviderDomainID);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_10000EA88(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *sub_1000115A4((a1 + 32), *(a1 + 56));
  sub_1000115E8(0, &qword_100021420, FPSearchOnServerResult_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *(*(v4 + 64) + 40);
  *v6 = v5;
  *(v6 + 8) = a3;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10000ECA0(uint64_t a1, uint64_t a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10000ED60;

  return (sub_1000104C0)(a1, a2);
}

uint64_t sub_10000ED60()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
    if (v4)
    {
      v6 = *(v2 + 16);
      v7 = _convertErrorToNSError(_:)();

      (v6)[2](v6, v7);
      _Block_release(v6);
    }

    else
    {
    }
  }

  else if (v4)
  {
    v8 = *(v2 + 16);
    v8[2](v8, 0);
    _Block_release(v8);
  }

  v9 = *(v5 + 8);

  return v9();
}

FPCmdSearchOnServer __swiftcall FPCmdSearchOnServer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_10000EFA0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000EFE8()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F020()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000117D0;

  return sub_10000ECA0(v2, v3, v4);
}

uint64_t sub_10000F0E4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10000F120()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000F174()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000F1F0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000F268(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000F2E8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000F32C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10000F3B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10000F3FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000F428(uint64_t a1)
{
  v2 = sub_100011780(&qword_100021430, type metadata accessor for FPProviderDomainID);
  v3 = sub_100011780(&qword_100021468, type metadata accessor for FPProviderDomainID);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000F4E4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000117D0;

  return v7();
}

uint64_t sub_10000F5D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000117D0;

  return sub_10000F4E4(v2, v3, v5);
}

uint64_t sub_10000F690(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000F778;

  return v8();
}

uint64_t sub_10000F778()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000F86C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F8AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000F778;

  return sub_10000F690(a1, v4, v5, v7);
}

uint64_t sub_10000F978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000EFA0(&qword_1000213D8, &qword_100014C00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_100011630(a3, v24 - v10, &qword_1000213D8, &qword_100014C00);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10001136C(v11, &qword_1000213D8, &qword_100014C00);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_10001136C(a3, &qword_1000213D8, &qword_100014C00);

    return v22;
  }

LABEL_8:
  sub_10001136C(a3, &qword_1000213D8, &qword_100014C00);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000FC74(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FD6C;

  return v7(a1);
}

uint64_t sub_10000FD6C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000FE64()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FE9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000117D0;

  return sub_10000FC74(a1, v5);
}

uint64_t sub_10000FF54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F778;

  return sub_10000FC74(a1, v5);
}

unint64_t sub_10001000C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100010084(a1, a2, v6);
}

unint64_t sub_100010084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10001013C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000EFA0(&qword_100021438, &qword_100014C88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for FPProviderDomainID();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100010264(char *a1, int64_t a2, char a3)
{
  result = sub_100010284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100010284(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000EFA0(&qword_100021418, &qword_100014C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100010390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000EFA0(&qword_100021440, &qword_100014C90);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011630(v4, &v13, &qword_1000213E8, &qword_100014C60);
      v5 = v13;
      v6 = v14;
      result = sub_10001000C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100011698(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000104C0(int a1, uint64_t a2)
{
  *(v2 + 688) = a2;
  *(v2 + 752) = a1;
  v3 = type metadata accessor for POSIXError();
  *(v2 + 696) = v3;
  v4 = *(v3 - 8);
  *(v2 + 704) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 712) = swift_task_alloc();

  return _swift_task_switch(sub_100010584, 0, 0);
}

uint64_t sub_100010584()
{
  if (*(v0 + 752) >= 3)
  {
    if (*(*(v0 + 688) + 8))
    {
      String.init(utf8String:)();
      if (v6)
      {
        v7 = *(v0 + 752);
        v8 = &_swiftEmptyArrayStorage;
        v9 = 2;
        while (*(*(v0 + 688) + 8 * v9))
        {
          String.init(utf8String:)();
          if (!v10)
          {
            v21 = *(v0 + 712);
            v22 = *(v0 + 704);
            v23 = *(v0 + 696);

            *(v0 + 744) = 22;
            sub_10000EFA0(&qword_1000213E0, &qword_100014C58);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_100014BF0;
            *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(inited + 72) = &type metadata for String;
            *(inited + 40) = v27;
            *(inited + 48) = 0xD000000000000025;
            *(inited + 56) = 0x80000001000170B0;
            sub_100010390(inited);
            swift_setDeallocating();
            sub_10001136C(inited + 32, &qword_1000213E8, &qword_100014C60);
            sub_100011780(&qword_1000213F0, &type metadata accessor for POSIXError);
            goto LABEL_22;
          }

          v11 = String._bridgeToObjectiveC()();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_10001013C(0, v8[2] + 1, 1, v8);
          }

          v13 = v8[2];
          v12 = v8[3];
          if (v13 >= v12 >> 1)
          {
            v8 = sub_10001013C((v12 > 1), v13 + 1, 1, v8);
          }

          ++v9;
          *(v0 + 720) = v8;
          v8[2] = v13 + 1;
          v8[v13 + 4] = v11;
          if (v7 == v9)
          {
            v28 = objc_opt_self();
            *(v0 + 576) = nullsub_1;
            *(v0 + 584) = 0;
            *(v0 + 544) = _NSConcreteStackBlock;
            *(v0 + 552) = 1107296256;
            *(v0 + 560) = sub_10000E998;
            *(v0 + 568) = &unk_10001D900;
            v29 = _Block_copy((v0 + 544));
            v30 = [v28 beginMonitoringProviderDomainChangesWithHandler:v29];
            _Block_release(v29);
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_1000113E4((v0 + 592));
            v31 = objc_allocWithZone(FPSearchOnServerEnumerator);
            v32 = String._bridgeToObjectiveC()();

            type metadata accessor for FPProviderDomainID();
            isa = Array._bridgeToObjectiveC()().super.isa;
            *(v0 + 728) = [v31 initWithQuery:v32 domainIDs:isa];

            v34 = *(v0 + 728);
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 656;
            *(v0 + 24) = sub_100010E3C;
            v35 = swift_continuation_init();
            *(v0 + 536) = sub_10000EFA0(&qword_1000213F8, &qword_100014C68);
            *(v0 + 480) = _NSConcreteStackBlock;
            *(v0 + 488) = 1107296256;
            *(v0 + 496) = sub_10000EA88;
            *(v0 + 504) = &unk_10001D928;
            *(v0 + 512) = v35;
            [v34 nextResultsWithCompletionHandler:v0 + 480];

            return _swift_continuation_await(v0 + 16);
          }
        }

        v21 = *(v0 + 712);
        v22 = *(v0 + 704);
        v23 = *(v0 + 696);

        *(v0 + 740) = 22;
        sub_10000EFA0(&qword_1000213E0, &qword_100014C58);
        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_100014BF0;
        *(v24 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v24 + 72) = &type metadata for String;
        *(v24 + 40) = v25;
        *(v24 + 48) = 0xD00000000000001CLL;
        *(v24 + 56) = 0x8000000100017090;
        sub_100010390(v24);
        swift_setDeallocating();
        sub_10001136C(v24 + 32, &qword_1000213E8, &qword_100014C60);
        sub_100011780(&qword_1000213F0, &type metadata accessor for POSIXError);
LABEL_22:
        _BridgedStoredNSError.init(_:userInfo:)();
        POSIXError._nsError.getter();
        (*(v22 + 8))(v21, v23);
        goto LABEL_17;
      }

      v1 = *(v0 + 712);
      v2 = *(v0 + 704);
      v3 = *(v0 + 696);
      *(v0 + 736) = 22;
      sub_10000EFA0(&qword_1000213E0, &qword_100014C58);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_100014BF0;
      *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v16 + 72) = &type metadata for String;
      *(v16 + 40) = v17;
      *(v16 + 48) = 0xD000000000000022;
      *(v16 + 56) = 0x8000000100017060;
      sub_100010390(v16);
      swift_setDeallocating();
      sub_10001136C(v16 + 32, &qword_1000213E8, &qword_100014C60);
      sub_100011780(&qword_1000213F0, &type metadata accessor for POSIXError);
    }

    else
    {
      v1 = *(v0 + 712);
      v2 = *(v0 + 704);
      v3 = *(v0 + 696);
      *(v0 + 668) = 22;
      sub_10000EFA0(&qword_1000213E0, &qword_100014C58);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_100014BF0;
      *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v14 + 72) = &type metadata for String;
      *(v14 + 40) = v15;
      *(v14 + 48) = 0xD000000000000019;
      *(v14 + 56) = 0x8000000100017040;
      sub_100010390(v14);
      swift_setDeallocating();
      sub_10001136C(v14 + 32, &qword_1000213E8, &qword_100014C60);
      sub_100011780(&qword_1000213F0, &type metadata accessor for POSIXError);
    }
  }

  else
  {
    v1 = *(v0 + 712);
    v2 = *(v0 + 704);
    v3 = *(v0 + 696);
    *(v0 + 748) = 22;
    sub_10000EFA0(&qword_1000213E0, &qword_100014C58);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_100014BF0;
    *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 72) = &type metadata for String;
    *(v4 + 40) = v5;
    *(v4 + 48) = 0xD000000000000037;
    *(v4 + 56) = 0x8000000100017170;
    sub_100010390(v4);
    swift_setDeallocating();
    sub_10001136C(v4 + 32, &qword_1000213E8, &qword_100014C60);
    sub_100011780(&qword_1000213F0, &type metadata accessor for POSIXError);
  }

  _BridgedStoredNSError.init(_:userInfo:)();
  POSIXError._nsError.getter();
  (*(v2 + 8))(v1, v3);
LABEL_17:
  swift_willThrow();
  v18 = *(v0 + 712);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100010E3C()
{
  v2 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100010F1C, 0, 0);
}

uint64_t sub_100010F1C()
{
  v1 = v0;
  v2 = *(v0 + 656);
  v3 = *(v1 + 664);
  sub_10000EFA0(&qword_100021400, &qword_100014C70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100014BF0;
  *(v1 + 640) = 0;
  *(v1 + 648) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v5 = *(v1 + 648);

  v6 = v2;
  *(v1 + 624) = 0xD000000000000010;
  *(v1 + 632) = 0x8000000100017110;
  if (v2 >> 62)
  {
    v39 = v2;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v39;
  }

  else
  {
    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v4;
  v42 = v3;
  if (v7)
  {
    v8 = v6;
    v9 = (v1 + 672);
    *(v1 + 672) = &_swiftEmptyArrayStorage;
    v10 = sub_100010264(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return _swift_continuation_await(v10);
    }

    v40 = v1;
    v11 = 0;
    v12 = *v9;
    v13 = v8;
    v14 = v8 & 0xC000000000000001;
    v15 = v8;
    do
    {
      if (v14)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v13 + 8 * v11 + 32);
      }

      v17 = v16;
      v18 = [v16 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      *v9 = v12;
      v23 = v12[2];
      v22 = v12[3];
      if (v23 >= v22 >> 1)
      {
        sub_100010264((v22 > 1), v23 + 1, 1);
        v12 = *v9;
      }

      ++v11;
      v12[2] = v23 + 1;
      v24 = &v12[2 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
      v13 = v15;
    }

    while (v7 != v11);

    v1 = v40;
  }

  else
  {

    v12 = &_swiftEmptyArrayStorage;
  }

  *(v1 + 680) = v12;
  sub_10000EFA0(&qword_100021408, &qword_100014C78);
  sub_1000114F4();
  v25 = BidirectionalCollection<>.joined(separator:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29 = *(v1 + 624);
  v30 = *(v1 + 632);
  v41[7] = &type metadata for String;
  v41[4] = v29;
  v41[5] = v30;
  print(_:separator:terminator:)();

  if (v42)
  {
    v31 = *(v1 + 728);
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 656;
    *(v1 + 24) = sub_100010E3C;
    v32 = swift_continuation_init();
    *(v1 + 536) = sub_10000EFA0(&qword_1000213F8, &qword_100014C68);
    *(v1 + 480) = _NSConcreteStackBlock;
    *(v1 + 488) = 1107296256;
    *(v1 + 496) = sub_10000EA88;
    *(v1 + 504) = &unk_10001D928;
    *(v1 + 512) = v32;
    [v31 nextResultsWithCompletionHandler:v1 + 480];
    v10 = (v1 + 16);

    return _swift_continuation_await(v10);
  }

  v33 = *(v1 + 728);
  v34 = *(v1 + 720);
  v35 = *(v1 + 712);

  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100014BF0;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 32) = 0xD000000000000010;
  *(v36 + 40) = 0x8000000100017150;
  print(_:separator:terminator:)();

  v37 = *(v1 + 8);

  return v37();
}

uint64_t sub_10001136C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000EFA0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000113CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000113E4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void type metadata accessor for FPProviderDomainID()
{
  if (!qword_100021448)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100021448);
    }
  }
}

uint64_t sub_100011490(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000114F4()
{
  result = qword_100021410;
  if (!qword_100021410)
  {
    sub_100011558(&qword_100021408, &qword_100014C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021410);
  }

  return result;
}

uint64_t sub_100011558(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_1000115A4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000115E8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100011630(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000EFA0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100011698(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100011780(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000117D4(int a1)
{
  strerror(a1);
  sub_1000067AC();
  sub_10000679C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100011854(uint64_t *a1, int __errnum)
{
  v7 = *a1;
  strerror(__errnum);
  sub_10000679C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000118EC(NSObject *a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 executablePath];
  sub_1000067AC();
  _os_log_debug_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "[DEBUG] Running from %@", v4, 0xCu);
}

void sub_1000119A4(os_log_t log)
{
  v1 = 136315138;
  v2 = "/usr/local/bin/fileproviderctl_internal";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] execv'ing to %s", &v1, 0xCu);
}

void sub_100011A28(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ERROR] failed to enable support for long paths in VFS: %{errno}d\n", buf, 8u);
}

void sub_100011A74()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getFPUIManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"cmd-evaluate.m" lineNumber:29 description:{@"Unable to find class %s", "FPUIManager"}];

  __break(1u);
}

void sub_100011AF0(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *FileProviderUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"cmd-evaluate.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100011B9C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSData *_UIImagePNGRepresentation(UIImage *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"fileproviderctl-utilities.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100011C14()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getUIImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"fileproviderctl-utilities.m" lineNumber:25 description:{@"Unable to find class %s", "UIImage"}];

  __break(1u);
}

void sub_100011C90(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"fileproviderctl-utilities.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}