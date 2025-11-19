id sub_123C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_19A58;
  v7 = qword_19A58;
  if (!qword_19A58)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1C30;
    v3[3] = &unk_14348;
    v3[4] = &v4;
    sub_1C30(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19AC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_19A70;
  v7 = qword_19A70;
  if (!qword_19A70)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1E4C;
    v3[3] = &unk_14348;
    v3[4] = &v4;
    sub_1E4C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A8C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_19A78;
  v7 = qword_19A78;
  if (!qword_19A78)
  {
    v1 = sub_1C88();
    v5[3] = dlsym(v1, "kEpisodeDownloadBehavior");
    qword_19A78 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_AA9C();
  }

  v2 = *v0;

  return v2;
}

void sub_1B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1C30(uint64_t a1)
{
  sub_1C88();
  result = objc_getClass("MTDBExtensionAccess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_AAC0();
  }

  qword_19A58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1C88()
{
  v3[0] = 0;
  if (!qword_19A60)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1D88;
    v3[4] = &unk_14380;
    v3[5] = v3;
    v4 = off_14368;
    v5 = 0;
    qword_19A60 = _sl_dlopen();
  }

  v0 = qword_19A60;
  v1 = v3[0];
  if (!qword_19A60)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1D88(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_19A60 = result;
  return result;
}

void *sub_1DFC(uint64_t a1)
{
  v2 = sub_1C88();
  result = dlsym(v2, "kMTEpisodeEntityName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19A68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E4C(uint64_t a1)
{
  sub_1C88();
  result = objc_getClass("MTEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_AAE8();
  }

  qword_19A70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1EA4(uint64_t a1)
{
  v2 = sub_1C88();
  result = dlsym(v2, "kEpisodeDownloadBehavior");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19A78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1EF4(uint64_t a1)
{
  v2 = sub_1C88();
  result = dlsym(v2, "kEpisodeUuid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19A80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1F44(uint64_t a1)
{
  sub_1C88();
  result = objc_getClass("MTDB");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_AB10();
  }

  qword_19A88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AC(id a1)
{
  v1 = sub_21D4();

  [v1 _repairFilePermissionsIfNeeded];
}

id sub_21D4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_19AA0;
  v7 = qword_19AA0;
  if (!qword_19AA0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_A2BC;
    v3[3] = &unk_14348;
    v3[4] = &v4;
    sub_A2BC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_229C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2690()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_19AB0;
  v7 = qword_19AB0;
  if (!qword_19AB0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_A36C;
    v3[3] = &unk_14348;
    v3[4] = &v4;
    sub_A36C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2770(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = sub_27EC();
  v5 = [v2 objectForUuid:v3 entityName:v4];

  [*(a1 + 48) _clearAssetURLForEpisode:v5];
}

id sub_27EC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_19AB8;
  v7 = qword_19AB8;
  if (!qword_19AB8)
  {
    v1 = sub_A148();
    v5[3] = dlsym(v1, "kMTEpisodeEntityName");
    qword_19AB8 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_AA9C();
  }

  v2 = *v0;

  return v2;
}

void sub_28D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_29E0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_19AC0;
  v7 = off_19AC0;
  if (!off_19AC0)
  {
    v1 = sub_A148();
    v5[3] = dlsym(v1, "_MTLogCategoryDatabase");
    off_19AC0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_AA9C();
  }

  v2 = v0();

  return v2;
}

void sub_2AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2C1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearPlayedDownloadsAndSyncPodcastsIfCanEnqueueAssets];
}

void sub_2DAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearPlayedDownloadsAndSyncPodcastsIfCanEnqueueAssets];
}

void sub_3028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_32E0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_19AD0;
  v7 = qword_19AD0;
  if (!qword_19AD0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_A4B4;
    v3[3] = &unk_14348;
    v3[4] = &v4;
    sub_A4B4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_33A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_33C0(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  if (!v2)
  {
    v12 = sub_29E0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 40) _stringForAsset:*(a1 + 32)];
      v14 = [*(a1 + 32) error];
      *buf = 138412546;
      v93 = v13;
      v94 = 2112;
      v95 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "No episode uuid for asset %@ - %@", buf, 0x16u);
    }

    v15 = a1 + 32;
    v8 = *(a1 + 32);
    v9 = *(v15 + 8);
    v11 = [NSError errorWithDomain:@"ATError" code:9 userInfo:0];
    goto LABEL_9;
  }

  v3 = [*(a1 + 32) error];

  v4 = sub_29E0();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 40) _stringForAsset:*(a1 + 32)];
      *buf = 138412290;
      v93 = v17;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Sync did complete for asset %@", buf, 0xCu);
    }

    v16 = [*(a1 + 32) path];
    v18 = +[NSFileManager defaultManager];
    if (([v18 fileExistsAtPath:v16] & 1) == 0)
    {
      v39 = sub_29E0();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = [*(a1 + 40) _stringForAsset:*(a1 + 32)];
        *buf = 138412546;
        v93 = v40;
        v94 = 2112;
        v95 = v16;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "Failed to find file for %@ at path %@", buf, 0x16u);
      }

      [*(a1 + 40) _clearAssetURLForEpisodeWithUUID:v2];
      v43 = a1 + 32;
      v41 = *(a1 + 32);
      v42 = *(v43 + 8);
      v19 = [NSError errorWithDomain:@"ATError" code:3 userInfo:0];
      [v42 _cancelAsset:v41 withError:v19];
      goto LABEL_51;
    }

    v19 = [v16 pathExtension];
    if (!v19)
    {
      v44 = sub_29E0();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = [*(a1 + 40) _stringForAsset:*(a1 + 32)];
        *buf = 138412290;
        v93 = v45;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "Failed to find file extension for %@", buf, 0xCu);
      }

      [*(a1 + 40) _clearAssetURLForEpisodeWithUUID:v2];
      v48 = a1 + 32;
      v46 = *(a1 + 32);
      v47 = *(v48 + 8);
      v23 = [NSError errorWithDomain:@"ATError" code:1 userInfo:0];
      [v47 _cancelAsset:v46 withError:v23];
      goto LABEL_50;
    }

    v20 = [sub_21D4() managedAssetsDirectoryURL];
    v21 = [v20 URLByAppendingPathComponent:v2 isDirectory:0];
    v22 = [v21 URLByAppendingPathExtension:v19];
    v23 = [v22 path];

    if ([v18 fileExistsAtPath:v23])
    {
      v24 = sub_29E0();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [*(a1 + 40) _stringForAsset:*(a1 + 32)];
        *buf = 138412546;
        v93 = v25;
        v94 = 2112;
        v95 = v23;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Will remove existing asset for episode %@ at destination %@", buf, 0x16u);
      }

      v91 = 0;
      v26 = [v18 removeItemAtPath:v23 error:&v91];
      v27 = v91;
      v28 = v27;
      if ((v26 & 1) == 0)
      {
        v57 = sub_29E0();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = [*(a1 + 40) _stringForAsset:*(a1 + 32)];
          *buf = 138412546;
          v93 = v58;
          v94 = 2112;
          v95 = v28;
          _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "Failed to remove existing asset for episode %@ - %@", buf, 0x16u);
        }

        v90 = 0;
        v59 = [v18 removeItemAtPath:v16 error:&v90];
        v30 = v90;
        if ((v59 & 1) == 0)
        {
          v60 = sub_29E0();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = [*(a1 + 40) _stringForAsset:*(a1 + 32)];
            *buf = 138412546;
            v93 = v61;
            v94 = 2112;
            v95 = v30;
            _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "Failed to remove downloaded asset for episode %@ - %@", buf, 0x16u);
          }
        }

        [*(a1 + 40) _clearAssetURLForEpisodeWithUUID:v2];
        v64 = a1 + 32;
        v62 = *(a1 + 32);
        v63 = *(v64 + 8);
        v35 = [NSError errorWithDomain:@"ATError" code:1 userInfo:0];
        [v63 _cancelAsset:v62 withError:v35];
        goto LABEL_49;
      }
    }

    v89 = 0;
    v29 = [v18 moveItemAtPath:v16 toPath:v23 error:&v89];
    v30 = v89;
    v31 = sub_29E0();
    v32 = v31;
    if (v29)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [*(a1 + 40) _stringForAsset:*(a1 + 32)];
        *buf = 138412802;
        v93 = v33;
        v94 = 2112;
        v95 = v16;
        v96 = 2112;
        v97 = v23;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Successfully moved %@ from %@ to %@", buf, 0x20u);
      }

      v87 = 0;
      v34 = [v18 attributesOfItemAtPath:v23 error:&v87];
      v35 = v87;
      v76 = v34;
      v77 = v30;
      if (v35)
      {
        v36 = sub_29E0();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = [*(a1 + 40) _stringForAsset:*(a1 + 32)];
          *buf = 138412546;
          v93 = v37;
          v94 = 2112;
          v95 = v35;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "Failed to fetch file attributes for episode %@ - %@", buf, 0x16u);
        }

        v38 = 0;
      }

      else
      {
        v38 = [v34 objectForKeyedSubscript:NSFileSize];
      }

      v65 = [AVAudioPlayer alloc];
      v66 = [NSURL fileURLWithPath:v23];
      v67 = [v65 initWithContentsOfURL:v66 error:0];

      [v67 duration];
      v69 = v68;

      v70 = [sub_2690() sharedInstance];
      v71 = [v70 privateQueueContext];

      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_3E44;
      v79[3] = &unk_14490;
      v80 = v71;
      v81 = v2;
      v75 = *(a1 + 32);
      v72 = v75.i64[0];
      v82 = vextq_s8(v75, v75, 8uLL);
      v83 = v18;
      v84 = v23;
      v85 = v38;
      v86 = v69;
      v73 = v38;
      v74 = v71;
      [v74 performBlock:v79];

      v56 = v76;
      v30 = v77;
    }

    else
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v49 = [*(a1 + 40) _stringForAsset:*(a1 + 32)];
        *buf = 138413058;
        v93 = v49;
        v94 = 2112;
        v95 = v16;
        v96 = 2112;
        v97 = v23;
        v98 = 2112;
        v99 = v30;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "Failed to move %@ from %@ to %@ - %@", buf, 0x2Au);
      }

      v88 = 0;
      v50 = [v18 removeItemAtPath:v16 error:&v88];
      v35 = v88;
      if ((v50 & 1) == 0)
      {
        v51 = sub_29E0();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          [*(a1 + 40) _stringForAsset:*(a1 + 32)];
          v52 = v78 = v30;
          *buf = 138412546;
          v93 = v52;
          v94 = 2112;
          v95 = v35;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "Failed to remove downloaded asset for episode %@ - %@", buf, 0x16u);

          v30 = v78;
        }
      }

      [*(a1 + 40) _clearAssetURLForEpisodeWithUUID:v2];
      v55 = a1 + 32;
      v53 = *(a1 + 32);
      v54 = *(v55 + 8);
      v56 = [NSError errorWithDomain:@"ATError" code:1 userInfo:0];
      [v54 _cancelAsset:v53 withError:v56];
    }

LABEL_49:
LABEL_50:

LABEL_51:
    goto LABEL_52;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 40) _stringForAsset:*(a1 + 32)];
    v7 = [*(a1 + 32) error];
    *buf = 138412546;
    v93 = v6;
    v94 = 2112;
    v95 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Sync did fail for %@ - %@", buf, 0x16u);
  }

  [*(a1 + 40) _clearAssetURLForEpisodeWithUUID:v2];
  v10 = a1 + 32;
  v8 = *(a1 + 32);
  v9 = *(v10 + 8);
  v11 = [v8 error];
LABEL_9:
  v16 = v11;
  [v9 _cancelAsset:v8 withError:v11];
LABEL_52:
}

void sub_3E44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = sub_27EC();
  v5 = [v2 objectForUuid:v3 entityName:v4];

  if (v5)
  {
    v6 = [*(a1 + 72) fileURLFromAssetPath];
    [v5 setAssetURL:v6];

    v7 = *(a1 + 80);
    if (v7)
    {
      [v5 setByteSize:{objc_msgSend(v7, "unsignedLongLongValue")}];
    }

    [v5 setDuration:*(a1 + 88)];
    [*(a1 + 32) saveInCurrentBlock];
    v8 = *(*(a1 + 48) + 8);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_416C;
    v20[3] = &unk_14468;
    v21 = *(a1 + 56);
    dispatch_async(v8, v20);
    v9 = v21;
  }

  else
  {
    v10 = sub_29E0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 48) _stringForAsset:*(a1 + 56)];
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Removing downloaded asset for episode no longer available %@", buf, 0xCu);
    }

    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    v24 = 0;
    v14 = [v12 removeItemAtPath:v13 error:&v24];
    v9 = v24;
    if ((v14 & 1) == 0)
    {
      v15 = sub_29E0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [*(a1 + 48) _stringForAsset:*(a1 + 56)];
        *buf = 138412546;
        v26 = v16;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Failed to remove downloaded asset after moving for episode %@ - %@", buf, 0x16u);
      }
    }

    v18 = *(a1 + 48);
    v17 = *(a1 + 56);
    v19 = *(v18 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_40FC;
    block[3] = &unk_14440;
    block[4] = v18;
    v23 = v17;
    dispatch_async(v19, block);
  }
}

void sub_40FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [NSError errorWithDomain:@"ATError" code:15 userInfo:0];
  [v1 _cancelAsset:v2 withError:v3];
}

void sub_416C(uint64_t a1)
{
  v2 = +[ATAssetLinkController sharedInstance];
  v4 = *(a1 + 32);
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 installCompleteForAssets:v3];
}

void sub_42D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_29E0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Asset link controller did process all track assets for type %@", &v8, 0xCu);
    }

    v5 = WeakRetained[24];
    v6 = sub_29E0();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1)
    {
      if (v7)
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Pending sync found", &v8, 2u);
      }

      [WeakRetained _clearPlayedDownloadsAndSyncPodcastsIfCanEnqueueAssets];
    }

    else
    {
      if (v7)
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Pending sync not found", &v8, 2u);
      }
    }
  }
}

void sub_4724(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _episodesWithDownloadBehavior:2];
    v5 = +[NSMutableSet set];
    v6 = [sub_2690() sharedInstance];
    v7 = [v6 privateQueueContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_48D0;
    v14[3] = &unk_14440;
    v8 = v4;
    v15 = v8;
    v9 = v5;
    v16 = v9;
    [v7 performBlockAndWait:v14];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_4A00;
    v11[3] = &unk_144E0;
    objc_copyWeak(&v13, (a1 + 40));
    v11[4] = *(a1 + 32);
    v10 = v9;
    v12 = v10;
    [v3 _pruneActiveDownloadsWithCompletion:v11];

    objc_destroyWeak(&v13);
  }
}

void sub_48D0(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 uuid];

        if (v8)
        {
          v9 = *(a1 + 40);
          v10 = [v7 uuid];
          [v9 addObject:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_4A00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) _hashWithEpisodeSet:*(a1 + 40)];
    if (v3 != WeakRetained[5])
    {
      v4 = sub_29E0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = WeakRetained[5];
        v8 = 134218240;
        v9 = v5;
        v10 = 2048;
        v11 = v3;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Forced episodes did change since last time assets were enqueued %lu -> %lu", &v8, 0x16u);
      }

      [WeakRetained _clearPlayedDownloadsAndSyncPodcastsIfCanEnqueueAssets];
    }

    WeakRetained[5] = v3;
    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    *(WeakRetained + 72) = 0;
    if (*(WeakRetained + 73) == 1)
    {
      v7 = sub_29E0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Manual downloads did change task finished but there is a pending task. Will run update again", &v8, 2u);
      }

      [WeakRetained manualDownloadsDidChange];
    }

    objc_sync_exit(v6);
  }
}

void sub_4DA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) _episodeUUIDsFromDownloadInfo];
    v4 = [*(a1 + 32) _requestForEpisodesPendingDownloadEnablementWithDownloadableUUIDs:v3];
    v5 = [*(a1 + 32) _requestForEpisodesPendingDownloadDisablementWithDownloadableUUIDs:v3];
    v6 = +[NSMutableSet set];
    v7 = [sub_2690() sharedInstance];
    v8 = [v7 privateQueueContext];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_4F78;
    v17[3] = &unk_14508;
    v18 = v8;
    v19 = v4;
    v9 = v6;
    v20 = v9;
    v21 = v5;
    v10 = v5;
    v11 = v4;
    v12 = v8;
    [v12 performBlockAndWaitWithSave:v17];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_5394;
    v14[3] = &unk_143F0;
    v14[4] = *(a1 + 32);
    v15 = v9;
    v16 = WeakRetained;
    v13 = v9;
    [WeakRetained _pruneActiveDownloadsWithCompletion:v14];
  }
}

void sub_4F78(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v42 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v42];
  v5 = v42;
  if (v5)
  {
    v6 = v5;
    v7 = sub_29E0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Unable to fetch episodes pending container download enablement - %@", buf, 0xCu);
    }
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v32 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          v14 = sub_29E0();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v13 uuid];
            v16 = [v13 title];
            *buf = 138412546;
            v45 = v15;
            v46 = 2112;
            v47 = v16;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Marking episode for automatic download %@ - %@", buf, 0x16u);
          }

          [v13 setDownloadBehavior:6];
          v17 = [v13 uuid];

          if (v17)
          {
            v18 = a1[6];
            v19 = [v13 uuid];
            [v18 addObject:v19];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v10);
    }

    v20 = a1[4];
    v21 = a1[7];
    v37 = 0;
    v7 = [v20 executeFetchRequest:v21 error:&v37];
    v6 = v37;
    if (v6)
    {
      v22 = sub_29E0();
      v4 = v32;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v6;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Unable to fetch episodes pending container download disablement - %@", buf, 0xCu);
      }
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v22 = v7;
      v23 = [v22 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v23)
      {
        v24 = v23;
        v31 = v7;
        v25 = *v34;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v34 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v33 + 1) + 8 * j);
            v28 = sub_29E0();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v27 uuid];
              v30 = [v27 title];
              *buf = 138412546;
              v45 = v29;
              v46 = 2112;
              v47 = v30;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Unmarking episode for automatic download and clearing download error %@ - %@", buf, 0x16u);
            }

            [v27 setDownloadBehavior:0];
            [v27 setDownloadError:0];
          }

          v24 = [v22 countByEnumeratingWithState:&v33 objects:v43 count:16];
        }

        while (v24);
        v6 = 0;
        v4 = v32;
        v7 = v31;
      }

      else
      {
        v4 = v32;
      }
    }
  }
}

void sub_5394(uint64_t a1)
{
  v2 = [*(a1 + 32) _hashWithEpisodeSet:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v2 != *(v3 + 32))
  {
    v4 = sub_29E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 48) + 32);
      v8 = 134218240;
      v9 = v5;
      v10 = 2048;
      v11 = v2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Container episodes did change since last time assets were enqueued %lu -> %lu", &v8, 0x16u);
    }

    [*(a1 + 32) _clearPlayedDownloadsAndSyncPodcastsIfCanEnqueueAssets];
    v3 = *(a1 + 48);
  }

  *(v3 + 32) = v2;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  *(*(a1 + 48) + 74) = 0;
  if (*(*(a1 + 48) + 75) == 1)
  {
    v7 = sub_29E0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Automatic downloads did change task finished but there is a pending task. Will run update again", &v8, 2u);
    }

    [*(a1 + 48) _handleDownloadInfoDidInvalidateNotification:0];
  }

  objc_sync_exit(v6);
}

void sub_5998(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearPlayedDownloadsAndSyncPodcastsIfCanEnqueueAssets];
}

id sub_6008()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_19AD8;
  v7 = qword_19AD8;
  if (!qword_19AD8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_A50C;
    v3[3] = &unk_14348;
    v3[4] = &v4;
    sub_A50C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_60D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_60E8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = *(v1 + 40);
  v31 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v31];
  v5 = v31;
  if (v5)
  {
    v6 = sub_29E0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Unable to fetch episodes to set download error - %@", buf, 0xCu);
    }
  }

  else
  {
    v23 = v4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v28;
      do
      {
        v11 = 0;
        v24 = v9;
        v12 = v9 + 1;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * v11);
          v14 = objc_autoreleasePoolPush();
          v15 = sub_29E0();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(v1 + 48);
            [v13 uuid];
            v17 = v26 = v14;
            [v13 title];
            v18 = v1;
            v19 = v8;
            v21 = v20 = v10;
            *buf = 134218498;
            v33 = v16;
            v34 = 2112;
            v35 = v17;
            v36 = 2112;
            v37 = v21;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Setting download error - %lld - for episode %@ - %@", buf, 0x20u);

            v10 = v20;
            v8 = v19;
            v1 = v18;

            v14 = v26;
          }

          [v13 setDownloadError:*(v1 + 48)];
          HIDWORD(v22) = 85899344 - 1030792151 * v12;
          LODWORD(v22) = HIDWORD(v22);
          if ((v22 >> 3) <= 0x147AE14)
          {
            [*(v1 + 32) saveInCurrentBlock];
          }

          objc_autoreleasePoolPop(v14);
          v11 = v11 + 1;
          ++v12;
        }

        while (v8 != v11);
        v9 = v24 + v8;
        v8 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v8);
    }

    [*(v1 + 32) saveInCurrentBlock];
    v5 = 0;
    v4 = v23;
  }
}

void sub_6628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6654(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_29E0();
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_0, WeakRetained, OS_LOG_TYPE_ERROR, "[Sync Attempt] initiateAssetDownloadSessions failed with error %@. Will attempt again later.", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    isa = WeakRetained[1].isa;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_67AC;
    block[3] = &unk_14468;
    block[4] = WeakRetained;
    dispatch_async(isa, block);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, WeakRetained, OS_LOG_TYPE_DEFAULT, "[Sync Attempt] initiateAssetDownloadSessions succeeded", buf, 2u);
  }
}

id sub_67AC(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 1;
  v2 = sub_29E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[Sync Attempt] Perform cleanup task after sync failure", v4, 2u);
  }

  return [*(a1 + 32) _performCleanupTask];
}

void sub_6AB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = sub_27EC();
  v5 = [v2 objectForUuid:v3 entityName:v4];

  if (v5)
  {
    v6 = [*(a1 + 48) _episodeDownloadErrorForATError:*(a1 + 56)];
    v7 = sub_29E0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 uuid];
      v9 = [v5 title];
      v10 = 134218498;
      v11 = v6;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Will set download error %lld for episode %@ - %@", &v10, 0x20u);
    }

    [v5 setDownloadError:v6];
  }
}

void sub_7258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_7284()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_19AE0;
  v7 = qword_19AE0;
  if (!qword_19AE0)
  {
    v1 = sub_A148();
    v5[3] = dlsym(v1, "kEpisodeUuid");
    qword_19AE0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_AA9C();
  }

  v2 = *v0;

  return v2;
}

void sub_7370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_7388()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_19AE8;
  v7 = qword_19AE8;
  if (!qword_19AE8)
  {
    v1 = sub_A148();
    v5[3] = dlsym(v1, "kEpisodeTitle");
    qword_19AE8 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_AA9C();
  }

  v2 = *v0;

  return v2;
}

void sub_7474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_748C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_19AF8;
  v7 = qword_19AF8;
  if (!qword_19AF8)
  {
    v1 = sub_A148();
    v5[3] = dlsym(v1, "kEpisodeStoreTrackId");
    qword_19AF8 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_AA9C();
  }

  v2 = *v0;

  return v2;
}

void sub_7578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7680(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 itemType] == &dword_0 + 1)
  {
    v3 = [v6 externalLibraryIdentifier];

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = [v6 externalLibraryIdentifier];
      [v4 addObject:v5];
    }
  }
}

void sub_7B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7B5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_7B74(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v12 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v12];
  v5 = v12;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    v8 = sub_29E0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Unable to fetch manual episodes - %@", buf, 0xCu);
    }

    v9 = +[NSArray array];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_809C(uint64_t a1)
{
  v2 = sub_27EC();
  v3 = [NSFetchRequest fetchRequestWithEntityName:v2];

  v4 = [sub_6008() predicateForEpisodeUuids:*(a1 + 32)];
  v5 = [v4 NOT];
  v6 = [sub_6008() predicateForDownloaded:1 excludeHidden:0];
  v7 = [v5 AND:v6];
  [v3 setPredicate:v7];

  v8 = [sub_6008() propertiesToFetchAssetURL];
  v9 = sub_7284();
  v27[0] = v9;
  v10 = sub_7388();
  v27[1] = v10;
  v11 = sub_748C();
  v27[2] = v11;
  v12 = [NSArray arrayWithObjects:v27 count:3];
  v13 = [v8 arrayByAddingObjectsFromArray:v12];
  [v3 setPropertiesToFetch:v13];

  v14 = [*(a1 + 40) executeFetchRequest:v3];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        v20 = *(a1 + 48);
        v21 = [v19 assetURL];
        [v20 setObject:v19 forKeyedSubscript:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }
}

void sub_82F4(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [*(a1 + 32) objectEnumerator];
  v2 = [obj countByEnumeratingWithState:&v13 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = sub_29E0();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 uuid];
          v9 = [v6 title];
          v10 = [v6 assetURL];
          v11 = [v6 storeTrackId];
          *buf = 138413058;
          v18 = v8;
          v19 = 2112;
          v20 = v9;
          v21 = 2112;
          v22 = v10;
          v23 = 2048;
          v24 = v11;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Deleted unpinned episode <%@ - %@> at path %@ with adam id %lld", buf, 0x2Au);
        }

        [*(a1 + 40) _clearAssetURLForEpisode:v6];
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v25 count:16];
    }

    while (v3);
  }
}

void sub_8874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_88B8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v19 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v19];
  v5 = v19;
  if (v5)
  {
    v6 = sub_29E0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Unable to fetch downloadable episodes - %@", buf, 0xCu);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 uuid];

          if (v12)
          {
            v13 = *(*(a1[6] + 8) + 40);
            v14 = [v11 uuid];
            [v13 addObject:v14];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }
  }
}

void sub_8A78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8B4C;
    block[3] = &unk_145F8;
    block[4] = WeakRetained;
    v7 = *(a1 + 32);
    v5 = v7;
    v9 = v7;
    dispatch_async(v4, block);
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }
}

uint64_t sub_8B4C(void *a1)
{
  v2 = a1[4];
  v3 = [*(*(a1[6] + 8) + 40) copy];
  [v2 _deleteEpisodesNotInUUIDs:v3];

  result = a1[5];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_8E14(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) executeFetchRequest:*(a1 + 40) error:0];
  v3 = +[NSFileManager defaultManager];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    *&v5 = 138413058;
    v20 = v5;
    v21 = v1;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 assetURL];
        v11 = [v10 assetPathFromFileURL];

        v23 = 0;
        v12 = [v3 removeItemAtPath:v11 error:&v23];
        v13 = v23;
        v14 = sub_29E0();
        v15 = v14;
        if (v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v9 uuid];
            v17 = [v9 title];
            *buf = 138412802;
            v29 = v16;
            v30 = 2112;
            v31 = v17;
            v32 = 2112;
            v33 = v11;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Deleted fully played manual download (%@ - %@) at path %@", buf, 0x20u);

            v1 = v21;
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = [v9 uuid];
          v19 = [v9 title];
          *buf = v20;
          v29 = v18;
          v30 = 2112;
          v31 = v19;
          v32 = 2112;
          v33 = v11;
          v34 = 2112;
          v35 = v13;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Failed to remove episode asset at path for fully played manual download (%@ - %@) at path %@ - %@", buf, 0x2Au);

          v1 = v21;
        }

        [v9 setDownloadBehavior:0];
        [*(v1 + 48) _clearAssetURLForEpisode:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v6);
  }
}

void sub_9B04(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = a1[6];
        v13 = [v11 assetURL];
        v14 = [v13 lastPathComponent];
        [v12 setObject:v11 forKeyedSubscript:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }
}

void sub_9C6C(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    *&v4 = 138412290;
    v11 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(a1 + 40) objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v7), v11, v12}];
        v9 = sub_29E0();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 title];
          *buf = v11;
          v17 = v10;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Cleanup task will clear assetURL for episode %@", buf, 0xCu);
        }

        [v8 setAssetURL:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }
}

void *sub_A0F8(uint64_t a1)
{
  v2 = sub_A148();
  result = dlsym(v2, "_MTLogCategoryDefault");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_19A90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_A148()
{
  v3[0] = 0;
  if (!qword_19A98)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_A248;
    v3[4] = &unk_14380;
    v3[5] = v3;
    v4 = off_146A8;
    v5 = 0;
    qword_19A98 = _sl_dlopen();
  }

  v0 = qword_19A98;
  v1 = v3[0];
  if (!qword_19A98)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_A248(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_19A98 = result;
  return result;
}

Class sub_A2BC(uint64_t a1)
{
  sub_A148();
  result = objc_getClass("MTConstants");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_AB38();
  }

  qword_19AA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_A314(uint64_t a1)
{
  sub_A148();
  result = objc_getClass("PFFairPlayInvalidationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_AB60();
  }

  qword_19AA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_A36C(uint64_t a1)
{
  sub_A148();
  result = objc_getClass("MTDB");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_AB10();
  }

  qword_19AB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_A3C4(uint64_t a1)
{
  v2 = sub_A148();
  result = dlsym(v2, "kMTEpisodeEntityName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19AB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_A414(uint64_t a1)
{
  v2 = sub_A148();
  result = dlsym(v2, "_MTLogCategoryDatabase");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_19AC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_A464(uint64_t a1)
{
  v2 = sub_A148();
  result = dlsym(v2, "kMTApplicationBundleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19AC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_A4B4(uint64_t a1)
{
  sub_A148();
  result = objc_getClass("MTDBExtensionAccess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_AAC0();
  }

  qword_19AD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_A50C(uint64_t a1)
{
  sub_A148();
  result = objc_getClass("MTEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_AAE8();
  }

  qword_19AD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_A564(uint64_t a1)
{
  v2 = sub_A148();
  result = dlsym(v2, "kEpisodeUuid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19AE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_A5B4(uint64_t a1)
{
  v2 = sub_A148();
  result = dlsym(v2, "kEpisodeTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19AE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_A604(uint64_t a1)
{
  v2 = sub_A148();
  result = dlsym(v2, "kEpisodeEnclosureUrl");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19AF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_A654(uint64_t a1)
{
  v2 = sub_A148();
  result = dlsym(v2, "kEpisodeStoreTrackId");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19AF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_A6A4(uint64_t a1)
{
  v2 = sub_A148();
  result = dlsym(v2, "kEpisodeGuid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19B00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_A6F4(uint64_t a1)
{
  v2 = sub_A148();
  result = dlsym(v2, "kEpisodeAssetURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19B08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_A744(uint64_t a1)
{
  v2 = sub_A148();
  result = dlsym(v2, "kEpisodeDownloadBehavior");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_19B10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_AA9C()
{
  dlerror();
  abort_report_np();
  sub_AAC0();
}