void NENetworkRelayMonitorStart()
{
  v0 = ne_log_obj();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v0, OS_LOG_TYPE_DEFAULT, "starting networkrelay monitor", v2, 2u);
  }

  v1 = +[NRLaunchEventMonitor copySharedMonitor];
  [v1 start];
}

id sub_D6C()
{
  objc_opt_self();
  if (qword_8A98 != -1)
  {
    dispatch_once(&qword_8A98, &stru_8340);
  }

  v0 = qword_8A90;

  return v0;
}

void sub_DC4(id a1)
{
  qword_8A90 = objc_alloc_init(NEUserEventAgentNetworkDetection);

  _objc_release_x1();
}

void sub_E00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  val = sub_D6C();
  if (val)
  {
    v6 = a1 == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    val[3] = a2;
    if (xpc_dictionary_get_BOOL(v5, "init"))
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Registering for notifications and initializing nehelper", buf, 2u);
      }

      sub_F74(val);
    }
  }
}

void sub_F74(id val)
{
  out_token = -1;
  objc_initWeak(&location, val);
  v2 = *(val + 2);
  xpc_event_provider_get_queue();
}

void sub_1118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1158(uint64_t a1, int a2)
{
  if (!a1)
  {
    return;
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_42;
      }

      if (ne_session_on_demand_configs_present() & 1) != 0 || (ne_session_content_filter_configs_present() & 1) != 0 || (ne_session_always_on_vpn_configs_present() & 1) != 0 || (ne_session_dns_proxy_configs_present() & 1) != 0 || (ne_session_dns_settings_configs_present() & 1) != 0 || (ne_session_path_controller_configs_present() & 1) != 0 || (ne_session_app_vpn_configs_present() & 1) != 0 || (ne_session_local_communication_configs_present() & 1) != 0 || (ne_session_relay_configs_present())
      {
        v6 = 1;
      }

      else
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v18 = inputNotification2String();
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Not generating a %s event because no configurations are present that need active sessions", buf, 0xCu);
          }

          goto LABEL_50;
        }

        v6 = 0;
      }

      *(a1 + 8) = v6;
      v7 = ne_session_vod_evaluate_connection_present();
      v8 = *(a1 + 48);
      if (v7)
      {
        if (!v8)
        {
          v9 = *(a1 + 16);
          xpc_event_provider_get_queue();
        }
      }

      else if (v8)
      {
        dispatch_source_cancel(v8);
        v11 = *(a1 + 48);
        *(a1 + 48) = 0;
      }

      goto LABEL_42;
    }

    if (ne_session_on_demand_configs_present() & 1) != 0 || (ne_session_always_on_vpn_configs_present())
    {
      goto LABEL_42;
    }

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = inputNotification2String();
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Not generating a %s event because no configurations are present that need to react to network changes", buf, 0xCu);
    }

LABEL_50:

    return;
  }

  if (a2 == 2)
  {
    if (ne_session_always_on_vpn_configs_present() & 1) != 0 || (ne_session_dns_proxy_configs_present())
    {
      goto LABEL_42;
    }

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = inputNotification2String();
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Not generating a %s event because no configurations are present that need to react to changes in the installed captive network plugins", buf, 0xCu);
    }

    goto LABEL_50;
  }

  if (a2 == 6)
  {
    if (!ne_session_vod_evaluate_connection_present())
    {
      return;
    }

LABEL_42:
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = inputNotification2String();
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Generating a %s event", buf, 0xCu);
    }

    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v13, "network-origin-notification", a2);
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    xpc_event_provider_token_fire();
  }

  if (a2 != 4)
  {
    goto LABEL_42;
  }

  v16 = sub_234C();
  if (v16)
  {
    v4 = v16;
    objc_sync_enter(v4);
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Current NE file handles: ", buf, 2u);
    }

    [v4 iterateFileHandlesWithBlock:&stru_84E8];
    objc_sync_exit(v4);
  }
}

void sub_15C8(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Received notification %s", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_1158(WeakRetained, *(a1 + 48));
}

void sub_1694(id a1)
{
  qword_8AA0 = objc_alloc_init(NEUserEventAgentNetworkBlockedObserver);

  _objc_release_x1();
}

void sub_16D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    *&buf[24] = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Got local network blocked notification: pid: %@, uuid: %@, bundle_id: %@", buf, 0x20u);
  }

  if (v9 && xpc_get_type(v9) == &_xpc_type_string)
  {
    v11 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v9)];
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_uint64)
  {
    value = xpc_uint64_get_value(v7);
    if (v8 && xpc_get_type(v8) == &_xpc_type_uuid && (bytes = xpc_uuid_get_bytes(v8), v33 = 0, memset(buf, 0, sizeof(buf)), proc_pidinfo(value, 17, 1uLL, buf, 56) == 56) && uuid_compare(bytes, buf))
    {
      memset(out, 0, sizeof(out));
      uuid_unparse(bytes, out);
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v27 = 67109378;
        v28 = value;
        v29 = 2080;
        v30 = out;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "LocalNetwork: PID %u does not match UUID %s, is delegating traffic", v27, 0x12u);
      }
    }

    else
    {
      v15 = NECopySigningIdentifierForPID();
      if (v15)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v15;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "LocalNetwork: found bundle id %@ by PID", buf, 0xCu);
        }

        v17 = v15;
        v11 = v17;
      }

      if (!v8)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

LABEL_9:
  value = 0;
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_23:
  if (xpc_get_type(v8) != &_xpc_type_uuid)
  {
LABEL_24:
    v18 = 0;
    goto LABEL_34;
  }

  v19 = xpc_uuid_get_bytes(v8);
  memset(buf, 0, 37);
  uuid_unparse(v19, buf);
  v18 = [[NSUUID alloc] initWithUUIDBytes:v19];
  v20 = NEHelperCacheCopySigningIdentifierMapping();
  v21 = v20;
  if (v20 && xpc_get_type(v20) == &_xpc_type_string)
  {
    v23 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v21)];
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *out = 138412546;
      *&out[4] = v23;
      *&out[12] = 2080;
      *&out[14] = buf;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "LocalNetwork: found bundle id %@ by UUID %s", out, 0x16u);
    }

    v22 = v11;
  }

  else
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *out = 136315138;
      *&out[4] = buf;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "LocalNetwork: did not find bundle ID for UUID %s", out, 0xCu);
    }

    v23 = v11;
  }

  v11 = v23;
LABEL_34:
  v25 = ne_log_obj();
  v26 = v25;
  if (v11)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v11;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Found bundle ID: %@", buf, 0xCu);
    }

    v26 = +[NEConfigurationManager sharedManager];
    [v26 showLocalNetworkAlertForApp:v11 pid:value uuid:v18 query:0 hasEntitlement:0 completionQueue:*(a1 + 32) handler:&stru_83C8];
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Failed to find bundle ID, ignoring", buf, 2u);
  }
}

void sub_1BF4(id a1, BOOL a2)
{
  v2 = a2;
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Prompt response says: %u", v4, 8u);
  }
}

void init_networkextension()
{
  v0 = ne_log_obj();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v0, OS_LOG_TYPE_DEFAULT, "Initializing NetworkExtension event agent plugin", buf, 2u);
  }

  out_token = -1;
  v1 = notify_register_check("com.apple.networkextension.disable-restrictions", &out_token);
  if (v1)
  {
    v2 = v1;
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "com.apple.networkextension.disable-restrictions";
      v19 = 1024;
      v20 = v2;
      _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Failed to register for the %s notification: %u", buf, 0x12u);
    }
  }

  out_token = -1;
  v4 = notify_register_check("com.apple.networkextension.fallback-default", &out_token);
  if (v4)
  {
    v5 = v4;
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "com.apple.networkextension.fallback-default";
      v19 = 1024;
      v20 = v5;
      _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Failed to register for the %s notification: %u", buf, 0x12u);
    }
  }

  out_token = -1;
  v7 = notify_register_check("com.apple.networkextension.disable-nexus", &out_token);
  if (v7)
  {
    v8 = v7;
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "com.apple.networkextension.disable-nexus";
      v19 = 1024;
      v20 = v8;
      _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Failed to register for the %s notification: %u", buf, 0x12u);
    }
  }

  out_token = -1;
  v10 = notify_register_check("com.apple.networkextension.uuidcache", &out_token);
  if (v10)
  {
    v11 = v10;
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "com.apple.networkextension.uuidcache";
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Failed to register for the %s notification: %u", buf, 0x12u);
    }
  }

  out_token = -1;
  v13 = notify_register_check("com.apple.networkextension.apps-have-local-network-entitlements", &out_token);
  if (v13)
  {
    v14 = v13;
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "com.apple.networkextension.apps-have-local-network-entitlements";
      v19 = 1024;
      v20 = v14;
      _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Failed to register for the %s notification: %u", buf, 0x12u);
    }
  }

  NEUserEventAgentNetworkDetectionStart();
  NEFileHandleMaintainerStart();
  NENetworkRelayMonitorStart();
  NEUserEventAgentNetworkBlockedObserverStart();
}

void NEFileHandleMaintainerStart()
{
  sub_234C();
  if (objc_claimAutoreleasedReturnValue())
  {
    v0 = @"com.apple.networkextension.file-descriptor-maintainer";
    v1 = @"com.apple.networkextension.file-descriptor-maintainer";
    [@"com.apple.networkextension.file-descriptor-maintainer" UTF8String];
    xpc_event_provider_create();
  }
}

void NEUserEventAgentNetworkDetectionStart()
{
  v1 = sub_D6C();
  v0 = @"com.apple.networkextension.network-detection";
  if (v1)
  {
    [(__CFString *)@"com.apple.networkextension.network-detection" UTF8String];
    xpc_event_provider_create();
  }
}

void NEUserEventAgentNetworkBlockedObserverStart()
{
  objc_opt_self();
  if (qword_8AA8 != -1)
  {
    dispatch_once(&qword_8AA8, &stru_8388);
  }

  v4 = qword_8AA0;
  if (v4)
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v1 = dispatch_queue_create("NEUserEventAgentNetworkBlockedObserver", v0);

    v2 = +[NEConfigurationManager sharedManager];
    [v2 repopulateNetworkPrivacyConfigurationResetAll:0];

    v3 = v1;
    v4[1] = network_config_local_network_blocked_observer_create();
  }
}

id sub_234C()
{
  objc_opt_self();
  if (qword_8AB8 != -1)
  {
    dispatch_once(&qword_8AB8, &stru_8430);
  }

  v0 = qword_8AB0;

  return v0;
}

void sub_23A4(id a1)
{
  qword_8AB0 = objc_alloc_init(NEUserEventAgentFileHandleMaintainer);

  _objc_release_x1();
}

void sub_23E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = sub_234C();
  v6 = v5;
  if (v11)
  {
    v7 = v11;
    objc_sync_enter(v7);
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v13 = a1;
      v14 = 2048;
      v15 = a2;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "File Handle Maintainer got a %ld action with token %llu", buf, 0x16u);
    }

    if (a1 == 1)
    {
      *(v7 + 3) = a2;
      int64 = xpc_dictionary_get_int64(v6, "nesm-pid");
      if (int64 >= 1)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v13) = int64;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Got nesessionmanager pid %d", buf, 8u);
        }

        sub_25E8(v7, int64);
        sub_294C(v7);
      }

      [v7 resetFileHandlesFromEvent:v6];
      sub_2A2C(v7);
      *(v7 + 8) = 1;
    }

    objc_sync_exit(v7);
  }
}

void sub_25E8(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = *(a1 + 32);
    if (v4 && (v5 = v4, handle = dispatch_source_get_handle(*(a1 + 32)), v5, handle == a2))
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Not setting the PID state because the PID didn't change", buf, 2u);
      }
    }

    else
    {
      if (*(a1 + 12) == -1 && notify_register_check("com.apple.nesessionmanager", (a1 + 12)))
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v20 = "com.apple.nesessionmanager";
          _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to register for the %s notification", buf, 0xCu);
        }

        *(a1 + 12) = -1;
      }

      v9 = *(a1 + 12);
      if (v9 != -1)
      {
        v10 = notify_set_state(v9, a2);
        if (v10)
        {
          v11 = v10;
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v20 = "com.apple.nesessionmanager";
            v21 = 1024;
            v22 = v11;
            _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Failed to set the %s notification state: %u", buf, 0x12u);
          }

          notify_cancel(*(a1 + 12));
          *(a1 + 12) = -1;
        }
      }

      v13 = notify_post("com.apple.nesessionmanager");
      if (v13)
      {
        v14 = v13;
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "com.apple.nesessionmanager";
          v21 = 1024;
          v22 = v14;
          _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Failed to post the %s notification: %u", buf, 0x12u);
        }
      }

      v16 = *(a1 + 32);
      if (v16)
      {
        dispatch_source_cancel(v16);
        v17 = *(a1 + 32);
        *(a1 + 32) = 0;
      }

      if (a2 >= 1)
      {
        v18 = *(a1 + 16);
        xpc_event_provider_get_queue();
      }
    }
  }
}

void sub_294C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 8))
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Sending file handles to nesessionmanager", v5, 2u);
      }

      [v1 createEvent];
      objc_claimAutoreleasedReturnValue();
      v3 = *(v1 + 2);
      v4 = *(v1 + 3);
      xpc_event_provider_token_fire();
    }

    objc_sync_exit(v1);
  }
}

void sub_2A2C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_2AD4;
    v2[3] = &unk_84A8;
    v2[4] = v1;
    [v1 iterateFileHandlesWithBlock:v2];
    objc_sync_exit(v1);
  }
}

uint64_t sub_2AD4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 launchOwnerWhenReadable])
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "File Handle Maintainer listening for readable events on %@", buf, 0xCu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_2C0C;
    v9[3] = &unk_8480;
    v5 = v3;
    v6 = *(a1 + 32);
    v10 = v5;
    v11 = v6;
    v7 = [v5 handle];
    [v7 setReadabilityHandler:v9];
  }

  return 1;
}

void sub_2C0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "File Handle Maintainer got a readable event on %@, launching owner", buf, 0xCu);
  }

  [v3 setReadabilityHandler:0];
  dispatch_time(0, 1000000000);
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  xpc_event_provider_get_queue();
}

void sub_2D80(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "nesessionmanager(%d) exited", v8, 8u);
  }

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  sub_25E8(*(a1 + 32), 0);
  if ((ne_session_manager_has_active_sessions() & 1) != 0 || (ne_session_dns_proxy_configs_present() & 1) != 0 || (ne_session_content_filter_configs_present() & 1) != 0 || (ne_session_always_on_vpn_configs_present() & 1) != 0 || ne_session_local_communication_configs_present())
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "nesessionmanager exited with active sessions, re-launching nesessionmanager to clear agent status", v8, 2u);
    }

    sub_294C(*(a1 + 32));
    v6 = sub_D6C();
    if (v6)
    {
      v7 = *(v6 + 16);
      xpc_event_provider_get_queue();
    }
  }

  objc_sync_exit(v4);
}

BOOL sub_2F6C(id a1, NEFileHandle *a2)
{
  v2 = a2;
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "    %@", &v5, 0xCu);
  }

  return 1;
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_get_queue()
{
    ;
  }
}

void xpc_event_provider_token_fire()
{
    ;
  }
}