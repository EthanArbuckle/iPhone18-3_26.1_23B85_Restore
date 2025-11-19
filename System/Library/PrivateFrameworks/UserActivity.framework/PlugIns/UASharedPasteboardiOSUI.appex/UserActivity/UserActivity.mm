void sub_100001044(uint64_t a1)
{
  v3 = [*(a1 + 32) internalProgressView];
  v2 = *(a1 + 40);
  *&v2 = v2;
  [v3 setProgress:*(a1 + 48) animated:v2];
}

void *sub_100001750(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SharedPasteboardProgressUI] received notification for NSUserActivity progress %@", buf, 0xCu);
  }

  [*(a1 + 32) addProgress:v3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000018A0;
  v8[3] = &unk_1000041A0;
  v9 = *(a1 + 32);
  v10 = v3;
  v5 = v3;
  v6 = objc_retainBlock(v8);

  return v6;
}

id sub_1000018A0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[SharedPasteboardProgressUI] Removing progress (because it's been removed by the originator) %@", &v5, 0xCu);
  }

  return [*(a1 + 32) removeProgress:*(a1 + 40)];
}

void sub_100001C6C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100001E04(a1, v2);
  }

  if ([*(a1 + 40) isEqualToString:@"fractionCompleted"])
  {
    v3 = *(a1 + 48);
    [v3 fractionCompleted];
    if (v4 >= 1.0)
    {
      [*(a1 + 32) transferFinishedAnimated];
    }

    else
    {
      [v3 fractionCompleted];
      if (v5 >= 0.0)
      {
        v6 = *(*(a1 + 32) + 24);
        [v3 fractionCompleted];
        [v6 setProgress:1 animated:?];
      }
    }
  }
}

void sub_100001E04(void *a1, NSObject *a2)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = 138412802;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "observeValueForKeyPath:, keyPath=%@ object=%@ changed=%@", &v5, 0x20u);
}