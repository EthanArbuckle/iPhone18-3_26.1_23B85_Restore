id sub_1008()
{
  if (qword_16280 != -1)
  {
    sub_69B8();
  }

  v1 = qword_16288;

  return v1;
}

void sub_2A04(id a1)
{
  qword_16288 = os_log_create("com.apple.adplatforms", "WebProcessPlugin");

  _objc_release_x1();
}

void sub_2A5C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_2E2C()
{
  if (qword_16290 != -1)
  {
    sub_6E10();
  }

  v1 = qword_16298;

  return v1;
}

void sub_2EC0(id a1)
{
  qword_16298 = os_log_create("com.apple.adplatforms", "WebProcessPlugin");

  _objc_release_x1();
}

id sub_3260()
{
  if (qword_162A0 != -1)
  {
    sub_6EC4();
  }

  v1 = qword_162A8;

  return v1;
}

void sub_4444(id a1)
{
  qword_162A8 = os_log_create("com.apple.adplatforms", "WebProcessPlugin");

  _objc_release_x1();
}

void sub_4910(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v31 = a2;
  v7 = a4;
  if (v31)
  {
    v8 = objc_alloc_init(APWebProcessVideoAdJSO);
    [*(a1 + 32) setWebProcessVideoAdJSO:v8];

    v9 = *(a1 + 32);
    v10 = [v9 webProcessVideoAdJSO];
    [v10 setDelegate:v9];

    v11 = [*(a1 + 32) webProcessVideoAdJSO];
    [v11 setVideoAssetURLString:v31];

    v12 = [*(a1 + 32) webProcessVideoAdJSO];
    [v12 setHasDestination:a3];

    v13 = [v7 valueForKey:@"AdMarkerHeight"];
    v14 = [*(a1 + 32) webProcessVideoAdJSO];
    [v14 setAdMarkerHeight:v13];

    v15 = [v7 valueForKey:@"AdMarkerWidth"];
    v16 = [*(a1 + 32) webProcessVideoAdJSO];
    [v16 setAdMarkerWidth:v15];

    v17 = [v7 valueForKey:@"FontSize"];
    v18 = [*(a1 + 32) webProcessVideoAdJSO];
    [v18 setFontSize:v17];

    v19 = [v7 valueForKey:@"DeviceLanguage"];
    v20 = [*(a1 + 32) webProcessVideoAdJSO];
    [v20 setDeviceLanguage:v19];

    v21 = [v7 valueForKey:@"DeviceContentSize"];
    v22 = [*(a1 + 32) webProcessVideoAdJSO];
    [v22 setDeviceContentSize:v21];

    v23 = [v7 valueForKey:@"CornerRadius"];
    v24 = [*(a1 + 32) webProcessVideoAdJSO];
    [v24 setCornerRadius:v23];

    v25 = [v7 valueForKey:@"LocalizedAdMarkerText"];
    v26 = [*(a1 + 32) webProcessVideoAdJSO];
    [v26 setLocalizedAdMarkerText:v25];

    v27 = [v7 valueForKey:@"LocalizedLearnMoreText"];
    v28 = [*(a1 + 32) webProcessVideoAdJSO];
    [v28 setLocalizedLearnMoreText:v27];

    v29 = [*(a1 + 32) webProcessVideoAdJSO];
    v30 = [*(a1 + 32) currentJSContext];
    [v30 setObject:v29 forKeyedSubscript:@"videoAd"];
  }

  else
  {
    [*(a1 + 32) setWebProcessVideoAdJSO:0];
  }
}

void sub_5978(id a1)
{
  qword_162B8 = os_log_create("com.apple.adplatforms", "WebProcessPlugin");

  _objc_release_x1();
}

id sub_5A4C()
{
  if (qword_162C0 != -1)
  {
    sub_6EEC();
  }

  v1 = qword_162C8;

  return v1;
}

void sub_5D7C(id a1)
{
  qword_162C8 = os_log_create("com.apple.adplatforms", "WebProcessPlugin");

  _objc_release_x1();
}

void sub_6924()
{
  sub_2A7C();
  v0 = objc_opt_class();
  sub_2A5C(&dword_0, v1, v2, "[%{private}@] The following URL was not valid: %{private}@", v3, v4, v5, v6, 3u);
}

void sub_69CC()
{
  sub_2A7C();
  objc_opt_class();
  sub_2A48();
  v1 = v0;
  sub_2A5C(&dword_0, v2, v3, "[%{private}@] Action failed with error: %{public}@", v4, v5, v6, v7, v8);
}

void sub_6A54()
{
  sub_2A7C();
  objc_opt_class();
  sub_2A48();
  v1 = v0;
  sub_2A5C(&dword_0, v2, v3, "[%{private}@] %{public}@", v4, v5, v6, v7, v8);
}

void sub_6ADC()
{
  sub_2A7C();
  objc_opt_class();
  sub_2A48();
  v1 = v0;
  sub_2A5C(&dword_0, v2, v3, "[%{private}@] MRAID.expand URL was not valid: %{public}@", v4, v5, v6, v7, v8);
}

void sub_6B64()
{
  sub_2A7C();
  objc_opt_class();
  sub_2A48();
  v1 = v0;
  sub_2A5C(&dword_0, v2, v3, "[%{private}@] MRAID.open URL was not valid: %{public}@", v4, v5, v6, v7, v8);
}

void sub_6BEC()
{
  objc_opt_class();
  sub_2A48();
  v1 = v0;
  sub_2A5C(&dword_0, v2, v3, "[%{private}@] %{public}@", v4, v5, v6, v7, v8);
}

void sub_6C7C()
{
  objc_opt_class();
  sub_2A48();
  v1 = v0;
  sub_2A5C(&dword_0, v2, v3, "[%{private}@] %{public}@", v4, v5, v6, v7, v8);
}

void sub_6D0C()
{
  objc_opt_class();
  sub_2A48();
  v1 = v0;
  sub_2A5C(&dword_0, v2, v3, "[%{private}@] No expand properties provided: %{public}@", v4, v5, v6, v7, v8);
}

void sub_6D94()
{
  objc_opt_class();
  sub_2F04();
  sub_2A5C(&dword_0, v0, v1, "[%{private}@] %{public}@", v2, v3, v4, v5, v6);
}

void sub_6E24(uint64_t a1, NSObject *a2)
{
  v3 = 138478083;
  v4 = objc_opt_class();
  v5 = 2114;
  v6 = @"Max play failed request limit is reached.";
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[%{private}@] %{public}@", &v3, 0x16u);
}