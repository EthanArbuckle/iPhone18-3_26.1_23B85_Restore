void alm_app_will_launch_with_signpost_id(uint64_t a1, int a2, const char *a3, const char *a4, uint64_t a5, os_signpost_id_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  alm_build_version_string(__dst, a3, a4);
  v10 = alm_FrontBoard_lifecycle_log_s_log;
  if (!alm_FrontBoard_lifecycle_log_s_log)
  {
    v10 = os_log_create("com.apple.FrontBoard", "AppLaunch");
    alm_FrontBoard_lifecycle_log_s_log = v10;
  }

  v11 = a6 - 1;
  if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v12 = "YES";
    v15 = 136446722;
    *v16 = a1;
    if (a2)
    {
      v12 = "NO";
    }

    *&v16[8] = 2082;
    *&v16[10] = v12;
    *&v16[18] = 2050;
    *&v16[20] = a5;
    _os_signpost_emit_with_name_impl(&dword_1D842D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, a6, "AppLaunch", "TransitionSource=%{public, signpost.telemetry:string1}s IsForeground=%{public, signpost.telemetry:string2}s %{public, signpost.description:begin_time}llu enableTelemetry=YES ", &v15, 0x20u);
  }

  v13 = alm_application_launch_log_s_log;
  if (!alm_application_launch_log_s_log)
  {
    v13 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
    alm_application_launch_log_s_log = v13;
  }

  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = 67240706;
    *v16 = a2 ^ 1;
    *&v16[4] = 2082;
    *&v16[6] = __dst;
    *&v16[14] = 2050;
    *&v16[16] = a5;
    _os_signpost_emit_with_name_impl(&dword_1D842D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, a6, "ApplicationFirstFramePresentation", "IsForeground=%{public, signpost.telemetry:number1}d AppVersion=%{public, signpost.telemetry:string1}s %{public, signpost.description:begin_time}llu", &v15, 0x1Cu);
    v13 = alm_application_launch_log_s_log;
  }

  if (!v13)
  {
    v13 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
    alm_application_launch_log_s_log = v13;
  }

  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = 67240706;
    *v16 = a2 ^ 1;
    *&v16[4] = 2082;
    *&v16[6] = __dst;
    *&v16[14] = 2050;
    *&v16[16] = a5;
    _os_signpost_emit_with_name_impl(&dword_1D842D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, a6, "ApplicationFirstFramePresentationResponsive", "IsForeground=%{public, signpost.telemetry:number1}d AppVersion=%{public, signpost.telemetry:string1}s %{public, signpost.description:begin_time}llu", &v15, 0x1Cu);
    v13 = alm_application_launch_log_s_log;
  }

  if (!v13)
  {
    v13 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
    alm_application_launch_log_s_log = v13;
  }

  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = 67240706;
    *v16 = a2 ^ 1;
    *&v16[4] = 2082;
    *&v16[6] = __dst;
    *&v16[14] = 2050;
    *&v16[16] = a5;
    _os_signpost_emit_with_name_impl(&dword_1D842D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, a6, "ApplicationLaunchExtendedResponsive", "IsForeground=%{public, signpost.telemetry:number1}d AppVersion=%{public, signpost.telemetry:string1}s %{public, signpost.description:begin_time}llu", &v15, 0x1Cu);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void alm_app_will_launch_with_details_and_metrics_payload(const char *a1, int a2, const char *a3, const char *a4, const char *a5, uint64_t a6, os_signpost_id_t *a7, xpc_object_t *a8)
{
  v16 = alm_FrontBoard_lifecycle_log_s_log;
  if (!alm_FrontBoard_lifecycle_log_s_log)
  {
    v16 = os_log_create("com.apple.FrontBoard", "AppLaunch");
    alm_FrontBoard_lifecycle_log_s_log = v16;
  }

  v17 = os_signpost_id_generate(v16);
  value = a6;
  alm_app_will_launch_with_signpost_id(a1, a2, a3, a4, a6, v17);
  *a7 = v17;
  if (a8)
  {
    v28 = a5;
    v18 = nw_activity_create();
    v19 = nw_activity_create();
    nw_activity_activate();
    nw_activity_activate();
    *a8 = xpc_dictionary_create(0, 0, 0);
    v20 = nw_activity_copy_xpc_object();
    v21 = nw_activity_copy_xpc_object();
    xpc_dictionary_set_value(*a8, "appLaunchActivity", v20);
    xpc_dictionary_set_value(*a8, "extendedAppLaunchActivity", v21);
    nw_release(v18);
    nw_release(v19);
    xpc_release(v20);
    xpc_release(v21);
    v22 = alm_general_log_s_log;
    if (!alm_general_log_s_log)
    {
      v22 = os_log_create("com.apple.app_launch_measurement", "General");
      alm_general_log_s_log = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      alm_app_will_launch_with_details_and_metrics_payload_cold_1();
    }

    if (_os_feature_enabled_impl())
    {
      if (!*a8)
      {
        *a8 = xpc_dictionary_create(0, 0, 0);
      }

      if ((os_variant_has_internal_content() & 1) == 0 && (!v28 || strncmp(v28, "com.apple.", 0xAuLL)))
      {
        if (alm_ca_hit_3rd_party_bundle_capture_limit_per_day())
        {
          v24 = alm_general_log_s_log;
          if (!alm_general_log_s_log)
          {
            v24 = os_log_create("com.apple.app_launch_measurement", "General");
            alm_general_log_s_log = v24;
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            alm_app_will_launch_with_details_and_metrics_payload_cold_4(v24);
          }

LABEL_41:
          xpc_dictionary_set_BOOL(*a8, "should_capture_launch", 0);
          return;
        }

        arc4random_stir();
        if (-1431655765 * arc4random() >= 0x55555556)
        {
          v25 = alm_general_log_s_log;
          if (!alm_general_log_s_log)
          {
            v25 = os_log_create("com.apple.app_launch_measurement", "General");
            alm_general_log_s_log = v25;
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            alm_app_will_launch_with_details_and_metrics_payload_cold_2(v28, v25);
          }

          goto LABEL_41;
        }

        ++_MergedGlobals;
        v26 = alm_general_log_s_log;
        if (!alm_general_log_s_log)
        {
          v26 = os_log_create("com.apple.app_launch_measurement", "General");
          alm_general_log_s_log = v26;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          alm_app_will_launch_with_details_and_metrics_payload_cold_3(v28, v26);
        }
      }

      xpc_dictionary_set_BOOL(*a8, "should_capture_launch", 1);
      s_ca_metrics = 0;
      qword_1ED6BD6CC = 0;
      word_1ED6BD6C9 = 0;
      xmmword_1ED6BD6D8 = 0u;
      *&qword_1ED6BD6E8 = 0u;
      unk_1ED6BD6F1 = 0u;
      qword_1ED6BD708 = 0;
      *&qword_1ED6BD710 = 0u;
      byte_1ED6BD720 = 0;
      xmmword_1ED6BD728 = 0u;
      byte_1ED6BD738 = 0;
      xmmword_1ED6BD740 = 0u;
      dword_1ED6BD750 = 0;
      if (a1)
      {
        xpc_dictionary_set_string(*a8, "transition_source", a1);
      }

      if (a3)
      {
        xpc_dictionary_set_string(*a8, "bundle_version", a3);
      }

      if (a4)
      {
        xpc_dictionary_set_string(*a8, "bundle_short_version_string", a4);
      }

      if (v28)
      {
        xpc_dictionary_set_string(*a8, "bundle_id", v28);
      }

      if (v17)
      {
        xpc_dictionary_set_uint64(*a8, "launch_id", v17);
      }

      xpc_dictionary_set_BOOL(*a8, "is_background", a2);
      xpc_dictionary_set_uint64(*a8, "launch_begin_time", value);
      s_payload_metrics = *a8;
      *&xmmword_1ED6BD6D8 = v17;
      xpc_dictionary_set_uint64(s_payload_metrics, "shared_cache_cryptex_ext_count", alm_app_will_launch_with_details_and_metrics_payload_shared_cache_cryptex_count);
      if (_os_feature_enabled_impl() && alm_app_will_launch_with_details_and_metrics_payload_dispatch_token != -1)
      {
        alm_app_will_launch_with_details_and_metrics_payload_cold_5();
      }

      xpc_dictionary_set_uint64(*a8, "file_system_months", alm_app_will_launch_with_details_and_metrics_payload_num_months_since_last_erase_install);
      v23 = alm_general_log_s_log;
      if (!alm_general_log_s_log)
      {
        v23 = os_log_create("com.apple.app_launch_measurement", "General");
        alm_general_log_s_log = v23;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        alm_app_will_launch_with_details_and_metrics_payload_cold_6();
      }
    }
  }
}

size_t alm_build_version_string(char *__dst, const char *a2, const char *a3)
{
  if (a2)
  {
    strlcpy(__dst, a2, 0x101uLL);
  }

  else
  {
    *__dst = 0x4E574F4E4B4E55;
  }

  strlcat(__dst, "(", 0x203uLL);
  if (a3)
  {
    v5 = strlen(__dst);
    strlcat(__dst, a3, v5 + 257);
  }

  else
  {
    *&__dst[strlen(__dst)] = 0x4E574F4E4B4E55;
  }

  return strlcat(__dst, ")", 0x203uLL);
}

void alm_app_will_activate_with_signpost_id(uint64_t a1, int a2, const char *a3, const char *a4, uint64_t a5, os_signpost_id_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  alm_build_version_string(__dst, a3, a4);
  v9 = _os_feature_enabled_impl();
  if (a6 && v9)
  {
    v10 = xmmword_1ED6BD6D8 != a6 || s_payload_metrics == 0;
    if (!v10 && MEMORY[0x1DA718120]() == MEMORY[0x1E69E9E80])
    {
      xpc_dictionary_set_uint64(s_payload_metrics, "activation_time", a5);
    }
  }

  v11 = alm_application_launch_log_s_log;
  if (!alm_application_launch_log_s_log)
  {
    v11 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
    alm_application_launch_log_s_log = v11;
  }

  if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v12 = "YES";
    v16 = __dst;
    v15 = 136446722;
    if (a2)
    {
      v12 = "NO";
    }

    v17 = 2082;
    v18 = v12;
    v19 = 2050;
    v20 = a5;
    _os_signpost_emit_with_name_impl(&dword_1D842D000, v11, OS_SIGNPOST_INTERVAL_BEGIN, a6, "ApplicationActivationFirstFramePresentation", "AppVersion=%{public, signpost.telemetry:string1}s IsForeground=%{public, signpost.telemetry:string2}s %{public, signpost.description:begin_time}llu", &v15, 0x20u);
    v11 = alm_application_launch_log_s_log;
  }

  if (!v11)
  {
    v11 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
    alm_application_launch_log_s_log = v11;
  }

  if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = "YES";
    v16 = __dst;
    v15 = 136446722;
    if (a2)
    {
      v13 = "NO";
    }

    v17 = 2082;
    v18 = v13;
    v19 = 2050;
    v20 = a5;
    _os_signpost_emit_with_name_impl(&dword_1D842D000, v11, OS_SIGNPOST_INTERVAL_BEGIN, a6, "ApplicationActivationFirstFramePresentationResponsive", "AppVersion=%{public, signpost.telemetry:string1}s IsForeground=%{public, signpost.telemetry:string2}s %{public, signpost.description:begin_time}llu", &v15, 0x20u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void alm_app_did_present_with_metrics_payload(os_signpost_id_t a1, void *a2, int a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = _os_feature_enabled_impl();
  v9 = MEMORY[0x1E69E9E80];
  if (a2 && v8 && MEMORY[0x1DA718120](a2) == v9 && xpc_dictionary_get_BOOL(a2, "should_capture_launch"))
  {
    string = xpc_dictionary_get_string(a2, "bundle_id");
    xpc_dictionary_get_string(a2, "transition_source");
    xpc_dictionary_get_string(a2, "bundle_version");
    xpc_dictionary_get_string(a2, "bundle_short_version_string");
    if (a1 && xmmword_1ED6BD6D8 != a1)
    {
      qword_1ED6BD6CC = 0;
      word_1ED6BD6C9 = 0;
      xmmword_1ED6BD6D8 = 0u;
      *&qword_1ED6BD6E8 = 0u;
      unk_1ED6BD6F1 = 0u;
      qword_1ED6BD708 = 0;
      *&qword_1ED6BD710 = 0u;
      byte_1ED6BD720 = 0;
      xmmword_1ED6BD728 = 0u;
      byte_1ED6BD738 = 0;
      xmmword_1ED6BD740 = 0u;
      dword_1ED6BD750 = 0;
    }

    s_ca_metrics = 1;
    HIBYTE(dword_1ED6BD750) = 1;
    if (string && strnlen(string, 0x80uLL) > 4 || alm_retreive_process_name(byte_1ED6BD5C9, 0x100uLL))
    {
      __strlcpy_chk();
    }

    __strlcpy_chk();
    __strlcpy_chk();
    __strlcpy_chk();
    LOBYTE(word_1ED6BD6C9) = xpc_dictionary_get_BOOL(a2, "is_background");
    *(&xmmword_1ED6BD6D8 + 1) = xpc_dictionary_get_uint64(a2, "launch_begin_time");
    *&xmmword_1ED6BD6D8 = xpc_dictionary_get_uint64(a2, "launch_id");
    qword_1ED6BD708 = xpc_dictionary_get_uint64(a2, "activation_time");
    *&xmmword_1ED6BD740 = xpc_dictionary_get_uint64(a2, "shared_cache_cryptex_ext_count");
    *(&xmmword_1ED6BD740 + 1) = xpc_dictionary_get_uint64(a2, "file_system_months");
  }

  s_frontboard_launch_signpost_id = a1;
  s_alm_launch_signpost_id = a1;
  v11 = _alm_build_launch_info();
  if (_os_feature_enabled_impl() && s_ca_metrics == 1)
  {
    LODWORD(qword_1ED6BD6CC) = v11;
    unk_1ED6BD6F0 = mach_continuous_time();
    v12 = dispatch_time(0, 20000000000);
    dispatch_after(v12, MEMORY[0x1E69E96A0], &__block_literal_global_86);
  }

  v13 = alm_application_launch_log_s_log;
  if (!alm_application_launch_log_s_log)
  {
    v13 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
    alm_application_launch_log_s_log = v13;
  }

  v14 = a1 - 1;
  if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LODWORD(buf.ru_utime.tv_sec) = 67240192;
    HIDWORD(buf.ru_utime.tv_sec) = v11;
    _os_signpost_emit_with_name_impl(&dword_1D842D000, v13, OS_SIGNPOST_INTERVAL_END, a1, "ApplicationFirstFramePresentation", "LaunchInfo=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", &buf, 8u);
  }

  if (s_ca_metrics == 1 && os_variant_has_internal_content())
  {
    memset(&buf, 0, sizeof(buf));
    if (getrusage(0, &buf) >= 0)
    {
      ru_majflt = buf.ru_majflt;
    }

    else
    {
      ru_majflt = 0;
    }

    v16 = alm_application_launch_log_s_log;
    if (!alm_application_launch_log_s_log)
    {
      v16 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
      alm_application_launch_log_s_log = v16;
    }

    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LODWORD(buf.ru_utime.tv_sec) = 67240448;
      HIDWORD(buf.ru_utime.tv_sec) = word_1ED6BD6C9 ^ 1;
      LOWORD(buf.ru_utime.tv_usec) = 2050;
      *(&buf.ru_utime.tv_usec + 2) = ru_majflt;
      _os_signpost_emit_with_name_impl(&dword_1D842D000, v16, OS_SIGNPOST_EVENT, a1, "ApplicationLaunchPageInCount", "IsForeground=%{public, signpost.telemetry:number1}d PageInCount=%{public, signpost.telemetry:number2}llu", &buf, 0x12u);
    }

    kdebug_trace();
  }

  v17 = v9;
  alm_did_reach_launch_milestone(1);
  if (s_launch_task_count)
  {
    v18 = 1;
  }

  else
  {
    v18 = a3;
  }

  if (_os_feature_enabled_impl())
  {
    HIBYTE(word_1ED6BD6C9) = v18;
  }

  if (!a2)
  {
    v19 = 0;
    if (v18)
    {
      goto LABEL_42;
    }

LABEL_57:
    if (_os_feature_enabled_impl())
    {
      qword_1ED6BD6E8 = mach_continuous_time();
    }

    alm_did_reach_launch_milestone(12);
    goto LABEL_60;
  }

  if (MEMORY[0x1DA718120](a2) == v17)
  {
    value = xpc_dictionary_get_value(a2, "appLaunchActivity");
    v23 = xpc_retain(value);
    v24 = xpc_dictionary_get_value(a2, "extendedAppLaunchActivity");
    v25 = xpc_retain(v24);
    a2 = nw_activity_create_from_xpc_object();
    v19 = nw_activity_create_from_xpc_object();
    nw_activity_set_global_parent();
    xpc_release(v23);
    xpc_release(v25);
    if (v18)
    {
      goto LABEL_42;
    }

    goto LABEL_57;
  }

  v19 = 0;
  a2 = 0;
  if (!v18)
  {
    goto LABEL_57;
  }

LABEL_42:
  v20 = uikit_app_lifecycle_log_s_log;
  if (!uikit_app_lifecycle_log_s_log)
  {
    v20 = os_log_create("com.apple.UIKit", "AppLifecycle");
    uikit_app_lifecycle_log_s_log = v20;
  }

  if (os_signpost_enabled(v20))
  {
    LOWORD(buf.ru_utime.tv_sec) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D842D000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExtendedAppLaunch", " enableTelemetry=YES ", &buf, 2u);
  }

  if ((s_launch_milestones & 4) != 0)
  {
    if (_os_feature_enabled_impl())
    {
      *&xmmword_1ED6BD728 = mach_continuous_time();
    }

    v21 = alm_application_launch_log_s_log;
    if (!alm_application_launch_log_s_log)
    {
      v21 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
      alm_application_launch_log_s_log = v21;
    }

    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      LOWORD(buf.ru_utime.tv_sec) = 0;
      _os_signpost_emit_with_name_impl(&dword_1D842D000, v21, OS_SIGNPOST_INTERVAL_BEGIN, a1, "ApplicationLaunchExtendedOnlyResponsive", "", &buf, 2u);
    }
  }

  if (_os_feature_enabled_impl())
  {
    qword_1ED6BD6E8 = mach_continuous_time();
  }

LABEL_60:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v27[2] = __alm_app_did_present_with_metrics_payload_block_invoke_2;
  v27[3] = &unk_1E8515FC8;
  v29 = v18;
  v27[6] = a2;
  v27[7] = v19;
  v28 = v11;
  v27[4] = a4;
  v27[5] = a1;
  alm_execute_when_main_queue_idle_with_condition(&__block_literal_global_39, v27);
  v26 = *MEMORY[0x1E69E9840];
}

uint64_t _alm_build_launch_info()
{
  v7.tv_sec = 0;
  v7.tv_nsec = 0;
  v0 = clock_gettime(_CLOCK_MONOTONIC_RAW_APPROX, &v7);
  tv_sec = v7.tv_sec;
  v2 = _dyld_launch_mode();
  v3 = v2 & 7 | (8 * ((v2 >> 4) & 1));
  v4 = tv_sec / 10.0;
  if (v0)
  {
    v4 = 0.0;
  }

  v5 = llround(log2(ceil(v4)));
  if (v5 >= 15)
  {
    v5 = 15;
  }

  return v3 | (32 * v5);
}

void alm_did_reach_launch_milestone(int a1)
{
  s_launch_milestones &= ~a1;
  if (_os_feature_enabled_impl())
  {
    ca_send_event_from_reached_milestone = alm_get_ca_send_event_from_reached_milestone(a1);
    if (ca_send_event_from_reached_milestone != 2)
    {
      v3 = ca_send_event_from_reached_milestone;
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __alm_did_reach_launch_milestone_block_invoke;
      block[3] = &__block_descriptor_tmp_50;
      v8 = v3;
      dispatch_async(global_queue, block);
    }
  }

  v5 = s_measurement_complete_handler;
  if ((s_launch_milestones & 0xF) == 0 && s_measurement_complete_handler != 0)
  {
    s_measurement_complete_handler = 0;
    v5[2](v5);
    _Block_release(v5);
  }
}

void __alm_execute_when_main_queue_idle_with_condition_block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = (*(*(a1 + 32) + 16))();
  if (v2 > 0x1F4)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v4)
  {
    if (v2 >= 0x1F5)
    {
      v5 = alm_general_log_s_log;
      if (!alm_general_log_s_log)
      {
        v5 = os_log_create("com.apple.app_launch_measurement", "General");
        alm_general_log_s_log = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D842D000, v5, OS_LOG_TYPE_DEFAULT, "Bailing responsive launch check as reached maximum count", buf, 2u);
      }
    }

    goto LABEL_13;
  }

  if (*(*(*(a1 + 56) + 8) + 24) > 9u)
  {
    v6 = *(*(*(a1 + 64) + 8) + 24);
LABEL_13:
    (*(*(a1 + 40) + 16))();
    _Block_release(*(*(*(a1 + 72) + 8) + 40));
    *(*(*(a1 + 72) + 8) + 40) = 0;
    return;
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  v7 = mach_continuous_time();
  v8 = v7;
  v9 = *(*(a1 + 56) + 8);
  if ((v7 - *(*(*(a1 + 80) + 8) + 24)) * *(a1 + 88) / *(a1 + 92) > 0x7A11FF)
  {
    *(v9 + 24) = 0;
    *(*(*(a1 + 64) + 8) + 24) = v7;
    v10 = alm_general_log_s_log;
    if (!alm_general_log_s_log)
    {
      v10 = os_log_create("com.apple.app_launch_measurement", "General");
      alm_general_log_s_log = v10;
    }

    if (!os_signpost_enabled(v10))
    {
      goto LABEL_24;
    }

    v14 = 0;
    v11 = "ResponsiveCheckFailed";
    v12 = &v14;
  }

  else
  {
    ++*(v9 + 24);
    v10 = alm_general_log_s_log;
    if (!alm_general_log_s_log)
    {
      v10 = os_log_create("com.apple.app_launch_measurement", "General");
      alm_general_log_s_log = v10;
    }

    if (!os_signpost_enabled(v10))
    {
      goto LABEL_24;
    }

    v15 = 0;
    v11 = "ResponsiveCheckSucceeded";
    v12 = &v15;
  }

  _os_signpost_emit_with_name_impl(&dword_1D842D000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v11, "", v12, 2u);
LABEL_24:
  *(*(*(a1 + 80) + 8) + 24) = v8;
  v13 = dispatch_time(0, 3000000);
  dispatch_after(v13, MEMORY[0x1E69E96A0], *(*(*(a1 + 72) + 8) + 40));
}

uint64_t alm_get_ca_send_event_from_reached_milestone(int a1)
{
  if (!_os_feature_enabled_impl() || s_ca_metrics != 1 || HIBYTE(dword_1ED6BD750) != 1)
  {
    return 2;
  }

  result = 2;
  if (a1 > 7)
  {
    if (a1 != 8 && a1 != 10)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      return result;
    }

LABEL_12:
    if ((s_launch_milestones & 0xA) == 0 && (dword_1ED6BD750 & 0x100) == 0)
    {
      result = 1;
      BYTE1(dword_1ED6BD750) = 1;
    }

    return result;
  }

  if ((dword_1ED6BD750 & 1) == 0)
  {
    result = 0;
    LOBYTE(dword_1ED6BD750) = 1;
  }

  return result;
}

void alm_aggregate_and_send_ca_measurement_event(uint64_t a1, unsigned int a2)
{
  if (a1 && a2 <= 1 && (*(a1 + 779) & 1) != 0 && strnlen((a1 + 385), 0x80uLL) >= 5)
  {
    v3 = a2 ? "com.apple.app_launch_measurement.ExtendedLaunchMetrics" : "com.apple.app_launch_measurement.FirstFramePresentationMetric";
    if ((analytics_send_event_lazy() & 1) == 0)
    {
      v4 = alm_general_log_s_log;
      if (!alm_general_log_s_log)
      {
        v4 = os_log_create("com.apple.app_launch_measurement", "General");
        alm_general_log_s_log = v4;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        alm_aggregate_and_send_ca_measurement_event_cold_1(v3, a2, v4);
      }
    }
  }
}

void alm_app_will_activate_with_details(uint64_t a1, int a2, const char *a3, const char *a4, uint64_t a5, os_signpost_id_t *a6)
{
  v11 = alm_application_launch_log_s_log;
  if (!alm_application_launch_log_s_log)
  {
    v11 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
    alm_application_launch_log_s_log = v11;
  }

  v12 = os_signpost_id_generate(v11);
  alm_app_will_activate_with_signpost_id(v12, a2, a3, a4, a5, v12);
  *a6 = v12;
}

void alm_execute_when_main_queue_idle_with_condition(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    alm_execute_when_main_queue_idle_with_condition_cold_1();
  }

  info = 0;
  mach_timebase_info(&info);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = mach_continuous_time();
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v17[3] = v19[3];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3002000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __alm_execute_when_main_queue_idle_with_condition_block_invoke;
  aBlock[3] = &unk_1E8516110;
  aBlock[6] = v13;
  aBlock[7] = v15;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[8] = v17;
  aBlock[9] = &v7;
  aBlock[10] = &v18;
  aBlock[11] = info;
  v4 = _Block_copy(aBlock);
  v8[5] = v4;
  v5 = dispatch_time(0, 3000000);
  dispatch_after(v5, MEMORY[0x1E69E96A0], v8[5]);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v18, 8);
}

void alm_app_did_activate_with_responsive_check(os_signpost_id_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    qword_1ED6BD710 = mach_continuous_time();
    HIDWORD(qword_1ED6BD6CC) = a2;
  }

  if ((a2 & 2) != 0)
  {
    v7 = _alm_build_launch_info();
    v8 = alm_application_launch_log_s_log;
    if (!alm_application_launch_log_s_log)
    {
      v8 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
      alm_application_launch_log_s_log = v8;
    }

    if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 67240448;
      v13 = a2;
      v14 = 1026;
      v15 = v7;
      _os_signpost_emit_with_name_impl(&dword_1D842D000, v8, OS_SIGNPOST_INTERVAL_END, a1, "ApplicationActivationFirstFramePresentation", "ActivationFlag=%{public, signpost.telemetry:number1}d LaunchInfo=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", buf, 0xEu);
    }

    if (_os_feature_enabled_impl())
    {
      LODWORD(qword_1ED6BD6CC) = v7;
    }
  }

  else
  {
    v6 = alm_application_launch_log_s_log;
    if (!alm_application_launch_log_s_log)
    {
      v6 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
      alm_application_launch_log_s_log = v6;
    }

    if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 67240192;
      v13 = a2;
      _os_signpost_emit_with_name_impl(&dword_1D842D000, v6, OS_SIGNPOST_INTERVAL_END, a1, "ApplicationActivationFirstFramePresentation", "ActivationFlag=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", buf, 8u);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __alm_app_did_activate_with_responsive_check_block_invoke_2;
  v10[3] = &unk_1E8516058;
  v11 = a2;
  v10[4] = a3;
  v10[5] = a1;
  alm_execute_when_main_queue_idle_with_condition(&__block_literal_global_48, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void alm_app_extended_launch_end_with_details(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = _os_feature_enabled_impl();
  if (a1 && v6)
  {
    if (xmmword_1ED6BD6D8 != a1)
    {
      qword_1ED6BD6CC = 0;
      word_1ED6BD6C9 = 256;
      byte_1ED6BD700 = 0;
      *(&xmmword_1ED6BD6D8 + 8) = 0u;
      unk_1ED6BD6F0 = 0u;
      qword_1ED6BD708 = 0;
      byte_1ED6BD720 = 0;
      *&qword_1ED6BD710 = 0u;
      xmmword_1ED6BD728 = 0u;
      byte_1ED6BD738 = 0;
      dword_1ED6BD750 = 0;
      xmmword_1ED6BD740 = 0u;
      *&xmmword_1ED6BD6D8 = a1;
      s_ca_metrics = 1;
    }

    qword_1ED6BD6E8 = mach_continuous_time();
  }

  alm_did_reach_launch_milestone(4);
  v7 = _alm_build_launch_info();
  if (a2)
  {
    if (MEMORY[0x1DA718120](a2) == MEMORY[0x1E69E9E80])
    {
      value = xpc_dictionary_get_value(a2, "extendedAppLaunchActivity");
      v9 = xpc_retain(value);
      a2 = nw_activity_create_from_xpc_object();
      xpc_release(v9);
    }

    else
    {
      a2 = 0;
    }
  }

  v10 = uikit_app_lifecycle_log_s_log;
  if (!uikit_app_lifecycle_log_s_log)
  {
    v10 = os_log_create("com.apple.UIKit", "AppLifecycle");
    uikit_app_lifecycle_log_s_log = v10;
  }

  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D842D000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ExtendedAppLaunch", " enableTelemetry=YES ", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __alm_app_extended_launch_end_with_details_block_invoke_2;
  v11[3] = &unk_1E8516010;
  v11[5] = a1;
  v11[6] = a2;
  v12 = v7;
  v11[4] = a3;
  alm_execute_when_main_queue_idle_with_condition(&__block_literal_global_44, v11);
}

void *__alm_aggregate_and_send_ca_measurement_event_block_invoke(uint64_t a1)
{
  v3 = 0;
  alm_generate_ca_payload_from_metrics_data(*(a1 + 32), *(a1 + 40), &v3);
  if (!v3)
  {
    v1 = alm_general_log_s_log;
    if (!alm_general_log_s_log)
    {
      v1 = os_log_create("com.apple.app_launch_measurement", "General");
      alm_general_log_s_log = v1;
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __alm_aggregate_and_send_ca_measurement_event_block_invoke_cold_1();
    }
  }

  return v3;
}

void alm_generate_ca_payload_from_metrics_data(uint64_t a1, int a2, void **a3)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v15 = alm_general_log_s_log;
    if (!alm_general_log_s_log)
    {
      v15 = os_log_create("com.apple.app_launch_measurement", "General");
      alm_general_log_s_log = v15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      alm_generate_ca_payload_from_metrics_data_cold_1();
    }

    goto LABEL_49;
  }

  *a3 = xpc_dictionary_create(0, 0, 0);
  bzero(string, 0x203uLL);
  v57 = 0u;
  v58 = 0u;
  *__str = 0u;
  v56 = 0u;
  alm_build_version_string(string, (a1 + 1), (a1 + 129));
  snprintf(__str, 0x40uLL, "%llu", *(a1 + 656));
  alm_decode_dyld_launch_info_into_dict(*(a1 + 644), *a3);
  xpc_dictionary_set_string(*a3, "transition_source", (a1 + 257));
  xpc_dictionary_set_string(*a3, "bundle_id", (a1 + 385));
  xpc_dictionary_set_string(*a3, "version_string", string);
  xpc_dictionary_set_uint64(*a3, "is_background", *(a1 + 641));
  xpc_dictionary_set_string(*a3, "launch_id", __str);
  xpc_dictionary_set_uint64(*a3, "launch_info", *(a1 + 644));
  if (_os_feature_enabled_impl())
  {
    v9 = *(a1 + 760);
    memset(&v54, 0, sizeof(v54));
    if (getrusage(0, &v54) >= 0)
    {
      ru_majflt = v54.ru_majflt;
    }

    else
    {
      ru_majflt = 0;
    }

    alm_get_disk_fullness_percentage();
    v12 = v11;
    xpc_dictionary_set_uint64(*a3, "shared_cache_cryptex_ext_count", v9);
    xpc_dictionary_set_uint64(*a3, "num_pagein_during_launch", ru_majflt);
    v13 = *(a1 + 768);
    if (v13 >= 7)
    {
      if (v13 >= 0xD)
      {
        if (v13 >= 0x13)
        {
          if (v13 >= 0x19)
          {
            if (v13 < 0x31)
            {
              v14 = 48;
            }

            else
            {
              v14 = 49;
            }
          }

          else
          {
            v14 = 24;
          }
        }

        else
        {
          v14 = 18;
        }
      }

      else
      {
        v14 = 12;
      }
    }

    else
    {
      v14 = 6;
    }

    xpc_dictionary_set_uint64(*a3, "file_system_months", v14);
    if (v12 <= 50.0)
    {
      *&v17 = 50.0;
    }

    else
    {
      if (v12 > 80.0)
      {
        if (v12 <= 90.0)
        {
          v16 = 90.0;
        }

        else
        {
          v16 = 95.0;
          if (v12 > 95.0)
          {
            v16 = 96.0;
          }
        }

        goto LABEL_30;
      }

      *&v17 = 80.0;
    }

    v16 = *&v17;
LABEL_30:
    xpc_dictionary_set_double(*a3, "disk_fullness_percentage", v16);
  }

  if (a2 == 1)
  {
    v23 = alm_mach_time_to_ns(*(a1 + 680), v6, v7, v8);
    v22 = v23 - alm_mach_time_to_ns(*(a1 + 664), v24, v25, v26);
    v30 = alm_mach_time_to_ns(*(a1 + 688), v27, v28, v29);
    v34 = (v30 - alm_mach_time_to_ns(*(a1 + 664), v31, v32, v33));
    v35 = v34 / 1000000.0;
    v38 = alm_mach_time_to_ns(*(a1 + 672), v34, v36, v37);
    v42 = (v38 - alm_mach_time_to_ns(*(a1 + 664), v39, v40, v41));
    v43 = v42 / 1000000.0;
    v46 = alm_mach_time_to_ns(*(a1 + 720), v42, v44, v45);
    v50 = alm_mach_time_to_ns(*(a1 + 664), v47, v48, v49);
    if (*(a1 + 728))
    {
      v51 = 0.0;
    }

    else
    {
      v51 = (v46 - v50) / 1000000.0;
    }

    if (*(a1 + 696))
    {
      v52 = 0.0;
    }

    else
    {
      v52 = v35;
    }

    if (*(a1 + 778) == 1)
    {
      if (!*(a1 + 688))
      {
        v52 = 20.0;
      }

      if (!*(a1 + 720))
      {
        v51 = 20.0;
      }

      if (!*(a1 + 672))
      {
        v43 = 20.0;
      }
    }

    xpc_dictionary_set_uint64(*a3, "activation_flags", *(a1 + 648));
    xpc_dictionary_set_double(*a3, "extended_responsive_time", v51);
    xpc_dictionary_set_double(*a3, "legacy_frontboard_launch_time", v43);
    xpc_dictionary_set_double(*a3, "first_frame_presentation_responsive_time", v52);
    goto LABEL_48;
  }

  if (!a2)
  {
    v18 = alm_mach_time_to_ns(*(a1 + 680), v6, v7, v8);
    v22 = v18 - alm_mach_time_to_ns(*(a1 + 664), v19, v20, v21);
LABEL_48:
    xpc_dictionary_set_double(*a3, "first_frame_presentation_time", v22 / 1000000.0);
  }

LABEL_49:
  v53 = *MEMORY[0x1E69E9840];
}

void alm_decode_dyld_launch_info_into_dict(unsigned int a1, void *a2)
{
  if (a2 && MEMORY[0x1DA718120](a2) == MEMORY[0x1E69E9E80])
  {
    v4 = 10 << (a1 >> 5);
    if (((a1 >> 5) & 0x1F) == 0)
    {
      v4 = 0;
    }

    xpc_dictionary_set_uint64(a2, "uptime", v4);
    xpc_dictionary_set_uint64(a2, "uptime_log", (a1 >> 5) & 0x1F);
    xpc_dictionary_set_uint64(a2, "using_closure", a1 & 1);
    xpc_dictionary_set_uint64(a2, "built_closure_at_launch", (a1 >> 1) & 1);
    xpc_dictionary_set_uint64(a2, "closure_saved_to_file", (a1 >> 2) & 1);

    xpc_dictionary_set_uint64(a2, "minimal_closure", (a1 >> 3) & 1);
  }
}

uint64_t alm_get_disk_fullness_percentage()
{
  v3 = *MEMORY[0x1E69E9840];
  bzero(&v2, 0x878uLL);
  result = statfs("/", &v2);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t alm_mach_time_to_ns(unint64_t a1, double a2, double a3, double a4)
{
  if (alm_mach_time_to_ns_onceToken != -1)
  {
    alm_mach_time_to_ns_cold_1();
  }

  LODWORD(a3) = alm_mach_time_to_ns_timebase_info;
  LODWORD(a4) = *algn_1ED6BD41C;
  return (*&a3 / *&a4 * a1);
}

void __alm_app_did_present_with_metrics_payload_block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = alm_application_launch_log_s_log;
  if (a2)
  {
    if (!alm_application_launch_log_s_log)
    {
      v4 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
      alm_application_launch_log_s_log = v4;
    }

    v5 = *(a1 + 40);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1D842D000, v4, OS_SIGNPOST_INTERVAL_END, v5, "ApplicationFirstFramePresentationResponsive", " BAILED=yes ", &v18, 2u);
    }

    if (_os_feature_enabled_impl())
    {
      qword_1ED6BD6F8 = mach_continuous_time();
      byte_1ED6BD700 = 1;
    }

    if (*(a1 + 48))
    {
      nw_activity_complete_with_reason();
    }

    if ((*(a1 + 68) & 1) == 0)
    {
      v6 = alm_application_launch_log_s_log;
      if (!alm_application_launch_log_s_log)
      {
        v6 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
        alm_application_launch_log_s_log = v6;
      }

      v7 = *(a1 + 40);
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        LOWORD(v18) = 0;
        _os_signpost_emit_with_name_impl(&dword_1D842D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "ApplicationLaunchExtendedResponsive", " BAILED=yes ", &v18, 2u);
      }

      if (_os_feature_enabled_impl())
      {
        qword_1ED6BD718 = mach_continuous_time();
        byte_1ED6BD720 = 1;
      }

      if (*(a1 + 56))
      {
LABEL_39:
        nw_activity_complete_with_reason();
      }
    }
  }

  else
  {
    if (!alm_application_launch_log_s_log)
    {
      v4 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
      alm_application_launch_log_s_log = v4;
    }

    v9 = *(a1 + 40);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      v10 = *(a1 + 64);
      v18 = 134218240;
      v19 = a3;
      v20 = 1026;
      v21 = v10;
      _os_signpost_emit_with_name_impl(&dword_1D842D000, v4, OS_SIGNPOST_INTERVAL_END, v9, "ApplicationFirstFramePresentationResponsive", "%{signpost.description:end_time}llu LaunchInfo=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", &v18, 0x12u);
    }

    if (*(a1 + 48))
    {
      nw_activity_complete_with_reason();
    }

    if (_os_feature_enabled_impl())
    {
      qword_1ED6BD6F8 = a3;
      byte_1ED6BD700 = 0;
    }

    if ((*(a1 + 68) & 1) == 0)
    {
      v11 = alm_application_launch_log_s_log;
      if (!alm_application_launch_log_s_log)
      {
        v11 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
        alm_application_launch_log_s_log = v11;
      }

      v12 = *(a1 + 40);
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        v13 = *(a1 + 64);
        v18 = 134218240;
        v19 = a3;
        v20 = 1026;
        v21 = v13;
        _os_signpost_emit_with_name_impl(&dword_1D842D000, v11, OS_SIGNPOST_INTERVAL_END, v12, "ApplicationLaunchExtendedResponsive", "%{signpost.description:end_time}llu LaunchInfo=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", &v18, 0x12u);
      }

      if (_os_feature_enabled_impl())
      {
        qword_1ED6BD718 = a3;
        byte_1ED6BD720 = 0;
      }

      if (*(a1 + 56))
      {
        goto LABEL_39;
      }
    }
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    nw_activity_set_global_parent();
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    nw_release(v14);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    nw_release(v15);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))();
  }

  alm_did_reach_launch_milestone(2);
  v17 = *MEMORY[0x1E69E9840];
}

void __alm_app_did_activate_with_responsive_check_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = alm_application_launch_log_s_log;
  if (a2)
  {
    if (!alm_application_launch_log_s_log)
    {
      v5 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
      alm_application_launch_log_s_log = v5;
    }

    v6 = *(a1 + 40);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v16) = 0;
      v7 = " BAILED=yes ";
      v8 = v5;
      v9 = v6;
      v10 = 2;
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_1D842D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "ApplicationActivationFirstFramePresentationResponsive", v7, &v16, v10);
    }
  }

  else
  {
    if (!alm_application_launch_log_s_log)
    {
      v5 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
      alm_application_launch_log_s_log = v5;
    }

    v12 = *(a1 + 40);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v13 = *(a1 + 48);
      v16 = 134218240;
      v17 = a3;
      v18 = 1026;
      v19 = v13;
      v7 = "%{signpost.description:end_time}llu ActivationFlag=%{public, signpost.telemetry:number1}d enableTelemetry=YES ";
      v8 = v5;
      v9 = v12;
      v10 = 18;
      goto LABEL_12;
    }
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, a2, a3, a4);
  }

  alm_did_reach_launch_milestone(16);
  v15 = *MEMORY[0x1E69E9840];
}

double alm_ca_metric_info_init()
{
  s_ca_metrics = 0;
  result = 0.0;
  qword_1ED6BD6CC = 0;
  word_1ED6BD6C9 = 0;
  xmmword_1ED6BD6D8 = 0u;
  *&qword_1ED6BD6E8 = 0u;
  unk_1ED6BD6F1 = 0u;
  qword_1ED6BD708 = 0;
  byte_1ED6BD720 = 0;
  *&qword_1ED6BD710 = 0u;
  xmmword_1ED6BD728 = 0u;
  byte_1ED6BD738 = 0;
  dword_1ED6BD750 = 0;
  xmmword_1ED6BD740 = 0u;
  return result;
}

os_log_t uikit_app_lifecycle_log()
{
  result = uikit_app_lifecycle_log_s_log;
  if (!uikit_app_lifecycle_log_s_log)
  {
    result = os_log_create("com.apple.UIKit", "AppLifecycle");
    uikit_app_lifecycle_log_s_log = result;
  }

  return result;
}

os_log_t alm_application_launch_log()
{
  result = alm_application_launch_log_s_log;
  if (!alm_application_launch_log_s_log)
  {
    result = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
    alm_application_launch_log_s_log = result;
  }

  return result;
}

os_log_t alm_FrontBoard_lifecycle_log()
{
  result = alm_FrontBoard_lifecycle_log_s_log;
  if (!alm_FrontBoard_lifecycle_log_s_log)
  {
    result = os_log_create("com.apple.FrontBoard", "AppLaunch");
    alm_FrontBoard_lifecycle_log_s_log = result;
  }

  return result;
}

uint64_t alm_build_launch_info(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = a1();
  v4 = v3 & 7 | (8 * ((v3 >> 4) & 1));
  v5 = llround(log2(ceil(a2 / 10.0)));
  if (v5 >= 15)
  {
    v5 = 15;
  }

  return v4 | (32 * v5);
}

BOOL alm_is_internal_app(char *__s1, uint64_t a2)
{
  result = 0;
  if (__s1)
  {
    if (a2)
    {
      return strncmp(__s1, "com.apple.", 0xAuLL) == 0;
    }
  }

  return result;
}

BOOL alm_ca_hit_3rd_party_bundle_capture_limit_per_day()
{
  v0 = mach_continuous_time();
  v4 = v0;
  if (!qword_1ECA38940 || alm_mach_time_to_ns(v0 - qword_1ECA38940, v1, v2, v3) >= 0x4E94914F0001)
  {
    _MergedGlobals = 0;
    qword_1ECA38940 = v4;
    v5 = alm_general_log_s_log;
    if (!alm_general_log_s_log)
    {
      v5 = os_log_create("com.apple.app_launch_measurement", "General");
      alm_general_log_s_log = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      alm_ca_hit_3rd_party_bundle_capture_limit_per_day_cold_1();
    }
  }

  return _MergedGlobals > 3u;
}

uint64_t __alm_app_will_launch_with_details_and_metrics_payload_block_invoke()
{
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async(global_queue, &__block_literal_global_29);
  result = alm_get_num_months_since_last_erase_install();
  alm_app_will_launch_with_details_and_metrics_payload_num_months_since_last_erase_install = result;
  return result;
}

uint64_t __alm_app_will_launch_with_details_and_metrics_payload_block_invoke_2()
{
  result = alm_count_cryptex_file_extents("/private/preboot/cryptex1/current/os.dmg");
  alm_app_will_launch_with_details_and_metrics_payload_shared_cache_cryptex_count = result;
  return result;
}

uint64_t alm_count_cryptex_file_extents(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = open(a1, 0, 0);
  if (v1 < 0)
  {
    return 0;
  }

  v2 = v1;
  memset(&v10, 0, sizeof(v10));
  if (fstat(v1, &v10) || (st_size = v10.st_size, v10.st_size < 1))
  {
    v3 = 0;
  }

  else
  {
    v6 = 0;
    v3 = 0;
    do
    {
      v7 = 0;
      v8 = st_size - v6;
      v9 = v6;
      if (fcntl(v2, 65, &v7))
      {
        break;
      }

      if (!v8)
      {
        break;
      }

      v6 += v8;
      ++v3;
    }

    while (v6 < st_size);
  }

  close(v2);
  return v3;
}

uint64_t alm_get_num_months_since_last_erase_install()
{
  v2 = 0;
  fsctl("/var/mobile", 0x40086804uLL, &v2, 0);
  if (!v2)
  {
    return 0;
  }

  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  if (__tp.tv_sec < v2)
  {
    return 0;
  }

  v1 = ((__tp.tv_sec - v2) / 2629743.83);
  if (v1 <= 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t alm_retreive_process_name(char *a1, size_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 && (memset(buffer, 0, sizeof(buffer)), v4 = getpid(), proc_name(v4, buffer, 0x100u)))
  {
    result = (snprintf(a1, a2, "(P)%s", buffer) >> 31);
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t alm_get_process_num_page_in()
{
  memset(&v1, 0, sizeof(v1));
  if (getrusage(0, &v1) >= 0)
  {
    return v1.ru_majflt;
  }

  else
  {
    return 0;
  }
}

void __alm_app_extended_launch_end_with_details_block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = s_launch_milestones;
  v5 = alm_application_launch_log_s_log;
  if (a2)
  {
    if (!alm_application_launch_log_s_log)
    {
      v5 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
      alm_application_launch_log_s_log = v5;
    }

    v6 = *(a1 + 40);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1D842D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "ApplicationLaunchExtendedResponsive", " BAILED=yes ", &v18, 2u);
    }

    if (_os_feature_enabled_impl())
    {
      qword_1ED6BD718 = mach_continuous_time();
      byte_1ED6BD720 = 1;
    }

    if ((v4 & 1) == 0)
    {
      v7 = alm_application_launch_log_s_log;
      if (!alm_application_launch_log_s_log)
      {
        v7 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
        alm_application_launch_log_s_log = v7;
      }

      v8 = *(a1 + 40);
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        LOWORD(v18) = 0;
        _os_signpost_emit_with_name_impl(&dword_1D842D000, v7, OS_SIGNPOST_INTERVAL_END, v8, "ApplicationLaunchExtendedOnlyResponsive", " BAILED=yes", &v18, 2u);
      }

      byte_1ED6BD738 = 1;
      *(&xmmword_1ED6BD728 + 1) = mach_continuous_time();
    }

    if (*(a1 + 48))
    {
LABEL_34:
      nw_activity_complete_with_reason();
    }
  }

  else
  {
    if (!alm_application_launch_log_s_log)
    {
      v5 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
      alm_application_launch_log_s_log = v5;
    }

    v10 = *(a1 + 40);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v11 = *(a1 + 56);
      v18 = 134218240;
      v19 = a3;
      v20 = 1026;
      v21 = v11;
      _os_signpost_emit_with_name_impl(&dword_1D842D000, v5, OS_SIGNPOST_INTERVAL_END, v10, "ApplicationLaunchExtendedResponsive", "%{signpost.description:end_time}llu LaunchInfo=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", &v18, 0x12u);
    }

    if (_os_feature_enabled_impl())
    {
      byte_1ED6BD720 = 0;
      qword_1ED6BD718 = a3;
    }

    if ((v4 & 1) == 0)
    {
      v12 = alm_application_launch_log_s_log;
      if (!alm_application_launch_log_s_log)
      {
        v12 = os_log_create("com.apple.app_launch_measurement", "ApplicationLaunch");
        alm_application_launch_log_s_log = v12;
      }

      v13 = *(a1 + 40);
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        v14 = *(a1 + 56);
        v18 = 134218240;
        v19 = a3;
        v20 = 1026;
        v21 = v14;
        _os_signpost_emit_with_name_impl(&dword_1D842D000, v12, OS_SIGNPOST_INTERVAL_END, v13, "ApplicationLaunchExtendedOnlyResponsive", "%{signpost.description:end_time}llu LaunchInfo=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", &v18, 0x12u);
      }

      if (_os_feature_enabled_impl())
      {
        byte_1ED6BD738 = 0;
        *(&xmmword_1ED6BD728 + 1) = a3;
      }
    }

    if (*(a1 + 48))
    {
      goto LABEL_34;
    }
  }

  nw_activity_set_global_parent();
  v15 = *(a1 + 48);
  if (v15)
  {
    nw_release(v15);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))();
  }

  alm_did_reach_launch_milestone(8);
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t alm_legacy_app_regular_or_extended_launch_end(uint64_t result)
{
  if (!s_launch_task_count)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = alm_FrontBoard_lifecycle_log_s_log;
    if (!alm_FrontBoard_lifecycle_log_s_log)
    {
      v4 = os_log_create("com.apple.FrontBoard", "AppLaunch");
      alm_FrontBoard_lifecycle_log_s_log = v4;
    }

    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D842D000, v4, OS_SIGNPOST_INTERVAL_END, v3, "AppLaunch", " enableTelemetry=YES ", v5, 2u);
    }

    result = _os_feature_enabled_impl();
    if (result)
    {
      result = mach_continuous_time();
      qword_1ED6BD6E8 = result;
    }
  }

  return result;
}

void alm_execute_when_measurement_complete(const void *a1)
{
  if (!a1)
  {
    alm_execute_when_measurement_complete_cold_1();
  }

  v1 = s_measurement_complete_handler;
  if (s_measurement_complete_handler)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __alm_execute_when_measurement_complete_block_invoke;
    v2[3] = &unk_1E85160A0;
    v2[4] = s_measurement_complete_handler;
    v2[5] = a1;
    s_measurement_complete_handler = _Block_copy(v2);
    _Block_release(v1);
  }

  else
  {
    s_measurement_complete_handler = _Block_copy(a1);
  }
}

uint64_t __alm_execute_when_measurement_complete_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void alm_execute_when_main_queue_idle(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = __alm_execute_when_main_queue_idle_block_invoke_2;
  v1[3] = &unk_1E85160E8;
  v1[4] = a1;
  alm_execute_when_main_queue_idle_with_condition(&__block_literal_global_56, v1);
}

uint64_t alm_app_measurement_ongoing()
{
  if (s_launch_milestones)
  {
    goto LABEL_5;
  }

  if ((s_launch_milestones & 4) != 0)
  {
    v0 = 1;
    return v0 & 1;
  }

  if ((s_launch_milestones & 0xA) == 0)
  {
LABEL_5:
    v0 = 0;
  }

  else
  {
    v0 = s_bail_responsive_launch ^ 1;
  }

  return v0 & 1;
}

BOOL alm_is_running_launch_task(CFTypeRef cf1)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = s_launch_tasks[v2];
    if (v4 && CFEqual(cf1, v4))
    {
      break;
    }

    v3 = v2++ < 0xF;
  }

  while (v2 != 16);
  return v3;
}

uint64_t alm_will_start_extended_launch_task(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (CFStringGetLength(a1) > 256)
  {
    return 1;
  }

  if (s_launch_task_count > 0xFu)
  {
    return 2;
  }

  if ((s_launch_milestones & 4) == 0)
  {
    return 3;
  }

  if (alm_is_running_launch_task(a1))
  {
    return 4;
  }

  v3 = 0;
  while (s_launch_tasks[v3])
  {
    result = 0;
    if (++v3 == 16)
    {
      return result;
    }
  }

  s_launch_tasks[v3] = a1;
  CFRetain(a1);
  result = 0;
  ++s_launch_task_count;
  return result;
}

uint64_t alm_did_finish_extended_launch_task(const __CFString *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 && CFStringGetLength(a1) <= 256)
  {
    if (s_alm_launch_signpost_id)
    {
      v4 = s_frontboard_launch_signpost_id == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      v5 = alm_general_log_s_log;
      if (!alm_general_log_s_log)
      {
        v5 = os_log_create("com.apple.app_launch_measurement", "General");
        alm_general_log_s_log = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        alm_did_finish_extended_launch_task_cold_1();
      }

      result = 6;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        v7 = s_launch_tasks[v6];
        if (v7)
        {
          if (CFEqual(a1, v7))
          {
            break;
          }
        }

        if (++v6 == 16)
        {
          result = 5;
          goto LABEL_4;
        }
      }

      CFRelease(s_launch_tasks[v6]);
      s_launch_tasks[v6] = 0;
      if (!--s_launch_task_count)
      {
        v8 = alm_FrontBoard_lifecycle_log_s_log;
        if (!alm_FrontBoard_lifecycle_log_s_log)
        {
          v8 = os_log_create("com.apple.FrontBoard", "AppLaunch");
          alm_FrontBoard_lifecycle_log_s_log = v8;
        }

        v9 = s_frontboard_launch_signpost_id;
        if ((s_frontboard_launch_signpost_id - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
        {
          v10[0] = 67240192;
          v10[1] = 1;
          _os_signpost_emit_with_name_impl(&dword_1D842D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "AppLaunch", "IsExtendedLaunch=%{public, signpost.telemetry:number1}u enableTelemetry=YES ", v10, 8u);
        }

        if (_os_feature_enabled_impl())
        {
          qword_1ED6BD6E8 = mach_continuous_time();
          HIBYTE(word_1ED6BD6C9) = 1;
        }

        alm_app_extended_launch_end_with_details(s_alm_launch_signpost_id, 0, 0);
      }

      result = 0;
    }
  }

  else
  {
    result = 1;
  }

LABEL_4:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t alm_bucketize_file_system_months(unint64_t a1)
{
  if (a1 < 0x31)
  {
    v1 = 48;
  }

  else
  {
    v1 = 49;
  }

  if (a1 >= 0x19)
  {
    v2 = v1;
  }

  else
  {
    v2 = 24;
  }

  if (a1 >= 0x13)
  {
    v3 = v2;
  }

  else
  {
    v3 = 18;
  }

  if (a1 >= 0xD)
  {
    v4 = v3;
  }

  else
  {
    v4 = 12;
  }

  if (a1 >= 7)
  {
    return v4;
  }

  else
  {
    return 6;
  }
}

uint64_t alm_bucketize_disk_fullness_percentage(double a1)
{
  if (a1 <= 50.0)
  {
    return 50;
  }

  if (a1 <= 80.0)
  {
    return 80;
  }

  if (a1 <= 90.0)
  {
    return 90;
  }

  if (a1 <= 95.0)
  {
    return 95;
  }

  return 96;
}

void s_telemetry_timeout_handler_block_invoke()
{
  if ((dword_1ED6BD750 & 0x100) == 0 && (s_launch_milestones & 1) == 0)
  {
    BYTE2(dword_1ED6BD750) = 1;
    v0 = alm_general_log_s_log;
    if (!alm_general_log_s_log)
    {
      v0 = os_log_create("com.apple.app_launch_measurement", "General");
      alm_general_log_s_log = v0;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      s_telemetry_timeout_handler_block_invoke_cold_1(v0);
    }

    alm_did_reach_launch_milestone(10);
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void alm_app_will_launch_with_details_and_metrics_payload_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_1D842D000, a2, OS_LOG_TYPE_DEBUG, "Random sampling decided not to capture 3rd party %s data", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void alm_app_will_launch_with_details_and_metrics_payload_cold_3(uint64_t a1, NSObject *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = _MergedGlobals;
  v5 = mach_continuous_time();
  v10 = 136315650;
  v11 = a1;
  v12 = 1024;
  v13 = v4;
  v14 = 2048;
  v15 = alm_mach_time_to_ns(v5 - qword_1ECA38940, v6, v7, v8) / 0x34630B8A000;
  _os_log_debug_impl(&dword_1D842D000, a2, OS_LOG_TYPE_DEBUG, "Capture 3rd party %s data. Num Collected(24hr): %d Num hours: %llu", &v10, 0x1Cu);
  v9 = *MEMORY[0x1E69E9840];
}

void alm_app_will_launch_with_details_and_metrics_payload_cold_4(NSObject *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = mach_continuous_time();
  v7[0] = 67109376;
  v7[1] = 4;
  v8 = 2048;
  v9 = alm_mach_time_to_ns(v2 - qword_1ECA38940, v3, v4, v5) / 0x34630B8A000;
  _os_log_debug_impl(&dword_1D842D000, a1, OS_LOG_TYPE_DEBUG, "Reached per-day limit of %d for capturing 3rd party data ! Wont collect data. Num hours: %llu", v7, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void alm_aggregate_and_send_ca_measurement_event_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2080;
  v6 = a1;
  _os_log_error_impl(&dword_1D842D000, log, OS_LOG_TYPE_ERROR, "Failed to send CA Event for app launch measurements for ca_event_type: %d event_name: %s", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void s_telemetry_timeout_handler_block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = 20;
  _os_log_error_impl(&dword_1D842D000, log, OS_LOG_TYPE_ERROR, "CA Telemetry timedout after %d seconds due to app launch has not reached all responsive milestones", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}