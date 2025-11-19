void sub_14E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_15E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1600(uint64_t a1, void *a2)
{
  v3 = [a2 state];
  v4 = *(*(a1 + 32) + 8);
  if (v3)
  {
    *(v4 + 24) = 0;
    v5 = [NSError errorWithCode:2 description:@"Failed to read AppInFocus from Biome"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = sub_16D0();
    if (os_signpost_enabled(v8))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AppInFocusReadFailure", &unk_26F5, v9, 2u);
    }
  }

  else
  {
    *(v4 + 24) = 1;
  }
}

id sub_16D0()
{
  if (qword_8340 != -1)
  {
    sub_1854();
  }

  v1 = qword_8338;

  return v1;
}

void sub_1714(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v14 = v3;
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = [v3 eventBody];
  v6 = [v5 absoluteTimestamp];
  v7 = [v4 compare:v6];

  v8 = v14;
  if (v7 != &dword_0 + 1)
  {
LABEL_11:
    if (!a1[5])
    {
      goto LABEL_5;
    }

    v9 = [v14 eventBody];
    v10 = [v9 absoluteTimestamp];
    v11 = [v10 compare:a1[5]];

    v8 = v14;
    if (v11 != &dword_0 + 1)
    {
LABEL_5:
      v12 = a1[6];
      v13 = [v14 eventBody];
      [v12 addObject:v13];

      v8 = v14;
    }
  }
}

void sub_1810(id a1)
{
  qword_8338 = os_log_create("com.apple.AppleTracingSupport", "AppInFocusPassiveDataSource");

  _objc_release_x1();
}