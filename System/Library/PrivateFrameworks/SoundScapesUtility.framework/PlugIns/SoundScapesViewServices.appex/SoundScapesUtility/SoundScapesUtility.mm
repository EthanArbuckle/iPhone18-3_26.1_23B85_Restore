id sub_100001CE8()
{
  if (qword_10003A258 != -1)
  {
    sub_100029438();
  }

  v1 = qword_10003A250;

  return v1;
}

void sub_100001D2C(id a1)
{
  qword_10003A250 = os_log_create("com.apple.soundscapes.utility", "log");

  _objc_release_x1();
}

uint64_t sub_100001E10(uint64_t a1)
{
  qword_10003A260 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100002010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002038(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = sub_100001CE8();
  v8 = v7;
  if (!a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Catalog Download Successful", buf, 2u);
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100029488();
  }

  v9 = WeakRetained[1] + 1;
  WeakRetained[1] = v9;
  v10 = sub_100001CE8();
  v11 = v10;
  if (v9 > 2)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000294F0(v11, v15, v16, v17, v18, v19, v20, v21);
    }

    v14 = *(*(a1 + 32) + 16);
LABEL_14:
    v14();
    goto LABEL_15;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = 1;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Retrying catalog download in %ld sec", buf, 0xCu);
  }

  v12 = dispatch_time(0, 1000000000);
  v13 = WeakRetained[2];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100002270;
  v22[3] = &unk_100035360;
  objc_copyWeak(&v24, (a1 + 40));
  v23 = *(a1 + 32);
  dispatch_after(v12, v13, v22);

  objc_destroyWeak(&v24);
LABEL_15:
}

void sub_100002270(uint64_t a1)
{
  v2 = sub_100001CE8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retrying catalog download", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained downloadCatalogWithCompleteHandler:*(a1 + 32)];
}

void sub_100002458(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100002484(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (v4)
  {
    v7 = sub_100001CE8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100029618();
    }
  }

  else
  {
    *(WeakRetained + 24) = 1;
    v7 = sub_100001CE8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100029680();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100002648(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v7 = &_s7SwiftUI12ProgressViewVA2A05EmptyD0VRs_rlEyACyAA4TextVAEGAA18LocalizedStringKeyVcAGRszrlufC_ptr;
    if (a2)
    {
      v8 = [NSError errorWithDomain:@"SoundScapesPickerAssetQueryDomain" code:a2 userInfo:0];
      v9 = sub_100001CE8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000297A4();
      }
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [a1[4] results];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v26;
      v15 = ASAttributeCompatibilityVersion;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [a1[5] getAssetVersion:v13 forKey:v15];
          if (v18 < [a1[5] getAssetVersion:v17 forKey:v15])
          {
            v19 = v17;

            v13 = v19;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);

      v7 = &_s7SwiftUI12ProgressViewVA2A05EmptyD0VRs_rlEyACyAA4TextVAEGAA18LocalizedStringKeyVcAGRszrlufC_ptr;
      if (v13)
      {
        v20 = [a1[5] _getAssetURLFuture:v13];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100002940;
        v23[3] = &unk_1000353D8;
        v24 = a1[6];
        v21 = [v20 addCompletionBlock:v23];

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
    }

    v13 = [v7[382] errorWithDomain:@"SoundScapesPickerDomain" code:1 userInfo:0];
    v22 = sub_100001CE8();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10002980C();
    }

    (*(a1[6] + 2))();
    goto LABEL_24;
  }

  v6 = sub_100001CE8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10002973C();
  }

  (*(a1[6] + 2))();
LABEL_25:
}

void sub_100002940(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100001CE8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002984C();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [a2 URLByAppendingPathComponent:@"SupportVersion.plist"];
    v10 = 0;
    v8 = [NSDictionary dictionaryWithContentsOfURL:v7 error:&v10];
    v9 = v10;
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100002B04(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = sub_100001CE8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000298F0();
    }
  }

  [*(a1 + 32) _getSystemVersionsMappingWithCompleteHandler:*(a1 + 40)];
}

void sub_100002C28(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  if ([v5 wasLocal] && (objc_msgSend(*v4, "getLocalUrl"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = sub_100001CE8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100029958(v4);
    }

    v8 = [*v4 getLocalUrl];
    [v3 finishWithResult:v8];
  }

  else
  {
    v8 = objc_alloc_init(MADownloadOptions);
    [v8 setAllowsCellularAccess:1];
    [v8 setDiscretionary:0];
    v9 = sub_100001CE8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000299CC(v4);
    }

    v10 = *v4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100002DA4;
    v11[3] = &unk_100035450;
    v12 = v10;
    v13 = v3;
    [v12 startDownload:v8 completionWithError:v11];
  }
}

void sub_100002DA4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = a3;
    v5 = sub_100001CE8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100029A40();
    }

    [*(a1 + 40) finishWithResult:0 error:v4];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = a3;
    v4 = [v6 getLocalFileUrl];
    [*(a1 + 40) finishWithResult:v4 error:v7];

    v8 = sub_100001CE8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asset Successfully downloaded at %@", &v9, 0xCu);
    }
  }
}

void sub_100002FC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100001CE8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100029B18();
  }

  [*(a1 + 32) _downloadAssetForCompabilityVersions:*(a1 + 40) withCompleteHandler:*(a1 + 48)];
}

void sub_10000315C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100001CE8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002984C();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (a2)
    {
      v7 = [NSError errorWithDomain:@"SoundScapesPickerAssetQueryDomain" code:a2 userInfo:0];
      v8 = sub_100001CE8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100029C24(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    v16 = [*(a1 + 32) results];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000033AC;
    v25[3] = &unk_1000354C8;
    v17 = *(a1 + 48);
    v25[4] = *(a1 + 40);
    v26 = v17;
    v18 = [v16 na_filter:v25];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100003418;
    v24[3] = &unk_1000354F0;
    v24[4] = *(a1 + 40);
    v19 = [v18 na_map:v24];
    v20 = [*(a1 + 40) combineAllFutures:v19];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100003424;
    v22[3] = &unk_100035518;
    v23 = *(a1 + 56);
    v21 = [v20 addCompletionBlock:v22];
  }
}

id sub_1000033AC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) getAssetVersion:a2 forKey:ASAttributeCompatibilityVersion];
  v4 = *(a1 + 40);
  v5 = [NSNumber numberWithUnsignedInteger:v3];
  v6 = [v4 containsObject:v5];

  return v6;
}

void sub_100003424(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_100001CE8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100029C94();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100003748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 200), 8);
  _Block_object_dispose((v32 - 168), 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003798(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000037B0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
    do
    {
      v3 = *(*(*(a1 + 32) + 8) + 24);
      v4 = *(v3 + 8 * v2);
      *(v3 + 8 * v2) = 0;

      ++v2;
    }

    while (v2 < *(a1 + 40));
  }

  v5 = *(*(*(a1 + 32) + 8) + 24);

  free(v5);
}

void sub_100003820(uint64_t a1, void *a2, uint64_t a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003900;
  v7[3] = &unk_1000355E0;
  v14 = a3;
  v11 = *(a1 + 56);
  v8 = *(a1 + 32);
  v12 = *(a1 + 72);
  v5 = *(a1 + 96);
  v13 = *(a1 + 88);
  v15 = v5;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v6 = [a2 addCompletionBlock:v7];
}

void sub_100003900(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(*(a1 + 56) + 8) + 24) + 8 * *(a1 + 96)), a2);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  objc_sync_enter(*(a1 + 32));
  --*(*(*(a1 + 72) + 8) + 24);
  if (v6)
  {
    ++*(*(*(a1 + 80) + 8) + 24);
  }

  v8 = *(*(*(a1 + 72) + 8) + 24);
  if (!v8)
  {
    v9 = *(*(a1 + 88) + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      objc_sync_exit(*(a1 + 32));
      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100003B30;
        v19[3] = &unk_1000355B8;
        v10 = *(a1 + 40);
        v11 = *(a1 + 32);
        v12 = *(a1 + 64);
        v20 = v11;
        v21 = v12;
        [v10 performBlock:v19];
        v13 = v20;
      }

      else
      {
        v17 = [NSArray arrayWithObjects:*(*(*(a1 + 56) + 8) + 24) count:*(a1 + 104)];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100003B24;
        v22[3] = &unk_100035590;
        v18 = *(a1 + 40);
        v23 = *(a1 + 32);
        v24 = v17;
        v13 = v17;
        [v18 performBlock:v22];
      }

      goto LABEL_13;
    }
  }

  objc_sync_exit(*(a1 + 32));
  if (!v8)
  {
LABEL_13:
    (*(*(a1 + 48) + 16))(*(a1 + 48), v14, v15, v16);
  }
}

void sub_100003C84(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_100003CD0()
{
  sub_100012EE4();
  sub_10002A490("com.apple.SoundScapes", 0x15uLL, 1);
  sub_10002A490("SSSoundScapeDataSource", 0x16uLL, 1);
  result = sub_10001DB58();
  qword_100039538 = result;
  return result;
}

uint64_t *sub_100003D60()
{
  if (qword_100039530 != -1)
  {
    swift_once();
  }

  return &qword_100039538;
}

void sub_100003DC0(unsigned int a1)
{
  v3 = *sub_100003D60();
  _objc_retain(v3);

  v2 = sub_10002A420();

  [v3 ulog:a1 message:v2];
  _objc_release(v2);
  _objc_release(v3);
}

BOOL sub_100003ED4(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_100004128()
{
  v2 = qword_100039590;
  if (!qword_100039590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039590);
    return WitnessTable;
  }

  return v2;
}

void sub_100004218(void *a1)
{
  v57 = a1;
  v85[4] = 0;
  v80 = 0;
  v85[5] = a1;
  v1 = a1;
  if (v57)
  {
    v55 = v57;
    v54 = v57;
    [v57 pause];
  }

  sub_100005138(v84);
  if (v84[3])
  {
    sub_100005950(v84, v85);
    v2 = v57;
    if (v57)
    {
      v53 = v57;
      v52 = v57;
      v50 = v58;
      sub_10000596C(v85, v58);
      v47 = v59;
      sub_1000059D0(v58, v59);
      v45 = *(v47 - 8);
      v46 = v45;
      v3 = *(v45 + 64);
      v49 = v16;
      __chkstk_darwin(v16);
      v48 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))();
      v51 = sub_10002A9E0();
      (*(v46 + 8))(v48, v47);
      sub_1000051D8(v50);
      [v52 removeTimeObserver:v51];
      swift_unknownObjectRelease();
    }

    sub_1000051D8(v85);
  }

  else
  {
    sub_10000519C(v84);
  }

  v40 = 0;
  memset(v83, 0, sizeof(v83));
  sub_10000540C(v83);
  v82[0] = v40;
  v82[1] = v40;
  v82[2] = v40;
  v82[3] = v40;
  sub_100005278(v82);
  sub_1000056B0();
  v41 = &v56[OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer];
  v43 = &v81;
  swift_beginAccess();
  v44 = *v41;
  v42 = v44;
  v5 = v44;
  swift_endAccess();
  if (v44)
  {
    v39 = v42;
    v38 = v42;
    v80 = v42;
    v76 = sub_10002A740(0.5, 44100);
    v77 = v6;
    v78 = v7;
    v18 = v76;
    v19 = v6;
    v20 = v7;
    sub_100005740();
    v8 = sub_10002A700();
    v9 = v56;
    v22 = v8;
    v27 = &unk_1000356F0;
    v25 = 24;
    v26 = 7;
    v17 = swift_allocObject();
    v16[1] = v17 + 16;
    v10 = v9;
    swift_unknownObjectWeakInit();

    v11 = v38;

    v12 = swift_allocObject();
    v13 = v17;
    *(v12 + 16) = v38;
    *(v12 + 24) = v13;
    v74 = sub_100005834;
    v75 = v12;
    v69 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v70 = 1107296256;
    v30 = 0;
    v71 = 0;
    v72 = sub_100004BA0;
    v73 = &unk_100035730;
    v21 = _Block_copy(&v69);

    v68[0] = v18;
    v68[1] = v19;
    v68[2] = v20;
    v24 = [v38 addPeriodicTimeObserverForInterval:v68 queue:v22 usingBlock:v21];
    _Block_release(v21);

    v23 = &v79;
    sub_10002A7E0();
    sub_100005278(v23);
    v14 = v56;
    swift_unknownObjectRelease();
    v36 = [objc_opt_self() defaultCenter];
    v35 = sub_100004C3C();
    v34 = [v38 currentItem];
    v33 = [objc_opt_self() mainQueue];
    v31 = swift_allocObject();
    v28 = v31 + 16;
    v15 = v14;
    swift_unknownObjectWeakInit();

    v65 = sub_1000058E4;
    v66 = v31;
    v60 = _NSConcreteStackBlock;
    v61 = v29;
    v62 = v30;
    v63 = sub_100004D5C;
    v64 = &unk_100035758;
    v32 = _Block_copy(&v60);

    v37 = [v36 addObserverForName:v35 object:v34 queue:v33 usingBlock:v32];
    _Block_release(v32);

    swift_unknownObjectRelease();
    v67[3] = swift_getObjectType();
    v67[0] = v37;
    sub_10000540C(v67);
  }
}

void sub_100004888(uint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v21 = a4;
  v20 = a5 + 16;
  v11 = [a4 currentItem];
  if (v11)
  {
    [v11 duration];
    _objc_release(v11);
    v7 = v12;
    v8 = (v13 | (v14 << 32));
    v9 = v15;
    v10 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v16[4] = v7;
    v16[5] = v8;
    v16[6] = v9;
    v5 = sub_10002A760();
    if (v5)
    {
      swift_beginAccess();
      v16[0] = swift_unknownObjectWeakLoadStrong();
      if (v16[0])
      {
        v6 = v16[0];
        _objc_retain(v16[0]);
        sub_100010068(v16);
        swift_endAccess();
        sub_10002A750();
        sub_10002A750();
        sub_1000056B0();
        _objc_release(v6);
      }

      else
      {
        sub_100010068(v16);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_100004BA0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  v6(v3, v4, v5);
}

NSString sub_100004C3C()
{
  sub_10002A490("AVPlayerItemDidPlayToEndTimeNotification", 0x28uLL, 1);
  v1 = sub_10002A420();

  return v1;
}

void sub_100004C90(void *a1, uint64_t a2)
{
  v3[5] = a1;
  v3[4] = (a2 + 16);
  swift_beginAccess();
  v3[0] = swift_unknownObjectWeakLoadStrong();
  if (v3[0])
  {
    v2 = v3[0];
    _objc_retain(v3[0]);
    sub_100010068(v3);
    swift_endAccess();
    sub_100009010();
    _objc_release(v2);
  }

  else
  {
    sub_100010068(v3);
    swift_endAccess();
  }
}

uint64_t sub_100004D5C(uint64_t a1, void *a2)
{
  v5 = a1;
  v12 = a2;
  v11 = sub_100029DD0();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v5);
  v10 = &v4 - v6;
  v7 = *(v2 + 32);
  v13 = *(v2 + 40);

  _objc_retain(v12);
  sub_100029DC0();
  v7(v10);
  (*(v8 + 8))(v10, v11);
  _objc_release(v12);
}

id sub_100004E7C()
{
  v2 = (v0 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100004EEC(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer);
  swift_beginAccess();
  v5 = *v3;
  _objc_retain(*v3);
  swift_endAccess();
  _objc_retain(a1);
  v4 = (v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  _objc_release(v2);
  swift_endAccess();
  sub_100004218(v5);
  _objc_release(v5);
  _objc_release(a1);
}

void (*sub_100004FF0(void *a1))(id **a1, char a2)
{
  v4 = sub_100011944(0x28uLL);
  *a1 = v4;
  v4[4] = v1;
  v3 = (v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer);
  swift_beginAccess();
  v5 = *v3;
  _objc_retain(*v3);
  swift_endAccess();
  v4[3] = v5;
  return sub_1000050B0;
}

void sub_1000050B0(id **a1, char a2)
{
  v4 = *a1;
  v2 = (*a1)[4];
  if (a2)
  {
    v3 = v4[3];
    _objc_retain(v3);
    sub_100004EEC(v3);
    sub_100010068(v4 + 3);
  }

  else
  {
    sub_100004EEC(v4[3]);
  }

  free(v4);
}

uint64_t sub_100005138@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerPeriodicObserver;
  swift_beginAccess();
  sub_100005A3C(v3, a1);
  return swift_endAccess();
}

uint64_t *sub_10000519C(uint64_t *a1)
{
  if (a1[3])
  {
    sub_1000051D8(a1);
  }

  return a1;
}

uint64_t sub_1000051D8(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t *sub_100005278(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_100005A3C(a1, v5);
  v3 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerPeriodicObserver;
  swift_beginAccess();
  sub_100005ACC(v5, v3);
  swift_endAccess();
  return sub_10000519C(a1);
}

uint64_t sub_1000053A8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerEndtimeObserver;
  swift_beginAccess();
  sub_100005A3C(v3, a1);
  return swift_endAccess();
}

uint64_t *sub_10000540C(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_100005A3C(a1, v5);
  v3 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerEndtimeObserver;
  swift_beginAccess();
  sub_100005ACC(v5, v3);
  swift_endAccess();
  return sub_10000519C(a1);
}

uint64_t sub_1000054FC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *&v3[1] = a2;
  *v3 = a2;
  return sub_10000F47C(v3, &type metadata for Double, a1);
}

double sub_100005534()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2;
}

void sub_1000055E0(id *a1@<X0>, double *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_100005534();
  _objc_release(v2);
}

void sub_100005648(uint64_t *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  _objc_retain(*a2);
  sub_1000056B0();
  _objc_release(v2);
}

uint64_t sub_1000056B0()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_100029F80();
}

unint64_t sub_100005740()
{
  v2 = qword_1000395A0;
  if (!qword_1000395A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000395A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1000057E4()
{
  _objc_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100005880(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1000058EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

__n128 sub_100005950(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10000596C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

void *sub_1000059D0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_100005A3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t sub_100005ACC(_OWORD *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_1000051D8(a2);
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  return a2;
}

void (*sub_100005BA0(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_100011944(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  _objc_retain(v2);
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_100029F60();
  return sub_100005C88;
}

void sub_100005C88(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = *(v8 + 48);
    v3 = *(v8 + 40);
    v4 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    _objc_release(v4);
  }

  else
  {
    v5 = *(v8 + 48);
    v6 = *(v8 + 40);
    v7 = *(v8 + 32);
    (*(v8 + 56))(v8, 0);

    _objc_release(v7);
  }

  free(v8);
}

uint64_t sub_100005D74()
{
  swift_beginAccess();
  sub_10000F56C(&qword_1000395C0, &qword_10002CD38);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_100005DF0(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = sub_10000F56C(&qword_1000395C8, &qword_10002CD40);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  sub_10000F56C(&qword_1000395C0, &qword_10002CD38);
  sub_100029F50();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_100005F44(void *a1))(uint64_t **a1, char a2)
{
  v6 = sub_100011944(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_1000395C8, &qword_10002CD40);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5);
  v6[4] = sub_100011944(v5);
  sub_100005D74();
  return sub_100006068;
}

void sub_100006068(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    sub_100005DF0(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    sub_100005DF0(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t sub_100006164@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__playbackProgress;
  swift_beginAccess();
  v2 = sub_10000F56C(&qword_1000395C0, &qword_10002CD38);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_100006204(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = sub_10000F56C(&qword_1000395C0, &qword_10002CD38);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__playbackProgress;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_100006364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = sub_10000F56C(&qword_1000395D0, &qword_10002CD48);
  sub_10000F47C(v6, v2, a2);
}

uint64_t sub_1000063D0()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2;
}

void sub_10000647C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_1000063D0();
  _objc_release(v2);
}

void sub_1000064E8(uint64_t *a1, id *a2)
{
  sub_100012E74(a1, &v4);
  v3 = *a2;
  _objc_retain(*a2);
  sub_100006560();
  _objc_release(v3);
}

uint64_t sub_100006560()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100029F80();
}

void (*sub_10000660C(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_100011944(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  _objc_retain(v2);
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_100029F60();
  return sub_100005C88;
}

uint64_t sub_1000066F4()
{
  swift_beginAccess();
  sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_100006770(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = sub_10000F56C(&qword_100039EE0, &qword_10002CDA0);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  sub_100029F50();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_1000068C4(void *a1))(uint64_t **a1, char a2)
{
  v6 = sub_100011944(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_100039EE0, &qword_10002CDA0);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5);
  v6[4] = sub_100011944(v5);
  sub_1000066F4();
  return sub_1000069E8;
}

void sub_1000069E8(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    sub_100006770(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    sub_100006770(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t sub_100006AE4@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__selectedSoundScapes;
  swift_beginAccess();
  v2 = sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_100006B84(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__selectedSoundScapes;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_100006CE4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return sub_10000F47C(v3, &type metadata for Bool, a2);
}

uint64_t sub_100006D28()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2 & 1;
}

void sub_100006DD8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_100006D28() & 1;
  _objc_release(v2);
}

void sub_100006E48(unsigned __int8 *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  _objc_retain(*a2);
  sub_100006EB4();
  _objc_release(v2);
}

uint64_t sub_100006EB4()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_100029F80();
}

void (*sub_100006F50(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_100011944(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  _objc_retain(v2);
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_100029F60();
  return sub_100005C88;
}

uint64_t sub_100007038()
{
  swift_beginAccess();
  sub_10000F56C(&qword_1000395F8, &unk_10002CDF0);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_1000070B4(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = sub_10000F56C(&qword_100039600, &unk_10002DB20);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  sub_10000F56C(&qword_1000395F8, &unk_10002CDF0);
  sub_100029F50();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_100007208(void *a1))(uint64_t **a1, char a2)
{
  v6 = sub_100011944(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_100039600, &unk_10002DB20);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5);
  v6[4] = sub_100011944(v5);
  sub_100007038();
  return sub_10000732C;
}

void sub_10000732C(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    sub_1000070B4(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    sub_1000070B4(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t sub_100007428@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__dismiss;
  swift_beginAccess();
  v2 = sub_10000F56C(&qword_1000395F8, &unk_10002CDF0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1000074C8(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = sub_10000F56C(&qword_1000395F8, &unk_10002CDF0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__dismiss;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_100007628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
  sub_10000F47C(v6, v2, a2);
}

uint64_t sub_100007698()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2;
}

void sub_100007744(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_100007698();
  _objc_release(v2);
}

void sub_1000077B0(uint64_t *a1, id *a2)
{
  sub_100012EAC(a1, &v4);
  v3 = *a2;
  _objc_retain(*a2);
  sub_100007828();
  _objc_release(v3);
}

uint64_t sub_100007828()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100029F80();
}

void (*sub_1000078D4(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_100011944(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  _objc_retain(v2);
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_100029F60();
  return sub_100005C88;
}

uint64_t sub_1000079BC()
{
  swift_beginAccess();
  sub_10000F56C(&qword_100039618, &qword_10002CE50);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_100007A38(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = sub_10000F56C(&qword_100039620, &qword_10002CE58);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  sub_10000F56C(&qword_100039618, &qword_10002CE50);
  sub_100029F50();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_100007B8C(void *a1))(uint64_t **a1, char a2)
{
  v6 = sub_100011944(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_100039620, &qword_10002CE58);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5);
  v6[4] = sub_100011944(v5);
  sub_1000079BC();
  return sub_100007CB0;
}

void sub_100007CB0(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    sub_100007A38(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    sub_100007A38(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t sub_100007DAC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__soundScapes;
  swift_beginAccess();
  v2 = sub_10000F56C(&qword_100039618, &qword_10002CE50);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_100007E4C(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = sub_10000F56C(&qword_100039618, &qword_10002CE50);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__soundScapes;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_100007FAC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1;
  v3[0] = a1;
  return sub_10000F47C(v3, &unk_100035930, a2);
}

uint64_t sub_100007FEC()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2;
}

void sub_100008098(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_100007FEC();
  _objc_release(v2);
}

void sub_100008104(unsigned __int8 *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  _objc_retain(*a2);
  sub_10000816C();
  _objc_release(v2);
}

uint64_t sub_10000816C()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_100029F80();
}

void (*sub_100008200(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_100011944(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  _objc_retain(v2);
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_100029F60();
  return sub_100005C88;
}

uint64_t sub_1000082E8()
{
  swift_beginAccess();
  sub_10000F56C(&qword_100039630, &qword_10002CEA8);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_100008364(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = sub_10000F56C(&qword_100039638, &qword_10002CEB0);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  sub_10000F56C(&qword_100039630, &qword_10002CEA8);
  sub_100029F50();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_1000084B8(void *a1))(uint64_t **a1, char a2)
{
  v6 = sub_100011944(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_100039638, &qword_10002CEB0);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5);
  v6[4] = sub_100011944(v5);
  sub_1000082E8();
  return sub_1000085DC;
}

void sub_1000085DC(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    sub_100008364(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    sub_100008364(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t sub_1000086D8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__status;
  swift_beginAccess();
  v2 = sub_10000F56C(&qword_100039630, &qword_10002CEA8);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_100008778(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = sub_10000F56C(&qword_100039630, &qword_10002CEA8);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__status;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1000088D8()
{
  v40 = 0;
  v37 = 0;
  v36 = 0;
  v26 = sub_100029E30();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v30 = &v5 - v29;
  v40 = v0;
  v43 = 0;
  v33 = [objc_opt_self() sharedInstance];
  v32 = AVAudioSessionCategoryPlayback;
  _objc_retain(AVAudioSessionCategoryPlayback);
  v39 = v43;
  v34 = [v33 setCategory:v32 error:&v39];
  v31 = v39;
  _objc_retain(v39);
  v1 = v43;
  v43 = v31;
  _objc_release(v1);
  _objc_release(v32);
  _objc_release(v33);
  if ((v34 & 1) == 0)
  {
    v10 = v43;
    v11 = sub_100029DF0();
    _objc_release(v10);
    swift_willThrow();
  }

  v25 = sub_100008E80();
  if (v25)
  {
    v24 = v25;
    v17 = v25;
    v37 = v25;
    v19 = 0;
    sub_10000F6F0();
    (*(v27 + 16))(v30, v17 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_audioAddress, v26);
    v18 = sub_100008E40(v30);
    v36 = v18;
    _objc_retain(v18);
    sub_100004EEC(v18);
    [v18 play];
    v41 = 0;
    v22 = [objc_opt_self() sharedInstance];
    type metadata accessor for SetActiveOptions();
    v20 = sub_10002A9D0();
    sub_10000F670();
    sub_10002A800();
    v35[0] = v41;
    v23 = [v22 setActive:1 withOptions:v35[1] error:v35];
    v21 = v35[0];
    _objc_retain(v35[0]);
    v2 = v41;
    v41 = v21;
    _objc_release(v2);
    _objc_release(v22);
    if ((v23 & 1) == 0)
    {
      v8 = v41;
      v9 = sub_100029DF0();
      _objc_release(v8);
      swift_willThrow();
    }

    _objc_release(v18);
  }

  else
  {
    v12 = 0;
    (sub_100004EEC)();
    v42 = 0;
    v15 = [objc_opt_self() sharedInstance];
    type metadata accessor for SetActiveOptions();
    v13 = sub_10002A9D0();
    sub_10000F670();
    sub_10002A800();
    v38[0] = v42;
    v16 = [v15 setActive:0 withOptions:v38[1] error:v38];
    v14 = v38[0];
    _objc_retain(v38[0]);
    v4 = v42;
    v42 = v14;
    _objc_release(v4);
    _objc_release(v15);
    result = v16;
    if ((v16 & 1) == 0)
    {
      v6 = v42;
      v7 = sub_100029DF0();
      _objc_release(v6);
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100008E80()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2;
}

void sub_100008F2C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_100008E80();
  _objc_release(v2);
}

void sub_100008F98(uint64_t *a1, id *a2)
{
  sub_100012E74(a1, &v4);
  v3 = *a2;
  _objc_retain(*a2);
  sub_100009010();
  _objc_release(v3);
}

uint64_t sub_100009010()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100029F80();
  sub_1000088D8();
}

uint64_t *(*sub_1000090B0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_100008E80();
  return sub_10000910C;
}

uint64_t *sub_10000910C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v5 = *a1;

    sub_100009010();
    return sub_100011998(a1);
  }

  else
  {
    v3 = *a1;
    return sub_100009010();
  }
}

uint64_t sub_100009178()
{
  swift_beginAccess();
  sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_1000091F4(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = sub_10000F56C(&qword_100039EE0, &qword_10002CDA0);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  sub_100029F50();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_100009348(void *a1))(uint64_t **a1, char a2)
{
  v6 = sub_100011944(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_100039EE0, &qword_10002CDA0);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5);
  v6[4] = sub_100011944(v5);
  sub_100009178();
  return sub_10000946C;
}

void sub_10000946C(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    sub_1000091F4(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    sub_1000091F4(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

uint64_t sub_100009568@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__nowplayingSoundScapes;
  swift_beginAccess();
  v2 = sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_100009608(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__nowplayingSoundScapes;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_100009768()
{
  sub_100006EB4();
  sub_100009010();
  return sub_100006560();
}

uint64_t sub_1000097C4(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v54 = a1;
  v85 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v95 = 0;
  v92 = 0;
  v90 = 0;
  v68 = sub_10002A310();
  v53 = *(v68 - 8);
  v66 = v53;
  v2 = *(v53 + 64);
  __chkstk_darwin(0);
  v67 = (v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_10002A370();
  v56 = *(v71 - 8);
  v69 = v56;
  v57 = *(v56 + 64);
  v4 = __chkstk_darwin(v54);
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = v24 - v58;
  v5 = __chkstk_darwin(v4);
  v74 = v24 - v58;
  v123 = v5;
  v122 = v6;
  v121 = v7;
  v62 = 7;
  v77 = swift_allocObject();
  v59 = v77;
  v75 = v77 + 16;
  v117 = v77 + 16;
  sub_10000F56C(&qword_100039658, &qword_10002CF00);
  v60 = sub_10002A9D0();
  v80 = sub_10000F794();
  v79 = &type metadata for String;
  v81 = &protocol witness table for String;
  v8 = sub_10002A3A0();
  v9 = v85;
  *(v77 + 16) = v8;
  v65 = dispatch_semaphore_create(v9);
  v61 = v65;
  v116 = v65;
  v64 = [objc_opt_self() sharedInstance];
  v10 = v65;

  v76 = 32;
  v11 = swift_allocObject();
  v12 = v77;
  *(v11 + 16) = v65;
  *(v11 + 24) = v12;
  v114 = sub_10000F848;
  v115 = v11;
  aBlock = _NSConcreteStackBlock;
  v110 = 1107296256;
  v111 = 0;
  v112 = sub_10000A320;
  v113 = &unk_1000357D0;
  v63 = _Block_copy(&aBlock);

  [v64 getSystemVersionsMappingWithCompleteHandler:v63];
  _Block_release(v63);

  sub_10002A350();
  v13 = v66;
  *v67 = 1;
  (*(v13 + 104))();
  sub_10002A360();
  (*(v66 + 8))(v67, v68);
  v73 = *(v69 + 8);
  v72 = v69 + 8;
  v73(v70, v71);
  sub_10002A720();
  v73(v74, v71);
  v78 = &v104;
  swift_beginAccess();
  v82 = *(v77 + 16);

  swift_endAccess();
  v83 = sub_10002A3B0();

  v103 = v83;
  v86 = sub_10000F56C(&qword_100039668, &qword_10002CF08);
  v87 = type metadata accessor for OperatingSystemVersion();
  v84 = v87;
  sub_10000F950();
  v14 = sub_10002A520();
  v88 = 0;
  v89 = v14;
  v48 = v14;
  sub_10000FA4C(&v103);
  v102 = v48;
  v51 = sub_10000F56C(&qword_100039678, &unk_10002CF10);
  v49 = v51;
  v50 = sub_10000FA78();
  sub_10000FB00();
  v52 = &v102;
  sub_10002A540();
  sub_10000FA4C(v52);
  v98 = v105;
  v99 = v106;
  v100 = v107;
  v101 = v108;
  if (v108)
  {
    v45 = 16;
    v46 = 1;
    v47 = 0;
  }

  else
  {
    v45 = v98;
    v46 = v99;
    v47 = v100;
  }

  v15 = v88;
  v37 = v47;
  v38 = v46;
  v39 = v45;
  v118 = v45;
  v119 = v46;
  v120 = v47;
  v97 = v54;
  v41 = sub_10000F56C(&qword_100039690, &qword_10002D910);
  v40 = v41;
  v42 = sub_10000FB80();
  v16 = sub_10002A520();
  v43 = v15;
  v44 = v16;
  if (v15)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    result = v27;
    __break(1u);
  }

  else
  {
    v96 = v44;
    v32 = v24;
    __chkstk_darwin(v24);
    v17 = v38;
    v33 = &v24[-6];
    v24[-4] = v39;
    v24[-3] = v17;
    v24[-2] = v18;
    v34 = sub_10000FC3C();
    v19 = sub_10002A8C0();
    v35 = 0;
    v36 = v19;
    v29 = v19;
    v95 = v19;
    v94 = v55;
    v20 = sub_10002A520();
    v30 = 0;
    v31 = v20;
    v93 = v20;
    v27 = v24;
    __chkstk_darwin(v24);
    v21 = v38;
    v24[-4] = v39;
    v24[-3] = v21;
    v24[-2] = v22;
    v28 = sub_10002A8C0();
    v26 = v28;
    v92 = v28;
    v91 = v29;
    sub_10000FCC4();
    if (sub_10002A6B0())
    {

      v25 = v26;
    }

    else
    {

      v25 = v29;
    }

    v24[1] = v25;
    v90 = v25;
    sub_10000D1B0(v25);
  }

  return result;
}

Swift::Int sub_10000A060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v13 = 0;
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4 + 16;
  swift_errorRetain();
  if (a2)
  {
    v13 = a2;
    v12[0] = sub_10002A9C0();
    v12[1] = v4;
    v19._countAndFlagsBits = sub_10002A490("Error getting system version mapping ", 0x25uLL, 1);
    sub_10002A9B0(v19);

    swift_getErrorValue();
    v11[0] = sub_10002AA00();
    v11[1] = v5;
    sub_10002A9A0();
    sub_100012570(v11);
    v20._countAndFlagsBits = sub_10002A490("", 0, 1);
    sub_10002A9B0(v20);

    sub_100012570(v12);
    sub_10002A470();
    sub_100003DC0(0x5Au);
  }

  else
  {

    if (a1)
    {
      v14 = a1;

      swift_beginAccess();
      v6 = *(a4 + 16);
      *(a4 + 16) = a1;

      swift_endAccess();
    }

    else
    {
      sub_10002A490("Error getting system version mapping for unknown error", 0x36uLL, 1);
      sub_100003DC0(0x5Au);
    }
  }

  return sub_10000A2E8();
}

uint64_t sub_10000A320(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  _objc_retain(a2);
  if (a2)
  {
    sub_10000F794();
    v4 = sub_10002A390();
    _objc_release(a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_retain(a3);
  v7(v5);
}

uint64_t sub_10000A460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];

  result = sub_10001C74C(v6, v7);
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5 & 1;
  return result;
}

uint64_t sub_10000A4D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  type metadata accessor for OperatingSystemVersion();
  sub_10000FB00();
  return sub_10002A3F0() & 1;
}

uint64_t sub_10000A698(uint64_t a1)
{
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return _swift_task_switch(sub_10000A6E0, 0, 0);
}

uint64_t sub_10000A6E0()
{
  v4 = v0[6];
  v0[2] = v0;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v4;
  v1 = swift_task_alloc();
  *(v5 + 64) = v1;
  v2 = sub_10000F56C(&qword_1000396B0, &qword_10002CF30);
  *v1 = *(v5 + 16);
  v1[1] = sub_10000A828;

  return sub_10000BB7C(v5 + 40, 0, 0, sub_10000FD4C, v6, v2);
}

uint64_t sub_10000A828()
{
  v9 = *v1;
  v2 = *(*v1 + 64);
  v9[2] = *v1;
  v10 = v9 + 2;
  v9[9] = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = sub_10000AA00;
  }

  else
  {
    v3 = v9[7];
    v8 = v9[6];

    v4 = *v10;
    v5 = sub_10000A9B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000A9B4()
{
  *(v0 + 16) = v0;
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);
  return v2(v1);
}

uint64_t sub_10000AA00()
{
  v1 = v0[7];
  v7 = v0[6];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[9];

  return v3();
}

void sub_10000AAB4(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v6 = [objc_opt_self() sharedInstance];

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v12 = sub_100012AD0;
  v13 = v2;
  aBlock = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = 0;
  v10 = sub_10000A320;
  v11 = &unk_100035B58;
  v5 = _Block_copy(&aBlock);

  [v6 getSystemVersionsMappingWithCompleteHandler:v5];
  _Block_release(v5);
  _objc_release(v6);
}

uint64_t sub_10000ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v53 = a3;
  v54 = a2;
  v57 = a1;
  v55 = 0;
  v65 = 0;
  v63 = 0;
  v56 = 0;
  v61 = 0;
  v59 = 0;
  v78 = a1;
  v77 = a2;
  v76 = a3;
  v75 = a4;

  if (v57)
  {
    v51 = v57;
    v5 = v56;
    v43 = v57;
    v63 = v57;
    v62 = v57;
    v44 = &v20;
    __chkstk_darwin(&v20);
    v45 = v19;
    v19[2] = sub_10000B428;
    v19[3] = 0;
    v46 = sub_10000F56C(&qword_1000398B8, &qword_10002D370);
    v47 = sub_10000F56C(&qword_1000398C0, &qword_10002D378);
    sub_100012B6C();
    v6 = sub_10002A520();
    v48 = v5;
    v49 = v6;
    v38 = v6;
    v61 = v6;
    v60 = v52;

    v37 = v19;
    __chkstk_darwin(v19);
    v39 = &v19[-4];
    v19[-2] = v38;
    v19[-1] = v7;
    v40 = sub_10000F56C(&qword_100039678, &unk_10002CF10);
    sub_10000FA78();
    v8 = sub_10002A520();
    v41 = 0;
    v42 = v8;
    v35 = v8;

    v59 = v35;

    v58 = v35;
    v34 = sub_10000F56C(&qword_1000396B0, &qword_10002CF30);
    sub_10000F56C(&qword_100039850, &qword_10002D348);
    sub_10000BAFC(&v58, v53, v34);

    return v41;
  }

  else
  {
    v73 = sub_10002A9C0();
    v74 = v4;
    v79._countAndFlagsBits = sub_10002A490("Error fetching system version mapping ", 0x26uLL, 1);
    object = v79._object;
    sub_10002A9B0(v79);

    swift_errorRetain();
    if (v54)
    {
      v29 = v54;
      swift_getErrorValue();
      v30 = sub_10002AA00();
      v31 = v9;

      v32 = v30;
      v33 = v31;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    v69 = v32;
    v70 = v33;
    if (v33)
    {
      v71 = v69;
      v72 = v70;
    }

    else
    {
      v71 = sub_10002A490("Unknown error", 0xDuLL, 1);
      v72 = v10;
    }

    v68[0] = v71;
    v68[1] = v72;
    sub_10002A9A0();
    sub_100012570(v68);
    v80._countAndFlagsBits = sub_10002A490("", 0, 1);
    v24 = v80._object;
    sub_10002A9B0(v80);

    v26 = v73;
    v25 = v74;

    sub_100012570(&v73);
    v27 = sub_10002A470();
    v28 = v11;
    sub_100003DC0(0x5Au);

    swift_errorRetain();
    v66 = v54;
    if (v54)
    {
      v67 = v66;
    }

    else
    {
      v22 = sub_10002A490("System Version Mapping", 0x16uLL, 1);
      v23 = v12;
      sub_10001223C();
      v13 = swift_allocError();
      v15 = v14;
      v16 = v23;
      v67 = v13;
      *v15 = v22;
      v15[1] = v16;
      if (v66)
      {
        sub_1000126BC(&v66);
      }
    }

    v21 = v67;
    v65 = v67;
    swift_errorRetain();
    v64 = v21;
    v20 = sub_10000F56C(&qword_1000396B0, &qword_10002CF30);
    v17 = sub_10000F56C(&qword_100039850, &qword_10002D348);
    sub_10000B398(&v64, v53, v20, v17);

    return v56;
  }
}

uint64_t sub_10000B398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v4, a1);
  return swift_continuation_throwingResumeWithError();
}

id sub_10000B428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{

  result = sub_10001C74C(a1, a2);
  v17 = result;
  v18 = v5;
  v19 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 1;
  }

  else
  {
    result = [a3 unsignedIntegerValue];
    v8 = v17;
    v9 = v18;
    v10 = v19;
    v11 = result;
    v12 = 0;
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12 & 1;
  return result;
}

uint64_t sub_10000B5EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v18 = 0;
  v19 = 0;
  v12 = a1[1];
  v13 = a1[2];
  v27 = *a1;
  v28 = v12;
  v29 = v13;
  v26 = a2;
  v25 = a3;

  v24 = a2;
  v14 = sub_10000F56C(&qword_1000398D0, &unk_10002D380);
  sub_100012C54();
  result = sub_10002A8C0();
  if (v15)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v23 = result;
    v20[1] = result;
    v5 = sub_100012CDC();
    v20[0] = sub_10001CC0C(sub_10000BABC, 0, v14, &type metadata for UInt, &type metadata for Never, v5, &protocol witness table for Never, v9);
    sub_10000F56C(&qword_1000396B0, &qword_10002CF30);
    sub_100012D64();
    sub_10002A530();
    sub_10000FA4C(v20);
    v7 = v21;
    v8 = v22;
    v18 = v21;
    v19 = v22 & 1;
    v16[2] = v21;
    v17 = v22 & 1;
    if (v22)
    {
      v16[0] = sub_10002A9C0();
      v16[1] = v6;
      v30._countAndFlagsBits = sub_10002A490("Unable version ", 0xFuLL, 1);
      sub_10002A9B0(v30);

      type metadata accessor for OperatingSystemVersion();
      sub_10002A980();
      v31._countAndFlagsBits = sub_10002A490(" using mapping ", 0xFuLL, 1);
      sub_10002A9B0(v31);

      sub_10000F56C(&qword_1000398B8, &qword_10002D370);
      sub_100012DEC();
      sub_10002A990();
      v32._countAndFlagsBits = sub_10002A490("", 0, 1);
      sub_10002A9B0(v32);

      sub_100012570(v16);
      sub_10002A470();
      sub_100003DC0(0x5Au);
    }

    *a4 = v7;
    *(a4 + 8) = v8 & 1;
  }

  return result;
}

uint64_t sub_10000B9CC(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  type metadata accessor for OperatingSystemVersion();
  sub_10000FB00();
  return sub_10002A400() & 1;
}

double sub_10000BABC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = 0.0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  *a2 = a1[3];
  return result;
}

uint64_t sub_10000BB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a6;
  v6[13] = a5;
  v6[12] = a4;
  v6[11] = a1;
  v6[10] = v6;
  v12 = *(a6 - 8);
  v6[15] = v12;
  v7 = *(v12 + 64) + 15;
  v6[16] = swift_task_alloc();
  v14 = 0;
  v15 = 0;
  if (a2)
  {
    swift_getObjectType();
    v14 = sub_10002A5E0();
    v15 = v8;
  }

  v9 = *(v11 + 80);

  return _swift_task_switch(sub_10000BCA8, v14, v15);
}

uint64_t sub_10000BCA8()
{
  v1 = v0[16];
  v6 = v0[14];
  v5 = v0[13];
  v4 = v0[12];
  v0[10] = v0;
  v0[2] = v0[10];
  v0[7] = v1;
  v0[3] = sub_10000BD70;
  v2 = swift_continuation_init();
  sub_100011AEC(v2, v4);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000BD70()
{
  v6 = *v0;
  v6[10] = *v0;
  v7 = v6 + 10;
  if (v6[6])
  {
    v5 = v6[16];
    swift_willThrow();

    v1 = *(*v7 + 8);
  }

  else
  {
    v4 = v6[16];
    v2 = v6[14];
    (*(v6[15] + 32))(v6[11]);

    v1 = *(*v7 + 8);
  }

  return v1();
}

uint64_t sub_10000BF54(uint64_t a1)
{
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return _swift_task_switch(sub_10000BF9C, 0, 0);
}

uint64_t sub_10000BF9C()
{
  v4 = v0[6];
  v0[2] = v0;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v4;
  v1 = swift_task_alloc();
  *(v5 + 64) = v1;
  v2 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
  *v1 = *(v5 + 16);
  v1[1] = sub_10000A828;

  return sub_10000BB7C(v5 + 40, 0, 0, sub_10000FD54, v6, v2);
}

void sub_10000C0E4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v20 = a2;
  v8 = [objc_opt_self() sharedInstance];
  v19 = a2;
  v9 = sub_10000F56C(&qword_1000396B0, &qword_10002CF30);
  v10 = sub_10000F794();
  v2 = sub_10001259C();
  sub_10001CC0C(sub_10000C2E0, 0, v9, v10, &type metadata for Never, v2, &protocol witness table for Never, v11);
  isa = sub_10002A560().super.isa;

  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v17 = sub_100012650;
  v18 = v3;
  aBlock = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_10000D080;
  v16 = &unk_100035B08;
  v4 = _Block_copy(&aBlock);

  [v8 downloadAssetForCompabilityVersions:isa withCompleteHandler:v4];
  _Block_release(v4);
  _objc_release(isa);
  _objc_release(v8);
}

id sub_10000C2E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_10000F794();
  result = sub_10000C33C(v3);
  *a2 = result;
  return result;
}

uint64_t sub_10000C37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v32[0] = 0;
  v32[1] = 0;
  v49[4] = a1;
  v49[3] = a2;
  v49[2] = a3;

  if (a1)
  {
    v39 = a1;
    v38 = a1;
    sub_10000F56C(&qword_100039860, &qword_10002D350);
    sub_10000F56C(&qword_100039868, &qword_10002D358);
    sub_1000126E8();
    v4 = sub_10002A520();
    v26 = v4;
    v37 = v4;
    v35 = v4;
    sub_10000F56C(&qword_100039878, &qword_10002D360);
    sub_100012770();
    sub_10002A690();
    if (v34)
    {
      v36 = v34;

      v31[2] = v26;
      sub_10002A6C0();
      while (1)
      {
        sub_10000F56C(&qword_100039888, &qword_10002D368);
        sub_10002A910();
        if (!v31[1])
        {
          break;
        }

        sub_1000127F8();
        sub_10002A620();
      }

      sub_10000FA4C(v32);
      v22 = v36;

      v31[0] = v22;
      sub_1000127F8();
      sub_100012880();
      v23 = sub_10002A550();
      sub_10000FA4C(v31);
      v30 = v23;
      v24 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
      sub_10000F56C(&qword_100039850, &qword_10002D348);
      sub_10000BAFC(&v30, a3, v24);
      sub_10000FA4C(&v36);
    }

    else
    {
      sub_10001223C();
      v5 = swift_allocError();
      *v6 = 0;
      v6[1] = 0;
      v33 = v5;
      v25 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
      v7 = sub_10000F56C(&qword_100039850, &qword_10002D348);
      sub_10000B398(&v33, a3, v25, v7);
    }
  }

  else
  {
    v49[0] = sub_10002A9C0();
    v49[1] = v3;
    v50._countAndFlagsBits = sub_10002A490("Error download assets ", 0x16uLL, 1);
    sub_10002A9B0(v50);

    swift_errorRetain();
    if (a2)
    {
      swift_getErrorValue();
      v18 = sub_10002AA00();
      v19 = v9;

      v20 = v18;
      v21 = v19;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v45 = v20;
    v46 = v21;
    if (v21)
    {
      v47 = v45;
      v48 = v46;
    }

    else
    {
      v47 = sub_10002A490("Unknown error", 0xDuLL, 1);
      v48 = v10;
    }

    v44[0] = v47;
    v44[1] = v48;
    sub_10002A9A0();
    sub_100012570(v44);
    v51._countAndFlagsBits = sub_10002A490("", 0, 1);
    sub_10002A9B0(v51);

    sub_100012570(v49);
    sub_10002A470();
    sub_100003DC0(0x5Au);

    swift_errorRetain();
    v42 = a2;
    if (a2)
    {
      v43 = v42;
    }

    else
    {
      v16 = sub_10002A490("Asset", 5uLL, 1);
      v17 = v11;
      sub_10001223C();
      v43 = swift_allocError();
      *v12 = v16;
      v12[1] = v17;
      if (v42)
      {
        sub_1000126BC(&v42);
      }
    }

    v15 = v43;
    v41 = v43;
    swift_errorRetain();
    v40 = v15;
    v14 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
    v13 = sub_10000F56C(&qword_100039850, &qword_10002D348);
    sub_10000B398(&v40, a3, v14, v13);
  }
}

uint64_t sub_10000CA30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v63 = a1;
  v80 = 0;
  v79 = 0;
  v75 = 0;
  v58 = 0;
  v62 = sub_100029E30();
  v60 = *(v62 - 8);
  v61 = v62 - 8;
  v59 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v65 = &v18 - v59;
  v80 = v2;
  type metadata accessor for SoundScapesOptionsManager();
  (*(v60 + 16))(v65, v63, v62);
  v3 = v64;
  v4 = sub_100014954(v65);
  v66 = v3;
  v67 = v4;
  v68 = v3;
  if (v3)
  {
    v29 = v68;
    v30 = 0;
    swift_errorRetain();
    v79 = v29;
    v19 = 20;
    v13 = sub_10002A9C0();
    v24 = &v77;
    v77 = v13;
    v78 = v14;
    v22 = 1;
    v84._countAndFlagsBits = sub_10002A490("Error opening asset ", v19, 1);
    object = v84._object;
    sub_10002A9B0(v84);

    swift_getErrorValue();
    v15 = sub_10002AA00();
    v21 = v76;
    v76[0] = v15;
    v76[1] = v16;
    sub_10002A9A0();
    sub_100012570(v21);
    v85._countAndFlagsBits = sub_10002A490("", 0, v22 & 1);
    v23 = v85._object;
    sub_10002A9B0(v85);

    v26 = v77;
    v25 = v78;

    sub_100012570(v24);
    v27 = sub_10002A470();
    v28 = v17;
    sub_100003DC0(0x5Au);

    *v57 = 0;

    return v30;
  }

  else
  {
    v55 = v67;
    v75 = v67;
    v33 = 10;
    v5 = sub_10002A9C0();
    v44 = &v73;
    v73 = v5;
    v74 = v6;
    v42 = "";
    v49 = 0;
    v41 = 1;
    v81._countAndFlagsBits = sub_10002A490("", 0, 1);
    v31 = v81._object;
    sub_10002A9B0(v81);

    v7 = sub_10002A490("loadSoundScapes(for:)", 0x15uLL, v41 & 1);
    v32 = v72;
    v72[0] = v7;
    v72[1] = v8;
    v39 = &type metadata for String;
    v37 = &protocol witness table for String;
    v38 = &protocol witness table for String;
    sub_10002A9A0();
    sub_100012570(v32);
    v82._countAndFlagsBits = sub_10002A490(" result = ", v33, v41 & 1);
    v34 = v82._object;
    sub_10002A9B0(v82);

    v35 = *(v55 + 16);

    v36 = &v71;
    v71 = v35;
    v52 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
    sub_100012900();
    v9 = sub_10002A450();
    v40 = v70;
    v70[0] = v9;
    v70[1] = v10;
    sub_10002A9A0();
    sub_100012570(v40);
    v83._countAndFlagsBits = sub_10002A490(v42, v49, v41 & 1);
    v43 = v83._object;
    sub_10002A9B0(v83);

    v46 = v73;
    v45 = v74;

    sub_100012570(v44);
    v47 = sub_10002A470();
    v48 = v11;
    sub_100003DC0(0x28u);

    v50 = *(v55 + 16);

    v54 = &v69;
    v69 = v50;
    v51 = type metadata accessor for SoundScapesOption();
    v53 = sub_100012988();
    sub_100012A08();
    *v57 = sub_10002A630();

    result = v66;
    v56 = v66;
  }

  return result;
}

uint64_t sub_10000D080(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  _objc_retain(a2);
  if (a2)
  {
    sub_100029E30();
    v4 = sub_10002A570();
    _objc_release(a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_retain(a3);
  v7(v5);
}

uint64_t sub_10000D1B0(uint64_t a1)
{
  v13 = a1;
  v12 = &unk_10002CF50;
  v17 = 0;
  v16 = 0;
  v10 = (*(*(sub_10000F56C(&qword_1000396B8, &qword_10002CF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v10 - v10;
  v17 = __chkstk_darwin(v13);
  v16 = v1;
  v11 = 0;
  v2 = sub_10002A600();
  (*(*(v2 - 8) + 56))(v14, 1);
  _objc_retain(v1);

  v3 = swift_allocObject();
  v4 = v11;
  v5 = v12;
  v6 = v14;
  v7 = v3;
  v8 = v13;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = v8;
  v15 = sub_10000E550(v4, v4, v6, v5, v7, &type metadata for () + 8);
  sub_10000FFC0(v14);
}

uint64_t sub_10000D32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[14] = v5;
  v5[15] = 0;
  v5[16] = 0;
  v5[17] = 0;
  v5[18] = 0;
  v5[19] = 0;
  v7 = sub_10002A320();
  v5[22] = v7;
  v13 = *(v7 - 8);
  v5[23] = v13;
  v8 = *(v13 + 64) + 15;
  v5[24] = swift_task_alloc();
  v9 = sub_10002A340();
  v5[25] = v9;
  v14 = *(v9 - 8);
  v5[26] = v14;
  v10 = *(v14 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[15] = a4;
  v5[16] = a5;
  v11 = swift_task_alloc();
  *(v15 + 224) = v11;
  *v11 = *(v15 + 112);
  v11[1] = sub_10000D504;

  return sub_10000A698(a5);
}

uint64_t sub_10000D504(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 224);
  v10[14] = *v2;
  v11 = v10 + 14;
  v10[29] = a1;
  v10[30] = v1;

  if (v1)
  {
    v8 = *v11;

    return _swift_task_switch(sub_10000DD98, 0, 0);
  }

  else
  {
    v10[18] = a1;
    v5 = swift_task_alloc();
    v10[31] = v5;
    *v5 = *v11;
    v5[1] = sub_10000D6EC;
    v6 = v10[21];

    return sub_10000BF54(a1);
  }
}

uint64_t sub_10000D6EC(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 248);
  v9[14] = *v2;
  v10 = v9 + 14;
  v9[32] = a1;
  v9[33] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_10000E014;
  }

  else
  {
    v5 = *v10;
    v6 = sub_10000D85C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000D85C()
{
  v1 = v0[32];
  v0[14] = v0;
  v0[19] = v1;
  v0[20] = v1;
  sub_10000F56C(&qword_100039608, &qword_10002CE00);
  sub_1000121B4();
  if (sub_10002A6B0())
  {
    v12 = *(v35 + 256);
    v13 = *(v35 + 232);
    sub_10001223C();
    v23 = swift_allocError();
    *v4 = 0;
    v4[1] = 0;
    swift_willThrow();

    v19 = *(v35 + 216);
    v20 = *(v35 + 200);
    v16 = *(v35 + 192);
    v17 = *(v35 + 176);
    v14 = *(v35 + 168);
    v18 = *(v35 + 208);
    v15 = *(v35 + 184);
    swift_errorRetain();
    *(v35 + 136) = v23;
    sub_100005740();
    v22 = sub_10002A700();
    swift_errorRetain();
    _objc_retain(v14);
    v5 = swift_allocObject();
    *(v5 + 16) = v23;
    *(v5 + 24) = v14;
    *(v35 + 48) = sub_100012144;
    *(v35 + 56) = v5;
    *(v35 + 16) = _NSConcreteStackBlock;
    *(v35 + 24) = 1107296256;
    *(v35 + 28) = 0;
    *(v35 + 32) = sub_10000E300;
    *(v35 + 40) = &unk_100035A68;
    aBlock = _Block_copy((v35 + 16));
    sub_10000E350();
    sub_10000E368();
    sub_10002A710();
    (*(v15 + 8))(v16, v17);
    (*(v18 + 8))(v19, v20);
    _Block_release(aBlock);
    v6 = *(v35 + 56);

    _objc_release(v22);
  }

  else
  {
    v33 = *(v35 + 256);
    v34 = *(v35 + 232);
    v29 = *(v35 + 216);
    v30 = *(v35 + 200);
    v26 = *(v35 + 192);
    v27 = *(v35 + 176);
    v24 = *(v35 + 168);
    v28 = *(v35 + 208);
    v25 = *(v35 + 184);
    sub_100005740();
    v32 = sub_10002A700();
    _objc_retain(v24);

    v2 = swift_allocObject();
    *(v2 + 16) = v24;
    *(v2 + 24) = v33;
    *(v35 + 96) = sub_100012308;
    *(v35 + 104) = v2;
    *(v35 + 64) = _NSConcreteStackBlock;
    *(v35 + 72) = 1107296256;
    *(v35 + 76) = 0;
    *(v35 + 80) = sub_10000E300;
    *(v35 + 88) = &unk_100035AB8;
    v31 = _Block_copy((v35 + 64));
    sub_10000E350();
    sub_10000E368();
    sub_10002A710();
    (*(v25 + 8))(v26, v27);
    (*(v28 + 8))(v29, v30);
    _Block_release(v31);
    v3 = *(v35 + 104);

    _objc_release(v32);
  }

  v7 = *(v35 + 216);
  v11 = *(v35 + 192);

  v8 = *(*(v35 + 112) + 8);
  v9 = *(v35 + 112);

  return v8();
}

uint64_t sub_10000DD98()
{
  v0[14] = v0;
  v16 = v0[30];
  v12 = v0[27];
  v11 = v0[26];
  v13 = v0[25];
  v9 = v0[24];
  v8 = v0[23];
  v10 = v0[22];
  v7 = v0[21];
  swift_errorRetain();
  v0[17] = v16;
  sub_100005740();
  v15 = sub_10002A700();
  swift_errorRetain();
  _objc_retain(v7);
  v1 = swift_allocObject();
  *(v1 + 16) = v16;
  *(v1 + 24) = v7;
  v0[6] = sub_100012144;
  v0[7] = v1;
  v0[2] = _NSConcreteStackBlock;
  *(v0 + 6) = 1107296256;
  *(v0 + 7) = 0;
  v0[4] = sub_10000E300;
  v0[5] = &unk_100035A68;
  v14 = _Block_copy(v0 + 2);
  sub_10000E350();
  sub_10000E368();
  sub_10002A710();
  (*(v8 + 8))(v9, v10);
  (*(v11 + 8))(v12, v13);
  _Block_release(v14);
  v2 = v0[7];

  _objc_release(v15);

  v3 = v0[27];
  v17 = v0[24];

  v4 = *(v0[14] + 8);
  v5 = v0[14];

  return v4();
}

uint64_t sub_10000E014()
{
  v1 = v0[29];
  v0[14] = v0;

  v17 = v0[33];
  v13 = v0[27];
  v12 = v0[26];
  v14 = v0[25];
  v10 = v0[24];
  v9 = v0[23];
  v11 = v0[22];
  v8 = v0[21];
  swift_errorRetain();
  v0[17] = v17;
  sub_100005740();
  v16 = sub_10002A700();
  swift_errorRetain();
  _objc_retain(v8);
  v2 = swift_allocObject();
  *(v2 + 16) = v17;
  *(v2 + 24) = v8;
  v0[6] = sub_100012144;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  *(v0 + 6) = 1107296256;
  *(v0 + 7) = 0;
  v0[4] = sub_10000E300;
  v0[5] = &unk_100035A68;
  v15 = _Block_copy(v0 + 2);
  sub_10000E350();
  sub_10000E368();
  sub_10002A710();
  (*(v9 + 8))(v10, v11);
  (*(v12 + 8))(v13, v14);
  _Block_release(v15);
  v3 = v0[7];

  _objc_release(v16);

  v4 = v0[27];
  v18 = v0[24];

  v5 = *(v0[14] + 8);
  v6 = v0[14];

  return v5();
}

uint64_t sub_10000E29C()
{

  sub_100007828();
  return sub_10000816C();
}

uint64_t sub_10000E300(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v1);
}

uint64_t sub_10000E368()
{
  sub_100012378(0);
  sub_10002A320();
  sub_100012468();
  sub_10000F56C(&qword_100039840, &qword_10002D340);
  sub_1000124E8();
  return sub_10002A880();
}

uint64_t sub_10000E408(uint64_t a1, uint64_t a2)
{
  v4[3] = a1;
  v4[2] = a2;
  v4[0] = sub_10002A9C0();
  v4[1] = v2;
  v5._countAndFlagsBits = sub_10002A490("Fetch failed because of ", 0x18uLL, 1);
  sub_10002A9B0(v5);

  sub_10000F56C(&qword_100039850, &qword_10002D348);
  sub_10002A980();
  v6._countAndFlagsBits = sub_10002A490("", 0, 1);
  sub_10002A9B0(v6);

  sub_100012570(v4);
  sub_10002A470();
  sub_100003DC0(0x5Au);

  return sub_10000816C();
}

uint64_t sub_10000E550(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_10002D330;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(sub_10000F56C(&qword_1000396B8, &qword_10002CF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v57 = &v16 - v53;

  v63 = v55;
  v64 = v56;
  sub_1000119C4(v54, v57);
  v58 = sub_10002A600();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_10000FFC0(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_10002A5F0();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1000;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_10002A5E0();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v26 = sub_10002A460();
    v8 = *(v26 + 16);
    sub_100011B70(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v25 = v61;

    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v24 = v27;
  if (v27)
  {
    v18 = v24;
    v19 = v24;
  }

  else
  {

    v20 = v63;
    v21 = v64;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v31;
    v13 = v30;
    v22 = v9;
    v9[2] = v47;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v23 = v62;
    }

    v19 = swift_task_create();
  }

  sub_100011B5C();
  v17 = v14;

  return v17;
}

char *sub_10000EB08()
{
  v51 = 0;
  v40 = sub_10000F56C(&qword_100039630, &qword_10002CEA8);
  v35 = *(v40 - 8);
  v36 = v40 - 8;
  v7 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v39 = &v7 - v7;
  v33 = sub_10000F56C(&qword_100039618, &qword_10002CE50);
  v28 = *(v33 - 8);
  v29 = v33 - 8;
  v8 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = &v7 - v8;
  v27 = sub_10000F56C(&qword_1000395F8, &unk_10002CDF0);
  v22 = *(v27 - 8);
  v23 = v27 - 8;
  v9 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v26 = &v7 - v9;
  v44 = sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  v18 = *(v44 - 8);
  v19 = v44 - 8;
  v10 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v44);
  v43 = &v7 - v10;
  v17 = sub_10000F56C(&qword_1000395C0, &qword_10002CD38);
  v12 = *(v17 - 8);
  v13 = v17 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v1 = &v7 - v11;
  v16 = &v7 - v11;
  v51 = v0;
  v47 = 0;
  *&v0[OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer] = 0;
  v2 = &v51[OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerPeriodicObserver];
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v3 = &v51[OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerEndtimeObserver];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  v15 = v51;
  v14 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__playbackProgress;
  sub_1000054FC(v1, 0.0);
  (*(v12 + 32))(&v15[v14], v16, v17);
  v21 = v51;
  v20 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__selectedSoundScapes;
  sub_100006364(v47, v43);
  v46 = *(v18 + 32);
  v45 = v18 + 32;
  v46(&v21[v20], v43, v44);
  v25 = v51;
  v24 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__dismiss;
  v34 = 1;
  sub_100006CE4(0, v26);
  (*(v22 + 32))(&v25[v24], v26, v27);
  v31 = v51;
  v30 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__soundScapes;
  type metadata accessor for SoundScapesOption();
  v4 = sub_10002A9D0();
  sub_100007628(v4, v32);
  (*(v28 + 32))(&v31[v30], v32, v33);
  v38 = v51;
  v37 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__status;
  sub_100007FAC(v34, v39);
  (*(v35 + 32))(&v38[v37], v39, v40);
  v42 = v51;
  v41 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__nowplayingSoundScapes;
  sub_100006364(v47, v43);
  v46(&v42[v41], v43, v44);
  v48 = v51;
  v5 = type metadata accessor for SoundScapesDataSource();
  v50.receiver = v48;
  v50.super_class = v5;
  v49 = objc_msgSendSuper2(&v50, "init");
  _objc_retain(v49);
  v51 = v49;
  _objc_release(v49);
  return v49;
}

id sub_10000F0DC()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SoundScapesDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000F374@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SoundScapesDataSource();
  result = sub_100029F20();
  *a1 = result;
  return result;
}

id sub_10000F3B0@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  sub_100029E00(a2);
  v6 = v3;
  v8 = [v2 initWithURL:?];
  _objc_release(v6);
  v4 = sub_100029E30();
  (*(*(v4 - 8) + 8))(a1);
  return v8;
}

uint64_t sub_10000F47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[1] = a3;
  v7 = a1;
  v8 = a2;
  v9 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v4[2] = v4 - v4[0];
  (*(v5 + 16))();
  sub_100029F30();
  return (*(v5 + 8))(v7, v8);
}

uint64_t sub_10000F56C(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t type metadata accessor for SetActiveOptions()
{
  v4 = qword_100039790;
  if (!qword_100039790)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_100039790);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_10000F670()
{
  v2 = qword_100039640;
  if (!qword_100039640)
  {
    type metadata accessor for SetActiveOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000F6F0()
{
  v2 = qword_100039648;
  if (!qword_100039648)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039648);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10000F754()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_10000F794()
{
  v2 = qword_100039660;
  if (!qword_100039660)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039660);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10000F7F8()
{
  _objc_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000F854(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t type metadata accessor for OperatingSystemVersion()
{
  v4 = qword_100039788;
  if (!qword_100039788)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_100039788);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_10000F950()
{
  v2 = qword_100039670;
  if (!qword_100039670)
  {
    sub_10000F9D8(&qword_100039668, &qword_10002CF08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039670);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000F9D8(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t *sub_10000FA4C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_10000FA78()
{
  v2 = qword_100039680;
  if (!qword_100039680)
  {
    sub_10000F9D8(&qword_100039678, &unk_10002CF10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000FB00()
{
  v2 = qword_100039688;
  if (!qword_100039688)
  {
    type metadata accessor for OperatingSystemVersion();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039688);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000FB80()
{
  v2 = qword_100039698;
  if (!qword_100039698)
  {
    sub_10000F9D8(&qword_100039690, &qword_10002D910);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039698);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000FC08(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10000A4D4(a1) & 1;
}

unint64_t sub_10000FC3C()
{
  v2 = qword_1000396A0;
  if (!qword_1000396A0)
  {
    sub_10000F9D8(&qword_100039678, &unk_10002CF10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000396A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000FCC4()
{
  v2 = qword_1000396A8;
  if (!qword_1000396A8)
  {
    sub_10000F9D8(&qword_100039678, &unk_10002CF10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000396A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000FD5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_10000FDB4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10000FE98;

  return sub_10000D32C(a1, v6, v7, v8, v9);
}

uint64_t sub_10000FE98()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_10000FFC0(uint64_t a1)
{
  v3 = sub_10002A600();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t type metadata accessor for SoundScapesDataSource()
{
  v1 = qword_100039748;
  if (!qword_100039748)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_10001012C()
{
  v11 = sub_100010394();
  updated = v11;
  if (v0 <= 0x3F)
  {
    v13 = *(v11 - 8) + 64;
    v1 = sub_100010428();
    updated = v1;
    if (v2 <= 0x3F)
    {
      v10 = *(v1 - 8);
      v3 = sub_1000104CC();
      updated = v3;
      if (v4 <= 0x3F)
      {
        v14 = *(v3 - 8) + 64;
        v9 = sub_100010560();
        updated = v9;
        if (v5 <= 0x3F)
        {
          v15 = *(v9 - 8) + 64;
          v8 = sub_100010604();
          updated = v8;
          if (v6 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            updated = swift_updateClassMetadata2();
            if (!updated)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return updated;
}

uint64_t sub_100010394()
{
  v4 = qword_100039758;
  if (!qword_100039758)
  {
    v3 = sub_100029F90();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_100039758);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100010428()
{
  v4 = qword_100039760;
  if (!qword_100039760)
  {
    sub_10000F9D8(&qword_1000395D0, &qword_10002CD48);
    v3 = sub_100029F90();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_100039760);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1000104CC()
{
  v4 = qword_100039768;
  if (!qword_100039768)
  {
    v3 = sub_100029F90();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_100039768);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100010560()
{
  v4 = qword_100039770;
  if (!qword_100039770)
  {
    sub_10000F9D8(&qword_100039608, &qword_10002CE00);
    v3 = sub_100029F90();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_100039770);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100010604()
{
  v4 = qword_100039778;
  if (!qword_100039778)
  {
    v3 = sub_100029F90();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_100039778);
      return v1;
    }
  }

  return v4;
}

__n128 sub_10001069C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000106A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 16))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000107F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100010ACC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100010C34(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

__n128 sub_100010E54(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_100010E68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100010F48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 24) = 1;
    }
  }

  else if (a3)
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1000110F4()
{
  sub_10001184C();
  sub_1000118CC();
  return sub_10002AB40();
}

uint64_t sub_1000112F8()
{
  sub_10001184C();
  sub_1000118CC();
  return sub_10002AB30();
}

uint64_t sub_10001133C()
{
  sub_10001184C();
  sub_1000118CC();
  return sub_10002AB10();
}

uint64_t sub_100011380()
{
  sub_10001184C();
  sub_1000118CC();
  return sub_10002AB20();
}

uint64_t sub_10001152C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001155C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10001159C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1000115E4()
{
  v2 = qword_100039798;
  if (!qword_100039798)
  {
    type metadata accessor for SetActiveOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000116A0()
{
  v2 = qword_1000397A0;
  if (!qword_1000397A0)
  {
    type metadata accessor for SetActiveOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000397A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100011738()
{
  v2 = qword_1000397A8;
  if (!qword_1000397A8)
  {
    type metadata accessor for SetActiveOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000397A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000117D0()
{
  v2 = qword_1000397B0;
  if (!qword_1000397B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000397B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001184C()
{
  v2 = qword_1000397B8;
  if (!qword_1000397B8)
  {
    type metadata accessor for SetActiveOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000397B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000118CC()
{
  v2 = qword_1000397C0;
  if (!qword_1000397C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000397C0);
    return WitnessTable;
  }

  return v2;
}

void *sub_100011944(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t *sub_100011998(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void *sub_1000119C4(const void *a1, void *a2)
{
  v6 = sub_10002A600();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10000F56C(&qword_1000396B8, &qword_10002CF40);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_100011AEC(uint64_t a1, uint64_t (*a2)(void))
{
  sub_10000F56C(&qword_100039850, &qword_10002D348);
  sub_100011B5C();
  return a2();
}

uint64_t sub_100011B70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_10002A930();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_100011D30(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100011E44;

  return v7(a1);
}

uint64_t sub_100011E44()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_100011F70()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_100011FB8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10000FE98;

  return sub_100011D30(a1, v6);
}

uint64_t sub_1000120AC()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1000120F4()
{
  v1 = *(v0 + 16);

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_100012150(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1000121B4()
{
  v2 = qword_100039828;
  if (!qword_100039828)
  {
    sub_10000F9D8(&qword_100039608, &qword_10002CE00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001223C()
{
  v2 = qword_100039830;
  if (!qword_100039830)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039830);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000122B8()
{
  _objc_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100012308()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10000E29C();
}

uint64_t sub_100012314(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100012378(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_10002A320();
      v3 = sub_10002A5A0();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = &_swiftEmptyArrayStorage;
    }

    v1 = sub_10002A320();
    result = v4;
    v2 = &v4[(*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)];
  }

  return result;
}

unint64_t sub_100012468()
{
  v2 = qword_100039838;
  if (!qword_100039838)
  {
    sub_10002A320();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000124E8()
{
  v2 = qword_100039848;
  if (!qword_100039848)
  {
    sub_10000F9D8(&qword_100039840, &qword_10002D340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039848);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100012570(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

unint64_t sub_10001259C()
{
  v2 = qword_100039858;
  if (!qword_100039858)
  {
    sub_10000F9D8(&qword_1000396B0, &qword_10002CF30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039858);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100012658(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t *sub_1000126BC(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1000126E8()
{
  v2 = qword_100039870;
  if (!qword_100039870)
  {
    sub_10000F9D8(&qword_100039860, &qword_10002D350);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012770()
{
  v2 = qword_100039880;
  if (!qword_100039880)
  {
    sub_10000F9D8(&qword_100039878, &qword_10002D360);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000127F8()
{
  v2 = qword_100039890;
  if (!qword_100039890)
  {
    sub_10000F9D8(&qword_100039868, &qword_10002D358);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039890);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012880()
{
  v2 = qword_100039898;
  if (!qword_100039898)
  {
    type metadata accessor for SoundScapesOption();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012900()
{
  v2 = qword_1000398A0;
  if (!qword_1000398A0)
  {
    sub_10000F9D8(&qword_100039608, &qword_10002CE00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012988()
{
  v2 = qword_1000398A8;
  if (!qword_1000398A8)
  {
    type metadata accessor for SoundScapesOption();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012A08()
{
  v2 = qword_1000398B0;
  if (!qword_1000398B0)
  {
    sub_10000F9D8(&qword_100039608, &qword_10002CE00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100012A90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100012ADC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_100012B6C()
{
  v2 = qword_1000398C8;
  if (!qword_1000398C8)
  {
    sub_10000F9D8(&qword_1000398B8, &qword_10002D370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100012C20(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10000B9CC(a1) & 1;
}

unint64_t sub_100012C54()
{
  v2 = qword_1000398D8;
  if (!qword_1000398D8)
  {
    sub_10000F9D8(&qword_1000398D0, &unk_10002D380);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012CDC()
{
  v2 = qword_1000398E0;
  if (!qword_1000398E0)
  {
    sub_10000F9D8(&qword_1000398D0, &unk_10002D380);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012D64()
{
  v2 = qword_1000398E8;
  if (!qword_1000398E8)
  {
    sub_10000F9D8(&qword_1000396B0, &qword_10002CF30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012DEC()
{
  v2 = qword_1000398F0;
  if (!qword_1000398F0)
  {
    sub_10000F9D8(&qword_1000398B8, &qword_10002D370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398F0);
    return WitnessTable;
  }

  return v2;
}

void *sub_100012E74(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *sub_100012EAC(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_100012EE4()
{
  v2 = qword_1000398F8;
  if (!qword_1000398F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000398F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for ReadingOptions()
{
  v4 = qword_100039900;
  if (!qword_100039900)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_100039900);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100012FE0()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_100013018()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t sub_100013050()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t sub_100013088()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t sub_1000130C0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v7 = a1[1];

  v5 = *a2;
  v6 = a2[1];

  v8 = sub_10002A4A0();

  return v8 & 1;
}

uint64_t sub_100013154(uint64_t a1, uint64_t a2)
{
  v18[2] = a1;
  v18[3] = a2;

  v18[0] = sub_10002A490("identifier", 0xAuLL, 1);
  v18[1] = v2;
  v17[2] = a1;
  v17[3] = a2;
  v14 = sub_10002A4A0();
  sub_100012570(v18);
  if (v14)
  {

    v19 = 0;
    v11 = 0;
LABEL_10:

    return v11;
  }

  v17[0] = sub_10002A490("name", 4uLL, 1);
  v17[1] = v3;
  v16[2] = a1;
  v16[3] = a2;
  v10 = sub_10002A4A0();
  sub_100012570(v17);
  if (v10)
  {

    v19 = 1;
    v11 = 1;
    goto LABEL_10;
  }

  v16[0] = sub_10002A490("imageFile", 9uLL, 1);
  v16[1] = v4;
  v15[2] = a1;
  v15[3] = a2;
  v9 = sub_10002A4A0();
  sub_100012570(v16);
  if (v9)
  {

    v19 = 2;
    v11 = 2;
    goto LABEL_10;
  }

  v15[0] = sub_10002A490("audioFile", 9uLL, 1);
  v15[1] = v5;
  v8 = sub_10002A4A0();
  sub_100012570(v15);
  if (v8)
  {

    v19 = 3;
    v11 = 3;
    goto LABEL_10;
  }

  return 4;
}

unint64_t sub_100013494()
{
  v2 = qword_100039970;
  if (!qword_100039970)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039970);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001352C(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_10002A490("identifier", 0xAuLL, 1);
    case 1:
      return sub_10002A490("name", 4uLL, 1);
    case 2:
      return sub_10002A490("imageFile", 9uLL, 1);
  }

  return sub_10002A490("audioFile", 9uLL, 1);
}

uint64_t sub_10001366C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100013154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000136B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100013430();
  *a1 = result;
  return result;
}

unint64_t sub_100013714()
{
  v2 = qword_100039978;
  if (!qword_100039978)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039978);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000137C0(uint64_t a1)
{
  v23 = a1;
  v42 = 0;
  v41 = 0;
  v34 = sub_10000F56C(&unk_1000399A0, &unk_10002D620);
  v24 = *(v34 - 8);
  v25 = v34 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = v7 - v26;
  v42 = __chkstk_darwin(v23);
  v41 = v1;
  v27 = v42[3];
  v28 = v42[4];
  sub_1000059D0(v42, v27);
  sub_100013714();
  sub_10002AA70();
  v2 = v31;
  v32 = *v30;
  v33 = v30[1];

  v40 = 0;
  sub_10002A960();
  v35 = v2;
  v36 = v2;
  if (v2)
  {
    v9 = v36;

    result = (*(v24 + 8))(v29, v34);
    v10 = v9;
  }

  else
  {

    v3 = v35;
    v19 = v30[2];
    v20 = v30[3];

    v39 = 1;
    sub_10002A960();
    v21 = v3;
    v22 = v3;
    if (v3)
    {
      v8 = v22;

      result = (*(v24 + 8))(v29, v34);
      v10 = v8;
    }

    else
    {

      v4 = v21;
      v15 = v30[4];
      v16 = v30[5];

      v38 = 2;
      sub_10002A960();
      v17 = v4;
      v18 = v4;
      if (v4)
      {
        v7[1] = v18;

        return (*(v24 + 8))(v29, v34);
      }

      else
      {

        v5 = v17;
        v11 = v30[6];
        v12 = v30[7];

        v37 = 3;
        sub_10002A960();
        v13 = v5;
        v14 = v5;
        if (v5)
        {
          v7[0] = v14;
        }

        return (*(v24 + 8))(v29, v34);
      }
    }
  }

  return result;
}

void *sub_100013BAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v36 = a1;
  v53 = 0;
  v37 = sub_10000F56C(&qword_100039998, &qword_10002D618);
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = v12 - v40;
  v53 = __chkstk_darwin(v36);
  v43 = v53[3];
  v44 = v53[4];
  sub_1000059D0(v53, v43);
  sub_100013714();
  v2 = v42;
  sub_10002AA60();
  v45 = v2;
  v46 = v2;
  if (v2)
  {
    v14 = v46;
    v15 = 0;
    v13 = 0;
    v12[1] = v46;
    result = sub_1000051D8(v36);
    if (v13)
    {
      result = sub_100012570(v54);
    }

    if ((v13 & 2) != 0)
    {
      result = sub_100012570(v55);
    }

    if ((v13 & 4) != 0)
    {
      return sub_100012570(v56);
    }
  }

  else
  {
    v52 = 0;
    v3 = sub_10002A950();
    v31 = 0;
    v32 = v3;
    v33 = v4;
    v34 = 0;
    v54[0] = v3;
    v54[1] = v4;
    v51 = 1;
    v5 = sub_10002A950();
    v27 = 0;
    v28 = v5;
    v29 = v6;
    v30 = 0;
    v55[0] = v5;
    v55[1] = v6;
    v50 = 2;
    v7 = sub_10002A950();
    v23 = 0;
    v24 = v7;
    v25 = v8;
    v26 = 0;
    v56[0] = v7;
    v56[1] = v8;
    v49 = 3;
    v9 = sub_10002A950();
    v19 = 0;
    v20 = v9;
    v21 = v10;
    v22 = 0;
    v16 = v54;
    v56[2] = v9;
    v56[3] = v10;
    (*(v38 + 8))(v41, v37);
    v17 = __dst;
    v18 = 64;
    memcpy(__dst, v16, sizeof(__dst));
    sub_100014854(__dst, &v47);
    sub_1000051D8(v36);
    sub_100014904(v16);
    return memcpy(v35, v17, v18);
  }

  return result;
}

void *sub_1000141D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100013BAC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x40uLL);
  }

  return result;
}

uint64_t sub_1000142B8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_1000130C0(__dst, v5) & 1;
}

uint64_t sub_100014350(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100014490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1000146B0()
{
  v2 = qword_100039980;
  if (!qword_100039980)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100014744()
{
  v2 = qword_100039988;
  if (!qword_100039988)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000147D8()
{
  v2 = qword_100039990;
  if (!qword_100039990)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039990);
    return WitnessTable;
  }

  return v2;
}

void *sub_100014854(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];

  a2[3] = v4;
  a2[4] = a1[4];
  v6 = a1[5];

  a2[5] = v6;
  a2[6] = a1[6];
  v8 = a1[7];

  result = a2;
  a2[7] = v8;
  return result;
}

void *sub_100014904(void *a1)
{
  v1 = a1[1];

  v2 = a1[3];

  v3 = a1[5];

  v4 = a1[7];

  return a1;
}

uint64_t sub_100014954(char *a1)
{
  swift_allocObject();
  v5 = sub_100016CD0(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

id sub_1000149E0()
{
  sub_10000F56C(&qword_1000399B0, &qword_10002D630);
  v2 = sub_100017510();
  v0 = sub_100017574();
  result = sub_100014A4C(v2, v0);
  qword_10003B1D0 = result;
  return result;
}

uint64_t *sub_100014AA0()
{
  if (qword_100039540 != -1)
  {
    swift_once();
  }

  return &qword_10003B1D0;
}

void *sub_100014B00()
{
  v1 = *sub_100014AA0();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_100014B38()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2;
}

uint64_t sub_100014B84(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_100014C6C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed);
  swift_beginAccess();
  sub_1000175D8(v3, a1);
  return swift_endAccess();
}

uint64_t sub_100014CC8(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(sub_10000F56C(&qword_1000399C8, &qword_10002D638) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v5 = &v4 - v4;
  sub_1000175D8(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed);
  v7 = &v9;
  swift_beginAccess();
  sub_100017700(v5, v6);
  swift_endAccess();
  return sub_100017928(v8);
}

uint64_t sub_100014DFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t sub_100014E40@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress;
  v2 = sub_100029E30();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

id sub_100014EAC()
{
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v17 = sub_100029E30();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v21 = v4 - v20;
  v30 = v0;
  v25 = *sub_100014AA0();
  _objc_retain(v25);
  v22 = *(v0 + 16);
  v24 = *(v0 + 24);

  v23 = sub_10002A420();
  v26 = [v25 objectForKey:?];
  _objc_release(v23);

  _objc_release(v25);
  if (v26)
  {
    v15 = v26;
    v27 = v26;
    return v26;
  }

  else
  {
    v1 = v21;
    v10 = sub_100017574();
    (*(v18 + 16))(v1, v16 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress, v17);
    v11 = sub_100029E20();
    v12 = v2;
    (*(v18 + 8))(v21, v17);
    v13 = sub_100015180();
    v29 = v13;
    _objc_retain(v13);
    if (v13)
    {
      v9 = v13;
      v8 = v13;
      v28 = v13;
      v7 = *sub_100014AA0();
      _objc_retain(v7);
      v4[1] = *(v16 + 16);
      v6 = *(v16 + 24);

      v5 = sub_10002A420();
      [v7 setObject:v8 forKey:?];
      _objc_release(v5);

      _objc_release(v7);
      _objc_release(v8);
    }

    return v13;
  }
}

uint64_t sub_1000151C8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_audioAddress;
  v2 = sub_100029E30();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100015234()
{
  v2 = *(v0 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artistName);
  v3 = *(v0 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artistName + 8);

  return v2;
}

uint64_t sub_100015278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return sub_1000152FC(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1000152FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a1;
  v47 = a2;
  v31 = a3;
  v46 = a4;
  v42 = a5;
  v41 = a6;
  v38 = a7;
  v37 = a8;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v27[1] = 0;
  v43 = sub_100029E30();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v28 = (v39[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v34 = v27 - v28;
  v56 = v9;
  v57 = v10;
  v54 = v11;
  v55 = v12;
  v53 = v13;
  v52 = v14;
  v50 = v15;
  v51 = v16;
  v49 = v8;
  v8[6] = 0;
  v29 = OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed;
  v17 = sub_100029E90();
  (*(*(v17 - 8) + 56))(v8 + v29, 1);

  v18 = v47;
  v8[2] = v30;
  v8[3] = v18;

  v19 = v34;
  v20 = v39;
  v21 = v42;
  v22 = v43;
  v23 = v46;
  v8[4] = v31;
  v8[5] = v23;
  v33 = v20[2];
  v32 = v20 + 2;
  v33(v19, v21, v22);
  v36 = v39[4];
  v35 = v39 + 4;
  v36(v8 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress, v34, v43);
  v33(v34, v41, v43);
  v36(v8 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_audioAddress, v34, v43);

  v24 = v37;
  v25 = (v8 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artistName);
  *v25 = v38;
  v25[1] = v24;

  v45 = v39[1];
  v44 = v39 + 1;
  v45(v41, v43);
  v45(v42, v43);

  return v48;
}

uint64_t sub_10001560C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v7 = *(a1 + 24);

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  v8 = sub_10002A4A0();

  return v8 & 1;
}

uint64_t sub_1000156A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v7 = *(a1 + 24);

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  v8 = sub_10002A480();

  return v8 & 1;
}

uint64_t sub_100015744()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  sub_10002A4B0();
}

unint64_t sub_1000157A4()
{
  v67 = 0;
  v89 = 0;
  v94 = 0;
  v93 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v91 = 0;
  v90 = 0;
  v84 = 0;
  v68 = sub_100029E30();
  v69 = *(v68 - 8);
  v74 = v69;
  v70 = v69;
  v71 = *(v69 + 64);
  __chkstk_darwin(v68 - 8);
  v73 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = &v23 - v73;
  __chkstk_darwin(&v23 - v73);
  v79 = &v23 - v73;
  v75 = &v23 - v73;
  v89 = v0;
  v76 = *(v74 + 16);
  v77 = (v74 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v76(&v23 - v73, v0 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress);
  sub_100016050();
  v1 = v78;
  v2 = sub_100029E40();
  v80 = v1;
  v81 = v2;
  v82 = v3;
  v83 = v1;
  if (v1)
  {
    v25 = v83;
    v26 = 0;
    v27 = 0;
    (*(v70 + 8))(v75, v68);

    v63 = v26;
    v64 = 0xF000000000000000;
    v65 = v27;
  }

  else
  {
    v62 = v82;
    v61 = v81;
    (*(v70 + 8))(v75, v68);
    v63 = v61;
    v64 = v62;
    v65 = v80;
  }

  v36 = v65;
  v40 = v64;
  v39 = v63;
  v93 = v63;
  v94 = v64;
  v53 = 0;
  sub_1000179D0();

  sub_100017A34(v39, v40);
  v37 = &v23;
  __chkstk_darwin(&v23);
  v4 = v39;
  *(&v23 - 4) = v66;
  *(&v23 - 3) = v4;
  *&v22 = v5;
  v41 = sub_10001635C(sub_100017AF8, (&v23 - 6));
  v38 = v41;

  sub_100017B08(v39, v40);
  v88 = v41;
  v50 = sub_100017BCC();
  v45 = v66[2];
  v46 = v66[3];

  v42 = v66[4];
  v43 = v66[5];

  sub_100017C30();
  (v76)(v72, v66 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress, v68);
  v44 = sub_1000163A4(v72, v6);
  v55 = 1;
  v7 = sub_10002A490("Apple", 5uLL, 1);
  v49 = sub_100016458(v45, v46, v42, v43, 17, v44, v7, v8);
  v47 = v49;
  v87 = v49;
  sub_100017C94();
  v52 = v55;
  v51 = sub_10002A9D0();
  v48 = v9;
  v10 = v49;
  v95.value._rawValue = v51;
  *v48 = v49;
  sub_10001D4F0();
  v11.value = v53;
  *&v22 = v53;
  v12.value = 2;
  v95.is_nil = v53;
  v96.value.super.isa = 2;
  v96.is_nil = v52;
  isa = sub_10002A6F0(v95, v96, v12, v52, v11, v55, v22, v23, v24).super.super.isa;
  v54 = isa;
  v86 = isa;
  v92 = v53;
  v56 = objc_opt_self();
  v13 = isa;
  v85 = v92;
  v60 = [v56 archivedDataWithRootObject:isa requiringSecureCoding:v55 error:&v85];
  v57 = v60;
  v58 = v85;
  v14 = v85;
  v15 = v92;
  v92 = v58;

  swift_unknownObjectRelease();
  if (v60)
  {
    v35 = v57;
    v28 = v57;
    v33 = v36;
    v31 = sub_100029E60();
    v32 = v16;
    v90 = v31;
    v91 = v16;

    sub_100017CF8();

    sub_100017A7C(v31, v32);
    v17 = v38;
    v29 = &v23;
    v18 = __chkstk_darwin(v31);
    v19 = v32;
    *(&v23 - 4) = v66;
    *(&v23 - 3) = v18;
    *&v22 = v19;
    *(&v22 + 1) = v20;
    v30 = sub_100016704(sub_100017D5C, (&v23 - 6));

    sub_100017B50(v31, v32);

    v84 = v30;
    sub_100017B50(v31, v32);

    sub_100017B08(v39, v40);
    v34 = v33;
    return v30;
  }

  else
  {
    v23 = v92;
    *&v24 = sub_100029DF0();

    swift_willThrow();
    sub_100017B08(v39, v40);
    return *(&v24 + 1);
  }
}

uint64_t sub_100016050()
{
  sub_100019470(0);

  return 0;
}

void sub_100016080(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = a1;
  v24 = a2;
  v31 = a3;
  v32 = a4;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v19 = sub_100029E30();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v11 - v22;
  v36 = __chkstk_darwin(v30);
  v35 = v4;
  v33 = v5;
  v34 = v6;
  swift_getObjectType();
  v25 = *(v24 + 32);
  v26 = *(v24 + 40);

  v27 = sub_10002A420();

  [v30 setTitle:v27];
  _objc_release(v27);
  swift_getObjectType();
  sub_10002A490("Apple", 5uLL, 1);
  v28 = v7;
  v29 = sub_10002A420();

  [v30 setSubtitle:v29];
  _objc_release(v29);
  swift_getObjectType();
  sub_100017A34(v31, v32);
  if ((v32 & 0xF000000000000000) == 0xF000000000000000)
  {
    v16 = 0;
  }

  else
  {
    v17 = v31;
    v18 = v32;
    v13 = v32;
    v14 = v31;
    isa = sub_100029E50().super.isa;
    sub_100017B50(v14, v13);
    v16 = isa;
  }

  v8 = v23;
  [v30 setArtworkImageData:v16];
  _objc_release(v11);
  swift_getObjectType();
  (*(v20 + 16))(v8, v24 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress, v19);
  sub_100029E00(v9);
  v12 = v10;
  (*(v20 + 8))(v23, v19);
  [v30 setArtworkImageURL:v12];
  _objc_release(v12);
}

id sub_1000163A4@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  sub_100029E00(a2);
  v5 = v2;
  v7 = [swift_getObjCClassFromMetadata() imageWithURL:v2];
  _objc_release(v5);
  v3 = sub_100029E30();
  (*(*(v3 - 8) + 8))(a1);
  return v7;
}

void sub_1000164D0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  swift_getObjectType();
  [a1 setType:1];
  swift_getObjectType();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);

  v12 = sub_10002A420();

  sub_10002A490("NSKeyedArchive", 0xEuLL, 1);

  v11 = sub_10002A420();
  _objc_retain(v11);

  _objc_release(v11);
  sub_100017A7C(a3, a4);
  isa = sub_100029E50().super.isa;
  sub_100017B50(a3, a4);
  [a1 setSessionIdentifier:v12 type:v11 data:isa];
  _objc_release(isa);
  _objc_release(v11);
  _objc_release(v12);
  swift_getObjectType();
  sub_10002A490("com.apple.SoundScapes", 0x15uLL, 1);
  v13 = sub_10002A420();

  [a1 setBundleIdentifier:v13];
  _objc_release(v13);
  swift_getObjectType();
  _objc_retain(a5);
  [a1 setDisplayProperties:a5];
  _objc_release(a5);
}

uint64_t sub_10001674C()
{
  v17 = 0;
  v1 = sub_10000F56C(&qword_1000399C8, &qword_10002D638);
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v12 = &v7 - v11;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v11);
  v14 = &v7 - v13;
  v17 = v0;
  result = swift_beginAccess();
  v4 = *(v0 + 48);
  v15 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v10 + 48) = v15;
    swift_endAccess();
    sub_100029E80();
    v6 = sub_100029E90();
    (*(*(v6 - 8) + 56))(v14, 0, 1);
    sub_1000175D8(v14, v12);
    v8 = (v10 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed);
    v9 = &v16;
    swift_beginAccess();
    sub_100017700(v12, v8);
    swift_endAccess();
    return sub_100017928(v14);
  }

  return result;
}

uint64_t sub_1000168F0()
{
  sub_100012570(v0 + 16);
  sub_100012570(v0 + 32);
  sub_100017928(v0 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed);
  v2 = OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress;
  v3 = sub_100029E30();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2);
  (v4)(v0 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_audioAddress, v3);
  sub_100012570(v0 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artistName);
  return v5;
}

uint64_t sub_1000169CC()
{
  v0 = *sub_1000168F0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_100016A30()
{
  type metadata accessor for SoundScapesOption();
  sub_100012988();
  return sub_10002A890();
}

uint64_t sub_100016BC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_100014DFC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100016CA4()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_100016CD0(char *a1)
{
  v79 = a1;
  v70 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v78 = sub_100029E30();
  v71 = v78;
  v72 = *(v78 - 8);
  v77 = v72;
  v73 = v72;
  v74 = *(v72 + 64);
  v2 = __chkstk_darwin(0);
  v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = v22 - v76;
  __chkstk_darwin(v2);
  v80 = v22 - v76;
  v91 = v3;
  v90 = v1;
  sub_100017E60();
  (*(v77 + 16))(v80, v79, v78);
  v81 = sub_100017EC4(v80);
  if (v81)
  {
    v67 = v81;
    v56 = v81;
    v58 = v68;
    v89 = v81;
    sub_10002A490("Info.json", 9uLL, 1);
    v57 = v4;
    sub_100029E10();

    sub_100016050();
    v5 = v58;
    v6 = sub_100029E40();
    v59 = v5;
    v60 = v6;
    v61 = v7;
    v62 = v5;
    if (v5)
    {
      v24 = v62;
      (*(v73 + 8))(v75, v71, 0);

      v65 = v24;
      v66 = v69;
    }

    else
    {
      v51 = v61;
      v50 = v60;
      v53 = 0;
      v46 = *(v73 + 8);
      v47 = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v46(v75, v71);
      v87 = v50;
      v88 = v51;
      sub_100029DB0();
      v48 = sub_100029DA0();
      v52 = sub_10000F56C(&qword_100039A18, &qword_10002D640);
      v49 = v52;
      sub_100017FA8();
      v8 = v53;
      sub_100029D90();
      v54 = v8;
      v55 = v8;
      if (v8)
      {
        v23 = v55;

        sub_100017B50(v50, v51);

        v65 = v23;
        v66 = v69;
      }

      else
      {
        v43 = 0;

        v37 = v86;
        v27 = v86;
        v85 = v86;
        v30 = 1;
        sub_10002A490("ARTIST_NAME", 0xBuLL, 1);
        v28 = v9;
        v34 = sub_10002A420();

        sub_10002A490("Apple", 5uLL, v30);
        v29 = v10;
        v33 = sub_10002A420();

        sub_10002A490("SSLocalizedAssets", 0x11uLL, v30);
        v31 = v11;
        v32 = sub_10002A420();

        v35 = [v56 localizedStringForKey:v34 value:v33 table:v32];

        v38 = sub_10002A430();
        v39 = v12;
        v36 = v12;
        v83 = v38;
        v84 = v12;

        v82 = v37;
        v13 = v56;

        v40 = v22;
        v14 = __chkstk_darwin(v38);
        v15 = v79;
        v41 = &v22[-6];
        v22[-4] = v56;
        v22[-3] = v15;
        v22[-2] = v14;
        v22[-1] = v16;
        v42 = type metadata accessor for SoundScapesOption();
        v17 = sub_100018588();
        v18 = v43;
        v20 = sub_10001CC0C(sub_100018550, v41, v49, v42, &type metadata for Never, v17, &protocol witness table for Never, v19);
        v44 = v18;
        v45 = v20;
        if (!v18)
        {
          v25 = v45;
          v26 = 0;

          *(v69 + 16) = v25;

          sub_100017B50(v50, v51);

          v46(v79, v71);
          return v69;
        }

        v22[3] = 0;

        v22[4] = type metadata accessor for SoundScapesOptionsManager();
        swift_deallocPartialClassInstance();
        __break(1u);
      }
    }
  }

  else
  {
    sub_100017F04();
    v63 = 0;
    v64 = swift_allocError();
    swift_willThrow();
    v65 = v64;
    v66 = v69;
  }

  v22[0] = v66;
  v22[2] = v65;
  v22[1] = type metadata accessor for SoundScapesOptionsManager();
  swift_deallocPartialClassInstance();
  return (*(v73 + 8))(v79, v71);
}

unint64_t sub_100017510()
{
  v2 = qword_1000399B8;
  if (!qword_1000399B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399B8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100017574()
{
  v2 = qword_1000399C0;
  if (!qword_1000399C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399C0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1000175D8(const void *a1, void *a2)
{
  v6 = sub_100029E90();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10000F56C(&qword_1000399C8, &qword_10002D638);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_100017700(const void *a1, void *a2)
{
  v7 = sub_100029E90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10000F56C(&qword_1000399C8, &qword_10002D638);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10000F56C(&qword_1000399C8, &qword_10002D638);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_100017928(uint64_t a1)
{
  v3 = sub_100029E90();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1000179D0()
{
  v2 = qword_1000399D0;
  if (!qword_1000399D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399D0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100017A34(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_100017A7C(result, a2);
  }

  return result;
}

uint64_t sub_100017A7C(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_100017B08(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_100017B50(result, a2);
  }

  return result;
}

uint64_t sub_100017B50(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

unint64_t sub_100017BCC()
{
  v2 = qword_1000399D8;
  if (!qword_1000399D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100017C30()
{
  v2 = qword_1000399E0;
  if (!qword_1000399E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100017C94()
{
  v2 = qword_1000399E8;
  if (!qword_1000399E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100017CF8()
{
  v2 = qword_1000399F0;
  if (!qword_1000399F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for SoundScapesOption()
{
  v1 = qword_100039A60;
  if (!qword_100039A60)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_100017DE4()
{
  v2 = qword_100039A00;
  if (!qword_100039A00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039A00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100017E60()
{
  v2 = qword_100039A08;
  if (!qword_100039A08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039A08);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100017F04()
{
  v2 = qword_100039A10;
  if (!qword_100039A10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039A10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100017FA8()
{
  v2 = qword_100039A20;
  if (!qword_100039A20)
  {
    sub_10000F9D8(&qword_100039A18, &qword_10002D640);
    sub_100018040();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039A20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100018040()
{
  v2 = qword_100039A28;
  if (!qword_100039A28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039A28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000180B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v50 = a6;
  v20[1] = a1;
  v28 = a2;
  v48 = a4;
  v49 = a5;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v37 = 0;
  v51 = sub_100029E30();
  v35 = *(v51 - 8);
  v36 = v51 - 8;
  v23 = *(v35 + 64);
  v21 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v47 = v20 - v21;
  v22 = v21;
  __chkstk_darwin(v20 - v21);
  v46 = v20 - v22;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20 - v22);
  v54 = v20 - v24;
  v63 = v20 - v24;
  v43 = *v7;
  v44 = v7[1];
  v25 = v7[2];
  v26 = v7[3];
  v38 = v7[4];
  v39 = v7[5];
  v40 = v7[6];
  v42 = v7[7];
  v62 = v7;
  v61 = v8;
  v60 = a3;
  v58 = v9;
  v59 = v10;

  v31 = sub_10002A420();

  v30 = sub_10002A420();

  v33 = 1;
  sub_10002A490("SSLocalizedAssets", 0x11uLL, 1);
  v27 = v11;
  v29 = sub_10002A420();

  v32 = [v28 localizedStringForKey:v31 value:v30 table:v29];
  _objc_release(v29);
  _objc_release(v30);
  _objc_release(v31);
  v45 = sub_10002A430();
  v55 = v12;
  v56 = v45;
  v57 = v12;
  _objc_release(v32);
  sub_10002A490("Resources", 9uLL, v33 & 1);
  v34 = v13;
  sub_100029E10();

  sub_100029E10();

  v53 = *(v35 + 8);
  v52 = v35 + 8;
  v53(v46, v51);
  v41 = type metadata accessor for SoundScapesOption();

  sub_100029E10();

  sub_100029E10();

  v14 = sub_100015278(v43, v44, v45, v55, v46, v47, v48, v49);
  v15 = v51;
  v16 = v53;
  v17 = v14;
  v18 = v54;
  *v50 = v17;
  v16(v18, v15);
}

unint64_t sub_100018588()
{
  v2 = qword_100039A30;
  if (!qword_100039A30)
  {
    sub_10000F9D8(&qword_100039A18, &qword_10002D640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039A30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001862C()
{
  v4 = sub_10001879C();
  updated = v4;
  if (v0 <= 0x3F)
  {
    v6 = *(v4 - 8) + 64;
    v3 = sub_100029E30();
    updated = v3;
    if (v1 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t sub_10001879C()
{
  v4 = qword_100039A70;
  if (!qword_100039A70)
  {
    sub_100029E90();
    v3 = sub_10002A7A0();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_100039A70);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1000188B0(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_100018A00(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_100018BFC()
{
  v2 = qword_100039C20;
  if (!qword_100039C20)
  {
    type metadata accessor for SoundScapesOption();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039C20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100018CA0()
{
  v2 = qword_100039C28;
  if (!qword_100039C28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039C28);
    return WitnessTable;
  }

  return v2;
}

id sub_100018D54()
{
  v2 = sub_10002A420();
  v3 = [v1 initWithContentsOfFile:?];
  _objc_release(v2);

  return v3;
}

unint64_t sub_100018DB8(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v15 = sub_100019370;
  v16 = v8;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_100018F30;
  v14 = &unk_100035DC8;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 initWithBlock:?];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018F30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v2 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);
  return swift_unknownObjectRelease();
}

id sub_100018F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v15 = sub_10002A420();

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a4)
  {
    v13 = sub_10002A420();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a8)
  {
    v12 = sub_10002A420();

    v8 = [v21 initWithIdentifier:v16 title:v14 type:a5 artwork:a6 artist:v12];
  }

  else
  {
    v8 = [v21 initWithIdentifier:v16 title:v14 type:a5 artwork:a6 artist:0];
  }

  v11 = v8;
  _objc_release(v10);
  _objc_release(a6);
  _objc_release(v14);
  _objc_release(v16);
  return v11;
}

unint64_t sub_100019150(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v15 = sub_100019370;
  v16 = v8;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_100018F30;
  v14 = &unk_100035D78;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 initWithBlock:?];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_1000192A0@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  sub_100029E00(a2);
  v6 = v3;
  v8 = [v2 initWithURL:?];
  _objc_release(v6);
  v4 = sub_100029E30();
  (*(*(v4 - 8) + 8))(a1);
  return v8;
}

uint64_t sub_10001937C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_10001940C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_100019470(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for ReadingOptions();
    v1 = sub_10002A5A0();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_10001951C()
{
  v1 = sub_100029F10();
  sub_1000195C0(v1, qword_100039CF0);
  sub_10001965C(v1, qword_100039CF0);
  sub_10002A490("com.apple.soundscapes", 0x15uLL, 1);
  sub_10002A490("AnalyticsSender", 0xFuLL, 1);
  return sub_100029F00();
}

uint64_t sub_1000195C0(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_10001965C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_1000196B4()
{
  if (qword_100039548 != -1)
  {
    swift_once();
  }

  v0 = sub_100029F10();
  return sub_10001965C(v0, qword_100039CF0);
}

uint64_t sub_100019720@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000196B4();
  v1 = sub_100029F10();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void sub_100019784(void *a1)
{
  v56 = a1;
  v59 = sub_10001A4FC;
  v61 = sub_10001A450;
  v63 = sub_10001C570;
  v68 = sub_10001A744;
  v72 = sub_10001C570;
  v74 = sub_10001C4FC;
  v76 = sub_10001C4FC;
  v78 = sub_10001C5BC;
  v80 = sub_10001C4FC;
  v82 = sub_10001C4FC;
  v85 = sub_10001C5BC;
  v98 = 0;
  v49 = 0;
  v54 = sub_100029F10();
  v52 = *(v54 - 8);
  v53 = v54 - 8;
  v50 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = &v28 - v50;
  v51 = &v28 - v50;
  v98 = __chkstk_darwin(v56);
  v2 = sub_1000196B4();
  (*(v52 + 16))(v1, v2, v54);
  v55 = v97;
  sub_10001A368(v56, v97);
  v57 = 56;
  v70 = 7;
  v62 = swift_allocObject();
  sub_10001A414(v55, (v62 + 16));
  v58 = v96;
  sub_10001A368(v56, v96);
  v60 = swift_allocObject();
  sub_10001A414(v58, (v60 + 16));

  v69 = 32;
  v3 = swift_allocObject();
  v4 = v60;
  v71 = v3;
  *(v3 + 16) = v59;
  *(v3 + 24) = v4;

  v89 = sub_100029EF0();
  v90 = sub_10002A6E0();
  v66 = 17;
  v75 = swift_allocObject();
  v65 = 32;
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  v67 = 8;
  *(v77 + 16) = 8;
  v5 = swift_allocObject();
  v6 = v62;
  v64 = v5;
  *(v5 + 16) = v61;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v64;
  v79 = v7;
  *(v7 + 16) = v63;
  *(v7 + 24) = v8;
  v81 = swift_allocObject();
  *(v81 + 16) = v65;
  v83 = swift_allocObject();
  *(v83 + 16) = v67;
  v9 = swift_allocObject();
  v10 = v71;
  v73 = v9;
  *(v9 + 16) = v68;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v73;
  v86 = v11;
  *(v11 + 16) = v72;
  *(v11 + 24) = v12;
  v88 = sub_10000F56C(&qword_100039D18, &qword_10002D8A8);
  v84 = sub_10002A9D0();
  v87 = v13;

  v14 = v75;
  v15 = v87;
  *v87 = v74;
  v15[1] = v14;

  v16 = v77;
  v17 = v87;
  v87[2] = v76;
  v17[3] = v16;

  v18 = v79;
  v19 = v87;
  v87[4] = v78;
  v19[5] = v18;

  v20 = v81;
  v21 = v87;
  v87[6] = v80;
  v21[7] = v20;

  v22 = v83;
  v23 = v87;
  v87[8] = v82;
  v23[9] = v22;

  v24 = v86;
  v25 = v87;
  v87[10] = v85;
  v25[11] = v24;
  sub_10001D4F0();

  if (os_log_type_enabled(v89, v90))
  {
    v26 = v49;
    v41 = sub_10002A790();
    v40 = sub_10000F56C(&qword_100039D28, qword_10002D8B0);
    v42 = sub_10001A504(0);
    v43 = sub_10001A504(2);
    v45 = &v95;
    v95 = v41;
    v46 = &v94;
    v94 = v42;
    v47 = &v93;
    v93 = v43;
    v44 = 2;
    sub_10001A558(2, &v95);
    sub_10001A558(v44, v45);
    v91 = v74;
    v92 = v75;
    sub_10001A56C(&v91, v45, v46, v47);
    v48 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v91 = v76;
      v92 = v77;
      sub_10001A56C(&v91, &v95, &v94, &v93);
      v39 = 0;
      v91 = v78;
      v92 = v79;
      sub_10001A56C(&v91, &v95, &v94, &v93);
      v38 = 0;
      v91 = v80;
      v92 = v81;
      sub_10001A56C(&v91, &v95, &v94, &v93);
      v37 = 0;
      v91 = v82;
      v92 = v83;
      sub_10001A56C(&v91, &v95, &v94, &v93);
      v36 = 0;
      v91 = v85;
      v92 = v86;
      sub_10001A56C(&v91, &v95, &v94, &v93);
      _os_log_impl(&_mh_execute_header, v89, v90, "Sending analytic event named: %s with info: %s", v41, 0x16u);
      sub_10001A5B8(v42);
      sub_10001A5B8(v43);
      sub_10002A770();
    }
  }

  else
  {
  }

  _objc_release(v89);
  (*(v52 + 8))(v51, v54);
  v29 = v56[3];
  v28 = v56[4];
  sub_1000059D0(v56, v29);
  (*(v28 + 8))(v29);
  v30 = v27;
  v35 = sub_10002A420();

  v32 = v56[3];
  v31 = v56[4];
  sub_1000059D0(v56, v32);
  v33 = (*(v31 + 16))(v32);
  sub_10001C6A0();
  isa = sub_10002A380().super.isa;

  AnalyticsSendEvent();
  _objc_release(isa);
  _objc_release(v35);
}

uint64_t sub_10001A310(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  sub_1000059D0(a1, v3);
  return (*(v2 + 8))(v3);
}

uint64_t sub_10001A368(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_10001A458@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  sub_1000059D0(a1, v4);
  result = (*(v3 + 16))(v4);
  *a2 = result;
  return result;
}

uint64_t sub_10001A504(uint64_t a1)
{
  if (a1)
  {
    return sub_10002A790();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001A558(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_10001A5B8(uint64_t a1)
{
  if (a1)
  {
    sub_10002A780();
    sub_10002A770();
  }
}

uint64_t sub_10001A620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_10002A970();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_10001A704()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10001A744()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_10000F56C(&qword_100039D08, &qword_10002D8A0);
  v1 = sub_10001A7AC();

  return sub_10001A620(v5, v3, v4, v1);
}

unint64_t sub_10001A7AC()
{
  v2 = qword_100039D10;
  if (!qword_100039D10)
  {
    sub_10000F9D8(&qword_100039D08, &qword_10002D8A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D10);
    return WitnessTable;
  }

  return v2;
}

void *sub_10001A85C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_10001A8F8(v4, v5, a3);
  v8 = *a1;

  sub_10002A7B0();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_10001A8F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_10001AA9C(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_10000596C(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1000051D8(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_10000596C(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1000051D8(v13);
  }

  return v11;
}

uint64_t sub_10001AA9C(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_10002A930();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_10001AE54(v22, v17, v16);
        sub_10002A7C0();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_10001AFD0(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_10002A8B0();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_10002A930();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_10001AE54(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_10002A940();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_10002A940();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_10001AFD0(uint64_t a1, uint64_t a2)
{
  v7 = sub_10001B08C(a1, a2);
  sub_10000F56C(&qword_100039D30, qword_10002D8D8);
  inited = swift_initStackObject();
  v3 = sub_10001B89C(inited, 1);
  *v4 = 0;
  sub_10001B8E8();
  sub_10001B91C(v3);

  v8 = sub_10001BCC4(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_10001B08C(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_10002A4C0();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_10001C1E4();
  }

  v10 = sub_10001BCDC(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_10002A940();
    __break(1u);
    return sub_10001C1E4();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_10001BE20(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_10002A8B0();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_10001BE20(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_10002A8A0();
  if (v2)
  {
LABEL_29:
    sub_10002A930();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_10002A930();
    __break(1u);
  }

  sub_100012570(v17);
  return v10;
}

uint64_t sub_10001B89C(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_10001B91C(uint64_t a1)
{
  v20 = sub_10001BCC4(a1);
  v2 = sub_10001BCC4(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = sub_10001C220(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_10002A940();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_10001C38C(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_10002A930();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_10002A930();
    __break(1u);
    goto LABEL_21;
  }

  sub_10001BE20((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_10001C214();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_10001BCDC(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_10000F56C(&qword_100039D30, qword_10002D8D8);
    v5 = swift_allocObject();

    if (sub_10001C718())
    {
      v3 = sub_10001C724(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_10001BE20(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_10002A940();
    __break(1u);
  }

  result = sub_10002A940();
  __break(1u);
  return result;
}

uint64_t sub_10001BF70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_10002A4E0();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_10002A930();
    __break(1u);
  }

  v5 = sub_10002A500();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_10001C220(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_10001BCDC(v4, v6);
  if (v7)
  {
    sub_10001C394((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_10001BE20((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_10001C394(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_10002A940();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_10001C4BC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10001C530()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10001C57C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10001C620()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10001C660()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_10001C6A0()
{
  v2 = qword_100039D20;
  if (!qword_100039D20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039D20);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10001C74C(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[2] = a1;
  v15[3] = a2;
  v15[0] = sub_10002A490(".", 1uLL, 1);
  v15[1] = v2;
  sub_10001CB94();
  v7 = sub_10002A7D0();
  sub_100012570(v15);
  v14 = v7;
  v8 = sub_10000F56C(&qword_100039690, &qword_10002D910);
  v9 = sub_10000F56C(&qword_100039D40, &qword_10002D918);
  v3 = sub_10001D5AC();
  sub_10001CC0C(sub_10001D534, 0, v8, v9, &type metadata for Never, v3, &protocol witness table for Never, v10);
  sub_10000FA4C(&v14);
  sub_10000F56C(&qword_100039D50, &qword_10002D920);
  sub_10001D6A8();
  if ((sub_10002A510() & 1) != 0 && sub_10002A5B0() <= 3)
  {
    sub_10002A520();
    sub_10002A9D0();
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    sub_10001D4F0();
    sub_10002A580();

    sub_10000F56C(&qword_100039D60, qword_10002D928);
    sub_10001D774();
    sub_10002A6A0();
    sub_10002A7F0();
    sub_10002A7F0();
    sub_10002A7F0();
    v16 = v13;
    v17 = v12;
    v18 = v11;
    swift_unknownObjectRelease();

    return v13;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_10001CB94()
{
  v2 = qword_100039D38;
  if (!qword_100039D38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001CC0C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a1;
  v38 = a2;
  v62 = a3;
  v52 = a4;
  v39 = a5;
  v61 = a6;
  v41 = a8;
  v42 = "Fatal error";
  v43 = "Range requires lowerBound <= upperBound";
  v44 = "Swift/Range.swift";
  v45 = "Index out of range";
  v46 = "invalid Collection: count differed in successive traversals";
  v47 = "Swift/ArrayShared.swift";
  v72[3] = a3;
  v72[2] = a4;
  v72[1] = a5;
  v48 = *(a5 - 8);
  v49 = a5 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v51 = &v18 - v50;
  v9 = *(v8 + 8);
  v53 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v53);
  v58 = &v18 - v57;
  v59 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v60 = &v18 - v59;
  v63 = swift_getAssociatedTypeWitness();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v62);
  v67 = &v18 - v66;
  v68 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v69 = &v18 - v68;
  v70 = sub_10002A660();
  if (!v70)
  {
    goto LABEL_24;
  }

  v72[0] = sub_10002A8F0();
  v36 = sub_10002A900();
  sub_10002A8D0(v70);
  result = sub_10002A650();
  if (v70 < 0)
  {
    sub_10002A930();
    __break(1u);
LABEL_24:
    v20 = sub_10002A590();
    v21 = v40;
    return v20;
  }

  if (!v70)
  {
LABEL_19:
    v26 = v40;
LABEL_20:
    v22 = v26;
    sub_10002A670();
    v17 = *(swift_getAssociatedConformanceWitness() + 8);
    v25 = sub_10002A410();
    v23 = *(v64 + 8);
    v24 = v64 + 8;
    v23(v67, v63);
    if ((v25 & 1) == 0)
    {
      sub_10002A940();
      __break(1u);
    }

    v23(v69, v63);
    v19 = v72[0];

    v20 = v19;
    v21 = v22;
    return v20;
  }

  v34 = 0;
  for (i = v40; ; i = v30)
  {
    v32 = i;
    v33 = v34;
    if (v34 < 0 || v33 >= v70)
    {
      goto LABEL_18;
    }

    if (v70 < 0)
    {
      sub_10002A930();
      __break(1u);
LABEL_18:
      sub_10002A940();
      __break(1u);
      goto LABEL_19;
    }

    v31 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v29 = &v71;
    v28 = sub_10002A6D0();
    (*(v55 + 16))(v58);
    v28();
    v16 = v32;
    v37(v58, v51);
    v30 = v16;
    if (v16)
    {
      (*(v55 + 8))(v58, AssociatedTypeWitness);
      (*(v64 + 8))(v69, v63);
      sub_100011998(v72);
      (*(v48 + 32))(v41, v51, v39);
      return v27;
    }

    (*(v55 + 8))(v58, AssociatedTypeWitness);
    sub_10002A8E0();
    sub_10002A680();
    if (v31 == v70)
    {
      v26 = v30;
      goto LABEL_20;
    }

    result = v30;
    v34 = v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D534(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];

  sub_10001DAE0();
  return sub_10002A920();
}

unint64_t sub_10001D5AC()
{
  v2 = qword_100039D48;
  if (!qword_100039D48)
  {
    sub_10000F9D8(&qword_100039690, &qword_10002D910);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D6A8()
{
  v2 = qword_100039D58;
  if (!qword_100039D58)
  {
    sub_10000F9D8(&qword_100039D50, &qword_10002D920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001D730@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

unint64_t sub_10001D774()
{
  v2 = qword_100039D68;
  if (!qword_100039D68)
  {
    sub_10000F9D8(&qword_100039D60, qword_10002D928);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D68);
    return WitnessTable;
  }

  return v2;
}

BOOL static NSOperatingSystemVersion.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 >= a4)
  {
    if (a4 >= a1)
    {
      return a2 < a5 || a5 >= a2 && a3 < a6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

unint64_t sub_10001D9E8()
{
  v2 = qword_100039D70;
  if (!qword_100039D70)
  {
    type metadata accessor for OperatingSystemVersion();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001DAE0()
{
  v2 = qword_100039D78;
  if (!qword_100039D78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D78);
    return WitnessTable;
  }

  return v2;
}

id sub_10001DBB0()
{
  sub_100012EE4();
  sub_10002A490("com.apple.SoundScapes", 0x15uLL, 1);
  sub_10002A490("SSSoundScapeExtension", 0x15uLL, 1);
  result = sub_10001DB58();
  qword_100039D80 = result;
  return result;
}

uint64_t *sub_10001DC44()
{
  if (qword_100039550 != -1)
  {
    swift_once();
  }

  return &qword_100039D80;
}

void sub_10001DCA4(unsigned int a1)
{
  v3 = *sub_10001DC44();
  _objc_retain(v3);

  v2 = sub_10002A420();

  [v3 ulog:a1 message:v2];
  _objc_release(v2);
  _objc_release(v3);
}

uint64_t sub_10001DD58()
{
  result = sub_10002A490("com.apple.soundscapes.picker", 0x1CuLL, 1);
  qword_10003B1F8 = result;
  qword_10003B200 = v1;
  return result;
}

uint64_t *sub_10001DD9C()
{
  if (qword_100039558 != -1)
  {
    swift_once();
  }

  return &qword_10003B1F8;
}

void *sub_10001DE38()
{
  type metadata accessor for SoundScapesDataSource();
  v0 = sub_10000EAE0();
  result = v2;
  v2[2] = v0;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return result;
}

void *sub_10001DE90()
{
  v2 = *(v0 + 16);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_10001DEC4()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_10001DF14(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t sub_10001DFD0()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_10001E020(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;

  swift_endAccess();
}

void *sub_10001E0DC()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  _objc_retain(v2);
  swift_endAccess();
  return v2;
}

void sub_10001E134(void *a1)
{
  _objc_retain(a1);
  swift_beginAccess();
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_10001E208()
{
  v1 = _EXSceneRoleDefault;
  _objc_retain(_EXSceneRoleDefault);
  sub_10001E2F0(v1);
  _objc_release(v1);

  sub_10000F56C(&qword_100039D88, &qword_10002D9C0);
  sub_10001EECC();
  return sub_100029EA0();
}

uint64_t sub_10001E2F0(void *a1)
{
  _objc_retain(a1);
  v3 = sub_10002A430();
  _objc_release(a1);
  return v3;
}

uint64_t sub_10001E350@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15[4] = a1;
  v14[0] = sub_10002134C();
  v14[1] = v2;
  v5 = a1[2];
  _objc_retain(v5);
  type metadata accessor for SoundScapesDataSource();
  sub_10001EF74();
  sub_1000203A8();
  sub_10002A160();
  _objc_release(v5);
  sub_100010068(v14);
  v13[0] = v14[2];
  v13[1] = v14[3];
  v13[2] = v14[4];
  v13[3] = v14[5];
  v11 = sub_10000F56C(&qword_100039D88, &qword_10002D9C0);
  sub_10001EECC();
  sub_100021478(v13, v11, v15);
  sub_100020428(v13);
  v6 = v15[0];
  v7 = v15[1];
  v8 = v15[2];
  v9 = v15[3];
  _objc_retain(v15[0]);

  _objc_retain(v9);
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  sub_100021478(v12, v11, a2);
  sub_100020428(v12);
  return sub_100020428(v15);
}

uint64_t sub_10001E500(void *a1, void *a2)
{
  v74 = v107;
  v93 = a1;
  v82 = a2;
  v83 = 16;
  v75 = sub_1000201A4;
  v76 = sub_100020234;
  v112 = 0;
  v111 = 0;
  v100 = 0;
  v77 = sub_10000F56C(&qword_100039600, &unk_10002DB20);
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v77);
  v81 = &object - v80;
  v84 = sub_10000F56C(&qword_100039EE0, &qword_10002CDA0);
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v93);
  v88 = &object - v87;
  v112 = v2;
  v111 = v3;
  v89 = sub_10002A490("Start connection", v4, 1);
  v90 = v5;
  sub_10001DCA4(0x28u);

  v6 = sub_10001DD9C();
  v91 = *v6;
  v92 = v6[1];

  v94 = sub_10002A420();

  v95 = [v93 valueForEntitlement:v94];
  _objc_release(v94);
  if (v95)
  {
    v73 = v95;
    v72 = v95;
    v71 = v96;
    sub_10002A7E0();
    sub_100005950(v71, v109);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v109, 0, sizeof(v109));
  }

  v7 = v74;
  v74[6] = v74[4];
  v7[7] = v7[5];
  if (v110[3])
  {
    sub_10000F794();
    if (swift_dynamicCast())
    {
      v69 = v96[4];
    }

    else
    {
      v69 = 0;
    }

    v70 = v69;
  }

  else
  {
    sub_10000519C(v110);
    v70 = 0;
  }

  v68 = v70;
  if (v70)
  {
    v67 = v68;
    v66 = v68;
    v100 = v68;
    if ([v68 BOOLValue])
    {
      v46 = v82[2];
      _objc_retain(v46);
      sub_100009768();
      _objc_release(v46);
      v47 = v82[2];
      _objc_retain(v47);
      [v93 setExportedObject:v47];
      swift_unknownObjectRelease();
      v49 = sub_100020100();
      v48 = &OBJC_PROTOCOL___SSURemoteViewServiceProtocol;
      _objc_retain(&OBJC_PROTOCOL___SSURemoteViewServiceProtocol);
      v50 = sub_10001F074(v48);
      [v93 setExportedInterface:?];
      _objc_release(v50);
      v51 = &OBJC_PROTOCOL___SSUViewServiceHostProtocol;
      _objc_retain(&OBJC_PROTOCOL___SSUViewServiceHostProtocol);
      v52 = sub_10001F074(v51);
      [v93 setRemoteObjectInterface:?];
      _objc_release(v52);
      _objc_retain(v93);
      _objc_retain(v93);
      v53 = &v99;
      v61 = 33;
      v62 = 0;
      swift_beginAccess();
      v8 = v82[5];
      v82[5] = v93;
      _objc_release(v8);
      swift_endAccess();
      _objc_release(v93);
      v54 = v82[2];
      _objc_retain(v54);
      sub_1000066F4();
      _objc_release(v54);
      v57 = swift_allocObject();
      v55 = v57 + 16;

      v56 = v82;
      swift_weakInit();

      sub_1000201AC();
      v59 = sub_100029FA0();

      (*(v85 + 8))(v88, v84);

      v58 = &v98;
      swift_beginAccess();
      v9 = v82[3];
      v82[3] = v59;

      swift_endAccess();

      v60 = v82[2];
      _objc_retain(v60);
      sub_100007038();
      _objc_release(v60);

      sub_10002023C();
      v64 = sub_100029FA0();

      (*(v78 + 8))(v81, v77);

      v63 = &v97;
      swift_beginAccess();
      v10 = v82[4];
      v82[4] = v64;

      swift_endAccess();

      [v93 resume];
      _objc_release(v66);
      v65 = 1;
      return v65 & 1;
    }

    _objc_release(v66);
  }

  v11 = sub_10001DD9C();
  v42 = *v11;
  v43 = v11[1];

  v44 = sub_10002A420();

  v45 = [v93 valueForEntitlement:v44];
  _objc_release(v44);
  if (v45)
  {
    v41 = v45;
    v40 = v45;
    v39 = &v101;
    sub_10002A7E0();
    sub_100005950(v39, v107);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v107, 0, sizeof(v107));
  }

  v12 = v74;
  v13 = *v74;
  v38 = &v108;
  v74[2] = v13;
  v12[3] = v12[1];
  v14 = sub_10002A9C0();
  v33 = &v105;
  v105 = v14;
  v106 = v15;
  v31 = 1;
  v113._countAndFlagsBits = sub_10002A490("Unexpect entitlement ", 0x15uLL, 1);
  object = v113._object;
  sub_10002A9B0(v113);

  v16 = sub_10001DD9C();
  v22 = *v16;
  v23 = v16[1];

  v24 = v104;
  v104[0] = v22;
  v104[1] = v23;
  v29 = &type metadata for String;
  v27 = &protocol witness table for String;
  v28 = &protocol witness table for String;
  sub_10002A9A0();
  sub_100012570(v24);
  v114._countAndFlagsBits = sub_10002A490(" with value ", 0xCuLL, v31 & 1);
  v25 = v114._object;
  sub_10002A9B0(v114);

  v26 = v103;
  sub_100005A3C(v38, v103);
  sub_10000F56C(&qword_100039EE8, &unk_10002DB30);
  v17 = sub_10002A440();
  v30 = v102;
  v102[0] = v17;
  v102[1] = v18;
  sub_10002A9A0();
  sub_100012570(v30);
  v115._countAndFlagsBits = sub_10002A490("", 0, v31 & 1);
  v32 = v115._object;
  sub_10002A9B0(v115);

  v35 = v105;
  v34 = v106;

  sub_100012570(v33);
  v36 = sub_10002A470();
  v37 = v19;
  sub_10001DCA4(0x5Au);

  sub_10000519C(v38);
  v65 = 0;
  return v65 & 1;
}

unint64_t sub_10001EECC()
{
  v2 = qword_100039D90;
  if (!qword_100039D90)
  {
    sub_10000F9D8(&qword_100039D88, &qword_10002D9C0);
    sub_10001EF74();
    sub_10001EFEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001EF74()
{
  v2 = qword_100039D98;
  if (!qword_100039D98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001EFEC()
{
  v2 = qword_100039DA0;
  if (!qword_100039DA0)
  {
    sub_10000F9D8(&qword_100039DA8, &qword_10002D9C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039DA0);
    return WitnessTable;
  }

  return v2;
}

id sub_10001F074(void *a1)
{
  v3 = [swift_getObjCClassFromMetadata() interfaceWithProtocol:a1];
  _objc_release(a1);
  return v3;
}

uint64_t sub_10001F0D0(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v65 = a2;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v86 = 0;
  v85 = 0;
  v66 = 0;
  v64 = 0;
  v84 = 0;
  v79 = 0;
  v68 = (*(*(sub_10000F56C(&qword_1000399C8, &qword_10002D638) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v69 = v14 - v68;
  v70 = *__chkstk_darwin(v67);
  v94 = v70;
  v71 = v2 + 16;
  v93 = v2 + 16;
  v72 = &v92;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    goto LABEL_26;
  }

  v63 = Strong;
  v60 = Strong;
  v91 = Strong;
  v61 = &v87;
  swift_beginAccess();
  v62 = *(v60 + 40);
  _objc_retain(v62);
  swift_endAccess();
  v88 = v62;
  if (v62)
  {
    v57 = &v88;
    v58 = v88;
    _objc_retain(v88);
    sub_100010068(v57);
    v59 = [v58 remoteObjectProxy];
    sub_10002A7E0();
    _objc_release(v58);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100010068(&v88);
    memset(v89, 0, sizeof(v89));
    v90 = 0;
  }

  if (v90)
  {
    sub_10000F56C(&unk_100039F10, &unk_10002DB40);
    if (swift_dynamicCast())
    {
      v55 = v74;
    }

    else
    {
      v55 = 0;
    }

    v56 = v55;
  }

  else
  {
    sub_10000519C(v89);
    v56 = 0;
  }

  v54 = v56;
  if (!v56)
  {

LABEL_26:
    v26 = sub_10002A490("Try to send result, but can't find the extension", 0x30uLL, 1);
    v27 = v8;
    sub_10001DCA4(0x5Au);
  }

  v53 = v54;
  v52 = v54;
  v86 = v54;

  if (v70)
  {
    v51 = v70;
    v3 = v64;
    v48 = v70;
    v85 = v70;
    v49 = sub_1000157A4();
    v50 = v3;
    if (v3)
    {
      v25 = v50;
      swift_errorRetain();
      v84 = v25;
      v9 = sub_10002A9C0();
      v19 = &v82;
      v82 = v9;
      v83 = v10;
      v17 = 1;
      v96._countAndFlagsBits = sub_10002A490("Fail to convert soundscapes ", 0x1CuLL, 1);
      v14[1] = v96._object;
      sub_10002A9B0(v96);

      v14[2] = &v81;
      v81 = v48;
      v16 = 0;
      type metadata accessor for SoundScapesOption();
      sub_10002A980();
      v97._countAndFlagsBits = sub_10002A490(" to playback archive ", 0x15uLL, v17 & 1);
      v14[3] = v97._object;
      sub_10002A9B0(v97);

      swift_getErrorValue();
      v11 = sub_10002AA00();
      v15 = v80;
      v80[0] = v11;
      v80[1] = v12;
      sub_10002A9A0();
      sub_100012570(v15);
      v98._countAndFlagsBits = sub_10002A490("", v16, v17 & 1);
      object = v98._object;
      sub_10002A9B0(v98);

      v21 = v82;
      v20 = v83;

      sub_100012570(v19);
      v22 = sub_10002A470();
      v23 = v13;
      sub_10001DCA4(0x5Au);

      swift_getObjectType();
      swift_errorRetain();
      v24 = sub_100029DE0();

      [v52 selectedSoundScapes:0 withError:v24];
      _objc_release(v24);
    }

    else
    {
      v33 = v49;
      v79 = v49;
      swift_getObjectType();
      _objc_retain(v33);
      v41 = 0;
      [v52 selectedSoundScapes:v33 withError:?];
      _objc_release(v33);
      v44 = 1;
      v34 = sub_10002A490("Sent the soundscapes to the extension", 0x25uLL, 1);
      v35 = v4;
      sub_10001DCA4(0x28u);

      v36 = sub_100014DFC();
      v37 = v5;
      v38 = &v78;
      v40 = 32;
      swift_beginAccess();
      v39 = *(v48 + 48);
      swift_endAccess();
      v42 = (v48 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed);
      v43 = &v77;
      swift_beginAccess();
      sub_1000175D8(v42, v69);
      swift_endAccess();
      v45 = sub_100029E90();
      v46 = *(v45 - 8);
      v47 = v45 - 8;
      if ((*(v46 + 48))(v69, v44) == 1)
      {
        sub_100017928(v69);
        v31 = 0;
        v32 = 1;
      }

      else
      {
        sub_100029E70();
        v30 = v6;
        (*(v46 + 8))(v69, v45);
        v31 = v30;
        v32 = 0;
      }

      v29 = v95;
      sub_100020518(1, 0, v36, v37, v39, 0, v31, v32 & 1, v95);
      sub_1000202C4(v29, &v75);
      v28 = v76;
      v76[3] = &unk_1000360A0;
      v76[4] = &off_1000360C8;
      v76[0] = swift_allocObject();
      memcpy((v76[0] + 16), v29, 0x31uLL);
      sub_100019784(v28);
      sub_1000051D8(v28);
      sub_10002037C(v29);
      _objc_release(v33);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10001F8EC(_BYTE *a1, uint64_t a2)
{
  v16 = 0;
  v15 = 0;
  v8 = *a1;
  v16 = a1;
  v15 = a2;
  sub_10002A490("Dismiss the picker", 0x12uLL, 1);
  sub_10001DCA4(0x28u);

  sub_100020518(0, 1, 0, 0, 0, 1, 0, 1, v17);
  sub_1000202C4(v17, v13);
  v14[3] = &unk_1000360A0;
  v14[4] = &off_1000360C8;
  v14[0] = swift_allocObject();
  memcpy((v14[0] + 16), v17, 0x31uLL);
  sub_100019784(v14);
  sub_1000051D8(v14);
  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v6 = *(a2 + 40);
  _objc_retain(v6);
  swift_endAccess();
  v10 = v6;
  if (v6)
  {
    v5 = v10;
    _objc_retain(v10);
    sub_100010068(&v10);
    [v5 remoteObjectProxy];
    sub_10002A7E0();
    _objc_release(v5);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100010068(&v10);
    memset(v11, 0, sizeof(v11));
    v12 = 0;
  }

  if (v12)
  {
    sub_10000F56C(&unk_100039F10, &unk_10002DB40);
    v3 = (swift_dynamicCast() & 1) != 0 ? v9 : 0;
    v4 = v3;
  }

  else
  {
    sub_10000519C(v11);
    v4 = 0;
  }

  if (v4)
  {
    swift_getObjectType();
    [v4 requestDismiss];
    sub_10002A490("Sent dismiss message to the extension", 0x25uLL, 1);
    sub_10001DCA4(0x28u);

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_13:
    sub_10002A490("Fail to send the message to the extension", 0x29uLL, 1);
    sub_10001DCA4(0x5Au);
  }

  return sub_10002037C(v17);
}

uint64_t sub_10001FC84()
{

  nullsub_1(v0);
  sub_100029EB0();
  sub_10001FD60();
  return sub_100029ED0();
}

unint64_t sub_10001FD60()
{
  v2 = qword_100039DB0;
  if (!qword_100039DB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039DB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001FDDC()
{
  type metadata accessor for SoundScapesPickerExtension();
  sub_100020080();
  return sub_100029EE0();
}

uint64_t sub_10001FE58()
{
  _objc_release(*(v0 + 16));
  sub_100011998((v0 + 24));
  sub_100011998((v0 + 32));
  sub_100010068((v0 + 40));
  return v2;
}

void *sub_10001FF14@<X0>(void *a1@<X8>)
{
  result = sub_10001DDFC();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for SoundScapesPickerExtension();
  sub_10001FDDC();
  return 0;
}

unint64_t sub_100020000()
{
  v2 = qword_100039EC8;
  if (!qword_100039EC8)
  {
    sub_100029EC0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039EC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100020080()
{
  v2 = qword_100039ED0;
  if (!qword_100039ED0)
  {
    type metadata accessor for SoundScapesPickerExtension();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039ED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100020100()
{
  v2 = qword_100039EF0;
  if (!qword_100039EF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039EF0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1000201AC()
{
  v2 = qword_100039EF8;
  if (!qword_100039EF8)
  {
    sub_10000F9D8(&qword_100039EE0, &qword_10002CDA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039EF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10002023C()
{
  v2 = qword_100039F00;
  if (!qword_100039F00)
  {
    sub_10000F9D8(&qword_100039600, &unk_10002DB20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039F00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000202C4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 16);

  result = a2;
  *(a2 + 16) = v4;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_10002033C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_10002037C(uint64_t a1)
{
  v1 = *(a1 + 16);

  return a1;
}

unint64_t sub_1000203A8()
{
  v2 = qword_100039F20;
  if (!qword_100039F20)
  {
    type metadata accessor for SoundScapesDataSource();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039F20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100020428(uint64_t a1)
{
  _objc_release(*a1);
  v1 = *(a1 + 16);

  _objc_release(*(a1 + 24));
  return a1;
}

id sub_10002047C()
{
  v3 = sub_10002A420();
  v2 = sub_10002A420();
  v4 = [v1 initWithSubsystem:v3 category:?];
  _objc_release(v2);

  _objc_release(v3);

  return v4;
}

void *sub_100020518@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>)
{
  LOBYTE(__src[0]) = a1;
  BYTE1(__src[0]) = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  LOBYTE(__src[4]) = a6 & 1;
  __src[5] = a7;
  LOBYTE(__src[6]) = a8 & 1;
  return memcpy(a9, __src, 0x31uLL);
}

uint64_t sub_1000205B0()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return v2;
}

uint64_t sub_1000205E8(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 16);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_100020634()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32) & 1;
  return result;
}

uint64_t sub_100020644(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_100020658()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48) & 1;
  return result;
}

uint64_t sub_100020668(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}