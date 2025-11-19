uint64_t sub_100001CCC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001CE4(uint64_t a1, _BYTE *a2)
{
  obj = [*(a1 + 32) stopLock];
  objc_sync_enter(obj);
  *a2 = [*(a1 + 32) shouldStop];
  objc_sync_exit(obj);
}

void sub_10000240C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_100002474(uint64_t a1, _BYTE *a2)
{
  obj = [*(a1 + 32) stopLock];
  objc_sync_enter(obj);
  *a2 = [*(a1 + 32) shouldStop];
  objc_sync_exit(obj);
}

void sub_1000024F0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void sub_100002678(id a1)
{
  qword_10000C618 = os_log_create("com.apple.PhotoAnalysis.PhotoAnalysisLighthousePlugin", "Plugin");

  _objc_release_x1();
}