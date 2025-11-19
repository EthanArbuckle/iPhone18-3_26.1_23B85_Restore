void sub_10000143C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001488(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUserDismissed:0];
  v5 = [v3 userInfo];
  v6 = [v5 objectForKey:WFNetworkListControllerAssociationNetworkKey];

  v7 = WFLogForCategory();
  v8 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel())
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v6)
  {
    if (v10 && os_log_type_enabled(v7, v8))
    {
      v13 = 136315394;
      v14 = "[WiFiPickerExtensionViewController loadView]_block_invoke";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s: association finished to %@", &v13, 0x16u);
    }

    v11 = [WeakRetained viewController];
    [v11 setDismissed:1];

    v7 = [WeakRetained wifiClient];
    -[NSObject dispatchAskToJoinAction:notificationId:network:](v7, "dispatchAskToJoinAction:notificationId:network:", 1, [WeakRetained notificationId], v6);
  }

  else if (v10)
  {
    v7 = v7;
    if (os_log_type_enabled(v7, v8))
    {
      v12 = [v3 userInfo];
      v13 = 136315394;
      v14 = "[WiFiPickerExtensionViewController loadView]_block_invoke";
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s: association failed (userInfo: %@)", &v13, 0x16u);
    }
  }
}

void sub_100001698(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:WFNetworkListControllerScanResultCountKey];
  v5 = [v4 intValue];

  v6 = WFLogForCategory();
  v7 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
  {
    v15 = 136315394;
    v16 = "[WiFiPickerExtensionViewController loadView]_block_invoke";
    v17 = 1024;
    v18 = v5 > 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: shouldDisplayPicker %d", &v15, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained completionBlock];

  if (v9 && v5 >= 1)
  {
    v10 = [WeakRetained completionBlock];
    v10[2]();
  }

  else
  {
    v11 = WFLogForCategory();
    v12 = OSLogForWFLogLevel();
    if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v12))
    {
      v15 = 136315138;
      v16 = "[WiFiPickerExtensionViewController loadView]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, v12, "%s: scan results finished with 0 results, dismissing picker", &v15, 0xCu);
    }

    v13 = objc_loadWeakRetained((a1 + 40));
    v14 = [v13 viewController];
    [v14 setDismissed:1];

    v10 = [WeakRetained wifiClient];
    [v10 dispatchAskToJoinAction:0 notificationId:objc_msgSend(*(a1 + 32) network:{"notificationId"), 0}];
  }
}