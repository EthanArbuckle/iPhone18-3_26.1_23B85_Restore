uint64_t sub_100004254(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_wait(*(*(a1 + 32) + 128), 0xFFFFFFFFFFFFFFFFLL);
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004308;
  v8[3] = &unk_100024AB8;
  v8[4] = v4;
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v8);

  return 1;
}

intptr_t sub_100004308(uint64_t a1)
{
  [*(a1 + 32) outputEvent:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 128);

  return dispatch_semaphore_signal(v2);
}

uint64_t sub_100004350(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_wait(*(*(a1 + 32) + 128), 0xFFFFFFFFFFFFFFFFLL);
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004404;
  v8[3] = &unk_100024AB8;
  v8[4] = v4;
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v8);

  return 0;
}

intptr_t sub_100004404(uint64_t a1)
{
  [*(a1 + 32) outputEvent:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 128);

  return dispatch_semaphore_signal(v2);
}

uint64_t sub_1000044EC()
{
  puts("log [options] [<command>]");
  putchar(10);
  puts("    -a,--all                         Show all system logs");
  puts("    -x,--process <name>              Filter events from the specified process");
  puts("    -d,--path=<logs-dir>             Use <logs-dir> instead of default");
  puts("    --last num [m|h|d]               Limits the captured events to the period starting at the given interval ago from the current time");
  puts("    -S,--start=YYYY-MM-DD HH:MM:SS Start log dump from a specified date");
  puts("    -E,--end=YYYY-MM-DD HH:MM:SS   Stop log dump after a specified date");
  puts("    -b                               Show CloudDocs logs");
  puts("    -f                               Show FileProvider related logs");
  puts("    -F                               Show FruitBasket related logs");
  puts("    -N                               Show network related logs (should be used in conjonction with another flag)");
  puts("    -g                               Show Genstore related logs");
  puts("    -i                               Show SQL and CloudDocs logs");
  puts("    -o                               Show local storage logs");
  puts("    -D                               Show logs from the Denator subsystem");
  puts("    -z,--local-timezone              Display timestamps within local timezone");
  puts("    --dark-mode                      Adapt color scheme to dark mode terminal");
  puts("    -q,--quick                       Print logs without heavy pre-processing");

  return putchar(10);
}

id sub_100004EF4(int a1, char *const *a2)
{
  v8 = a1;
  v7 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004FD0;
  v5[3] = &unk_100024DD0;
  v2 = objc_alloc_init(BRCTLLogCommand);
  v6 = v2;
  sub_1000082B0(&v8, &v7, "abc:d:fFNogH:il:m:n:qS:E:p:stwx:z", &off_100024B88, v5);
  [(BRCTLLogCommand *)v2 buildPredicateFromString];
  if (v8)
  {
    sub_100008298();
  }

  v3 = [(BRCTLLogCommand *)v2 dumpToFd:1];

  return v3;
}

uint64_t sub_100005108(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005120(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setEventType:1024];
  if ([v3 length] < 0x1F)
  {
    v5 = 0;
    goto LABEL_31;
  }

  if (qword_10002A7C0 != -1)
  {
    sub_10001512C();
  }

  v6 = [v3 substringToIndex:31];
  v7 = [qword_10002A7B8 dateFromString:v6];
  if (v7)
  {
    [v4 setTimestamp:v7];
    v8 = [v3 substringFromIndex:32];
    v9 = [NSScanner scannerWithString:v8];

    v10 = +[NSCharacterSet whitespaceCharacterSet];
    [v9 setCharactersToBeSkipped:v10];

    v43 = 0;
    if ([v9 scanHexLongLong:&v43])
    {
      [v4 setThreadID:v43];
      if ([v9 scanString:@"Default" intoString:0])
      {
        v11 = 0;
LABEL_18:
        [v4 setMessageType:v11];
        v42 = 0;
        v5 = 0;
        if (![v9 scanHexLongLong:&v42])
        {
          goto LABEL_29;
        }

        v41 = 0;
        v5 = 0;
        if (![v9 scanInteger:&v41])
        {
          goto LABEL_29;
        }

        [v4 setProcessID:v41];
        v40 = 0;
        v12 = [v9 scanUpToString:@": " intoString:&v40];
        v13 = v40;
        if (!v12 || ([v9 isAtEnd] & 1) != 0)
        {
          goto LABEL_26;
        }

        [v9 scanString:@": " intoString:0];
        [v4 setProcessImagePath:v13];
        v14 = [v9 scanLocation];
        if ([v9 scanUpToString:@" [" intoString:?], 0) && !objc_msgSend(v9, "isAtEnd"))
        {
          [v9 scanString:@" [" intoString:?], 0);
        }

        else
        {
          [v9 setScanLocation:v14];
          if (![v9 scanString:@"[" intoString:0] || (objc_msgSend(v9, "isAtEnd") & 1) != 0)
          {
LABEL_26:
            v5 = 0;
LABEL_27:

LABEL_29:
            goto LABEL_30;
          }
        }

        v39 = 0;
        v23 = [v9 scanUpToString:@"]" intoString:&v39];
        v24 = v39;
        if (v23 && ([v9 isAtEnd] & 1) == 0)
        {
          [v9 scanString:@"]" intoString:0];
          v25 = [v24 componentsSeparatedByString:@"."];
          v36 = v24;
          v37 = v25;
          if ([v24 hasPrefix:@"com.apple."] || (objc_msgSend(v24, "hasPrefix:", @"com.example.") & 1) != 0)
          {
            v35 = v13;
            v26 = 0;
            v27 = 0;
            do
            {
              v28 = [v37 objectAtIndexedSubscript:v26];
              v27 += [v28 length];

              ++v26;
            }

            while (v26 != 3);
            v29 = (v27 + 2);
            v13 = v35;
          }

          else
          {
            v30 = [v25 objectAtIndexedSubscript:0];
            v29 = [v30 length];
          }

          v31 = [v36 substringToIndex:v29];
          [v4 setSubsystem:v31];

          v32 = [v36 substringFromIndex:v29 + 1];
          [v4 setCategory:v32];

          v33 = +[NSCharacterSet newlineCharacterSet];
          v38 = 0;
          LODWORD(v31) = [v9 scanUpToCharactersFromSet:v33 intoString:&v38];
          v34 = v38;

          v5 = 0;
          if (v31)
          {
            [v4 setEventMessage:v34];
            v5 = v4;
          }

          v24 = v36;
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_27;
      }

      if ([v9 scanString:@"Info" intoString:0])
      {
        v11 = 1;
        goto LABEL_18;
      }

      if ([v9 scanString:@"Debug" intoString:0])
      {
        v11 = 2;
        goto LABEL_18;
      }

      if ([v9 scanString:@"Error" intoString:0])
      {
        v11 = 16;
        goto LABEL_18;
      }

      if ([v9 scanString:@"Fault" intoString:0])
      {
        v11 = 17;
        goto LABEL_18;
      }
    }

    v5 = 0;
    goto LABEL_29;
  }

  v5 = 0;
LABEL_30:

LABEL_31:
  if (v5)
  {
    v15 = *(a1[6] + 8);
    if (*(v15 + 40))
    {
      v16 = (*(a1[4] + 16))();
      v15 = *(a1[6] + 8);
    }

    else
    {
      v16 = 0;
    }

    v17 = v5;
    v18 = *(v15 + 40);
    *(v15 + 40) = v17;
LABEL_38:

    goto LABEL_39;
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v20 = *(*(a1[6] + 8) + 40);
    if (!v20)
    {
      v16 = 0xFFFFFFFFLL;
      goto LABEL_39;
    }

    v18 = [v20 eventMessage];
    v21 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];
    v22 = [NSString stringWithFormat:@"%@\n%@", v18, v21];
    [*(*(a1[6] + 8) + 40) setEventMessage:v22];

    v16 = 0;
    goto LABEL_38;
  }

  v16 = 0;
LABEL_39:
  *(*(a1[5] + 8) + 24) = 0;

  return v16;
}

void sub_1000056F8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10002A7B8;
  qword_10002A7B8 = v1;

  v3 = qword_10002A7B8;

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZ"];
}

uint64_t sub_10000574C()
{
  puts("check [options] <command>");
  puts("    run local and server checks");
  putchar(10);
  puts("    -o,--output=<file-path>");
  puts("                         redirect output to <file-path>");
  puts("    local                (default) run local checks");
  puts("    server [<containers>]");
  puts("                         run server checks for the specified containers");

  return putchar(10);
}

uint64_t sub_1000057D0(unsigned int a1, char *const *a2)
{
  v15 = a1;
  v14 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005A74;
  v9[3] = &unk_100024EB0;
  v9[4] = &v10;
  sub_1000082B0(&v15, &v14, "o:", &off_100024E38, v9);
  v2 = v11[3];
  if (v2)
  {
    v3 = open(v2, 525, 420);
    if ((v3 & 0x80000000) != 0)
    {
      err(1, "Unable to open file %s", *v14);
    }

    v4 = [[NSFileHandle alloc] initWithFileDescriptor:v3 closeOnDealloc:1];
  }

  else
  {
    v4 = +[NSFileHandle fileHandleWithStandardOutput];
  }

  v5 = qword_10002A7C8;
  qword_10002A7C8 = v4;

  if (v15)
  {
    v6 = sub_1000081C0(*v14, &off_100024E78);
    v7 = ((&off_100024E78)[2 * v6 + 1])(v15, v14);
  }

  else
  {
    sub_100005978(0, 0);
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_100005958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005978(int a1, char *const *a2)
{
  v10 = a1;
  v9 = a2;
  sub_1000082B0(&v10, &v9, 0, 0, 0);
  if (v10 >= 2)
  {
    sub_100008298();
  }

  v2 = sub_1000084A8();
  v3 = qword_10002A7C8;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005A98;
  v7[3] = &unk_100024ED8;
  v8 = v2;
  v4 = v2;
  [v4 performSelfCheck:v3 reply:v7];
  v5 = [v4 resultWithTimeout:dword_10002A790 exitMessage:@"self-check failed"];

  return 0;
}

uint64_t sub_100005A74(uint64_t result, int a2)
{
  if (a2 == 111)
  {
    *(*(*(result + 32) + 8) + 24) = optarg;
  }

  return result;
}

void *sub_100005D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NSProgressFileOperationKindKey];

  if (v5)
  {
    v6 = [v3 description];
    printf("xxxxx ignore %s\n", [v6 UTF8String]);

    v7 = 0;
  }

  else
  {
    [*(a1 + 32) setProgressObserved:v3];
    [*(a1 + 32) setPreviousDescription:0];
    puts("<<<<<");
    [v3 addObserver:*(a1 + 32) forKeyPath:@"localizedDescription" options:4 context:0];
    [v3 addObserver:*(a1 + 32) forKeyPath:@"localizedAdditionalDescription" options:4 context:0];
    [v3 addObserver:*(a1 + 32) forKeyPath:@"indeterminate" options:4 context:0];
    [v3 addObserver:*(a1 + 32) forKeyPath:@"userInfo.NSProgressFileTotalCountKey" options:4 context:0];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005F44;
    v12[3] = &unk_100024AB8;
    v8 = v3;
    v9 = *(a1 + 32);
    v13 = v8;
    v14 = v9;
    v10 = objc_retainBlock(v12);
    v7 = objc_retainBlock(v10);
  }

  return v7;
}

id sub_100005F44(uint64_t a1)
{
  puts(">>>>>");
  [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"localizedDescription"];
  [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"localizedAdditionalDescription"];
  [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"indeterminate"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 removeObserver:v3 forKeyPath:@"userInfo.NSProgressFileTotalCountKey"];
}

void sub_100006A14(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] disableUpdates];
  v4 = [v3 objectForKeyedSubscript:NSMetadataQueryUpdateAddedItemsKey];
  v5 = [v3 objectForKeyedSubscript:NSMetadataQueryUpdateRemovedItemsKey];
  v96 = v3;
  v107 = [v3 objectForKeyedSubscript:NSMetadataQueryUpdateChangedItemsKey];
  v6 = a1[5];
  v7 = +[NSDate date];
  v8 = [v7 description];
  [v6 write:{"%s total:%d", objc_msgSend(v8, "UTF8String"), objc_msgSend(a1[4], "resultCount")}];

  if ([v4 count])
  {
    [a1[5] write:{" added:%d", objc_msgSend(v4, "count")}];
  }

  v9 = v107;
  if ([v107 count])
  {
    [a1[5] write:{" updated:%d", objc_msgSend(v107, "count")}];
  }

  if ([v5 count])
  {
    [a1[5] write:{" removed:%d", objc_msgSend(v5, "count")}];
  }

  v95 = v5;
  [a1[5] write:"\n"];
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = [a1[4] results];
  v125 = [obj countByEnumeratingWithState:&v136 objects:v141 count:16];
  if (v125)
  {
    v10 = *v137;
    v104 = BRMetadataUbiquitousItemUploadingSizeKey;
    v103 = BRMetadataUbiquitousItemDownloadingSizeKey;
    v102 = NSMetadataUbiquitousSharedItemRoleKey;
    v101 = NSMetadataUbiquitousSharedItemPermissionsKey;
    v99 = BRURLTagNamesKey;
    v100 = BRModifiedSinceSharedKey;
    v97 = BRMetadataCreatorNameComponentsKey;
    v98 = BRMetadataIsTopLevelSharedItemKey;
    v114 = 1;
    v105 = *v137;
    v106 = v4;
    while (1)
    {
      for (i = 0; i != v125; i = i + 1)
      {
        if (*v137 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v136 + 1) + 8 * i);
        v13 = [v4 containsObject:v12];
        v14 = [v9 containsObject:v12];
        v15 = v14;
        if (*(a1[6] + 12) != 1 || (v13 & 1) != 0 || v14)
        {
          v16 = [v12 valueForKey:NSMetadataItemURLKey];
          v128 = [v12 valueForKey:NSMetadataUbiquitousItemURLInLocalContainerKey];
          v17 = [v16 path];
          v130 = v16;
          v18 = [v16 path];
          v19 = [v18 hasPrefix:a1[7]];

          if (v19)
          {
            v20 = [a1[7] length];
            if (v20 < [v17 length])
            {
              v21 = [v17 substringFromIndex:{objc_msgSend(a1[7], "length")}];

              v17 = v21;
            }
          }

          v22 = *(a1[6] + 3);
          if (v22 && ([v17 lastPathComponent], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqualToString:", v23), v23, !v24))
          {
            v36 = v128;
          }

          else
          {
            v123 = v17;
            v120 = [v12 valueForKey:NSMetadataUbiquitousItemDownloadingErrorKey];
            v119 = [v12 valueForKey:NSMetadataUbiquitousItemUploadingErrorKey];
            v121 = [v12 valueForKey:NSMetadataUbiquitousItemPercentDownloadedKey];
            v25 = [v12 valueForKey:NSMetadataUbiquitousItemPercentUploadedKey];
            v118 = [v12 valueForKey:v104];
            v127 = [v12 valueForKey:v103];
            v126 = [v12 valueForKey:NSMetadataUbiquitousItemDownloadingStatusKey];
            v26 = [v12 valueForKey:NSMetadataUbiquitousItemIsDownloadingKey];
            v110 = [v26 BOOLValue];

            v27 = [v12 valueForKey:NSMetadataUbiquitousItemIsUploadedKey];
            v124 = [v27 BOOLValue];

            v28 = [v12 valueForKey:NSMetadataUbiquitousItemIsUploadingKey];
            v29 = [v28 BOOLValue];

            v30 = [v12 valueForKey:NSMetadataUbiquitousItemIsSharedKey];
            v122 = [v30 BOOLValue];

            v31 = [v12 valueForKey:NSMetadataUbiquitousItemDownloadRequestedKey];
            v108 = [v31 BOOLValue];

            v131 = [v12 valueForKey:v102];
            v115 = [v12 valueForKey:NSMetadataUbiquitousSharedItemOwnerNameComponentsKey];
            v129 = [v12 valueForKey:v101];
            v117 = [v12 valueForKey:NSMetadataUbiquitousSharedItemMostRecentEditorNameComponentsKey];
            v32 = [v12 valueForKey:v100];
            v111 = [v32 BOOLValue];

            v33 = [v12 valueForKey:v99];
            v34 = [v12 valueForKey:v98];
            v112 = [v34 BOOLValue];

            v116 = [v12 valueForKey:v97];
            v35 = [v25 intValue] >= 1 && objc_msgSend(v25, "intValue") < 100;
            *(a1[6] + 18) = (*(a1[6] + 18) | v35) & 1;
            [a1[5] write:" o "];
            if ((v13 | v15))
            {
              v37 = 2;
            }

            else
            {
              v37 = 0;
            }

            if (v13)
            {
              v38 = 2;
            }

            else
            {
              v38 = 9;
            }

            [a1[5] startFgColor:v38 attr:v37];
            [a1[5] write:{"%s", objc_msgSend(v123, "fileSystemRepresentation")}];
            [a1[5] reset];
            v36 = v128;
            if (v128 != v130)
            {
              [a1[5] startFgColor:0 attr:2];
              v39 = a1[5];
              v40 = [v128 path];
              [v39 write:{" (at %s)", objc_msgSend(v40, "fileSystemRepresentation")}];

              [a1[5] reset];
            }

            [a1[5] startFgColor:4];
            if (v124)
            {
              [a1[5] puts:" ☁"];
              v41 = v127;
              v42 = v33;
              if ((v29 & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            else
            {
              v41 = v127;
              v42 = v33;
              if (!v29)
              {
                [a1[5] puts:" (Waiting for upload)"];
                goto LABEL_41;
              }
            }

            [a1[5] puts:" ↑"];
            if (v118)
            {
              v43 = a1[5];
              [v118 unsignedLongLongValue];
              v44 = BRLocalizedFileSizeDescriptionWithExactCount();
              v45 = [v44 description];
              v89 = [v45 UTF8String];
              v46 = v43;
              v42 = v33;
              [v46 write:{" %s ", v89}];

              v41 = v127;
            }

            if (v25)
            {
              v47 = a1[5];
              [v25 floatValue];
              v49 = v47;
              v42 = v33;
              [v49 write:{"%.01f%% ", v48}];
            }

LABEL_41:
            v113 = v25;
            if (v110)
            {
              [a1[5] puts:" ↓"];
              v51 = v119;
              v50 = v120;
              if (v41)
              {
                v52 = a1[5];
                [v41 unsignedLongLongValue];
                v53 = BRLocalizedFileSizeDescriptionWithExactCount();
                v54 = [v53 description];
                v90 = [v54 UTF8String];
                v55 = v52;
                v42 = v33;
                [v55 write:{" %s ", v90}];
              }

              if (v121)
              {
                v56 = a1[5];
                [v121 floatValue];
                v58 = v56;
                v42 = v33;
                [v58 write:{"%.01f%% ", v57}];
              }
            }

            else
            {
              v51 = v119;
              v50 = v120;
              if (v108 && ([v126 isEqualToString:NSMetadataUbiquitousItemDownloadingStatusCurrent] & 1) == 0)
              {
                [a1[5] puts:" (Waiting for download)"];
              }
            }

            [a1[5] reset];
            v59 = [a1[8] objectForKeyedSubscript:v126];
            v60 = v131;
            if (v59)
            {
              [a1[5] startFgColor:4];
              v61 = a1[5];
              v91 = [v59 UTF8String];
              v62 = v61;
              v42 = v33;
              [v62 write:{" %s", v91}];
              [a1[5] reset];
            }

            if (v111)
            {
              [a1[5] write:" ✍️ "];
              [a1[5] startFgColor:5];
              v63 = a1[5];
              if (v117)
              {
                v64 = [v117 br_formattedName];
                [v63 write:{" by %s", objc_msgSend(v64, "UTF8String")}];

                v60 = v131;
              }

              else
              {
                [v63 write:" by Me"];
              }

              [a1[5] reset];
              v42 = v33;
            }

            if (!(v112 & 1 | ((v122 & 1) == 0)))
            {
              [a1[5] write:" ➕ "];
              [a1[5] startFgColor:5];
              v65 = a1[5];
              if (v116)
              {
                v66 = [v116 br_formattedName];
                v67 = [v66 UTF8String];
                v68 = "🤷";
                if (v67)
                {
                  v68 = v67;
                }

                [v65 write:{" by %s", v68}];

                v60 = v131;
              }

              else
              {
                [v65 write:" by Me"];
              }

              [a1[5] reset];
              v42 = v33;
            }

            if (v122)
            {
              [a1[5] write:" 👥 "];
            }

            [a1[5] startFgColor:5];
            if ([v60 isEqualToString:NSMetadataUbiquitousSharedItemRoleOwner])
            {
              [a1[5] write:" by Me"];
            }

            else if ([v60 isEqualToString:NSMetadataUbiquitousSharedItemRoleParticipant])
            {
              v69 = a1[5];
              v70 = [v115 br_formattedName];
              v71 = [v70 UTF8String];
              v72 = "🤷";
              if (v71)
              {
                v72 = v71;
              }

              v73 = v69;
              v42 = v33;
              [v73 write:{" by %s", v72}];

              v60 = v131;
            }

            [a1[5] reset];
            if (v129)
            {
              [a1[5] startFgColor:5];
              v74 = [a1[9] objectForKeyedSubscript:v129];
              v75 = v74;
              if (v74)
              {
                v76 = a1[5];
                v92 = [v74 UTF8String];
                v77 = v76;
                v60 = v131;
                [v77 write:{" (%s)", v92}];
              }

              [a1[5] reset];

              v42 = v33;
            }

            [a1[5] puts:"\n"];
            if (v50)
            {
              [a1[5] startFgColor:1];
              [a1[5] puts:"\t\t download error:"];
              [a1[5] reset];
              v78 = a1[5];
              v79 = [a1[6] _prettyDescriptionFromError:v50];
              v93 = [v79 UTF8String];
              v80 = v78;
              v42 = v33;
              [v80 write:{" %s\n", v93}];

              v60 = v131;
            }

            if (v51)
            {
              [a1[5] startFgColor:1];
              [a1[5] puts:"\t\t upload error:"];
              [a1[5] reset];
              v81 = a1[5];
              v82 = [a1[6] _prettyDescriptionFromError:v51];
              v94 = [v82 UTF8String];
              v83 = v81;
              v42 = v33;
              [v83 write:{" %s\n", v94}];

              v60 = v131;
            }

            if (v42)
            {
              [a1[5] startFgColor:4];
              [a1[5] puts:"\t\t tags:"];
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v84 = v42;
              v85 = [v84 countByEnumeratingWithState:&v132 objects:v140 count:16];
              if (v85)
              {
                v86 = v85;
                v87 = *v133;
                do
                {
                  for (j = 0; j != v86; j = j + 1)
                  {
                    if (*v133 != v87)
                    {
                      objc_enumerationMutation(v84);
                    }

                    [a1[5] puts:{objc_msgSend(*(*(&v132 + 1) + 8 * j), "UTF8String")}];
                    [a1[5] puts:" "];
                  }

                  v86 = [v84 countByEnumeratingWithState:&v132 objects:v140 count:16];
                }

                while (v86);
              }

              [a1[5] puts:"\n"];
              v36 = v128;
              v51 = v119;
              v50 = v120;
              v60 = v131;
              v42 = v33;
            }

            v114 &= v124;

            v17 = v123;
          }

          v4 = v106;
          v9 = v107;
          v10 = v105;
          continue;
        }
      }

      v125 = [obj countByEnumeratingWithState:&v136 objects:v141 count:16];
      if (!v125)
      {
        goto LABEL_94;
      }
    }
  }

  v114 = 1;
LABEL_94:

  [a1[5] puts:"\n"];
  [a1[4] enableUpdates];
  *(a1[6] + 17) = v114 & 1;
}

void sub_1000078C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userInfo];
  (*(v2 + 16))(v2, v3);
}

void sub_100007920(void *a1, void *a2)
{
  v10 = a2;
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(a1[4] + 48)];
  v5 = v4;

  (*(a1[6] + 16))();
  v6 = a1[5];
  v7 = +[NSDate date];
  v8 = [v7 description];
  [v6 write:{"%s gathering done in %.3fs\n\n", objc_msgSend(v8, "UTF8String"), v5}];

  v9 = a1[4];
  if (*(v9 + 14) == 1)
  {
    exit(0);
  }

  *(v9 + 19) = 1;
}

uint64_t sub_100007B00()
{
  puts("monitor [options] [<container> ...]");
  puts("    monitor activity");
  puts("    -g                   dump global activity of the iCloud Drive");
  puts("    -i                   dump changes incrementally");
  puts("    -t                   amount of time in seconds to run the query, the query will stop after the specified time");
  puts("    -p                   only static gathering");
  puts("                         Example: brctl monitor -p com.apple.CloudDoocs");
  puts("    -S,--scope=<scope>");
  puts("                         restrict the NSMetadataQuery scope to docs, data, external or a combination");
  puts("    -w,--wait-uploaded");
  puts("                         wait for all items to be uploaded");
  puts("    -u,--wait-start-uploading");
  puts("                         wait for at least one item that has an uploading progress");
  putchar(10);
  puts("    [<container> ...]    list of containers to monitor, ignored when -g is used");

  return putchar(10);
}

uint64_t sub_100007BD8(int a1, char *const *a2)
{
  v38 = a1;
  v37 = a2;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000080E0;
  v35[3] = &unk_100024DD0;
  v2 = objc_alloc_init(BRCTLMonitor);
  v36 = v2;
  sub_1000082B0(&v38, &v37, "gipt:S:wu", &off_10002A690, v35);
  if ([(BRCTLMonitor *)v2 isGlobal])
  {
    [(BRCTLMonitor *)v2 monitorGlobalActivity];
    goto LABEL_42;
  }

  if (![(BRCTLMonitor *)v2 scopes])
  {
    [(BRCTLMonitor *)v2 setScopes:7];
  }

  v3 = [[NSMutableArray alloc] initWithCapacity:1];
  v4 = +[BRContainer allContainersByContainerID];
  v5 = v4;
  if (v38)
  {
    v6 = [NSString stringWithUTF8String:*v37];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      if (v38 >= 1)
      {
        for (i = 0; i < v38; ++i)
        {
          v9 = [NSString stringWithUTF8String:v37[i]];
          v10 = [v5 objectForKeyedSubscript:v9];

          if (v10)
          {
            [v3 addObject:v9];
          }
        }
      }

      goto LABEL_23;
    }

    v11 = v3;
    v3 = 0;
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [v4 objectEnumerator];
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v31 + 1) + 8 * j) identifier];
          [v3 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v13);
    }
  }

LABEL_23:
  if (v3)
  {
    v17 = v3;
  }

  else
  {
    v17 = &__NSArray0__struct;
  }

  v18 = [v17 mutableCopy];
  if (([(BRCTLMonitor *)v2 scopes]& 2) != 0)
  {
    [v18 addObject:NSMetadataQueryUbiquitousDataScope];
  }

  if (([(BRCTLMonitor *)v2 scopes]& 1) != 0)
  {
    [v18 addObject:NSMetadataQueryUbiquitousDocumentsScope];
  }

  if (([(BRCTLMonitor *)v2 scopes]& 4) != 0)
  {
    [v18 addObject:NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope];
  }

  v19 = objc_alloc_init(NSMetadataQuery);
  if (v3)
  {
    if (![v3 count])
    {
      sub_1000151D4();
    }

    [v19 setSearchScopes:v18];