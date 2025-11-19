void BBMonitorSetState(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v5))
  {
    if (a2 > 6)
    {
      v6 = "<unknown>";
    }

    else
    {
      v6 = off_27A714780[a2];
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&dword_277237000, logger, v5, "BBMonitorState: %s", &v8, 0xCu);
  }

  *(a1 + 28) = a2;
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t BBMonitorReportState(uint64_t result, int a2)
{
  v3 = result;
  v14 = *MEMORY[0x277D85DE8];
  if ((*(result + 4) & 2) == 0 || (*(result + 4) & 1) != a2)
  {
    state64 = 0;
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v5))
    {
      v6 = "";
      if (!a2)
      {
        v6 = "not ";
      }

      *buf = 136315138;
      v13 = v6;
      _os_log_impl(&dword_277237000, logger, v5, "BrokenBackhaul: telling symptoms backhaul is %sbroken", buf, 0xCu);
    }

    notify_get_state(*(v3 + 64), &state64);
    result = CaptiveSymptomReportBackhaulState();
    v7 = *(v3 + 4);
    v8 = v7 | 3;
    v9 = v7 & 0xFFFFFFFC | 2;
    if (a2)
    {
      v9 = v8;
    }

    *(v3 + 4) = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void BBMonitorSetInterfaceAdvisory(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = @"unable to reach probe server";
  }

  else
  {
    v2 = @"probe server is reachable again";
  }

  if (((*(a1 + 4) >> 2) & 1) != a2)
  {
    v5 = *(a1 + 8);
    v6 = SCNetworkInterfaceSetAdvisory();
    logger = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v8))
    {
      v9 = "Set";
      if (!a2)
      {
        v9 = "Clear";
      }

      v12 = 136315650;
      v13 = v9;
      if (v6)
      {
        v10 = "";
      }

      else
      {
        v10 = " FAILED";
      }

      v14 = 2112;
      v15 = v2;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&dword_277237000, logger, v8, "BBMonitor: %sAdvisory '%@'%s", &v12, 0x20u);
    }

    *(a1 + 4) = *(a1 + 4) & 0xFFFFFFFB | (4 * (a2 != 0));
  }

  v11 = *MEMORY[0x277D85DE8];
}

BOOL BBMonitorStartProbe(uint64_t a1)
{
  BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 8));
  BBMonitorCancelEvents(a1);
  v3 = (*(a1 + 4) >> 3) & 1;
  v4 = *(a1 + 16);
  v5 = *&S_BBMProbeTimeout;
  Current = CFRunLoopGetCurrent();
  v7 = captive_agent_send_probe(v4, BSDName, v3, 0, v5, HandleProbeResult, a1, Current);
  *(a1 + 72) = v7;
  if (v7)
  {
    return 1;
  }

  logger = mysyslog_get_logger();
  v10 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(logger, v10);
  if (result)
  {
    *v11 = 0;
    _os_log_impl(&dword_277237000, logger, v10, "BBMonitor: captive_agent_send_probe failed", v11, 2u);
    return 0;
  }

  return result;
}

void BBMonitor_Selecting(uint64_t a1, int a2, _BYTE *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  if (a2 == 3)
  {
    *(a1 + 112) = CFAbsoluteTimeGetCurrent();
    *(a1 + 120) = *a3;
    BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 8));
    v22 = NetIFCopyCurrentWiFiNetwork(BSDName);
    if (v22)
    {
      v23 = v22;
      SSID = WiFiNetworkGetSSID();
      if (SSID && CFEqual(SSID, *(a1 + 16)))
      {
        if (*(a1 + 120))
        {
          v25 = MEMORY[0x277CBED28];
        }

        else
        {
          v25 = MEMORY[0x277CBED10];
        }

        v26 = *v25;
        v27 = *MEMORY[0x277CF7F10];
        WiFiNetworkSetProperty();
        v28 = CFDateCreate(0, *(a1 + 112));
        v29 = *MEMORY[0x277CF7EF8];
        WiFiNetworkSetProperty();
        BBMonitorLogUserChoice(a1, "Saved", v28);
        CFRelease(v28);
      }

      NetIFUpdateWiFiNetwork();
      CFRelease(v23);
    }
  }

  else
  {
    if (a2)
    {
      goto LABEL_51;
    }

    BBMonitorSetState(a1, 3u);
    BBMonitorCancelEvents(a1);
    v4 = CFAbsoluteTimeGetCurrent() - *(a1 + 112);
    if (v4 > *&S_BBMPromptInterval)
    {
      *v49 = 0;
      if (S_bb)
      {
        logger = mysyslog_get_logger();
        v6 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v6))
        {
          *buf = 0;
          _os_log_impl(&dword_277237000, logger, v6, "BBMonitor: canceling pending prompt", buf, 2u);
        }

        BBMonitorCancelPrompt(S_bb);
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      Bundle = CaptiveGetBundle();
      v9 = CopyPreferredLanguage(Bundle);
      v10 = CFBundleCopyBundleURL(Bundle);
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(Mutable, *MEMORY[0x277CBF208], v10);
        CFRelease(v11);
      }

      if (*(a1 + 24))
      {
        v12 = @"BROKEN_BACKHAUL_ALTERNATE_BUTTON_CH";
      }

      else
      {
        v12 = @"BROKEN_BACKHAUL_ALTERNATE_BUTTON";
      }

      if (*(a1 + 24))
      {
        v13 = @"BROKEN_BACKHAUL_HEADER_FORMAT_CH";
      }

      else
      {
        v13 = @"BROKEN_BACKHAUL_HEADER_FORMAT";
      }

      if (*(a1 + 24))
      {
        v14 = @"BROKEN_BACKHAUL_MESSAGE_CH";
      }

      else
      {
        v14 = @"BROKEN_BACKHAUL_MESSAGE";
      }

      v15 = *MEMORY[0x277CBF188];
      v16 = *(a1 + 16);
      v17 = CFBundleCopyLocalizedStringForLocalization();
      if (v17)
      {
        v18 = v17;
        v19 = CFStringCreateWithFormat(0, 0, v17, v16);
        CFDictionaryAddValue(Mutable, v15, v19);
        CFRelease(v19);
        CFRelease(v18);
      }

      else
      {
        CFDictionaryAddValue(Mutable, v15, v13);
      }

      add_localized_string(Bundle, v9, Mutable, *MEMORY[0x277CBF198], v14);
      add_localized_string(Bundle, v9, Mutable, *MEMORY[0x277CBF1E8], @"BROKEN_BACKHAUL_DEFAULT_BUTTON");
      add_localized_string(Bundle, v9, Mutable, *MEMORY[0x277CBF1C0], v12);
      v40 = CFUserNotificationCreate(0, 0.0, 0, v49, Mutable);
      CFRelease(Mutable);
      CFRelease(v9);
      if (v40)
      {
        RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v40, BBMonitorUserResponse, 0);
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x277CBF058]);
        *(a1 + 88) = v40;
        *(a1 + 96) = RunLoopSource;
        *(a1 + 104) = CFAbsoluteTimeGetCurrent();
        S_bb = a1;
        v43 = mysyslog_get_logger();
        v44 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v43, v44))
        {
          *buf = 0;
          _os_log_impl(&dword_277237000, v43, v44, "BBMonitor: prompting user, waiting for response", buf, 2u);
        }
      }

      else
      {
        v45 = mysyslog_get_logger();
        v46 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v45, v46))
        {
          *buf = 0;
          _os_log_impl(&dword_277237000, v45, v46, "BBMonitor: failed to create CFUserNotification", buf, 2u);
        }

        v49[0] = 0;
        BBMonitor_Idle(a1, 0, v49);
      }

      goto LABEL_51;
    }

    v30 = mysyslog_get_logger();
    v31 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v30, v31))
    {
      *v49 = 134218240;
      v50 = v4;
      v51 = 2048;
      v52 = S_BBMPromptInterval;
      _os_log_impl(&dword_277237000, v30, v31, "BBMonitor: can't show prompt (%g < %g)", v49, 0x16u);
    }
  }

  v32 = *(a1 + 120);
  v33 = mysyslog_get_logger();
  v34 = _SC_syslog_os_log_mapping();
  v35 = os_log_type_enabled(v33, v34);
  if (v32)
  {
    if (v35)
    {
      v36 = *(a1 + 28);
      if (v36 > 6)
      {
        v37 = "<unknown>";
      }

      else
      {
        v37 = off_27A714780[v36];
      }

      *v49 = 136315138;
      v50 = *&v37;
      _os_log_impl(&dword_277237000, v33, v34, "BBMonitor(%s): using cellular", v49, 0xCu);
    }

    BBMonitor_Broken(a1, 0, 0);
  }

  else
  {
    if (v35)
    {
      v38 = *(a1 + 28);
      if (v38 > 6)
      {
        v39 = "<unknown>";
      }

      else
      {
        v39 = off_27A714780[v38];
      }

      *v49 = 136315138;
      v50 = *&v39;
      _os_log_impl(&dword_277237000, v33, v34, "BBMonitor(%s): staying on Wi-Fi", v49, 0xCu);
    }

    BBMonitor_Ignoring(a1, 0);
  }

LABEL_51:
  v47 = *MEMORY[0x277D85DE8];
}

void HandleProbeResult(uint64_t a1, unsigned int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  *(a1 + 72) = 0;
  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v5))
  {
    if (a2 > 0xA)
    {
      v6 = "<unknown>";
    }

    else
    {
      v6 = off_27A7147B8[a2];
    }

    *buf = 136315394;
    v23 = v6;
    v24 = 1024;
    LODWORD(v25) = a2;
    _os_log_impl(&dword_277237000, logger, v5, "BBMonitor: probe result '%s' (%d)", buf, 0x12u);
  }

  v7 = *(a1 + 28);
  if (v7 <= 6 && v7)
  {
    v8 = BBMStateMachineFunctionGet_funcs[v7];
    if (a2 <= 0xC)
    {
      if (((1 << a2) & 0x1E02) != 0)
      {
        v21 = 0;
        v9 = "";
LABEL_11:
        v10 = mysyslog_get_logger();
        v11 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = off_27A714780[v7];
          if (a2 > 0xA)
          {
            v13 = "<unknown>";
          }

          else
          {
            v13 = off_27A7147B8[a2];
          }

          *buf = 136315650;
          v23 = v12;
          v24 = 2080;
          v25 = v13;
          v26 = 2080;
          v27 = v9;
          _os_log_impl(&dword_277237000, v10, v11, "BBMonitor (%s): Probe Complete: Result %s%s", buf, 0x20u);
        }

        v8(a1, 1, &v21);
        v17 = *(a1 + 32);
        if (v17 && (v21 - 1) <= 1)
        {
          v18 = (*(a1 + 4) >> 2) & 2;
          if (v21 == 2)
          {
            ++v18;
          }

          if (v7 == 6)
          {
            v19 = v18 | 4;
          }

          else
          {
            v19 = v18;
          }

          v17(*(a1 + 40), v19);
        }

        goto LABEL_29;
      }

      if (((1 << a2) & 0xC) != 0)
      {
        v21 = 2;
        v16 = *(a1 + 4);
        if ((v16 & 8) != 0)
        {
          *(a1 + 4) = v16 | 0x20;
          CaptiveAnalyticsSessionPostIncompleteEvent(1u);
          v9 = " [captive whitelist]";
        }

        else
        {
          v9 = " [captive]";
        }

        goto LABEL_11;
      }

      if (!a2)
      {
        v21 = 1;
        v9 = " [not captive]";
        goto LABEL_11;
      }
    }

    v21 = 3;
    v9 = " [broken]";
    goto LABEL_11;
  }

  v14 = mysyslog_get_logger();
  v15 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 67109120;
    LODWORD(v23) = v7;
    _os_log_impl(&dword_277237000, v14, v15, "BBMonitor: no function for state %d", buf, 8u);
  }

LABEL_29:
  v20 = *MEMORY[0x277D85DE8];
}

void BBMonitor_Broken(__CFRunLoopTimer *a1, int a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    logger = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v10))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_277237000, logger, v10, "BBMonitor: woke up, probing again", &v14, 2u);
    }

    BBMonitorCancelEvents(a1);
    if (BBMonitorStartProbe(a1))
    {
      goto LABEL_19;
    }

    v6 = *&S_BBMProbeInterval;
    goto LABEL_15;
  }

  if (a2 != 1)
  {
    if (a2)
    {
LABEL_19:
      v13 = *MEMORY[0x277D85DE8];
      return;
    }

    BBMonitorSetState(a1, 4u);
    BBMonitorCancelEvents(a1);
    BBMonitorReportState(a1, 1);
    BBMonitorSetInterfaceAdvisory(a1, 1);
    v4 = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v4, v5))
    {
      v14 = 134217984;
      v15 = S_BBMProbeInterval;
      _os_log_impl(&dword_277237000, v4, v5, "BBMonitor: setting timer to wake up in %g seconds", &v14, 0xCu);
    }

    v6 = *&S_BBMProbeInterval;
LABEL_15:
    BBMonitorSetTimer(a1, a1, v6);
    goto LABEL_19;
  }

  if (*a3 != 3)
  {
    v11 = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_277237000, v11, v12, "BBMonitor: no longer broken", &v14, 2u);
    }

    BBMonitor_Idle(a1, 0, 0);
    goto LABEL_19;
  }

  v7 = *&S_BBMProbeInterval;
  v8 = *MEMORY[0x277D85DE8];

  BBMonitorSetTimer(a1, a1, v7);
}

void BBMonitor_Ignoring(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    BBMonitorSetState(a1, 5u);
    BBMonitorCancelEvents(a1);
    v3 = CFDateCreate(0, *(a1 + 112) + *&S_BBMPromptInterval);
    logger = mysyslog_get_logger();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v5))
    {
      v6 = *(a1 + 28);
      if (v6 > 6)
      {
        v7 = "<unknown>";
      }

      else
      {
        v7 = off_27A714780[v6];
      }

      v9 = 136315394;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_277237000, logger, v5, "BBMonitor(%s): waiting to prompt again until %@", &v9, 0x16u);
    }

    CFRelease(v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void BBMonitorSetTimer(uint64_t a1, __CFRunLoopTimer *a2, double a3)
{
  v6 = *(a1 + 80);
  if (!v6)
  {
    TimerCreate();
    *(a1 + 80) = v6;
  }

  TimerSet(v6, BBMonitor_Broken, a2, 2, 0, a3);
}

void add_localized_string(uint64_t a1, uint64_t a2, __CFDictionary *a3, const void *a4, const void *a5)
{
  v8 = CFBundleCopyLocalizedStringForLocalization();
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(a3, a4, v8);

    CFRelease(v9);
  }

  else
  {

    CFDictionaryAddValue(a3, a4, a5);
  }
}

void BBMonitorUserResponse(uint64_t a1, const char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v5))
  {
    v22 = 134217984;
    v23 = a2;
    _os_log_impl(&dword_277237000, logger, v5, "response flags 0x%lx", &v22, 0xCu);
  }

  v6 = S_bb;
  if (S_bb)
  {
    if (*(S_bb + 88) == a1)
    {
      Current = CFRunLoopGetCurrent();
      CFRunLoopRemoveSource(Current, *(v6 + 96), *MEMORY[0x277CBF058]);
      v14 = *(v6 + 96);
      if (v14)
      {
        CFRelease(v14);
        *(v6 + 96) = 0;
      }

      v15 = *(v6 + 88);
      if (v15)
      {
        CFRelease(v15);
        *(v6 + 88) = 0;
      }

      S_bb = 0;
      if (*(v6 + 28) != 3)
      {
        v17 = mysyslog_get_logger();
        v18 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_23;
        }

        v19 = *(v6 + 28);
        if (v19 > 6)
        {
          v20 = "<unknown>";
        }

        else
        {
          v20 = off_27A714780[v19];
        }

        v22 = 136315138;
        v23 = v20;
        v9 = "BBMonitor: not selecting (%s), ignoring";
        v10 = v17;
        v11 = v18;
        v12 = 12;
        goto LABEL_10;
      }

      LOBYTE(v22) = (a2 & 3) == 0;
      if ((a2 & 3) != 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      _BBMonitorPostEvent(v6, v16);
      BBMonitor_Selecting(v6, 3, &v22);
    }

    else
    {
      v7 = mysyslog_get_logger();
      LOBYTE(v8) = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v7, v8))
      {
        LOWORD(v22) = 0;
        v9 = "BBMonitorUserResponse: mismatch cfun";
LABEL_9:
        v10 = v7;
        v11 = v8;
        v12 = 2;
LABEL_10:
        _os_log_impl(&dword_277237000, v10, v11, v9, &v22, v12);
      }
    }
  }

  else
  {
    v7 = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v7, v8))
    {
      LOWORD(v22) = 0;
      v9 = "BBMonitorUserResponse: why S_bb NULL?";
      goto LABEL_9;
    }
  }

LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t WebSheetStateSetIsAllowed(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

void WebSheetStateIssueExitCommand(uint64_t a1)
{
  v2 = *(a1 + 64);
  logger = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  v5 = os_log_type_enabled(logger, v4);
  if (v2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, logger, v4, "WebSheet is registered, issuing exit command", buf, 2u);
    }

    my_FieldSetRetainedCFType((a1 + 40), 0);
    Command = createCommand(3, 0, 0, 0);
    WebSheetStateIssueCommand(a1, Command, 1);
    CFRelease(Command);
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_277237000, logger, v4, "WebSheet is not registered, cleaning up WebSheet state", v7, 2u);
    }

    WebSheetStateCleanup(a1);
  }
}

CFDictionaryRef createCommand(int a1, CFStringRef a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  valuePtr = a1;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = my_CFUUIDStringCreate(0);
    a2 = v6;
  }

  v18 = 0;
  v19 = 0;
  v15 = 0;
  v16 = 0;
  keys[0] = @"UniqueID";
  values[0] = a2;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  keys[1] = @"Type";
  values[1] = v8;
  if (a3)
  {
    v18 = @"Info";
    v15 = a3;
    v9 = 3;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = 2;
  if (a4)
  {
LABEL_6:
    keys[v9] = @"ProbeResult";
    values[v9++] = a4;
  }

LABEL_7:
  v10 = CFDictionaryCreate(v7, keys, values, v9, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t WebSheetStateIssueCommand(uint64_t a1, void *value, int a3)
{
  Mutable = *(a1 + 48);
  if (Mutable)
  {
    if (a3)
    {
      CFArrayRemoveAllValues(Mutable);
      Mutable = *(a1 + 48);
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *(a1 + 48) = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
  result = *(a1 + 64);
  if (result)
  {

    return CommandHandlerNotify(result);
  }

  return result;
}

void WebSheetStateCleanup(uint64_t *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 && *(a1 + 120))
  {
    *(a1 + 120) = 0;
    notify_post(*MEMORY[0x277CF8058]);
  }

  my_FieldSetRetainedCFType(a1 + 8, 0);
  my_FieldSetRetainedCFType(a1 + 5, 0);
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }

  if (S_prober_list)
  {
    Count = CFDictionaryGetCount(S_prober_list);
    v4 = Count;
    if (Count < 0xB)
    {
      v5 = v15;
    }

    else
    {
      v5 = malloc_type_malloc(16 * Count, 0xC0040B8AA526DuLL);
    }

    memset(v15, 0, sizeof(v15));
    if (v4 >= 1)
    {
      CFDictionaryGetKeysAndValues(S_prober_list, v5, &v5[v4]);
      v6 = v5;
      v7 = v4;
      do
      {
        v8 = *v6;
        if (*CFDataGetBytePtr(v6[v4]) == a1)
        {
          ProberContextRemove(v8);
        }

        ++v6;
        --v7;
      }

      while (v7);
    }

    if (v5 != v15)
    {
      free(v5);
    }
  }

  S_webSheetDoneCallback(a1[4], 6, 0);
  *(a1 + 36) = 0;
  WebSheetStateClearCheckInTimer(a1);
  v9 = a1[10];
  if (v9)
  {
    CFRelease(v9);
    a1[10] = 0;
  }

  v10 = a1[11];
  if (v10)
  {
    CFRelease(v10);
    a1[11] = 0;
  }

  v11 = a1[2];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *a1;
  v13 = a1[1];
  if (*a1)
  {
    *(v12 + 8) = v13;
  }

  *v13 = v12;
  free(a1);
  v14 = *MEMORY[0x277D85DE8];
}

CFRunLoopTimerRef *WebSheetStateLaunchApplication(__CFRunLoopTimer *a1, const void *a2, const void *a3, const void *a4, char a5)
{
  v32 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    logger = mysyslog_get_logger();
    v13 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v13))
    {
LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    LODWORD(v31.version) = 138412290;
    *(&v31.version + 4) = a2;
    v14 = "Unable to find WebSheet state given interface: %@";
    v15 = logger;
    v16 = v13;
    v17 = 12;
LABEL_9:
    _os_log_impl(&dword_277237000, v15, v16, v14, &v31, v17);
    goto LABEL_10;
  }

  v11 = &S_WebSheetStateHeadStorage;
  while (1)
  {
    v11 = *v11;
    if (!v11)
    {
      break;
    }

    if (CFEqual(a2, v11[2]))
    {
      goto LABEL_19;
    }
  }

  v20 = CFStringGetTypeID();
  if (CFGetTypeID(a2) == v20)
  {
    v21 = malloc_type_malloc(0x80uLL, 0x10E004009A3741EuLL);
    v11 = v21;
    if (v21)
    {
      *(v21 + 6) = 0u;
      *(v21 + 7) = 0u;
      *(v21 + 4) = 0u;
      *(v21 + 5) = 0u;
      *(v21 + 2) = 0u;
      *(v21 + 3) = 0u;
      *v21 = 0u;
      *(v21 + 1) = 0u;
      v21[2] = CFRetain(a2);
    }
  }

  else
  {
    v11 = 0;
  }

  v22 = S_WebSheetStateHeadStorage;
  *v11 = S_WebSheetStateHeadStorage;
  if (v22)
  {
    *(v22 + 8) = v11;
  }

  S_WebSheetStateHeadStorage = v11;
  v11[1] = &S_WebSheetStateHeadStorage;
LABEL_19:
  v11[4] = a1;
  my_FieldSetRetainedCFType(v11 + 10, a4);
  my_FieldSetRetainedCFType(v11 + 11, a3);
  *(v11 + 96) = a5;
  if (v11[8] || v11[3] || v11[13] || v11[14])
  {
    v23 = mysyslog_get_logger();
    v24 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v23, v24))
    {
      LOWORD(v31.version) = 0;
      _os_log_impl(&dword_277237000, v23, v24, "WebSheet is already running", &v31, 2u);
    }

    goto LABEL_11;
  }

  if (_AMLaunchApplicationWithIdentifier(@"com.apple.WebSheet", 1))
  {
    v25 = mysyslog_get_logger();
    v26 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_10;
    }

    LOWORD(v31.version) = 0;
    v14 = "Failed to launch WebSheet";
    v15 = v25;
    v16 = v26;
    v17 = 2;
    goto LABEL_9;
  }

  v31.version = 0;
  memset(&v31.retain, 0, 24);
  v31.info = v11;
  v27 = *MEMORY[0x277CBECE8];
  Current = CFAbsoluteTimeGetCurrent();
  v29 = CFRunLoopTimerCreate(v27, Current + 10.0, 0.0, 0, 0, WebSheetLaunchTimeout, &v31);
  v11[3] = v29;
  if (v29)
  {
    v30 = CFRunLoopGetCurrent();
    CFRunLoopAddTimer(v30, v11[3], *MEMORY[0x277CBF048]);
  }

LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

void WebSheetLaunchTimeout(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == a1)
  {
    if (!*(a2 + 73))
    {
      *(a2 + 73) = 1;
      if (*(a2 + 72) == 1)
      {
        S_webSheetDoneCallback(*(a2 + 32), 2, 0);
      }
    }

    WebSheetStateCleanup(a2);
  }

  else
  {
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v3))
    {
      *v5 = 0;
      _os_log_impl(&dword_277237000, logger, v3, "Timer fired but no timer set", v5, 2u);
    }
  }
}

uint64_t WebSheetStateSetIsUIRequired(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 120) != a2)
    {
      *(result + 120) = a2;
      return notify_post(*MEMORY[0x277CF8058]);
    }
  }

  return result;
}

uint64_t WebSheetStateGetIsUIRequired(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

void WebSheetHandlerInitialize(uint64_t (*a1)(void, void, void))
{
  S_WebSheetStateHeadStorage = 0;
  CommandHandlerClassRegister(1u, WebSheetHandlerMethods);
  S_webSheetDoneCallback = a1;
}

uint64_t CNSServerDebugLaunchWebsheet(uint64_t a1, UInt8 *a2, unsigned int a3, _DWORD *a4, _OWORD *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  *a4 = 1;
  v8 = a5[1];
  v31[0] = *a5;
  v31[1] = v8;
  if (isCallingInternalProcEntitled(v31))
  {
    if (!CaptiveIsActive())
    {
      *a4 = 6;
      goto LABEL_25;
    }

    v9 = my_CFPropertyListCreateWithBytePtrAndLength(a2, a3);
    TypeID = CFDictionaryGetTypeID();
    if (v9 && CFGetTypeID(v9) == TypeID)
    {
      Value = CFDictionaryGetValue(v9, *MEMORY[0x277CF8008]);
      v12 = CFStringGetTypeID();
      v13 = @"http://www.apple.com";
      if (Value && CFGetTypeID(Value) == v12)
      {
        v13 = Value;
      }

      v14 = CFDictionaryGetValue(v9, *MEMORY[0x277CF7FE0]);
      v15 = CFStringGetTypeID();
      v16 = @"en0";
      if (v14 && CFGetTypeID(v14) == v15)
      {
        v16 = v14;
      }

      v17 = CFDictionaryGetValue(v9, *MEMORY[0x277CF7FF0]);
      v18 = CFStringGetTypeID();
      v19 = @"AppleWiFi";
      if (v17 && CFGetTypeID(v17) == v18)
      {
        v19 = v17;
      }

      logger = mysyslog_get_logger();
      v21 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v21))
      {
        LODWORD(v31[0]) = 138412290;
        *(v31 + 4) = v9;
        _os_log_impl(&dword_277237000, logger, v21, "launching websheet: %@", v31, 0xCu);
      }

      v22 = WebSheetStateLaunchApplication(0, v16, v13, v19, 0);
      if (v22)
      {
        *a4 = 0;
        *(v22 + 72) = 1;
      }

      else
      {
        v29 = mysyslog_get_logger();
        v30 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v29, v30))
        {
          LOWORD(v31[0]) = 0;
          _os_log_impl(&dword_277237000, v29, v30, "CreateWebSheet failed", v31, 2u);
        }
      }

LABEL_24:
      CFRelease(v9);
      goto LABEL_25;
    }

    v25 = mysyslog_get_logger();
    v26 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v25, v26))
    {
      LOWORD(v31[0]) = 0;
      _os_log_impl(&dword_277237000, v25, v26, "WebSheet data is invalid", v31, 2u);
    }

    *a4 = 22;
    if (v9)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *a4 = 1;
    v23 = mysyslog_get_logger();
    v24 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v23, v24))
    {
      LOWORD(v31[0]) = 0;
      _os_log_impl(&dword_277237000, v23, v24, "Calling application is not entitled", v31, 2u);
    }
  }

LABEL_25:
  if (a2)
  {
    MEMORY[0x277CABBC0](*MEMORY[0x277D85F48], a2, a3);
  }

  v27 = *MEMORY[0x277D85DE8];
  return 0;
}

void WebSheetStateClearCheckInTimer(uint64_t a1)
{
  if (*(a1 + 24))
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(Current, *(a1 + 24), *MEMORY[0x277CBF048]);
    CFRunLoopTimerInvalidate(*(a1 + 24));
    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 24) = 0;
    }
  }
}

void ProberContextRemove(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = ProberContextGet(a1);
  if (v2)
  {
    v3 = v2;
    v4 = (v2 + 8);
    if (*(v2 + 1))
    {
      logger = mysyslog_get_logger();
      v6 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v6))
      {
        v7 = *v4;
        v14 = 138412546;
        v15 = a1;
        v16 = 2048;
        v17 = v7;
        _os_log_impl(&dword_277237000, logger, v6, "prober %@ detect %p removed", &v14, 0x16u);
      }

      captive_agent_abort_probe(v4);
    }

    v9 = *(v3 + 2);
    v8 = (v3 + 16);
    if (v9)
    {
      v10 = mysyslog_get_logger();
      v11 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *v8;
        v14 = 138412546;
        v15 = a1;
        v16 = 2048;
        v17 = v12;
        _os_log_impl(&dword_277237000, v10, v11, "prober %@ query_api %p removed", &v14, 0x16u);
      }

      captive_agent_abort_query(v8);
    }

    CFDictionaryRemoveValue(S_prober_list, a1);
    if (!CFDictionaryGetCount(S_prober_list) && S_prober_list)
    {
      CFRelease(S_prober_list);
      S_prober_list = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

const UInt8 *ProberContextGet(void *key)
{
  if (!S_prober_list)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(S_prober_list, key);
  if (!Value)
  {
    return 0;
  }

  return CFDataGetBytePtr(Value);
}

uint64_t WebSheetAuthorize(_OWORD *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  *v20 = *a1;
  *&v20[16] = v2;
  pid = audit_token_get_pid(v20);
  v4 = a1[1];
  *v20 = *a1;
  *&v20[16] = v4;
  has_BOOLean_entitlement = audit_token_has_BOOLean_entitlement(v20, @"com.apple.captive.private");
  logger = mysyslog_get_logger();
  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v7))
  {
    v8 = "has";
    if (!has_BOOLean_entitlement)
    {
      v8 = "does not have";
    }

    *v20 = 67109634;
    *&v20[4] = pid;
    *&v20[8] = 2080;
    *&v20[10] = v8;
    *&v20[18] = 2080;
    *&v20[20] = "com.apple.captive.private";
    _os_log_impl(&dword_277237000, logger, v7, "pid %d %s entitlement [%s]", v20, 0x1Cu);
  }

  if (has_BOOLean_entitlement)
  {
    if (pid >= 1)
    {
      v9 = &S_WebSheetStateHeadStorage;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if (*(v9 + 19) == pid)
        {
          v10 = mysyslog_get_logger();
          v11 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = v9[2];
            v13 = *(v9 + 19);
            *v20 = 138412546;
            *&v20[4] = v12;
            *&v20[12] = 1024;
            *&v20[14] = v13;
            _os_log_impl(&dword_277237000, v10, v11, "WebSheet for %@ already associated with pid %d", v20, 0x12u);
          }

          goto LABEL_12;
        }
      }

      v16 = &S_WebSheetStateHeadStorage;
      while (1)
      {
        v16 = *v16;
        if (!v16)
        {
          break;
        }

        if (!*(v16 + 19))
        {
          has_BOOLean_entitlement = *(v16 + 72);
          if (*(v16 + 72))
          {
            v17 = pid;
          }

          else
          {
            v17 = 0;
          }

          *(v16 + 19) = v17;
          goto LABEL_21;
        }
      }
    }

LABEL_12:
    v14 = mysyslog_get_logger();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v14, v15))
    {
      *v20 = 0;
      _os_log_impl(&dword_277237000, v14, v15, "No state found to support WebSheet", v20, 2u);
    }
  }

LABEL_21:
  v18 = *MEMORY[0x277D85DE8];
  return has_BOOLean_entitlement;
}

uint64_t WebSheetRegister(uint64_t *a1)
{
  keys[5] = *MEMORY[0x277D85DE8];
  PID = CommandHandlerGetPID(*a1);
  v3 = *a1;
  v4 = CommandHandlerGetPID(*a1);
  v5 = DisplayIDCopy();
  if (v5)
  {
    v6 = v5;
    v7 = &S_WebSheetStateHeadStorage;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 19);
      if (v8 == v4 && v8 > 0)
      {
        CommandHandlerSetInformation(v3, v5);
        my_FieldSetRetainedCFType(v7 + 8, v3);
        WebSheetStateClearCheckInTimer(v7);
        CFRelease(v6);
        v10 = &S_WebSheetStateHeadStorage;
        while (1)
        {
          v10 = *v10;
          if (!v10)
          {
            break;
          }

          v11 = *(v10 + 19);
          if (v11 == PID && v11 > 0)
          {
            if (*(v10 + 96))
            {
              v13 = MEMORY[0x277CBED28];
            }

            else
            {
              v13 = MEMORY[0x277CBED10];
            }

            v14 = *v13;
            v15 = *MEMORY[0x277CF8008];
            keys[0] = *MEMORY[0x277CF7FE0];
            keys[1] = v15;
            v16 = *MEMORY[0x277CF7FD8];
            keys[2] = *MEMORY[0x277CF7FF0];
            keys[3] = v16;
            v36 = v10[2];
            v37 = vextq_s8(*(v10 + 5), *(v10 + 5), 8uLL);
            v38 = v14;
            v17 = CFDictionaryCreate(0, keys, &v36, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v17)
            {
              v18 = v17;
              v19 = 1;
              Command = createCommand(1, 0, v17, 0);
              CFRelease(v18);
              my_FieldSetRetainedCFType(v10 + 5, Command);
              CFRelease(Command);
              v21 = v10[8];
              if (v21)
              {
                CommandHandlerNotify(v21);
              }

              goto LABEL_32;
            }

            logger = mysyslog_get_logger();
            v33 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(logger, v33))
            {
              LOWORD(keys[0]) = 0;
              v28 = "info dict is NULL";
              v29 = logger;
              v30 = v33;
              v31 = 2;
LABEL_30:
              _os_log_impl(&dword_277237000, v29, v30, v28, keys, v31);
            }

            goto LABEL_31;
          }
        }

        v26 = mysyslog_get_logger();
        v27 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v26, v27))
        {
          LODWORD(keys[0]) = 67109120;
          HIDWORD(keys[0]) = PID;
          v28 = "Couldn't find the state for pid: %d";
          v29 = v26;
          v30 = v27;
          v31 = 8;
          goto LABEL_30;
        }

LABEL_31:
        v19 = 1;
        goto LABEL_32;
      }
    }

    CFRelease(v5);
  }

  else
  {
    v22 = mysyslog_get_logger();
    v23 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v22, v23))
    {
      LODWORD(keys[0]) = 67109120;
      HIDWORD(keys[0]) = v4;
      _os_log_impl(&dword_277237000, v22, v23, "Cannot get display ID for pid %d", keys, 8u);
    }
  }

  v24 = mysyslog_get_logger();
  v25 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v24, v25))
  {
    LODWORD(keys[0]) = 67109120;
    HIDWORD(keys[0]) = PID;
    _os_log_impl(&dword_277237000, v24, v25, "Failed to register pid %d", keys, 8u);
  }

  v19 = 0;
LABEL_32:
  v34 = *MEMORY[0x277D85DE8];
  return v19;
}

void WebSheetRemove(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  PID = CommandHandlerGetPID(a1);
  v2 = PID;
  v3 = &S_WebSheetStateHeadStorage;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 19);
    if (v4 == PID && v4 > 0)
    {
      if (!*(v3 + 73))
      {
        *(v3 + 73) = 1;
        if (*(v3 + 72) == 1)
        {
          S_webSheetDoneCallback(v3[4], 2, 0);
        }
      }

      v6 = *MEMORY[0x277D85DE8];

      WebSheetStateCleanup(v3);
      return;
    }
  }

  logger = mysyslog_get_logger();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v8))
  {
    v10[0] = 67109120;
    v10[1] = v2;
    _os_log_impl(&dword_277237000, logger, v8, "Couldn't find the state for pid: %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

BOOL WebSheetProvideCommand(uint64_t *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  PID = CommandHandlerGetPID(*a1);
  v3 = PID;
  v4 = &S_WebSheetStateHeadStorage;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 19);
    if (v5 == PID && v5 > 0)
    {
      v7 = v4[6];
      if (v4[5])
      {
        if (v7)
        {
          Count = CFArrayGetCount(v7);
          v9 = Count + 1;
        }

        else
        {
          Count = 0;
          v9 = 1;
        }

        Mutable = CFArrayCreateMutable(0, v9, MEMORY[0x277CBF128]);
        CFArrayAppendValue(Mutable, v4[5]);
        v14 = v4[6];
        if (v14)
        {
          v18.location = 0;
          v18.length = Count;
          CFArrayAppendArray(Mutable, v14, v18);
        }
      }

      else if (v7)
      {
        Mutable = CFRetain(v7);
      }

      else
      {
        Mutable = 0;
      }

      a1[1] = Mutable;
      result = 1;
      goto LABEL_19;
    }
  }

  logger = mysyslog_get_logger();
  v11 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(logger, v11);
  if (result)
  {
    v16[0] = 67109120;
    v16[1] = v3;
    _os_log_impl(&dword_277237000, logger, v11, "Couldn't find the state for pid: %d", v16, 8u);
    result = 0;
  }

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WebSheetProcessResponse(uint64_t *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  PID = CommandHandlerGetPID(*a1);
  v3 = &S_WebSheetStateHeadStorage;
  do
  {
    v3 = *v3;
    if (!v3)
    {
      logger = mysyslog_get_logger();
      v16 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(logger, v16);
      if (!result)
      {
        goto LABEL_25;
      }

      v18 = CommandHandlerGetPID(*a1);
      v31[0] = 67109120;
      v31[1] = v18;
      v19 = "Couldn't find the state for pid: %d";
      v20 = logger;
      v21 = v16;
      v22 = 8;
LABEL_23:
      _os_log_impl(&dword_277237000, v20, v21, v19, v31, v22);
      goto LABEL_24;
    }

    v4 = *(v3 + 19);
  }

  while (v4 != PID || v4 <= 0);
  v6 = a1[1];
  Value = CFDictionaryGetValue(v6, @"UniqueID");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    v23 = mysyslog_get_logger();
    v24 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(v23, v24);
    if (!result)
    {
      goto LABEL_25;
    }

    LOWORD(v31[0]) = 0;
    v19 = "missing/invalid uniqueID";
    v20 = v23;
    v21 = v24;
    v22 = 2;
    goto LABEL_23;
  }

  v9 = v3[5];
  if (v9 && commandContainsUniqueID(v9, Value))
  {
    v31[0] = 0;
    v10 = CFDictionaryGetValue(v6, @"Result");
    v11 = CFNumberGetTypeID();
    if (!v10 || CFGetTypeID(v10) != v11 || !CFNumberGetValue(v10, kCFNumberSInt32Type, v31))
    {
      v31[0] = 4;
    }

    v12 = CFDictionaryGetValue(v6, @"ResultOptions");
    v13 = CFDictionaryGetTypeID();
    if (v12)
    {
      if (CFGetTypeID(v12) == v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    if (!*(v3 + 73))
    {
      v30 = v31[0];
      *(v3 + 73) = 1;
      if (*(v3 + 72) == 1)
      {
        S_webSheetDoneCallback(v3[4], v30, v14);
      }
    }

    goto LABEL_37;
  }

  result = v3[6];
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count >= 1)
    {
      v27 = Count;
      v28 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3[6], v28);
        result = commandContainsUniqueID(ValueAtIndex, Value);
        if (result)
        {
          break;
        }

        if (v27 == ++v28)
        {
          goto LABEL_25;
        }
      }

      CFArrayRemoveValueAtIndex(v3[6], v28);
LABEL_37:
      result = 1;
      goto LABEL_25;
    }

LABEL_24:
    result = 0;
  }

LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WebSheetProcessControl(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  PID = CommandHandlerGetPID(*a1);
  v3 = PID;
  v4 = &S_WebSheetStateHeadStorage;
  do
  {
    v4 = *v4;
    if (!v4)
    {
      logger = mysyslog_get_logger();
      v20 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v20))
      {
        *buf = 67109120;
        *&buf[4] = v3;
        _os_log_impl(&dword_277237000, logger, v20, "Couldn't find the state for pid: %d", buf, 8u);
      }

      goto LABEL_16;
    }

    v5 = *(v4 + 19);
  }

  while (v5 != PID || v5 <= 0);
  Value = CFDictionaryGetValue(*(a1 + 8), @"Type");
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_16;
  }

  v9 = 0;
  if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) || valuePtr != 1)
  {
    goto LABEL_17;
  }

  v10 = v4[2];
  v11 = CaptiveCopyInterfaceSSID(v10);
  if (!v11)
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v12 = v11;
  v13 = my_CFUUIDStringCreate(0);
  values = v13;
  v14 = CaptiveCopyPortalURL(v10);
  if (v14)
  {
    Current = CFRunLoopGetCurrent();
    api = captive_agent_query_api(v12, v10, v14, 0xAu, WebSheetQueryAPIComplete, v13, Current);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v17 = CaptiveCopyInitialURL(v10);
    if (!v17)
    {
      v17 = @"http://www.apple.com/library/test/success.html";
      CFRetain(@"http://www.apple.com/library/test/success.html");
    }

    v23 = CFRunLoopGetCurrent();
    v18 = captive_agent_send_probe(v12, v10, 0, v17, 0x28u, WebSheetProbeComplete, v13, v23);
    api = 0;
  }

  if (v18 | api)
  {
    keys = @"ProbeID";
    *(a1 + 16) = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v26 = values;
    if (!S_prober_list)
    {
      S_prober_list = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    *buf = v4;
    *&buf[8] = v18;
    *&buf[16] = api;
    v27 = CFDataCreate(0, buf, 24);
    CFDictionarySetValue(S_prober_list, v26, v27);
    CFRelease(v27);
    v28 = mysyslog_get_logger();
    v29 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v28, v29))
    {
      *buf = 138412546;
      *&buf[4] = v26;
      *&buf[12] = 2048;
      *&buf[14] = v18;
      _os_log_impl(&dword_277237000, v28, v29, "prober %@ detect %p added", buf, 0x16u);
    }

    v9 = 1;
  }

  else
  {
    v24 = mysyslog_get_logger();
    v25 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v24, v25))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v24, v25, "Unable to send probe to the network", buf, 2u);
    }

    v9 = 0;
  }

  CFRelease(v12);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (values)
  {
    CFRelease(values);
  }

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

const void *commandContainsUniqueID(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, @"UniqueID");
  if (result)
  {
    return (CFEqual(result, a2) != 0);
  }

  return result;
}

void WebSheetQueryAPIComplete(__CFString *a1, int a2, const void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = ProberContextGet(a1);
  logger = mysyslog_get_logger();
  if (v6)
  {
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v8))
    {
      v9 = v6[2];
      *buf = 138412802;
      v17 = a1;
      v18 = 2048;
      v19 = v9;
      v20 = 1024;
      v21 = a2;
      _os_log_impl(&dword_277237000, logger, v8, "prober %@ query_api %p complete, result %d", buf, 0x1Cu);
    }

    CaptiveUpdateAPIState(*(*v6 + 16), a3);
    if (a2 == 16)
    {
      v10 = 3;
    }

    else
    {
      v10 = a2;
    }

    valuePtr = v10;
    v11 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    Command = createCommand(2, a1, 0, v11);
    CFRelease(v11);
    WebSheetStateIssueCommand(*v6, Command, 0);
    v6[1] = 0;
    ProberContextRemove(a1);
    CFRelease(Command);
  }

  else
  {
    v13 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v13))
    {
      *buf = 138412290;
      v17 = a1;
      _os_log_impl(&dword_277237000, logger, v13, "No context for %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void WebSheetProbeComplete(__CFString *a1, unsigned int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = ProberContextGet(a1);
  if (v4)
  {
    v5 = v4;
    if (a2 <= 0xF)
    {
      if (((1 << a2) & 0x801C) != 0)
      {
        v6 = 3;
LABEL_9:
        valuePtr = v6;
        logger = mysyslog_get_logger();
        v10 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v10))
        {
          v11 = v5[1];
          *buf = 138413058;
          v17 = a1;
          v18 = 2048;
          v19 = v11;
          v20 = 1024;
          v21 = a2;
          v22 = 1024;
          v23 = v6;
          _os_log_impl(&dword_277237000, logger, v10, "prober %@ detect %p complete, result %d, websheet probe result %d", buf, 0x22u);
        }

        v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
        Command = createCommand(2, a1, 0, v12);
        CFRelease(v12);
        WebSheetStateIssueCommand(*v5, Command, 0);
        v5[1] = 0;
        ProberContextRemove(a1);
        CFRelease(Command);
        goto LABEL_12;
      }

      v6 = a2;
      if (((1 << a2) & 0x41) != 0)
      {
        goto LABEL_9;
      }
    }

    v6 = 7;
    goto LABEL_9;
  }

  v7 = mysyslog_get_logger();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 138412290;
    v17 = a1;
    _os_log_impl(&dword_277237000, v7, v8, "No context for %@", buf, 0xCu);
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
}

BOOL CaptivePostDataToUserNameAndPassword(const __CFString *a1, const __CFString *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v4 = a4;
  v5 = a3;
  v101 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  *a3 = 0;
  v8 = CaptiveCopySettings();
  v9 = v8;
  if (!v8 || (v10 = CFGetTypeID(v8), v10 != CFDictionaryGetTypeID()))
  {
    logger = mysyslog_get_logger();
    v44 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v44))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, logger, v44, "failed to open settings file", buf, 2u);
    }

    if (!v9)
    {
      goto LABEL_55;
    }

    v45 = v9;
    goto LABEL_54;
  }

  Value = CFDictionaryGetValue(v9, @"ScrapingParameters");
  if (Value)
  {
    v12 = Value;
    v13 = CFGetTypeID(Value);
    if (v13 == CFDictionaryGetTypeID())
    {
      CFRetain(v12);
      CFRelease(v9);
      if (CaptiveIsDebug())
      {
        v14 = mysyslog_get_logger();
        v15 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v14, v15))
        {
          *buf = 138412290;
          v100 = a1;
          _os_log_impl(&dword_277237000, v14, v15, "content-type: %@. content:", buf, 0xCu);
        }

        v16 = mysyslog_get_logger();
        v17 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v16, v17))
        {
          *buf = 138477827;
          v100 = a2;
          _os_log_impl(&dword_277237000, v16, v17, "%{private}@", buf, 0xCu);
        }
      }

      if (CFStringFind(a1, @"multipart/form-data", 1uLL).location != -1)
      {
        v18 = CFStringFind(a1, @"boundary=", 1uLL);
        if (v18.location == -1 || (v19 = CaptiveCopyValueAfterEqual(a1, v18.location + v18.length)) == 0)
        {
          v50 = mysyslog_get_logger();
          v51 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v50, v51))
          {
            *buf = 138412290;
            v100 = a1;
            v52 = "Failed to find divider in %@";
            v53 = v50;
            v54 = v51;
            v55 = 12;
LABEL_61:
            _os_log_impl(&dword_277237000, v53, v54, v52, buf, v55);
          }
        }

        else
        {
          v20 = v19;
          v21 = *MEMORY[0x277CBECE8];
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], a2, v19);
          CFRelease(v20);
          if (ArrayBySeparatingStrings)
          {
            Count = CFArrayGetCount(ArrayBySeparatingStrings);
            Mutable = CFDictionaryCreateMutable(v21, Count, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v25 = Mutable;
            v97 = Count;
            if (Count >= 1 && Mutable)
            {
              v94 = v12;
              v95 = v21;
              v26 = 0;
              v96 = v5;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v26);
                v28 = @"\r\n";
                if (CFStringFind(ValueAtIndex, @"\r\n", 0).location == -1)
                {
                  v28 = @"\r";
                  if (CFStringFind(ValueAtIndex, @"\r", 0).location == -1)
                  {
                    v28 = @"\n";
                    if (CFStringFind(ValueAtIndex, @"\n", 0).location == -1)
                    {
                      goto LABEL_48;
                    }
                  }
                }

                v29 = v4;
                v30 = v25;
                v31 = ArrayBySeparatingStrings;
                v32 = CFStringCreateArrayBySeparatingStrings(v21, ValueAtIndex, v28);
                v33 = CFArrayGetCount(v32);
                v34 = v33 - 1;
                if (v33 >= 1)
                {
                  v35 = v33;
                  v36 = 0;
                  v37 = 0;
                  while (1)
                  {
                    v38 = CFArrayGetValueAtIndex(v32, v37);
                    v39 = v38;
                    if (v36)
                    {
                      if (CFStringGetLength(v38))
                      {
                        CFRetain(v39);
                        if (!v32)
                        {
                          goto LABEL_37;
                        }

LABEL_36:
                        CFRelease(v32);
                        goto LABEL_37;
                      }

LABEL_26:
                      if (v35 == ++v37)
                      {
                        goto LABEL_34;
                      }
                    }

                    else
                    {
                      if (CFStringFind(v38, @"Content-Disposition", 1uLL).location)
                      {
                        goto LABEL_26;
                      }

                      v40 = CFStringFind(v39, @"name=", 1uLL);
                      if (v40.location == -1)
                      {
                        break;
                      }

                      v36 = CaptiveCopyValueAfterEqual(v39, v40.location + v40.length);
                      v39 = 0;
                      if (!v36)
                      {
                        goto LABEL_35;
                      }

                      v41 = v34 == v37++;
                      if (v41)
                      {
                        goto LABEL_35;
                      }
                    }
                  }
                }

                v36 = 0;
LABEL_34:
                v39 = 0;
LABEL_35:
                if (v32)
                {
                  goto LABEL_36;
                }

LABEL_37:
                ArrayBySeparatingStrings = v31;
                v25 = v30;
                if (v36)
                {
                  if (v39)
                  {
                    v42 = CFStringCopyToLower(v36);
                    CFRelease(v36);
                    v4 = v29;
                    if (v42)
                    {
                      CFDictionaryAddValue(v25, v42, v39);
                      CFRelease(v42);
                    }
                  }

                  else
                  {
                    v39 = v36;
                    v4 = v29;
                  }

                  v21 = v95;
                  v5 = v96;
                }

                else
                {
                  v4 = v29;
                  v21 = v95;
                  v5 = v96;
                  if (!v39)
                  {
                    goto LABEL_48;
                  }
                }

                CFRelease(v39);
LABEL_48:
                if (++v26 == v97)
                {
                  goto LABEL_79;
                }
              }
            }

LABEL_83:
            CFRelease(ArrayBySeparatingStrings);
            if (v25)
            {
              v71 = CFDictionaryGetValue(v12, @"UserFields");
              if (v71)
              {
                v72 = v71;
                v73 = CFGetTypeID(v71);
                if (v73 == CFArrayGetTypeID())
                {
                  v74 = CFArrayGetCount(v72);
                  v75 = v74 - 1;
                  if (v74 >= 1)
                  {
                    v76 = 0;
                    do
                    {
                      v77 = CFArrayGetValueAtIndex(v72, v76);
                      v78 = CFDictionaryGetValue(v25, v77);
                      *v5 = v78;
                      if (v78)
                      {
                        break;
                      }

                      v41 = v75 == v76++;
                    }

                    while (!v41);
                  }
                }
              }

              v79 = CFDictionaryGetValue(v12, @"PasswordFields");
              if (v79)
              {
                v80 = v79;
                v81 = CFGetTypeID(v79);
                if (v81 == CFArrayGetTypeID())
                {
                  v82 = CFArrayGetCount(v80);
                  v83 = v82 - 1;
                  if (v82 >= 1)
                  {
                    v84 = 0;
                    do
                    {
                      v85 = CFArrayGetValueAtIndex(v80, v84);
                      v86 = CFDictionaryGetValue(v25, v85);
                      *v4 = v86;
                      if (v86)
                      {
                        break;
                      }

                      v41 = v83 == v84++;
                    }

                    while (!v41);
                  }
                }
              }

              v87 = CFDictionaryGetValue(v12, @"RealmFields");
              if (v87)
              {
                v88 = v87;
                v89 = CFGetTypeID(v87);
                if (v89 == CFArrayGetTypeID())
                {
                  v90 = CFArrayGetCount(v88);
                  v91 = v90 - 1;
                  if (v90 >= 1)
                  {
                    v92 = 0;
                    do
                    {
                      v93 = CFArrayGetValueAtIndex(v88, v92);
                      if (CFDictionaryGetValue(v25, v93))
                      {
                        break;
                      }

                      v41 = v91 == v92++;
                    }

                    while (!v41);
                  }
                }
              }

              if (*v5)
              {
                CFRetain(*v5);
              }

              if (*v4)
              {
                CFRetain(*v4);
              }

              CFRelease(v25);
              if (*v5)
              {
                if (*v4)
                {
                  goto LABEL_114;
                }

                CFRelease(*v5);
                *v5 = 0;
              }

              if (*v4)
              {
                CFRelease(*v4);
                *v4 = 0;
              }

LABEL_114:
              CFRelease(v12);
              if (*v5)
              {
                result = *v4 != 0;
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            goto LABEL_116;
          }

          v69 = mysyslog_get_logger();
          v70 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v69, v70))
          {
            *buf = 0;
            v52 = "CFStringCreateArrayBySeparatingStrings failed";
            v53 = v69;
            v54 = v70;
            v55 = 2;
            goto LABEL_61;
          }
        }

LABEL_116:
        v45 = v12;
LABEL_54:
        CFRelease(v45);
        goto LABEL_55;
      }

      v56 = *MEMORY[0x277CBECE8];
      v57 = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], a2, @"&");
      if (!v57)
      {
        goto LABEL_116;
      }

      ArrayBySeparatingStrings = v57;
      v58 = CFArrayGetCount(v57);
      if (v58 < 1)
      {
        v25 = 0;
        goto LABEL_83;
      }

      v59 = v58;
      v94 = v12;
      v60 = 0;
      v25 = 0;
      v98 = ArrayBySeparatingStrings;
      while (1)
      {
        if (!v25)
        {
          v25 = CFDictionaryCreateMutable(v56, v59, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v25)
          {
LABEL_79:
            v12 = v94;
            goto LABEL_83;
          }
        }

        v61 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v60);
        v62 = CFStringCreateArrayBySeparatingStrings(v56, v61, @"=");
        if (v62)
        {
          break;
        }

LABEL_78:
        if (v59 == ++v60)
        {
          goto LABEL_79;
        }
      }

      v63 = v62;
      if (CFArrayGetCount(v62) != 2)
      {
LABEL_77:
        CFRelease(v63);
        goto LABEL_78;
      }

      v64 = CFArrayGetValueAtIndex(v63, 0);
      v65 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(v56, v64, &stru_28865E0D8, 0x8000100u);
      v66 = CFArrayGetValueAtIndex(v63, 1);
      v67 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(v56, v66, &stru_28865E0D8, 0x8000100u);
      if (v65)
      {
        v68 = CFStringCopyToLower(v65);
        CFRelease(v65);
        if (v68 && v67)
        {
          CFDictionaryAddValue(v25, v68, v67);
        }

        else if (!v68)
        {
          goto LABEL_75;
        }

        CFRelease(v68);
      }

LABEL_75:
      ArrayBySeparatingStrings = v98;
      if (v67)
      {
        CFRelease(v67);
      }

      goto LABEL_77;
    }
  }

  CFRelease(v9);
  v48 = mysyslog_get_logger();
  v49 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(v48, v49);
  if (!result)
  {
    goto LABEL_56;
  }

  *buf = 0;
  _os_log_impl(&dword_277237000, v48, v49, "no scraping parameters", buf, 2u);
LABEL_55:
  result = 0;
LABEL_56:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *CFStringCopyToLower(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v2 = MutableCopy;
  if (MutableCopy)
  {
    CFStringLowercase(MutableCopy, 0);
  }

  return v2;
}

CFStringRef CaptiveCopyValueAfterEqual(const __CFString *a1, CFIndex a2)
{
  Length = CFStringGetLength(a1);
  if (Length < a2)
  {
    return 0;
  }

  v5 = Length;
  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, a2);
  if (CharacterAtIndex == 34)
  {
    ++a2;
  }

  if (v5 <= a2)
  {
    return 0;
  }

  v7 = CharacterAtIndex;
  v8 = 0;
  while (1)
  {
    v9 = CFStringGetCharacterAtIndex(a1, a2 + v8);
    if (v7 == 34 && v9 == 34)
    {
      break;
    }

    if (v9 <= 0x3B && ((1 << v9) & 0x800000100002400) != 0)
    {
      break;
    }

    ++v8;
    if (a2 + v8 >= v5)
    {
      v8 = v5 - a2;
      break;
    }
  }

  if (!v8)
  {
    return 0;
  }

  v10 = *MEMORY[0x277CBECE8];
  v11.location = a2;
  v11.length = v8;

  return CFStringCreateWithSubstring(v10, a1, v11);
}

os_log_t mysyslog_init_logger(os_log_t result)
{
  if (result <= 3 && !S_captive_logger)
  {
    result = os_log_create("com.apple.captive", S_captive_os_log_categories[result]);
    S_captive_logger = result;
  }

  return result;
}

const __CFData *my_CFPropertyListCreateVMData(CFPropertyListRef propertyList, _DWORD *a2)
{
  address = 0;
  *a2 = 0;
  result = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (result)
  {
    v4 = result;
    Length = CFDataGetLength(result);
    if (!vm_allocate(*MEMORY[0x277D85F48], &address, Length, 1))
    {
      v6 = address;
      BytePtr = CFDataGetBytePtr(v4);
      memmove(v6, BytePtr, Length);
      *a2 = Length;
    }

    CFRelease(v4);
    return address;
  }

  return result;
}

const __CFData *my_CFPropertyListCreateWithBytePtrAndLength(UInt8 *bytes, int a2)
{
  result = CFDataCreateWithBytesNoCopy(0, bytes, a2, *MEMORY[0x277CBED00]);
  if (result)
  {
    v3 = result;
    v4 = CFPropertyListCreateWithData(0, result, 0, 0, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t my_CFEqual(const void *a1, const void *a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  if (a2)
  {
    return CFEqual(a1, a2);
  }

  return 0;
}

CFStringRef my_CFUUIDStringCreate(const __CFAllocator *a1)
{
  v2 = CFUUIDCreate(a1);
  v3 = CFUUIDCreateString(a1, v2);
  CFRelease(v2);
  return v3;
}

const __CFArray *my_CFArrayContainsStringsOnly(const __CFArray *result)
{
  context = 1;
  if (result)
  {
    v1 = result;
    v3.length = CFArrayGetCount(result);
    v3.location = 0;
    CFArrayApplyFunction(v1, v3, CheckIsString, &context);
    return context;
  }

  return result;
}

CFTypeID CheckIsString(const void *a1, _BYTE *a2)
{
  result = CFStringGetTypeID();
  if (!a1 || (v5 = result, result = CFGetTypeID(a1), result != v5))
  {
    *a2 = 0;
  }

  return result;
}

uint64_t my_CFArrayContainsAnyArrayValues(CFArrayRef theArray, const __CFArray *a2)
{
  result = 0;
  if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    v6 = CFArrayGetCount(a2);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        v10.location = 0;
        v10.length = v7;
        if (CFArrayContainsValue(a2, v10, ValueAtIndex))
        {
          break;
        }

        if (Count == ++v8)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

void my_FieldSetRetainedCFType(const void **a1, CFTypeRef cf)
{
  v4 = *a1;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = cf;
}

uint64_t my_CFDictionaryGetBooleanValue(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return a3;
  }

  return CFBooleanGetValue(Value);
}

uint64_t my_CFArrayPointerAddValue(CFArrayRef *a1, const void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v7.length = CFArrayGetCount(*a1);
    v7.location = 0;
    if (CFArrayContainsValue(v3, v7, a2))
    {
      return 0;
    }

    Mutable = v3;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *a1 = Mutable;
  }

  CFArrayAppendValue(Mutable, a2);
  return 1;
}

CFIndex my_CFArrayFindValue(const __CFArray *a1, const void *a2)
{
  if (!a1)
  {
    return -1;
  }

  v4.length = CFArrayGetCount(a1);
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(a1, v4, a2);
}

uint64_t my_CFArrayFindDictWithKeyAndValue(const __CFArray *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
        Value = CFDictionaryGetValue(ValueAtIndex, a2);
        v11 = a3 == 0;
        if (!Value)
        {
          goto LABEL_7;
        }

        if (a3)
        {
          break;
        }

LABEL_8:
        if (v7 == ++v8)
        {
          return -1;
        }
      }

      v11 = CFEqual(Value, a3);
LABEL_7:
      if (v11)
      {
        return v8;
      }

      goto LABEL_8;
    }
  }

  return -1;
}

CFStringRef URLStringCopyHostName(CFStringRef URLString)
{
  if (!URLString)
  {
    return 0;
  }

  v1 = CFURLCreateWithString(0, URLString, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFURLCopyHostName(v1);
  CFRelease(v2);
  return v3;
}

void CNSPreferencesFlush()
{
  v19 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v1 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v1))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_277237000, logger, v1, &unk_27726D325, &v17, 2u);
  }

  if (preferencesURL)
  {
    v2 = preferences == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v9 = CFWriteStreamCreateWithFile(*MEMORY[0x277CBECE8], preferencesURL);
    if (v9)
    {
      v10 = v9;
      v11 = CFWriteStreamOpen(v9);
      v12 = v11 != 0;
      if (v11 && CFPropertyListWrite(preferences, v10, preferencesFormat, 0, 0))
      {
        CFRelease(v10);
        v3 = mysyslog_get_logger();
        v4 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v3, v4))
        {
          LOWORD(v17) = 0;
          v5 = "Updated preferences";
          goto LABEL_10;
        }

        goto LABEL_23;
      }

      CFRelease(v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = mysyslog_get_logger();
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = "failed to open write stream";
      if (v12)
      {
        v15 = "failed to write to stream";
      }

      v17 = 136315138;
      v18 = v15;
      v5 = "Failed to flush preferences. err =%s";
      v6 = v13;
      v7 = v14;
      v8 = 12;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v3 = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v3, v4))
  {
    LOWORD(v17) = 0;
    v5 = "not saving preferences - URL or preferences is NULL";
LABEL_10:
    v6 = v3;
    v7 = v4;
    v8 = 2;
LABEL_22:
    _os_log_impl(&dword_277237000, v6, v7, v5, &v17, v8);
  }

LABEL_23:
  v16 = *MEMORY[0x277D85DE8];
}

const void *CNSPreferencesGet(const void *a1)
{
  v2 = CNSPreferences();

  return CFDictionaryGetValue(v2, a1);
}

CFMutableDictionaryRef CNSPreferences()
{
  result = preferences;
  v1 = preferencesURL;
  if (__PAIR128__(preferences, preferencesURL) == 0)
  {
    v1 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], "/Library/Preferences/com.apple.captive.plist", 45, 0);
    preferencesURL = v1;
    result = preferences;
  }

  if (result)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1 == 0;
  }

  if (!v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], v1);
    if (v4)
    {
      v5 = v4;
      if (CFReadStreamOpen(v4))
      {
        v6 = CFPropertyListCreateWithStream(v3, v5, 0, 1uLL, &preferencesFormat, 0);
        preferences = v6;
        if (v6)
        {
          v7 = v6;
          TypeID = CFDictionaryGetTypeID();
          if (CFGetTypeID(v7) == TypeID)
          {
            v9 = 0;
            v10 = 1;
LABEL_12:
            v11 = &off_27A714830[v9++];
            do
            {
              v12 = *v11;
              if (CFDictionaryContainsKey(preferences, *v11))
              {
                CFDictionaryRemoveValue(preferences, v12);
                v10 = 0;
                if (v9 != 3)
                {
                  goto LABEL_12;
                }

                goto LABEL_23;
              }

              ++v9;
              ++v11;
            }

            while (v9 != 4);
            if (v10)
            {
              goto LABEL_24;
            }

LABEL_23:
            CNSPreferencesFlush();
          }

          else
          {
            logger = mysyslog_get_logger();
            v14 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(logger, v14))
            {
              *buf = 0;
              _os_log_impl(&dword_277237000, logger, v14, "preferences are the wrong format", buf, 2u);
            }

            if (preferences)
            {
              CFRelease(preferences);
              preferences = 0;
            }
          }
        }
      }

LABEL_24:
      CFRelease(v5);
    }

    result = preferences;
  }

  if (!result)
  {
    v15 = mysyslog_get_logger();
    v16 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v15, v16))
    {
      *v17 = 0;
      _os_log_impl(&dword_277237000, v15, v16, "Creating new preferences", v17, 2u);
    }

    result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    preferences = result;
  }

  return result;
}

void CNSPreferencesSet(const void *a1, const void *a2)
{
  v4 = CNSPreferences();
  CFDictionarySetValue(v4, a1, a2);

  CNSPreferencesFlush();
}

int *NotifyRegister(__CFRunLoop *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = &sourceHead;
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    if (v8[3] == a1)
    {
      goto LABEL_7;
    }
  }

  v9 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
  if (!v9)
  {
    return 0;
  }

  v8 = v9;
  v9[2] = 0;
  v9[3] = a1;
  *v9 = sourceHead;
  v9[1] = 0;
  sourceHead = v9;
LABEL_7:
  notify_port = 0;
  v10 = v8[2];
  if (v10)
  {
    notify_port = CFMachPortGetPort(v10);
    v11 = notify_port != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = malloc_type_malloc(0x28uLL, 0x10A0040DE786E1EuLL);
  v13 = v12;
  if (v12)
  {
    v12[8] = 0;
    *(v12 + 1) = v8;
    *(v12 + 2) = a3;
    *(v12 + 3) = a4;
    if (notify_register_mach_port(a2, &notify_port, v11, v12 + 8))
    {
LABEL_12:
      free(v13);
      return 0;
    }

    if (v8[2])
    {
      goto LABEL_15;
    }

    v18[1] = 0;
    v19 = 0u;
    v20 = 0;
    v18[2] = v8;
    v18[0] = 0;
    asprintf(v18, "CaptiveNetworkSupport/%s", a2);
    v8[2] = _SC_CFMachPortCreateWithPort();
    free(v18[0]);
    v15 = v8[2];
    if (v15)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x277CBECE8], v15, 0);
      if (RunLoopSource)
      {
        v17 = RunLoopSource;
        CFRunLoopAddSource(a1, RunLoopSource, *MEMORY[0x277CBF048]);
        CFRelease(v17);
LABEL_15:
        *v13 = v8[1];
        v8[1] = v13;
        return v13;
      }

      CFMachPortInvalidate(v8[2]);
      CFRelease(v8[2]);
      v8[2] = 0;
    }

    notify_cancel(v13[8]);
    goto LABEL_12;
  }

  return v13;
}

void NotificationDispose(void *a1)
{
  v2 = a1[1];
  v3 = (v2 + 8);
  while (1)
  {
    v4 = v3;
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (v3 == a1)
    {
      *v4 = *a1;
      break;
    }
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  if (!*(v2 + 8))
  {
    CFMachPortInvalidate(*(v2 + 16));
    CFRelease(*(v2 + 16));
    *(v2 + 16) = 0;
  }

  notify_cancel(*(a1 + 8));

  free(a1);
}

void CNAccountsImportCarrierCredentials()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = CNAccountsGet();
  if (!v0)
  {
    goto LABEL_20;
  }

  v1 = v0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionaryApplyFunction(v1, CNAccountsCarrierPurgeApplier, Mutable);
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        CFDictionaryRemoveValue(v1, ValueAtIndex);
      }
    }

    CFRelease(v3);
  }

  v8 = CopyCarrierAccountSettings(@"WISPrAccounts");
  if (!v8)
  {
    logger = mysyslog_get_logger();
    v19 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v19))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_277237000, logger, v19, "no carrier credentials", &v23, 2u);
    }

    goto LABEL_17;
  }

  v9 = v8;
  IsDebug = CaptiveIsDebug();
  v11 = mysyslog_get_logger();
  v12 = _SC_syslog_os_log_mapping();
  v13 = os_log_type_enabled(v11, v12);
  if (IsDebug)
  {
    if (v13)
    {
      v23 = 138412290;
      v24 = v9;
      v14 = "merging carrier accounts: %@";
      v15 = v11;
      v16 = v12;
      v17 = 12;
LABEL_15:
      _os_log_impl(&dword_277237000, v15, v16, v14, &v23, v17);
    }
  }

  else if (v13)
  {
    LOWORD(v23) = 0;
    v14 = "merging carrier accounts";
    v15 = v11;
    v16 = v12;
    v17 = 2;
    goto LABEL_15;
  }

  CFDictionaryApplyFunction(v9, CNAccountsCarrierMergeApplier, v1);
  CFRelease(v9);
LABEL_17:
  if (CaptiveIsDebug())
  {
    v20 = mysyslog_get_logger();
    v21 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v20, v21))
    {
      v23 = 138412290;
      v24 = v1;
      _os_log_impl(&dword_277237000, v20, v21, "accounts: %@", &v23, 0xCu);
    }
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
}

const void *CNAccountsGet()
{
  result = CNAccountsGet_preferences;
  if (!CNAccountsGet_preferences)
  {
    sSourcesHead = &CNAccountsInit_keychainSource;
    qword_281368E20 = 0;
    unk_281368E28 = 0;
    qword_281368E10 = @"Keychain";
    unk_281368E18 = CNAccountsKeychainQueryStart;
    CNAccountsInit_keychainSource = &CNAccountsInit_attSource;
    qword_281368E38 = kWISPrPasswordATTMD5;
    unk_281368E40 = CNAccountsATTQueryStart;
    CNAccountsInit_attSource = &CNAccountsInit_sfrSource;
    qword_281368E48 = 0;
    unk_281368E50 = CNAccountsATTValidate;
    qword_281368DE8 = @"SFR WiFi";
    unk_281368DF0 = CNAccountsSFRQueryStart;
    qword_281368DF8 = CNAccountsSFRRejected;
    CNAccountsInit_sfrSource = &CNAccountsInit_vzwSource;
    qword_281368E00 = CNAccountsSFRValidate;
    qword_281368DC0 = @"Verizon WiFi";
    unk_281368DC8 = CNAccountsVZWQueryStart;
    CNAccountsInit_vzwSource = 0;
    qword_281368DD0 = 0;
    unk_281368DD8 = CNAccountsVZWValidate;
    result = CNSPreferencesGet(@"WISPrAccounts");
    CNAccountsGet_preferences = result;
    if (!result)
    {
      CNAccountsGet_preferences = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CNSPreferencesSet(@"WISPrAccounts", CNAccountsGet_preferences);
      CFRelease(CNAccountsGet_preferences);
      return CNAccountsGet_preferences;
    }
  }

  return result;
}

void CNAccountsCarrierMergeApplier(const void *a1, const __CFDictionary *a2, __CFDictionary *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID() && (v7 = CFGetTypeID(a2), v7 == CFDictionaryGetTypeID()))
  {
    logger = mysyslog_get_logger();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v9))
    {
      v14 = 138412290;
      v15 = a1;
      _os_log_impl(&dword_277237000, logger, v9, "merging credential %@", &v14, 0xCu);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
    CFDictionaryAddValue(MutableCopy, @"Source", @"Carrier");
    CFDictionaryAddValue(a3, a1, MutableCopy);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    v11 = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      v14 = 138412290;
      v15 = a1;
      _os_log_impl(&dword_277237000, v11, v12, "invalid carrier credential %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

CFMutableArrayRef CNAccountsCopyMatching(uint64_t a1, const __CFDictionary *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1 && a2)
  {
    goto LABEL_3;
  }

  logger = mysyslog_get_logger();
  v6 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v6))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_277237000, logger, v6, "looking for accounts for SSID %@", &buf, 0xCu);
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v7 = CNAccountsGet();
  if (v7 && (v8 = v7, CFDictionaryGetCount(v7) >= 1))
  {
    *&buf = a1;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, kWISPrLoginURL[0]);
      v10 = URLStringCopyHostName(Value);
    }

    else
    {
      v10 = 0;
    }

    *(&buf + 1) = v10;
    v22 = Mutable;
    v13 = mysyslog_get_logger();
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v13, v14))
    {
      v17 = 138412546;
      v18 = a1;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_277237000, v13, v14, "Matching on ssid=%@, host=%@", &v17, 0x16u);
    }

    if (!a2 || v10)
    {
      CFDictionaryApplyFunction(v8, CNAccountsMatchDictionaryIterator, &buf);
      if (*(&buf + 1))
      {
        CFRelease(*(&buf + 1));
      }
    }
  }

  else
  {
    v11 = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_277237000, v11, v12, "No accounts to search through", &buf, 2u);
    }
  }

  if (!CFArrayGetCount(Mutable) && Mutable)
  {
    CFRelease(Mutable);
LABEL_3:
    Mutable = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return Mutable;
}

void CNAccountsMatchDictionaryIterator(const void *a1, const void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID || (v7 = CFDictionaryGetTypeID(), !a2) || CFGetTypeID(a2) != v7)
  {
    logger = mysyslog_get_logger();
    v11 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v11))
    {
      goto LABEL_13;
    }

    LOWORD(v31) = 0;
    v12 = "accounts contain invalid data";
    v13 = logger;
    v14 = v11;
    v15 = 2;
    goto LABEL_12;
  }

  if (*a3 && !CFEqual(*a3, a1))
  {
    Value = CFDictionaryGetValue(a2, @"MatchingSSIDs");
    v18 = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == v18)
    {
      if (!CFDictionaryContainsKey(Value, *a3) || !*(a3 + 8))
      {
        goto LABEL_13;
      }

      v19 = CFDictionaryGetValue(Value, *a3);
      if (!v19)
      {
        v28 = mysyslog_get_logger();
        v29 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v28, v29))
        {
          goto LABEL_13;
        }

        v30 = *a3;
        v31 = 138412546;
        v32 = a1;
        v33 = 2112;
        v34 = v30;
        v12 = "%@ does not match ssid %@";
        v13 = v28;
        v14 = v29;
        v15 = 22;
        goto LABEL_12;
      }

      v20 = v19;
      Count = CFArrayGetCount(v19);
      if (Count >= 1)
      {
        v22 = Count;
        v23 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v20, v23);
          v25 = CFGetTypeID(ValueAtIndex);
          if (v25 == CFStringGetTypeID())
          {
            if (CFStringHasSuffix(*(a3 + 8), ValueAtIndex))
            {
              goto LABEL_7;
            }
          }
        }

        while (v22 != ++v23);
      }

      v26 = mysyslog_get_logger();
      v27 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_13;
      }

      v31 = 138412290;
      v32 = a1;
      v12 = "%@ matches ssid but not trusted hosts";
    }

    else
    {
      v26 = mysyslog_get_logger();
      v27 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_13;
      }

      v31 = 138412290;
      v32 = a1;
      v12 = "%@ contains no matching SSIDs";
    }

    v13 = v26;
    v14 = v27;
    v15 = 12;
LABEL_12:
    _os_log_impl(&dword_277237000, v13, v14, v12, &v31, v15);
    goto LABEL_13;
  }

LABEL_7:
  v8 = mysyslog_get_logger();
  v9 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v8, v9))
  {
    v31 = 138412290;
    v32 = a1;
    _os_log_impl(&dword_277237000, v8, v9, "%@ matches", &v31, 0xCu);
  }

  CFArrayAppendValue(*(a3 + 16), a1);
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
}

BOOL CNAccountsIsCarrierSSID(uint64_t a1)
{
  v2 = CNAccountsGet();
  if (v2 && (v3 = v2, CFDictionaryGetCount(v2) >= 1))
  {
    v4 = *MEMORY[0x277CBED10];
    v8 = a1;
    BOOLean = v4;
    CFDictionaryApplyFunction(v3, CNAccountsIsCarrierSSIDIterator, &v8);
    return CFBooleanGetValue(BOOLean) != 0;
  }

  else
  {
    logger = mysyslog_get_logger();
    v7 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(logger, v7);
    if (result)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_277237000, logger, v7, "No carrier accounts to search through", &v8, 2u);
      return 0;
    }
  }

  return result;
}

void CNAccountsIsCarrierSSIDIterator(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (v7 = CFDictionaryGetTypeID(), a2) && CFGetTypeID(a2) == v7)
  {
    if (CNAccountsIsCarrierCredential(a1) && *a3)
    {
      Value = CFDictionaryGetValue(a2, @"MatchingSSIDs");
      v9 = CFDictionaryGetTypeID();
      if (!Value || CFGetTypeID(Value) != v9)
      {
        logger = mysyslog_get_logger();
        v11 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(logger, v11))
        {
          goto LABEL_15;
        }

        v21 = 138412290;
        v22 = a1;
        v13 = "%@ contains no matching SSIDs";
        v14 = logger;
        goto LABEL_18;
      }

      if (CFDictionaryContainsKey(Value, *a3) == 1)
      {
        *(a3 + 8) = *MEMORY[0x277CBED28];
        v10 = mysyslog_get_logger();
        v11 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = *a3;
          v21 = 138412290;
          v22 = v12;
          v13 = "Found the carrier ssid: %@";
          v14 = v10;
LABEL_18:
          v17 = v11;
          v18 = 12;
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v15 = mysyslog_get_logger();
    v16 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v15, v16))
    {
      LOWORD(v21) = 0;
      v13 = "accounts contain invalid data";
      v14 = v15;
      v17 = v16;
      v18 = 2;
LABEL_14:
      _os_log_impl(&dword_277237000, v14, v17, v13, &v21, v18);
    }
  }

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

const void *CNAccountsLookupPasswordType(const void *a1)
{
  v2 = CNAccountsGet();
  if (!v2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v2, a1);
  if (!Value)
  {
    return 0;
  }

  return CFDictionaryGetValue(Value, @"PasswordType");
}

uint64_t CNAccountsLookupAuthType(const void *a1, int *a2)
{
  result = CNAccountsGet();
  if (!a2)
  {
    return 0;
  }

  *a2 = 0;
  if (!result)
  {
    return result;
  }

  result = CFDictionaryGetValue(result, a1);
  if (!result)
  {
    return result;
  }

  Value = CFDictionaryGetValue(result, @"AuthScheme");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  if (my_CFEqual(Value, @"Form"))
  {
    v7 = 1;
LABEL_12:
    *a2 = v7;
    return 1;
  }

  result = my_CFEqual(Value, @"Bearer");
  if (result)
  {
    v7 = 2;
    goto LABEL_12;
  }

  return result;
}

uint64_t CNAccountsCredentialsValidate(const void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = CNAccountsGet();
  if (!v2)
  {
    logger = mysyslog_get_logger();
    v16 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v16))
    {
      LOWORD(v18) = 0;
      v11 = "Unable to create account setting";
      v12 = logger;
      v13 = v16;
      v14 = 2;
      goto LABEL_13;
    }

LABEL_14:
    v17 = *MEMORY[0x277D85DE8];
    return 0;
  }

  Value = CFDictionaryGetValue(v2, a1);
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    v9 = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      v18 = 138412290;
      v19 = a1;
      v11 = "Account %@ not found";
      v12 = v9;
      v13 = v10;
      v14 = 12;
LABEL_13:
      _os_log_impl(&dword_277237000, v12, v13, v11, &v18, v14);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v5 = CNAccountsLookupSource(Value);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5[4];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t *CNAccountsLookupSource(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"PasswordType");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = &sSourcesHead;
  do
  {
    v3 = *v3;
  }

  while (v3 && !CFEqual(v2, v3[1]));
  return v3;
}

void *CNAccountsCredentialsQueryStart(const __CFString *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = 0;
  if (CNAccountsGet())
  {
    v12 = CNAccountCopyCurrentAccountRecord(a2, a1, &v30);
    TypeID = CFDictionaryGetTypeID();
    if (v12 && CFGetTypeID(v12) == TypeID)
    {
      logger = mysyslog_get_logger();
      v15 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v15))
      {
        if (v30)
        {
          v16 = "ssid";
        }

        else
        {
          v16 = "name";
        }

        *buf = 136315138;
        v32 = v16;
        _os_log_impl(&dword_277237000, logger, v15, "account found for %s ", buf, 0xCu);
      }

      v17 = CNAccountsLookupSource(v12);
      if (v17 && (v18 = v17[2]) != 0)
      {
        if (v30)
        {
          v19 = a2;
        }

        else
        {
          v19 = a1;
        }

        v20 = v18(v19, v12, a2, a3, a4, a5, a6);
        v21 = v20;
        if (v20)
        {
          *v20 = sQueriesHead;
          sQueriesHead = v20;
        }
      }

      else
      {
        v26 = mysyslog_get_logger();
        v27 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v26, v27))
        {
          *buf = 138412290;
          v32 = a1;
          _os_log_impl(&dword_277237000, v26, v27, "unsupported password type for account %@", buf, 0xCu);
        }

        v21 = 0;
      }

LABEL_26:
      CFRelease(v12);
      goto LABEL_27;
    }

    v22 = mysyslog_get_logger();
    v23 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v22, v23))
    {
      *buf = 138412290;
      v32 = a1;
      _os_log_impl(&dword_277237000, v22, v23, "account %@ not found", buf, 0xCu);
    }

    v21 = 0;
    if (v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v24 = mysyslog_get_logger();
    v25 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v24, v25))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v24, v25, "Unable to create accounts setting", buf, 2u);
    }

    v21 = 0;
  }

LABEL_27:
  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

CFMutableDictionaryRef CNAccountCopyCurrentAccountRecord(const __CFString *a1, const __CFString *a2, _BYTE *a3)
{
  v6 = CNAccountsGet();
  if (!a3)
  {
    return 0;
  }

  v7 = v6;
  if (!v6)
  {
    return 0;
  }

  *a3 = 0;
  if (!a2 || CFStringGetLength(a2) <= 0)
  {
    CFDictionaryGetTypeID();
    Value = 0;
LABEL_9:
    v10 = 1;
    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(v7, a2);
  TypeID = CFDictionaryGetTypeID();
  if (!Value)
  {
    goto LABEL_9;
  }

  v10 = CFGetTypeID(Value) != TypeID;
  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v10 && CFStringGetLength(a1) >= 1)
  {
    Value = CFDictionaryGetValue(v7, a1);
    *a3 = 1;
  }

LABEL_13:
  v11 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v11)
  {
    return 0;
  }

  return CFDictionaryCreateMutableCopy(0, 0, Value);
}

uint64_t CNAccountsCredentialsQueryAbort(uint64_t result)
{
  v1 = &sQueriesHead;
  while (1)
  {
    v2 = v1;
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    if (v1 == result)
    {
      *v2 = *result;
      *result = 0;
      return (*(result + 8))();
    }
  }

  return result;
}

const __CFDictionary *CNAccountsIsCarrierCredential(const void *a1)
{
  result = CNAccountsGet();
  if (result)
  {
    result = CFDictionaryGetValue(result, a1);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"Source");
      if (result)
      {
        return (CFEqual(result, @"Carrier") != 0);
      }
    }
  }

  return result;
}

void CNAccountsAddInternal(const __CFString *a1, const void *a2, const __CFString *a3, const __CFString *a4, int a5, int a6)
{
  values[1] = *MEMORY[0x277D85DE8];
  v12 = CNAccountsGet();
  v79 = 0;
  if (!v12)
  {
    logger = mysyslog_get_logger();
    v19 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v19))
    {
      goto LABEL_87;
    }

    *buf = 0;
    v20 = "unable to get accounts";
    v21 = logger;
    v22 = v19;
    v23 = 2;
LABEL_24:
    _os_log_impl(&dword_277237000, v21, v22, v20, buf, v23);
    goto LABEL_87;
  }

  v13 = v12;
  v14 = CNAccountCopyCurrentAccountRecord(a3, a1, &v79);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    if (!a2)
    {
      v17 = v14;
      goto LABEL_51;
    }

    goto LABEL_30;
  }

  v24 = mysyslog_get_logger();
  v25 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v24, v25))
  {
    if (a1)
    {
      v26 = a1;
    }

    else
    {
      v26 = a3;
    }

    *buf = 138412290;
    *&buf[4] = v26;
    _os_log_impl(&dword_277237000, v24, v25, "adding new account record for %@", buf, 0xCu);
  }

  if (!a2 || (v27 = *MEMORY[0x277CBECE8], (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0))
  {
    v33 = mysyslog_get_logger();
    v34 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_87;
    }

    *buf = 138412290;
    *&buf[4] = a1;
    v20 = "failed to create new account record for %@";
    v21 = v33;
    v22 = v34;
    v23 = 12;
    goto LABEL_24;
  }

  v29 = Mutable;
  v79 = a1 == 0;
  if (a6)
  {
    v30 = @"Websheet";
  }

  else
  {
    v30 = @"API";
  }

  CFDictionaryAddValue(Mutable, @"Source", v30);
  CFDictionaryAddValue(v29, @"PasswordType", @"Keychain");
  v31 = a5 == 2;
  v16 = v29;
  v32 = @"AuthScheme";
  if (v31)
  {
    CFDictionaryAddValue(v29, @"AuthScheme", @"Bearer");
    if (!a4 || CFStringGetLength(a4) < 9)
    {
      goto LABEL_26;
    }

    v32 = kTokenAuthLoginURL[0];
    v36 = v29;
    v35 = a4;
  }

  else
  {
    v35 = @"Form";
    v36 = v29;
  }

  CFDictionaryAddValue(v36, v32, v35);
LABEL_26:
  v37 = a3;
  if (!v79)
  {
    v38 = CFDictionaryCreateMutable(v27, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(v16, @"MatchingSSIDs", v38);
    v37 = a1;
    if (v38)
    {
      CFRelease(v38);
      v37 = a1;
    }
  }

  CFDictionaryAddValue(v13, v37, v16);
LABEL_30:
  v78 = v16;
  if (a1)
  {
    v39 = a1;
  }

  else
  {
    v39 = a3;
  }

  v40 = mysyslog_get_logger();
  v41 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v40, v41))
  {
    *buf = 138412290;
    *&buf[4] = v39;
    _os_log_impl(&dword_277237000, v40, v41, "updating password for %@", buf, 0xCu);
  }

  v42 = *MEMORY[0x277CBECE8];
  v43 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v43, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
  CFDictionaryAddValue(v43, *MEMORY[0x277CDC108], kWISPrSecurityDomain);
  CFDictionaryAddValue(v43, *MEMORY[0x277CDC0A8], *MEMORY[0x277CDC0C0]);
  CFDictionaryAddValue(v43, *MEMORY[0x277CDBF38], *MEMORY[0x277CDBF48]);
  CFDictionaryAddValue(v43, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBEE0]);
  CFDictionaryAddValue(v43, *MEMORY[0x277CDBF20], v39);
  v44 = *MEMORY[0x277CDC5E8];
  CFDictionaryAddValue(v43, *MEMORY[0x277CDC5E8], a2);
  v45 = SecItemAdd(v43, 0);
  if (!v45)
  {
    goto LABEL_42;
  }

  v46 = v45;
  if (v45 != -25299)
  {
    v58 = mysyslog_get_logger();
    v50 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v58, v50))
    {
      goto LABEL_48;
    }

    *buf = 67109120;
    *&buf[4] = v46;
    v51 = "SecItemAdd failed: %d";
    v52 = buf;
    v53 = v58;
    goto LABEL_46;
  }

  *buf = v44;
  values[0] = CFDictionaryGetValue(v43, v44);
  v47 = CFDictionaryCreate(v42, buf, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryRemoveValue(v43, v44);
  v48 = SecItemUpdate(v43, v47);
  if (v47)
  {
    CFRelease(v47);
  }

  if (!v48)
  {
LABEL_42:
    v54 = mysyslog_get_logger();
    v55 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_48;
    }

    *buf = 138412290;
    *&buf[4] = v39;
    v51 = "added password for account %@ to keychain";
    v52 = buf;
    v53 = v54;
    v56 = v55;
    v57 = 12;
    goto LABEL_47;
  }

  v49 = mysyslog_get_logger();
  v50 = _SC_syslog_os_log_mapping();
  if (!os_log_type_enabled(v49, v50))
  {
    goto LABEL_48;
  }

  v85[0] = 67109120;
  v85[1] = v48;
  v51 = "SecItemUpdate failed: %d";
  v52 = v85;
  v53 = v49;
LABEL_46:
  v56 = v50;
  v57 = 8;
LABEL_47:
  _os_log_impl(&dword_277237000, v53, v56, v51, v52, v57);
LABEL_48:
  if (v43)
  {
    CFRelease(v43);
  }

  v17 = v78;
  if (!v15)
  {
    v61 = 0;
    if (!a3)
    {
      goto LABEL_76;
    }

    goto LABEL_62;
  }

LABEL_51:
  if (v79)
  {
    Value = CFDictionaryGetValue(v17, @"AuthScheme");
    TypeID = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Bearer"))
      {
        if (a4 && CFStringGetLength(a4) >= 9)
        {
          CFDictionarySetValue(v17, kTokenAuthLoginURL[0], a4);
        }

        else
        {
          CFDictionaryRemoveValue(v17, kTokenAuthLoginURL[0]);
        }
      }
    }
  }

  v61 = 1;
  if (!a3)
  {
LABEL_76:
    if (!v61)
    {
LABEL_86:
      CFRelease(v17);
      CNSPreferencesFlush();
      goto LABEL_87;
    }

LABEL_77:
    if (a1)
    {
      v70 = a1;
    }

    else
    {
      v70 = a3;
    }

    v71 = mysyslog_get_logger();
    v72 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v71, v72))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_impl(&dword_277237000, v71, v72, "updating account record for [%@]", buf, 0xCu);
    }

    CFDictionarySetValue(v13, v70, v17);
    goto LABEL_86;
  }

LABEL_62:
  if (!a4 || v79)
  {
    goto LABEL_76;
  }

  v62 = URLStringCopyHostName(a4);
  v63 = mysyslog_get_logger();
  v64 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v63, v64))
  {
    *buf = 138412802;
    *&buf[4] = a3;
    v81 = 2112;
    v82 = v62;
    v83 = 2112;
    v84 = a1;
    _os_log_impl(&dword_277237000, v63, v64, "adding ssid=%@, host=%@ to %@", buf, 0x20u);
  }

  if (!v62)
  {
    goto LABEL_86;
  }

  v65 = CFDictionaryGetValue(v17, @"MatchingSSIDs");
  if (!v65 || (v66 = v65, v67 = CFGetTypeID(v65), v67 != CFDictionaryGetTypeID()))
  {
    v73 = mysyslog_get_logger();
    v74 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v73, v74))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_impl(&dword_277237000, v73, v74, "unable to add trusted ssid/host to account %@", buf, 0xCu);
    }

    CFRelease(v62);
    goto LABEL_86;
  }

  v68 = CFDictionaryGetValue(v66, a3);
  if (v68)
  {
LABEL_72:
    v87.length = CFArrayGetCount(v68);
    v87.location = 0;
    if (!CFArrayContainsValue(v68, v87, v62))
    {
      CFArrayAppendValue(v68, v62);
    }

    CFRelease(v62);
    if ((v61 & 1) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_77;
  }

  v69 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (v69)
  {
    v68 = v69;
    CFDictionaryAddValue(v66, a3, v69);
    CFRelease(v68);
    goto LABEL_72;
  }

  v76 = mysyslog_get_logger();
  v77 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v76, v77))
  {
    *buf = 0;
    _os_log_impl(&dword_277237000, v76, v77, "failed to add trusted hosts", buf, 2u);
  }

  CFRelease(v62);
  CFRelease(v17);
LABEL_87:
  v75 = *MEMORY[0x277D85DE8];
}

void CNAccountsRejected(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v8 = CNAccountsGet();
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, a1);
    if (Value)
    {
      v10 = Value;
      v11 = CFGetTypeID(Value);
      if (v11 == CFDictionaryGetTypeID())
      {
        v16 = 1;
        v12 = CNAccountsLookupSource(v10);
        if (v12 && (v13 = v12[3]) != 0)
        {
          v13(a1, v10, a2, a3, a4, &v16);
          if ((v16 & 1) == 0)
          {
            return;
          }
        }

        else if (CFDictionaryGetValue(v10, @"Source"))
        {
          v14 = CFDictionaryGetValue(v10, @"Source");
          if (CFEqual(v14, @"Carrier"))
          {
            return;
          }
        }

        v15 = CFDictionaryGetValue(v10, @"MatchingSSIDs");
        if (v15)
        {
          CFDictionaryRemoveValue(v15, a2);
        }

        CNSPreferencesFlush();
      }
    }
  }
}

void CNAccountsPurgeSSID(const void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = CNAccountsGet();
  if (v2)
  {
    v3 = v2;
    if (CFDictionaryGetCount(v2))
    {
      logger = mysyslog_get_logger();
      v5 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v5))
      {
        *buf = 138412290;
        v24 = a1;
        _os_log_impl(&dword_277237000, logger, v5, "Removing ssid %@ from all accounts", buf, 0xCu);
      }

      if (CFDictionaryContainsKey(v3, a1) && (v6 = CFDictionaryGetValue(v3, a1), v7 = CFDictionaryGetTypeID(), v6) && CFGetTypeID(v6) == v7)
      {
        CNAccountsKeychainRemovePassword(a1);
        CFDictionaryRemoveValue(v3, a1);
      }

      else
      {
        Count = CFDictionaryGetCount(v3);
        v9 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
        bzero(v9, 8 * Count);
        CFDictionaryGetKeysAndValues(v3, v9, 0);
        if (Count >= 1)
        {
          v10 = v9;
          do
          {
            Value = CFDictionaryGetValue(v3, *v10);
            if (Value)
            {
              v12 = Value;
              v13 = CFGetTypeID(Value);
              if (v13 == CFDictionaryGetTypeID())
              {
                v14 = *v10;
                v15 = mysyslog_get_logger();
                v16 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v15, v16))
                {
                  *buf = 138412546;
                  v24 = v14;
                  v25 = 2112;
                  v26 = a1;
                  _os_log_impl(&dword_277237000, v15, v16, "Checking Account=[%@] for ssid=[%@]", buf, 0x16u);
                }

                v17 = CFDictionaryGetValue(v12, @"Source");
                if (!CFEqual(v17, @"Carrier"))
                {
                  v18 = CFDictionaryGetValue(v12, @"MatchingSSIDs");
                  TypeID = CFDictionaryGetTypeID();
                  if (v18)
                  {
                    if (CFGetTypeID(v18) == TypeID)
                    {
                      CFDictionaryRemoveValue(v18, a1);
                      if (!CFDictionaryGetCount(v18))
                      {
                        v20 = mysyslog_get_logger();
                        v21 = _SC_syslog_os_log_mapping();
                        if (os_log_type_enabled(v20, v21))
                        {
                          *buf = 138412290;
                          v24 = v14;
                          _os_log_impl(&dword_277237000, v20, v21, "Account %@ has no more ssids. PURGE!", buf, 0xCu);
                        }

                        CNAccountsKeychainRemovePassword(v14);
                        CFDictionaryRemoveValue(v3, v14);
                      }
                    }
                  }
                }
              }
            }

            ++v10;
            --Count;
          }

          while (Count);
        }

        free(v9);
      }

      CNSPreferencesFlush();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void CNAccountsKeychainRemovePassword(const void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(v3, *MEMORY[0x277CDC108], kWISPrSecurityDomain);
    CFDictionaryAddValue(v3, *MEMORY[0x277CDC0A8], *MEMORY[0x277CDC0C0]);
    CFDictionaryAddValue(v3, *MEMORY[0x277CDBF38], *MEMORY[0x277CDBF48]);
    CFDictionaryAddValue(v3, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBEE0]);
    CFDictionaryAddValue(v3, *MEMORY[0x277CDBF20], a1);
    v4 = SecItemDelete(v3);
    if (v4)
    {
      v5 = v4;
      logger = mysyslog_get_logger();
      v7 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v7))
      {
        v9[0] = 67109120;
        v9[1] = v5;
        _os_log_impl(&dword_277237000, logger, v7, "SecItemDelete failed: %d", v9, 8u);
      }
    }

    CFRelease(v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t *CNAccountsCredentialQueryInvalidate(uint64_t *result)
{
  v1 = &sQueriesHead;
  while (1)
  {
    v2 = v1;
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    if (v1 == result)
    {
      *v2 = *result;
      return result;
    }
  }

  return result;
}

CFDictionaryRef WISPrCredentialsDictionaryCreate(void *a1, void *a2)
{
  result = 0;
  keys[2] = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    keys[0] = @"UserName";
    keys[1] = @"Password";
    values[0] = a1;
    values[1] = a2;
    result = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

CFRunLoopSourceRef *CNAccountsKeychainQueryStart(__CFRunLoopSource *a1, __CFRunLoopSource *a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFRunLoopSource *a6, __CFRunLoopSource *a7)
{
  v11 = malloc_type_malloc(0x38uLL, 0xE00409C3A2E09uLL);
  v12 = v11;
  if (v11)
  {
    v15.version = 0;
    memset(&v15.retain, 0, 56);
    v15.info = v11;
    v15.perform = CNAccountsKeychainQueryDo;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    v11[6] = 0;
    *(v11 + 2) = 0u;
    v11[1] = CNAccountsKeychainQueryAbort;
    v11[2] = a6;
    v11[3] = a7;
    v11[6] = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v15);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v12[6], *MEMORY[0x277CBF048]);
    CFRunLoopSourceSignal(v12[6]);
    v12[4] = a1;
    CFRetain(a1);
    v12[5] = a2;
    CFRetain(a2);
  }

  return v12;
}

void CNAccountsKeychainQueryDo(uint64_t *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  CFRunLoopSourceInvalidate(a1[6]);
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveSource(Current, a1[6], *MEMORY[0x277CBF048]);
  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }

  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v5))
  {
    v6 = a1[4];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_277237000, logger, v5, "querying keychain for %@", &buf, 0xCu);
  }

  v7 = &sQueriesHead;
  while (1)
  {
    v8 = v7;
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    if (v7 == a1)
    {
      *v8 = *a1;
      break;
    }
  }

  v9 = *MEMORY[0x277CDC108];
  *&buf = *MEMORY[0x277CDC228];
  *(&buf + 1) = v9;
  v10 = *MEMORY[0x277CDC0A8];
  v37 = *MEMORY[0x277CDBF20];
  v38 = v10;
  v11 = *MEMORY[0x277CDC558];
  v39 = *MEMORY[0x277CDBF38];
  v40 = v11;
  values[0] = *MEMORY[0x277CDC248];
  values[1] = kWISPrSecurityDomain;
  v12 = *MEMORY[0x277CDC0C0];
  values[2] = a1[4];
  values[3] = v12;
  v13 = *MEMORY[0x277CBED28];
  values[4] = *MEMORY[0x277CDBF48];
  values[5] = v13;
  v14 = *MEMORY[0x277CBECE8];
  v15 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &buf, values, 6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  result = 0;
  v16 = SecItemCopyMatching(v15, &result);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16 || (v25 = result, TypeID = CFDataGetTypeID(), !v25) || CFGetTypeID(v25) != TypeID)
  {
    v17 = mysyslog_get_logger();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = a1[4];
      *v31 = 138412546;
      v32 = v19;
      v33 = 1024;
      v34 = v16;
      _os_log_impl(&dword_277237000, v17, v18, "Failed to get password for %@: %d", v31, 0x12u);
    }

    v20 = 0;
    goto LABEL_15;
  }

  v20 = CFStringCreateFromExternalRepresentation(v14, result, 0x8000100u);
  v27 = WISPrCredentialsDictionaryCreate(a1[4], v20);
  if (!v27)
  {
LABEL_15:
    MutableCopy = 0;
    goto LABEL_16;
  }

  v28 = v27;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v27);
  if (CFDictionaryContainsKey(a1[5], kTokenAuthLoginURL[0]))
  {
    Value = CFDictionaryGetValue(a1[5], kTokenAuthLoginURL[0]);
    CFDictionaryAddValue(MutableCopy, kTokenAuthLoginURL[0], Value);
    CFRelease(v28);
  }

  else
  {
    CFRelease(MutableCopy);
    MutableCopy = v28;
  }

LABEL_16:
  (a1[2])(a1[3], MutableCopy);
  v22 = a1[4];
  if (v22)
  {
    CFRelease(v22);
    a1[4] = 0;
  }

  v23 = a1[5];
  if (v23)
  {
    CFRelease(v23);
    a1[5] = 0;
  }

  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  free(a1);
  v24 = *MEMORY[0x277D85DE8];
}

void CNAccountsKeychainQueryAbort(uint64_t a1)
{
  CFRunLoopSourceInvalidate(*(a1 + 48));
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveSource(Current, *(a1 + 48), *MEMORY[0x277CBF048]);
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void CNAccountsCarrierPurgeApplier(const void *a1, CFTypeRef cf, __CFArray *a3)
{
  v6 = CFGetTypeID(cf);
  if (v6 != CFDictionaryGetTypeID() || (v7 = CFGetTypeID(a1), v7 != CFStringGetTypeID()) || (Value = CFDictionaryGetValue(cf, @"Source"), CFEqual(Value, @"Carrier")))
  {

    CFArrayAppendValue(a3, a1);
  }
}

CFRunLoopSourceRef *CNAccountsATTQueryStart(__CFRunLoopSource *a1, __CFRunLoopSource *a2, uint64_t a3, uint64_t a4, __CFRunLoopSource *a5, __CFRunLoopSource *a6, __CFRunLoopSource *a7)
{
  v12 = CopySIMStatus();
  v13 = v12;
  if (v12)
  {
    v14 = CFEqual(v12, *MEMORY[0x277CC3EE0]);
    CFRelease(v13);
    if (v14)
    {
      return 0;
    }

    else
    {
      v15 = malloc_type_malloc(0x40uLL, 0xE0040B3D8CE0AuLL);
      v13 = v15;
      if (v15)
      {
        v18.version = 0;
        memset(&v18.retain, 0, 56);
        v18.info = v15;
        v18.perform = CNAccountsATTQueryDo;
        *v15 = 0u;
        *(v15 + 1) = 0u;
        *(v15 + 2) = 0u;
        *(v15 + 3) = 0u;
        v15[1] = CNAccountsATTQueryAbort;
        v15[2] = a6;
        v15[3] = a7;
        v15[7] = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v18);
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, v13[7], *MEMORY[0x277CBF048]);
        CFRunLoopSourceSignal(v13[7]);
        v13[4] = a1;
        CFRetain(a1);
        v13[6] = a2;
        CFRetain(a2);
        v13[5] = a5;
        CFRetain(a5);
      }
    }
  }

  return v13;
}

void CNAccountsATTQueryDo(uint64_t a1)
{
  CFRunLoopSourceInvalidate(*(a1 + 56));
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveSource(Current, *(a1 + 56), *MEMORY[0x277CBF048]);
  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 56) = 0;
  }

  CNAccountsCredentialQueryInvalidate(a1);
  v4 = *(a1 + 40);
  if (!v4)
  {
    logger = mysyslog_get_logger();
    LOBYTE(v27) = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v27))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v28 = "redirect missing";
LABEL_36:
    _os_log_impl(&dword_277237000, logger, v27, v28, buf, 2u);
    goto LABEL_37;
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    logger = mysyslog_get_logger();
    LOBYTE(v27) = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v27))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v28 = "account missing";
    goto LABEL_36;
  }

  if (!CFDictionaryGetValue(*(a1 + 40), kATTAuthenticationSeed[0]))
  {
    logger = mysyslog_get_logger();
    LOBYTE(v27) = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v27))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v28 = "Authentication seed missing";
    goto LABEL_36;
  }

  Value = CFDictionaryGetValue(v4, kWISPrLoginURL[0]);
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFURLCreateWithString(*MEMORY[0x277CBECE8], Value, 0);
  if (!v8)
  {
    logger = mysyslog_get_logger();
    LOBYTE(v27) = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v27))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v28 = "URL missing";
    goto LABEL_36;
  }

  v9 = v8;
  String = CFURLCopyQueryString(v8, &stru_28865E0D8);
  CFRelease(v9);
  if (!String)
  {
    logger = mysyslog_get_logger();
    v27 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v27))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v28 = "Query string missing";
    goto LABEL_36;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v7, String, @"&");
  CFRelease(String);
  if (!ArrayBySeparatingStrings)
  {
    logger = mysyslog_get_logger();
    LOBYTE(v27) = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v27))
    {
      *buf = 0;
      v28 = "elements missing";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count < 1)
  {
LABEL_32:
    CFRelease(ArrayBySeparatingStrings);
    logger = mysyslog_get_logger();
    LOBYTE(v27) = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v27))
    {
      *buf = 0;
      v28 = "macAddress missing";
      goto LABEL_36;
    }

LABEL_37:
    v29 = 0;
    goto LABEL_38;
  }

  v13 = Count;
  v14 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v14);
    v16 = CFStringCreateArrayBySeparatingStrings(v7, ValueAtIndex, @"=");
    if (v16)
    {
      break;
    }

LABEL_15:
    if (v13 == ++v14)
    {
      goto LABEL_32;
    }
  }

  v17 = v16;
  if (CFArrayGetCount(v16) != 2 || (v18 = CFArrayGetValueAtIndex(v17, 0), CFStringCompare(v18, @"MacAddr", 0)))
  {
    CFRelease(v17);
    goto LABEL_15;
  }

  v19 = CFArrayGetValueAtIndex(v17, 1);
  CFRetain(v19);
  CFRelease(v17);
  if (!v19)
  {
    goto LABEL_15;
  }

  CFRelease(ArrayBySeparatingStrings);
  v20 = CFDictionaryGetValue(v5, @"SharedSecret");
  v21 = _SC_cfstring_to_cstring();
  v22 = _SC_cfstring_to_cstring();
  v23 = _SC_cfstring_to_cstring();
  v24 = v23;
  if (v21 && v23 && v22)
  {
    v25 = CFStringCreateWithFormat(v7, 0, @"%s%s%s", v21, v23, v22);
    goto LABEL_60;
  }

  v38 = mysyslog_get_logger();
  v39 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v38, v39))
  {
    *buf = 0;
    _os_log_impl(&dword_277237000, v38, v39, "Could not convert strings", buf, 2u);
  }

  v25 = 0;
  v40 = 0;
  if (v21)
  {
LABEL_60:
    free(v21);
    v40 = v25;
  }

  if (v24)
  {
    free(v24);
  }

  if (v22)
  {
    free(v22);
  }

  if (!v40)
  {
    v44 = mysyslog_get_logger();
    v45 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v44, v45))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v44, v45, "Could not compute pre-hash", buf, 2u);
    }

    CFRelease(v19);
    goto LABEL_37;
  }

  CFRelease(v19);
  Length = CFStringGetLength(v40);
  if (Length <= CFStringGetLength(v20))
  {
    v29 = CaptiveAccountsATTMD5Hash(v40);
  }

  else
  {
    v42 = CFStringGetLength(v40);
    v47.length = v42 - CFStringGetLength(v20);
    v47.location = 0;
    v43 = CFStringCreateWithSubstring(v7, v40, v47);
    v29 = CaptiveAccountsATTMD5Hash(v40);
    if (v43)
    {
      CFRelease(v43);
    }
  }

  CFRelease(v40);
LABEL_38:
  v30 = CNAccountsATTCopyPhoneNumber();
  v31 = CFDictionaryGetValue(*(a1 + 48), @"AuthenticationRealm");
  if (v29 && v30 && v31)
  {
    v32 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@@%@", v30, v31);
    goto LABEL_43;
  }

  v32 = 0;
  v33 = 0;
  if (v30)
  {
LABEL_43:
    CFRelease(v30);
    v33 = v32;
  }

  v34 = WISPrCredentialsDictionaryCreate(v33, v29);
  (*(a1 + 16))(*(a1 + 24), v34);
  v35 = *(a1 + 32);
  if (v35)
  {
    CFRelease(v35);
    *(a1 + 32) = 0;
  }

  v36 = *(a1 + 40);
  if (v36)
  {
    CFRelease(v36);
    *(a1 + 40) = 0;
  }

  v37 = *(a1 + 48);
  if (v37)
  {
    CFRelease(v37);
    *(a1 + 48) = 0;
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  free(a1);
}

void CNAccountsATTQueryAbort(uint64_t a1)
{
  CFRunLoopSourceInvalidate(*(a1 + 56));
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveSource(Current, *(a1 + 56), *MEMORY[0x277CBF048]);
  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 40) = 0;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  free(a1);
}

BOOL CNAccountsATTValidate()
{
  v0 = CNAccountsATTCopyPhoneNumber();
  v1 = v0;
  if (v0)
  {
    CFRelease(v0);
  }

  return v1 != 0;
}

CFStringRef CNAccountsATTCopyPhoneNumber()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = CopyPhoneNumber();
  if (v0)
  {
    v1 = v0;
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v3))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_277237000, logger, v3, "phone number: %@", &v8, 0xCu);
    }

    Length = CFStringGetLength(v1);
    if (Length < 10)
    {
      v5 = 0;
    }

    else
    {
      v11.length = 10;
      v11.location = Length - 10;
      v5 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], v1, v11);
    }

    CFRelease(v1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

char *CaptiveAccountsATTMD5Hash(const __CFString *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(a1);
  result = malloc_type_malloc(Length + 1, 0x7E8FD519uLL);
  if (result)
  {
    v4 = result;
    if (CFStringGetCString(a1, result, Length + 1, 0x8000100u))
    {
      *md = 0;
      v8 = 0;
      v5 = strlen(v4);
      CC_MD5(v4, v5, md);
      free(v4);
      result = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], v8, BYTE1(v8), BYTE2(v8), BYTE3(v8), BYTE4(v8), BYTE5(v8), BYTE6(v8), HIBYTE(v8));
    }

    else
    {
      free(v4);
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void CNAccountsSFRRejected(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v15 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], *MEMORY[0x277CDC0C0]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF38], *MEMORY[0x277CDBF48]);
  v9 = CFStringCreateWithFormat(v7, 0, @"%@-%@", kWISPrSecurityDomain, a1);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC108], v9);
  if (v9)
  {
    CFRelease(v9);
  }

  SecItemDelete(Mutable);
  logger = mysyslog_get_logger();
  v11 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v11))
  {
    *buf = 138412290;
    v14 = a1;
    _os_log_impl(&dword_277237000, logger, v11, "Purged credentials for account %@", buf, 0xCu);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void SFRHandleGetResult(uint64_t a1, int a2, const __CFDictionary *a3)
{
  values[2] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 56))
  {
    goto LABEL_45;
  }

  if (a2 != 5)
  {
    *(a1 + 56) = 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 40), @"ResponseCodeKey");
  v6 = CFDictionaryGetValue(*(a1 + 40), @"UsernameKey");
  v7 = CFDictionaryGetValue(*(a1 + 40), @"PasswordKey");
  if (Value)
  {
    v8 = Value;
  }

  else
  {
    v8 = @"c_response";
  }

  v9 = CFDictionaryGetValue(a3, v8);
  if (!v9)
  {
    logger = mysyslog_get_logger();
    v37 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v37))
    {
      *keys = 138412290;
      *&keys[4] = v8;
      _os_log_impl(&dword_277237000, logger, v37, "%@ missing", keys, 0xCu);
    }

    v38 = mysyslog_get_logger();
    v39 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_40;
    }

    *keys = 0;
    v40 = "Carrier credentials failed. Unable to parse response.";
    v41 = v38;
    v42 = v39;
    v43 = 2;
    goto LABEL_39;
  }

  v10 = v9;
  v11 = CFDictionaryGetValue(*(a1 + 40), @"SuccessCodeValue");
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"1";
  }

  if (!CFEqual(v10, v12))
  {
    v44 = CFDictionaryGetValue(*(a1 + 40), @"ResponseCodes");
    if (v44)
    {
      v45 = CFDictionaryGetValue(v44, v10);
    }

    else
    {
      v45 = 0;
    }

    v46 = mysyslog_get_logger();
    v47 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_40;
    }

    *keys = 138412546;
    *&keys[4] = v10;
    *&keys[12] = 2112;
    *&keys[14] = v45;
    v40 = "Carrier credentials failed. Response code: %@ - %@";
    v41 = v46;
    v42 = v47;
    v43 = 22;
LABEL_39:
    _os_log_impl(&dword_277237000, v41, v42, v40, keys, v43);
LABEL_40:
    v14 = 0;
    v17 = 0;
    goto LABEL_41;
  }

  if (v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = @"m_response";
  }

  v14 = CFDictionaryGetValue(a3, v13);
  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = @"p_response";
  }

  v16 = CFDictionaryGetValue(a3, v15);
  v17 = v16;
  if (v14 && v16)
  {
    v18 = *(a1 + 32);
    v19 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], *MEMORY[0x277CDC0C0]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF38], *MEMORY[0x277CDBF48]);
    v21 = CFStringCreateWithFormat(v19, 0, @"%@-%@", kWISPrSecurityDomain, v18);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC108], v21);
    if (v21)
    {
      CFRelease(v21);
    }

    SecItemDelete(Mutable);
    v22 = *MEMORY[0x277CDBF20];
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v14);
    ExternalRepresentation = CFStringCreateExternalRepresentation(v19, v17, 0x8000100u, 0);
    if (!ExternalRepresentation)
    {
      v50 = mysyslog_get_logger();
      v51 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_54;
      }

      *keys = 0;
      v32 = "CFStringCreateExternalRepresentation failed";
      v33 = keys;
      v34 = v50;
      v35 = v51;
      v52 = 2;
      goto LABEL_53;
    }

    v24 = ExternalRepresentation;
    v25 = *MEMORY[0x277CDC5E8];
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E8], ExternalRepresentation);
    CFRelease(v24);
    v26 = SecItemAdd(Mutable, 0);
    if (v26)
    {
      v27 = v26;
      if (v26 != -25299)
      {
        v55 = mysyslog_get_logger();
        v56 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v55, v56))
        {
          goto LABEL_54;
        }

        *keys = 67109120;
        *&keys[4] = v27;
        v32 = "SecItemAdd failed: %d";
        v33 = keys;
        v34 = v55;
        v35 = v56;
        goto LABEL_52;
      }

      *keys = v22;
      *&keys[8] = v25;
      values[0] = CFDictionaryGetValue(Mutable, v22);
      values[1] = CFDictionaryGetValue(Mutable, v25);
      v28 = CFDictionaryCreate(v19, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryRemoveValue(Mutable, v25);
      v29 = SecItemUpdate(Mutable, v28);
      if (v28)
      {
        CFRelease(v28);
      }

      if (v29)
      {
        v30 = mysyslog_get_logger();
        v31 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_54;
        }

        v58[0] = 67109120;
        v58[1] = v29;
        v32 = "SecItemUpdate failed: %d";
        v33 = v58;
        v34 = v30;
        v35 = v31;
LABEL_52:
        v52 = 8;
LABEL_53:
        _os_log_impl(&dword_277237000, v34, v35, v32, v33, v52);
LABEL_54:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        goto LABEL_41;
      }
    }

    v53 = mysyslog_get_logger();
    v54 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_54;
    }

    *keys = 138412290;
    *&keys[4] = v14;
    v32 = "added password for account %@ to keychain";
    v33 = keys;
    v34 = v53;
    v35 = v54;
    v52 = 12;
    goto LABEL_53;
  }

LABEL_41:
  if (!*(a1 + 56))
  {
    v48 = WISPrCredentialsDictionaryCreate(v14, v17);
    (*(a1 + 16))(*(a1 + 24), v48);
    if (v48)
    {
      CFRelease(v48);
    }

    SFRStateCleanup(a1);
  }

LABEL_45:
  v49 = *MEMORY[0x277D85DE8];
}

void SFRStateCleanup(void *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 4) = 0;
  }

  v3 = *(a1 + 5);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 5) = 0;
  }

  v4 = *(a1 + 6);
  if (v4)
  {
    CFRunLoopSourceInvalidate(v4);
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, *(a1 + 6), *MEMORY[0x277CBF048]);
    v6 = *(a1 + 6);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 6) = 0;
    }
  }

  if (*(a1 + 7))
  {
    captive_agent_get_credentials_abort(a1 + 7);
  }

  free(a1);
}

CFRunLoopSourceRef *CNAccountsSFRQueryStart(__CFRunLoopSource *a1, __CFRunLoopSource *a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFRunLoopSource *a6, __CFRunLoopSource *a7)
{
  v11 = malloc_type_malloc(0x40uLL, 0xE0040C44E1B7CuLL);
  v12 = v11;
  if (v11)
  {
    v15.version = 0;
    memset(&v15.retain, 0, 56);
    v15.info = v11;
    v15.perform = SFRQueryDo;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    v11[1] = SFRQueryAbort;
    v11[2] = a6;
    v11[3] = a7;
    v11[6] = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v15);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v12[6], *MEMORY[0x277CBF048]);
    CFRunLoopSourceSignal(v12[6]);
    v12[4] = a1;
    CFRetain(a1);
    v12[5] = a2;
    CFRetain(a2);
  }

  return v12;
}

void SFRQueryDo(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  CFRunLoopSourceInvalidate(*(a1 + 48));
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveSource(Current, *(a1 + 48), *MEMORY[0x277CBF048]);
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v5))
  {
    v6 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_277237000, logger, v5, "querying keychain for %@", &buf, 0xCu);
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@-%@", kWISPrSecurityDomain, *(a1 + 32));
  v9 = *MEMORY[0x277CDC108];
  *&buf = *MEMORY[0x277CDC228];
  *(&buf + 1) = v9;
  v10 = *MEMORY[0x277CDBF38];
  v37 = *MEMORY[0x277CDC0A8];
  v38 = v10;
  v11 = *MEMORY[0x277CDC550];
  v39 = *MEMORY[0x277CDC558];
  v40 = v11;
  values[0] = *MEMORY[0x277CDC248];
  values[1] = v8;
  v12 = *MEMORY[0x277CDBF48];
  values[2] = *MEMORY[0x277CDC0C0];
  values[3] = v12;
  v34 = *MEMORY[0x277CBED28];
  v35 = v34;
  v13 = CFDictionaryCreate(v7, &buf, values, 6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v8)
  {
    CFRelease(v8);
  }

  result = 0;
  v14 = SecItemCopyMatching(v13, &result);
  if (v13)
  {
    CFRelease(v13);
  }

  if (!v14 && result)
  {
    Value = CFDictionaryGetValue(result, *MEMORY[0x277CDC5E8]);
    if (Value)
    {
      v16 = CFStringCreateFromExternalRepresentation(v7, Value, 0x8000100u);
    }

    else
    {
      v16 = 0;
    }

    v17 = CFDictionaryGetValue(result, *MEMORY[0x277CDBF20]);
    CFRetain(v17);
    if (result)
    {
      CFRelease(result);
      result = 0;
    }

    if (v17 && v16)
    {
      v18 = WISPrCredentialsDictionaryCreate(v17, v16);
      (*(a1 + 16))(*(a1 + 24), v18);
      SFRStateCleanup(a1);
      CFRelease(v17);
      CFRelease(v16);
      if (v18)
      {
        CFRelease(v18);
      }

      goto LABEL_38;
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  v19 = CFDictionaryGetValue(*(a1 + 40), @"CredentialsURL");
  if (!v19)
  {
    v28 = mysyslog_get_logger();
    v29 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v28, v29))
    {
      *v41 = 0;
      v30 = "carrier account is missing CredentialsURL";
      goto LABEL_36;
    }

LABEL_37:
    (*(a1 + 16))(*(a1 + 24), 0);
    SFRStateCleanup(a1);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = CFDictionaryGetValue(*(a1 + 40), @"ServiceType");
  v22 = *MEMORY[0x277CC39D8];
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = *MEMORY[0x277CC39D8];
  }

  if (CaptiveIsDebug())
  {
    v24 = mysyslog_get_logger();
    v25 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v24, v25))
    {
      *v41 = 138412290;
      v42 = v20;
      _os_log_impl(&dword_277237000, v24, v25, "getting credentials from %@", v41, 0xCu);
    }
  }

  v26 = CFRunLoopGetCurrent();
  credentials = captive_agent_get_credentials(v20, v23, @"CaptiveNetworkSupport-514.0.0.0.1", 0x1Eu, SFRHandleGetResult, a1, v26);
  *(a1 + 56) = credentials;
  if (!credentials)
  {
    v28 = mysyslog_get_logger();
    v29 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v28, v29))
    {
      *v41 = 0;
      v30 = "failed to start http GET";
LABEL_36:
      _os_log_impl(&dword_277237000, v28, v29, v30, v41, 2u);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

LABEL_38:
  v31 = *MEMORY[0x277D85DE8];
}

void PowerChangeRegister(uint64_t (*a1)(void))
{
  if (!S_power_connection)
  {
    thePortRef = 0;
    S_power_connection = IORegisterForSystemPower(0, &thePortRef, power_changed, &S_power_notifier);
    if (S_power_connection)
    {
      S_power_rls = IONotificationPortGetRunLoopSource(thePortRef);
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, S_power_rls, *MEMORY[0x277CBF058]);
      if (S_power_connection)
      {
        S_awake = 1;
        S_callback_0 = a1;
      }
    }
  }
}

void PowerChangeDeregister()
{
  if (S_power_connection)
  {
    if (S_power_rls)
    {
      Current = CFRunLoopGetCurrent();
      CFRunLoopRemoveSource(Current, S_power_rls, *MEMORY[0x277CBF058]);
      S_power_rls = 0;
    }

    if (S_power_notifier)
    {
      IODeregisterForSystemPower(&S_power_notifier);
      S_power_notifier = 0;
    }

    if (S_power_connection)
    {
      IOServiceClose(S_power_connection);
      S_power_connection = 0;
    }

    S_callback_0 = 0;
    S_awake = 0;
  }
}

void power_changed(int a1, int a2, int a3, intptr_t notificationID)
{
  if (a3 == -536870288)
  {
LABEL_7:
    v5 = S_power_connection;

    IOAllowPowerChange(v5, notificationID);
    return;
  }

  if (a3 != -536870112)
  {
    if (a3 != -536870272 || S_awake != 1)
    {
      return;
    }

    S_awake = 0;
    if (S_callback_0)
    {
      S_callback_0(0);
    }

    goto LABEL_7;
  }

  if ((S_awake & 1) == 0)
  {
    S_awake = 1;
    v6 = S_callback_0;
    if (S_callback_0)
    {

      v6(1);
    }
  }
}

const __SCPreferences *CaptivePrefsInit(__CFRunLoop *a1, uint64_t (*a2)(void))
{
  result = SCPreferencesCreate(0, @"CaptivePrefs", @"com.apple.captive.control.plist");
  S_prefs = result;
  if (a1)
  {
    if (a2)
    {
      S_callback_1 = a2;
      SCPreferencesSetCallback(result, CaptivePrefsChanged, 0);
      v5 = *MEMORY[0x277CBF048];
      SCPreferencesScheduleWithRunLoop(S_prefs, a1, *MEMORY[0x277CBF048]);
      memset(&v6, 0, 72);
      v6.perform = prefs_changed_0;
      S_source = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v6);
      CFRunLoopAddSource(a1, S_source, v5);
      dispatch_get_global_queue(0, 0);
      result = _scprefs_observer_watch();
      S_prefs_observer = result;
      S_runloop = a1;
    }
  }

  return result;
}

uint64_t (*CaptivePrefsChanged())(void)
{
  result = S_callback_1;
  if (S_callback_1)
  {
    return S_callback_1();
  }

  return result;
}

void CaptivePrefsRefresh()
{
  if (S_prefs)
  {
    SCPreferencesSynchronize(S_prefs);
    v0 = vars8;
  }

  v1 = S_managed_prefs;
  if (S_managed_prefs)
  {

    SCPreferencesSynchronize(v1);
  }
}

uint64_t CaptivePrefsSave()
{
  result = S_prefs;
  if (S_prefs)
  {
    v1 = SCPreferencesCommitChanges(S_prefs);
    SCPreferencesSynchronize(S_prefs);
    return v1;
  }

  return result;
}

uint64_t CaptivePrefsGetBoolean(const __CFString *a1, uint64_t a2)
{
  v7 = 0;
  v4 = S_managed_prefs;
  if (!S_managed_prefs)
  {
    v4 = SCPreferencesCreate(0, @"CaptivePrefs", @"/Library/Managed Preferences/mobile/com.apple.captive.control.plist");
    S_managed_prefs = v4;
  }

  result = prefs_common_get_BOOLean(v4, a1, a2, &v7);
  if (!v7)
  {
    v6 = S_prefs;
    if (!S_prefs)
    {
      v6 = SCPreferencesCreate(0, @"CaptivePrefs", @"com.apple.captive.control.plist");
      S_prefs = v6;
    }

    return prefs_common_get_BOOLean(v6, a1, a2, 0);
  }

  return result;
}

const __SCPreferences *CaptivePrefsSetBoolean(CFStringRef key, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  result = S_prefs;
  if (S_prefs || (result = SCPreferencesCreate(0, @"CaptivePrefs", @"com.apple.captive.control.plist"), (S_prefs = result) != 0))
  {
    v5 = *v3;

    return SCPreferencesSetValue(result, key, v5);
  }

  return result;
}

const __SCPreferences *CaptivePrefsUnset(CFStringRef key)
{
  result = S_prefs;
  if (S_prefs || (result = SCPreferencesCreate(0, @"CaptivePrefs", @"com.apple.captive.control.plist"), (S_prefs = result) != 0))
  {

    return SCPreferencesRemoveValue(result, key);
  }

  return result;
}

uint64_t CaptivePrefsGetNumber(CFStringRef key, void *a2)
{
  v4 = S_prefs;
  if (!S_prefs)
  {
    v4 = SCPreferencesCreate(0, @"CaptivePrefs", @"com.apple.captive.control.plist");
    S_prefs = v4;
    if (!v4)
    {
      return 0;
    }
  }

  Value = SCPreferencesGetValue(v4, key);
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  return CFNumberGetValue(Value, kCFNumberDoubleType, a2);
}

void CaptivePrefsSetNumber(const __CFString *a1, double a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  v4 = S_prefs;
  if (S_prefs || (v4 = SCPreferencesCreate(0, @"CaptivePrefs", @"com.apple.captive.control.plist"), (S_prefs = v4) != 0))
  {
    SCPreferencesSetValue(v4, a1, v3);
  }

  CFRelease(v3);
}

uint64_t prefs_common_get_BOOLean(const __SCPreferences *a1, const __CFString *a2, uint64_t a3, _BYTE *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (!a1)
  {
    return a3;
  }

  Value = SCPreferencesGetValue(a1, a2);
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return a3;
  }

  if (a4)
  {
    *a4 = 1;
  }

  return CFBooleanGetValue(Value);
}

uint64_t (*prefs_changed_0())(void)
{
  result = S_callback_1;
  if (S_callback_1)
  {
    return S_callback_1();
  }

  return result;
}

void __enable_prefs_observer_block_invoke()
{
  if (S_source)
  {
    CFRunLoopSourceSignal(S_source);
    v0 = S_runloop;
    if (S_runloop)
    {

      CFRunLoopWakeUp(v0);
    }
  }
}

uint64_t CNPluginHandleResponse(uint64_t a1, const __CFDictionary *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  result = CNPluginStateProcessResponse(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = &S_CNInfoHeadStorage;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (my_CFDictionaryContainsKeyAndValue(v6[8], v5))
      {
        v7 = v6 + 8;
        v8 = v6 + 8;
LABEL_10:
        v11 = *v8;
        if (v11 != *v7)
        {
          if (v11 != v6[14])
          {
            goto LABEL_12;
          }

          DisplayID = CNPluginStateGetDisplayID(a1);
          logger = mysyslog_get_logger();
          v18 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(logger, v18))
          {
            *buf = 138412546;
            v42 = DisplayID;
            v43 = 2112;
            v44 = a2;
            _os_log_impl(&dword_277237000, logger, v18, "%@: filter results = %@", buf, 0x16u);
          }

          if (!S_filter_request_count)
          {
            goto LABEL_12;
          }

          v19 = responseGetResult(a2);
          if (v19)
          {
            v20 = v19;
            v21 = mysyslog_get_logger();
            v22 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v21, v22))
            {
              *buf = 138412290;
              v42 = DisplayID;
              _os_log_impl(&dword_277237000, v21, v22, "%@: FilterScanList failed", buf, 0xCu);
            }

            if (v20 == 3)
            {
              CNPluginStateDisableFilterCommand(a1);
            }

            goto LABEL_12;
          }

          Value = CFDictionaryGetValue(a2, @"NetworkList");
          TypeID = CFArrayGetTypeID();
          if (Value && CFGetTypeID(Value) == TypeID)
          {
            BSDName = SCNetworkInterfaceGetBSDName(v6[4]);
            CNPluginStateSetFilterResults(a1, BSDName, Value);
            CNScanListFilterAggregateResults(v6);
            goto LABEL_12;
          }

          v38 = mysyslog_get_logger();
          v39 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v38, v39))
          {
            goto LABEL_12;
          }

          *buf = 138412290;
          v42 = DisplayID;
          v31 = "%@: FilterScanList network list invalid";
          v32 = v38;
          v33 = v39;
          v34 = 12;
LABEL_48:
          _os_log_impl(&dword_277237000, v32, v33, v31, buf, v34);
          goto LABEL_12;
        }

        v40[0] = a1;
        v40[1] = a2;
        v13 = *(v6 + 14);
        if (v13 > 4)
        {
          switch(v13)
          {
            case 5:
              v25 = mysyslog_get_logger();
              v26 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v25, v26))
              {
                *buf = 138412290;
                v42 = CNPluginStateGetDisplayID(a1);
                _os_log_impl(&dword_277237000, v25, v26, "[%@] responded to maintain command", buf, 0xCu);
              }

              CNInfoMaintaining(v6, 1, v40);
              goto LABEL_12;
            case 7:
              v27 = mysyslog_get_logger();
              v28 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v27, v28))
              {
                *buf = 138412290;
                v42 = CNPluginStateGetDisplayID(a1);
                _os_log_impl(&dword_277237000, v27, v28, "[%@] responded to present-ui command", buf, 0xCu);
              }

              CNInfoPresentingUI(v6, 1, v40);
              goto LABEL_12;
            case 8:
              v14 = mysyslog_get_logger();
              v15 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v14, v15))
              {
                *buf = 138412290;
                v42 = CNPluginStateGetDisplayID(a1);
                _os_log_impl(&dword_277237000, v14, v15, "[%@] responded to log-off command", buf, 0xCu);
              }

              CNInfoLoggingOff(v6, 1);
              goto LABEL_12;
          }

          goto LABEL_41;
        }

        if (v13 == 2)
        {
          CNInfoEvaluating(v6, 1, v40);
        }

        else
        {
          if (v13 == 3)
          {
            v23 = mysyslog_get_logger();
            v24 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v23, v24))
            {
              *buf = 138412290;
              v42 = CNPluginStateGetDisplayID(a1);
              _os_log_impl(&dword_277237000, v23, v24, "[%@] responded to authenticate command", buf, 0xCu);
            }

            CNInfoAuthenticating(v6, 1, v40);
            goto LABEL_12;
          }

LABEL_41:
          v29 = mysyslog_get_logger();
          v30 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v29, v30))
          {
            *buf = 138412546;
            v42 = CNPluginStateGetDisplayID(a1);
            v43 = 2112;
            v44 = a2;
            v31 = "%@: ignoring response %@";
            v32 = v29;
            v33 = v30;
            v34 = 22;
            goto LABEL_48;
          }
        }

LABEL_12:
        result = 1;
        goto LABEL_13;
      }

      if (my_CFDictionaryContainsKeyAndValue(v6[14], v5))
      {
        v7 = v6 + 8;
        v8 = v6 + 14;
        goto LABEL_10;
      }
    }

    v9 = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(v9, v10);
    if (result)
    {
      *buf = 138412290;
      v42 = a2;
      _os_log_impl(&dword_277237000, v9, v10, "can't find cninfo for %@", buf, 0xCu);
      result = 0;
    }
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void CNBuiltinPluginProvideResponse(const void *a1)
{
  if (S_builtin_plugin)
  {
    CNPluginStateBuiltinProvideResponse(S_builtin_plugin, a1);
  }
}

void CNBuiltinPluginAckEvaluateCommand(const void *a1)
{
  if (S_builtin_plugin)
  {
    CNPluginStateBuiltinAckEvaluateCommand(S_builtin_plugin, a1);
  }
}

__CFArray *CNPluginHandlerCopyInterfaceList()
{
  v0 = S_CNInfoHeadStorage;
  if (!S_CNInfoHeadStorage)
  {
    return 0;
  }

  Mutable = 0;
  v2 = MEMORY[0x277CBF128];
  do
  {
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(0, 0, v2);
    }

    BSDName = SCNetworkInterfaceGetBSDName(*(v0 + 32));
    CFArrayAppendValue(Mutable, BSDName);
    v0 = *v0;
  }

  while (v0);
  return Mutable;
}

void *CNPluginHandlerForgetSSID()
{
  for (i = S_CNInfoHeadStorage; i; i = *i)
  {
    CNPluginStateStopHotspotAuthenticationProvider(*(i + 72));
    result = NetCacheApplyFunction(*(i + 136), RemoveCacheEntryWithSSID);
  }

  return result;
}

uint64_t RemoveCacheEntryWithSSID(uint64_t *a1, const void *a2)
{
  Name = CNPluginStateGetName(a1);
  result = 0;
  if (a2 && Name)
  {
    if (CFEqual(a2, Name))
    {
      NetCacheEntryDestroy(a1);
    }

    return 1;
  }

  return result;
}

void *CNPluginHandlerInitialize(uint64_t a1)
{
  cf = 0;
  v5 = 0;
  CommandHandlerClassRegister(3u, CNPluginHandlerMethods);
  CommandHandlerClassRegister(5u, CNScanListFilterHandlerMethods);
  CNPluginStateListInitialize();
  S_CNInfoHeadStorage = 0;
  CNPluginMonitorHandlerInitialize();
  notify_key = nwi_state_get_notify_key();
  v3 = my_CFRunLoopSourceCreateForBSDNotification(notify_key, CNPluginHandlerNWIChanged, 0, &v5, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  S_builtin_plugin = CNPluginStateBuiltinRegister(a1);
  NetIFSetNewInterfaceCallBack(CNPluginHandlerInterfaceAttached);
  NetIFSetWiFiManagerRestartCallBack(CNPluginHandlerWiFiManagerRestart);
  NetIFCheckForNewInterfaces();
  return NetIFSetScanResultsCallBack(CNScanListFilterHandleScanResults);
}

void CNPluginHandlerNWIChanged()
{
  logger = mysyslog_get_logger();
  v1 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_277237000, logger, v1, "network information changed", v2, 2u);
  }

  CNPluginHandlerNetworkInformationChanged();
}

void CNPluginHandlerInterfaceAttached(__CFString *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!CNInfoFind(a1))
  {
    v2 = CNInfoGet(a1);
    if (v2)
    {
      v3 = v2;
      logger = mysyslog_get_logger();
      v5 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v5))
      {
        v9 = 138412290;
        v10 = a1;
        _os_log_impl(&dword_277237000, logger, v5, "%@ added", &v9, 0xCu);
      }

      UIAllowedNewInterface(a1);
      if (!NetIFWiFiNetworkIsProtectedForInterface(a1))
      {
        v6 = mysyslog_get_logger();
        v7 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v6, v7))
        {
          v9 = 138412290;
          v10 = a1;
          _os_log_impl(&dword_277237000, v6, v7, "%@: joined unsecure network, setting interface rank to Never", &v9, 0xCu);
        }

        NetIFSetRankNever(v3[4]);
      }

      CNPluginHandlerNetworkInformationChanged();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void CNScanListFilterHandleScanResults(const __CFString *a1, const __CFArray *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_84;
  }

  if (!S_filter_request_count)
  {
    goto LABEL_84;
  }

  v3 = a1;
  v4 = CNInfoGet(a1);
  if (!v4)
  {
    goto LABEL_84;
  }

  v5 = v4;
  if (!CNPluginStateListIsPreevaluatedSSIDListSet())
  {
    goto LABEL_53;
  }

  if (CFArrayGetCount(a2) && (v6 = CNPluginStateListCopyPrevaluatedSSIDs()) != 0)
  {
    v7 = v6;
    if (!CFArrayGetCount(v6))
    {
      goto LABEL_17;
    }

    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
      goto LABEL_17;
    }

    v9 = Count;
    Mutable = 0;
    v11 = 0;
    v12 = MEMORY[0x277CBF128];
    do
    {
      CFArrayGetValueAtIndex(a2, v11);
      SSID = WiFiNetworkGetSSID();
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, v9, v12);
      }

      CFArrayAppendValue(Mutable, SSID);
      ++v11;
    }

    while (v9 != v11);
    if (Mutable)
    {
      ScanListProcessCommand = CFArrayGetCount(Mutable) ? my_CFArrayCopyIntersectionArray(Mutable, v7) : 0;
      CFRelease(v7);
    }

    else
    {
LABEL_17:
      ScanListProcessCommand = 0;
      Mutable = v7;
    }

    CFRelease(Mutable);
  }

  else
  {
    ScanListProcessCommand = 0;
  }

  logger = mysyslog_get_logger();
  v16 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v16))
  {
    *buf = 138412290;
    *&buf[4] = ScanListProcessCommand;
    _os_log_impl(&dword_277237000, logger, v16, "intersection of scanned and pre-evaluated SSIDs: %@", buf, 0xCu);
  }

  if (!ScanListProcessCommand)
  {
    goto LABEL_53;
  }

  if (!CFArrayGetCount(ScanListProcessCommand) || (v17 = CFArrayGetCount(ScanListProcessCommand), v17 < 1))
  {
LABEL_52:
    CFRelease(ScanListProcessCommand);
    goto LABEL_53;
  }

  v18 = v17;
  v65 = v5;
  v66 = v3;
  v19 = 0;
  v20 = 0;
  v67 = ScanListProcessCommand;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ScanListProcessCommand, v20);
    EvaluationProvider = CNEvaluatedNetworksGetEvaluationProvider(ValueAtIndex);
    if (!EvaluationProvider)
    {
      goto LABEL_46;
    }

    v23 = CNPluginStateGet(EvaluationProvider);
    if (!v23)
    {
      goto LABEL_46;
    }

    v24 = v23;
    IsChinaDevice();
    Name = CNPluginStateGetName(v24);
    Bundle = CaptiveGetBundle();
    v27 = CopyPreferredLanguage(Bundle);
    v28 = CFBundleCopyLocalizedStringForLocalization();
    if (v28)
    {
      v29 = v28;
      v30 = CFStringCreateWithFormat(0, 0, v28, Name);
      CFRelease(v29);
      if (!v27)
      {
        goto LABEL_32;
      }

LABEL_31:
      CFRelease(v27);
      goto LABEL_32;
    }

    v30 = 0;
    if (v27)
    {
      goto LABEL_31;
    }

LABEL_32:
    values = v30;
    ApplicationIDOfProvider = CNPluginStateGetApplicationIDOfProvider(v24);
    v32 = 0;
    if (v30)
    {
      v33 = ApplicationIDOfProvider;
      if (ApplicationIDOfProvider)
      {
        v34 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
        *buf = xmmword_27A714900;
        *&buf[16] = @"PluginNames";
        v72 = ValueAtIndex;
        v73 = v33;
        v74 = v34;
        v32 = CFDictionaryCreate(0, buf, &v72, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v34)
        {
          CFRelease(v34);
        }

        v30 = values;
      }
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v32)
    {
      if (!v19)
      {
        v19 = CFArrayCreateMutable(0, v18, MEMORY[0x277CBF128]);
      }

      CFArrayAppendValue(v19, v32);
      CFRelease(v32);
    }

    ScanListProcessCommand = v67;
LABEL_46:
    ++v20;
  }

  while (v18 != v20);
  CFRelease(ScanListProcessCommand);
  v5 = v65;
  v3 = v66;
  if (v19)
  {
    v35 = mysyslog_get_logger();
    v36 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v35, v36))
    {
      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_impl(&dword_277237000, v35, v36, "Wi-Fi Info list based on the pre-evaluated SSIDs: %@", buf, 0xCu);
    }

    ScanListProcessCommand = createScanListProcessCommand(v66, v19);
    CFRelease(v19);
    if (ScanListProcessCommand)
    {
      CommandHandlerListApplyFunction(5u, CNScanListFilterAppendCommandApplier, ScanListProcessCommand);
      goto LABEL_52;
    }
  }

LABEL_53:
  if (CNPluginStateListShouldSendFilterCommand())
  {
    Current = CFAbsoluteTimeGetCurrent();
    v38 = Current;
    v39 = *(v5 + 128);
    if (!v39 || ((v40 = Current - *(v5 + 120), v39 >= 3) ? (v41 = 30.0) : (v41 = 5.0), v40 >= v41))
    {
      v48 = v5;
      v49 = CFArrayGetCount(a2);
      v50 = *MEMORY[0x277CBECE8];
      v51 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v49, MEMORY[0x277CBF128]);
      if (v49 >= 1)
      {
        v52 = 0;
        v53 = *MEMORY[0x277CBED10];
        do
        {
          v54 = CFArrayGetValueAtIndex(a2, v52);
          memset(buf, 0, sizeof(buf));
          v70 = 0u;
          v71 = 0u;
          if (v54)
          {
            v55 = v54;
            CFRetain(v54);
            *&v70 = v55;
            *&v71 = v53;
          }

          v56 = copy_network_dict(buf);
          networkAttributesRelease(buf);
          if (v56)
          {
            CFArrayAppendValue(v51, v56);
            CFRelease(v56);
          }

          ++v52;
        }

        while (v49 != v52);
      }

      if (CFArrayGetCount(v51))
      {
        LODWORD(values) = 1;
        if (!v51)
        {
          goto LABEL_84;
        }

        v57 = my_CFUUIDStringCreate(0);
        *buf = @"UniqueID";
        v72 = v57;
        v58 = CFNumberCreate(v50, kCFNumberSInt32Type, &values);
        *&buf[8] = @"Type";
        *&buf[16] = @"InterfaceName";
        v73 = v58;
        v74 = v3;
        *&buf[24] = @"NetworkList";
        v75 = v51;
        v59 = CFDictionaryCreate(0, buf, &v72, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v57)
        {
          CFRelease(v57);
        }

        if (v58)
        {
          CFRelease(v58);
        }

        if (v59)
        {
          ++*(v48 + 128);
          *(v48 + 120) = v38;
          CNInfoFlushFilterCommand(v48);
          CNPluginStateListApplyFunction(CNScanListFilterFlushResultsApplier, v3);
          my_FieldSetRetainedCFType((v48 + 112), v59);
          v60 = mysyslog_get_logger();
          v61 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v60, v61))
          {
            *buf = 138412290;
            *&buf[4] = v3;
            _os_log_impl(&dword_277237000, v60, v61, "%@: issuing filter command", buf, 0xCu);
          }

          CNPluginStateListIssueFilterCommand(v59);
          CFRelease(v59);
          if (!CNPluginStateListShouldSendFilterCommand())
          {
            CNScanListFilterSendClearResults(v48);
          }
        }
      }

      else if (!v51)
      {
        goto LABEL_84;
      }

      CFRelease(v51);
      goto LABEL_84;
    }

    v42 = mysyslog_get_logger();
    v43 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v42, v43))
    {
      *buf = 138412802;
      *&buf[4] = v3;
      *&buf[12] = 2048;
      *&buf[14] = v40;
      *&buf[22] = 2048;
      *&buf[24] = v41;
      v44 = "%@: NOT issuing filter command (elapsed %g < %g)";
      v45 = v42;
      v46 = v43;
      v47 = 32;
      goto LABEL_81;
    }
  }

  else
  {
    CNInfoFlushFilterCommand(v5);
    CNPluginStateListApplyFunction(CNScanListFilterFlushResultsApplier, v3);
    *(v5 + 128) = 0;
    v62 = mysyslog_get_logger();
    v63 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v62, v63))
    {
      *buf = 0;
      v44 = "No plugins can handle FilterScanList command";
      v45 = v62;
      v46 = v63;
      v47 = 2;
LABEL_81:
      _os_log_impl(&dword_277237000, v45, v46, v44, buf, v47);
    }
  }

LABEL_84:
  v64 = *MEMORY[0x277D85DE8];
}

uint64_t CNPluginHandlerGetLandingPageURL(void *a1)
{
  v1 = S_CNInfoHeadStorage;
  if (!S_CNInfoHeadStorage)
  {
    return 0;
  }

  while (1)
  {
    CacheEntry = CNInfoGetCacheEntry(v1);
    if (CacheEntry)
    {
      result = NetCacheEntryGetRedirectionURL(CacheEntry, a1);
      if (result)
      {
        break;
      }
    }

    v1 = *v1;
    if (!v1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *CNInfoGetCacheEntry(void *a1)
{
  if (a1[5])
  {
    SSID = WiFiNetworkGetSSID();
  }

  else
  {
    SSID = 0;
  }

  v3 = a1[17];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = a1[6];

  return NetCacheLookupEntry(v3, v5, SSID, Current);
}

uint64_t *CNInfoFind(const void *a1)
{
  v2 = &S_CNInfoHeadStorage;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    BSDName = SCNetworkInterfaceGetBSDName(v2[4]);
  }

  while (!CFEqual(a1, BSDName));
  return v2;
}

void CNPluginHandlerCheckPreferences()
{
  v13 = *MEMORY[0x277D85DE8];
  BBMonitorCheckPreferences();
  S_UnwhitelistedNetworkProbeInterval = CCPGetUnwhitelistedNetworkProbeInterval();
  S_WhitelistedNetworkProbeInterval = CCPGetWhitelistedNetworkProbeInterval();
  logger = mysyslog_get_logger();
  v1 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v1))
  {
    v11 = 134217984;
    v12 = S_UnwhitelistedNetworkProbeInterval;
    _os_log_impl(&dword_277237000, logger, v1, "UnwhitelistedNetworkProbeInterval = %g", &v11, 0xCu);
  }

  v2 = mysyslog_get_logger();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v2, v3))
  {
    v11 = 134217984;
    v12 = S_WhitelistedNetworkProbeInterval;
    _os_log_impl(&dword_277237000, v2, v3, "WhitelistedNetworkProbeInterval = %g", &v11, 0xCu);
  }

  S_WhitelistedNetworkDetectionEnabled = CCPGetWhitelistedNetworkDetectionEnabled();
  S_WhitelistedProtectedNetworkDetectionEnabled = CCPGetWhitelistedProtectedNetworkDetectionEnabled();
  v4 = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v4, v5))
  {
    if (S_WhitelistedNetworkDetectionEnabled)
    {
      v6 = "on";
    }

    else
    {
      v6 = "off";
    }

    v11 = 136315138;
    v12 = v6;
    _os_log_impl(&dword_277237000, v4, v5, "WhitelistedNetworkDetectionEnabled = %s", &v11, 0xCu);
  }

  v7 = mysyslog_get_logger();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v7, v8))
  {
    if (S_WhitelistedProtectedNetworkDetectionEnabled)
    {
      v9 = "on";
    }

    else
    {
      v9 = "off";
    }

    v11 = 136315138;
    v12 = v9;
    _os_log_impl(&dword_277237000, v7, v8, "WhitelistedProtectedNetworkDetectionEnabled = %s", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

CFDictionaryRef CNPluginHandlerCopyCurrentNetworkInfo(uint64_t a1)
{
  keys[3] = *MEMORY[0x277D85DE8];
  if (a1 && (v1 = NetIFCopyCurrentWiFiNetwork(a1)) != 0)
  {
    v2 = v1;
    Property = WiFiNetworkGetProperty();
    SSIDData = WiFiNetworkGetSSIDData();
    SSID = WiFiNetworkGetSSID();
    v6 = 0;
    if (SSIDData && SSID && Property)
    {
      v7 = *MEMORY[0x277CE1618];
      keys[0] = *MEMORY[0x277CE1620];
      keys[1] = v7;
      keys[2] = *MEMORY[0x277CE1610];
      values[0] = SSIDData;
      values[1] = SSID;
      values[2] = Property;
      v6 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    CFRelease(v2);
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void CNInfoEvaluating(uint64_t a1, int a2, uint64_t a3)
{
  v98 = *MEMORY[0x277D85DE8];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      CNPluginStateListHandleUnregistered();
      CNPluginStateListStopHotspotEvaluationProviders();
      v22 = *(a1 + 72);
      if (v22)
      {
        DisplayID = CNPluginStateGetDisplayID(v22);
        logger = mysyslog_get_logger();
        v25 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v25))
        {
          LODWORD(buf.isa) = 138412290;
          *(&buf.isa + 4) = DisplayID;
          v26 = "Evaluate timeout fired, using %@";
LABEL_44:
          _os_log_impl(&dword_277237000, logger, v25, v26, &buf, 0xCu);
        }

LABEL_100:
        CNInfoAuthenticating(a1, 0, 0);
        goto LABEL_102;
      }

      v32 = mysyslog_get_logger();
      v33 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v32, v33))
      {
        LOWORD(buf.isa) = 0;
        _os_log_impl(&dword_277237000, v32, v33, "Evaluate timed out, these plugins did not respond:", &buf, 2u);
      }

      CNPluginStateListLogPendingCommand(*(a1 + 64));
    }

    else
    {
      if (a2 != 3)
      {
        if (a2 == 6)
        {
          if (*(a1 + 40))
          {
            SSID = WiFiNetworkGetSSID();
          }

          else
          {
            SSID = 0;
          }

          EvaluationProvider = CNEvaluatedNetworksGetEvaluationProvider(SSID);
          v37 = CNPluginStateGet(EvaluationProvider);
          NetIFSetRankNever(*(a1 + 32));
          v38 = mysyslog_get_logger();
          v39 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v38, v39))
          {
            LODWORD(buf.isa) = 138412802;
            *(&buf.isa + 4) = EvaluationProvider;
            WORD2(buf.info) = 2112;
            *(&buf.info + 6) = SSID;
            HIWORD(buf.data) = 2080;
            buf.length = CNPConfidenceGetString(2u);
            _os_log_impl(&dword_277237000, v38, v39, "%@: network [%@] is captive Confidence: %s", &buf, 0x20u);
          }

          if ((!*(a1 + 72) || *(a1 + 80) <= 1u) && CNPluginStateIsProvider(v37))
          {
            AuthenticationProvider = CNPluginStateGetAuthenticationProvider(v37);
            if (AuthenticationProvider)
            {
              v41 = AuthenticationProvider;
              v42 = mysyslog_get_logger();
              v43 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v42, v43))
              {
                v44 = CNPluginStateGetDisplayID(v41);
                LODWORD(buf.isa) = 138412290;
                *(&buf.isa + 4) = v44;
                _os_log_impl(&dword_277237000, v42, v43, "making hotspot provider [%@] best plugin", &buf, 0xCu);
              }

              my_FieldSetRetainedCFType((a1 + 72), v41);
              *(a1 + 80) = 2;
              CNPluginStateStartHotspotProvider(v41);
              CNInfoAuthenticating(a1, 0, 0);
            }
          }

          *(a1 + 164) = 0;
        }

        goto LABEL_102;
      }

      v27 = mysyslog_get_logger();
      v28 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v27, v28))
      {
        LOWORD(buf.isa) = 0;
        _os_log_impl(&dword_277237000, v27, v28, "Evaluate acknowledgement timeout fired", &buf, 2u);
      }

      CNPluginStateListSetEvaluateCmdAckTimeoutStatus();
      if (CNPluginStateListIsEvaluateResponsePending())
      {
        v18 = *(a1 + 88);
        v19 = 40.0;
        v20 = a1;
        v21 = 2;
LABEL_75:
        TimerSet(v18, CNInfoEvaluating, v20, v21, 0, v19);
        goto LABEL_102;
      }

      CNPluginStateListHandleUnregistered();
      CNPluginStateListStopHotspotEvaluationProviders();
      v34 = *(a1 + 72);
      if (v34)
      {
        v35 = CNPluginStateGetDisplayID(v34);
        logger = mysyslog_get_logger();
        v25 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v25))
        {
          LODWORD(buf.isa) = 138412290;
          *(&buf.isa + 4) = v35;
          v26 = "Evaluate acknowledgement timeout fired, using %@";
          goto LABEL_44;
        }

        goto LABEL_100;
      }
    }

LABEL_101:
    CNInfoAuthenticated(a1, 0, 0);
    goto LABEL_102;
  }

  if (!a2)
  {
    my_FieldSetRetainedCFType((a1 + 72), 0);
    *(a1 + 80) = 0;
    CNInfoSetAuthState(a1, 2);
    PassiveDetectSetCallBack(0, 0);
    TimerCancel(*(a1 + 88));
    CNInfoFlushAuthCommand(a1);
    *(a1 + 104) &= ~1u;
    networkAttributesInit(&v93, *(a1 + 40), 1, 0);
    if (a3)
    {
      *(&v93 + 1) = *a3;
    }

    if (v95)
    {
      if (NetIFGetWiFiNetworkWasCaptive(v95))
      {
        *&v94 = *MEMORY[0x277CBED28];
      }

      BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      *(&v96 + 1) = networkCopyCaptivePortalAPIURL(BSDName);
    }

    CacheEntry = CNInfoGetCacheEntry(a1);
    if (CacheEntry)
    {
      v31 = CacheEntry;
      if (NetCacheEntryGetIsCaptive(CacheEntry))
      {
        NetCacheEntryDestroy(v31);
      }

      else
      {
        *(&v94 + 1) = *MEMORY[0x277CBED28];
      }
    }

    v58 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
    AuthCommand = createAuthCommand(v58, 2, &v93);
    networkAttributesRelease(&v93);
    my_FieldSetRetainedCFType((a1 + 64), AuthCommand);
    v60 = CNPluginStateListIssueEvaluateCommand(AuthCommand, *(a1 + 96));
    CFRelease(AuthCommand);
    if (v60)
    {
      v18 = *(a1 + 88);
      v19 = 5.0;
      v20 = a1;
      v21 = 3;
      goto LABEL_75;
    }

    buf.info = @"Evaluate command has no recipients";
    buf.isa = 1;
    v61 = mysyslog_get_logger();
    v62 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v61, v62))
    {
      *v92 = 0;
      _os_log_impl(&dword_277237000, v61, v62, "Evaluate command has no recipients", v92, 2u);
    }

    CNInfoFailure(a1, &buf);
    goto LABEL_102;
  }

  if (a2 != 1)
  {
    goto LABEL_102;
  }

  v6 = CNPluginStateGetDisplayID(*a3);
  Value = CFDictionaryGetValue(*(a3 + 8), @"RedirectHostname");
  if (Value)
  {
    PassiveDetectSetRedirectURLHostname(Value);
  }

  Result = responseGetResult(*(a3 + 8));
  v9 = mysyslog_get_logger();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v9, v10))
  {
    LODWORD(buf.isa) = 138412290;
    *(&buf.isa + 4) = v6;
    _os_log_impl(&dword_277237000, v9, v10, "received evaluation response from [%@]", &buf, 0xCu);
  }

  CNPluginStateSetEvaluateCommandStatus(*a3, 1);
  CNPluginStateStopHotspotEvaluationProvider(*a3);
  if (Result)
  {
    v11 = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      String = CNPResultGetString(Result);
      LODWORD(buf.isa) = 138412802;
      *(&buf.isa + 4) = v6;
      WORD2(buf.info) = 2080;
      *(&buf.info + 6) = String;
      HIWORD(buf.data) = 1024;
      LODWORD(buf.length) = Result;
      _os_log_impl(&dword_277237000, v11, v12, "%@: Evaluate result is %s (%d)", &buf, 0x1Cu);
    }

    v14 = *(a1 + 40);
    if (NetIFWiFiNetworkIsCarPlayAndInternet())
    {
      v15 = mysyslog_get_logger();
      v16 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(a1 + 40);
        if (v17)
        {
          v17 = WiFiNetworkGetSSID();
        }

        LODWORD(buf.isa) = 138412290;
        *(&buf.isa + 4) = v17;
        _os_log_impl(&dword_277237000, v15, v16, "continuing to evaluate CarPlay Wi-Fi %@", &buf, 0xCu);
      }

      v18 = *(a1 + 88);
      v19 = 300.0;
      v20 = a1;
      v21 = 0;
      goto LABEL_75;
    }

    *(a1 + 104) |= 1u;
    if (*(a1 + 232) == 1)
    {
      *(a1 + 232) = 3;
      v63 = mysyslog_get_logger();
      v64 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v63, v64))
      {
        LODWORD(buf.isa) = 138412290;
        *(&buf.isa + 4) = v6;
        _os_log_impl(&dword_277237000, v63, v64, "%@: Evaluation with IPv6 Only configuration failed", &buf, 0xCu);
      }

      _handleIPv6OnlyEvaluationFailure(a1);
      goto LABEL_102;
    }

    goto LABEL_83;
  }

  v45 = CFDictionaryGetValue(*(a3 + 8), @"Network");
  TypeID = CFDictionaryGetTypeID();
  if (!v45 || CFGetTypeID(v45) != TypeID || (v47 = CFDictionaryGetValue(v45, @"IsCaptive"), v48 = CFBooleanGetTypeID(), !v47) || CFGetTypeID(v47) != v48 || !CFBooleanGetValue(v47))
  {
    v56 = mysyslog_get_logger();
    v57 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v56, v57))
    {
      LODWORD(buf.isa) = 138412290;
      *(&buf.isa + 4) = v6;
      _os_log_impl(&dword_277237000, v56, v57, "%@: network is not captive", &buf, 0xCu);
    }

    if (CNPluginStateIsBuiltin(*a3) == 1)
    {
      postNonCaptiveAnalyticsEvent(a1);
    }

LABEL_83:
    Confidence = 0;
    goto LABEL_84;
  }

  NetIFSetRankNever(*(a1 + 32));
  v49 = CFDictionaryGetValue(*(a3 + 8), @"Network");
  Confidence = networkGetConfidence(v49, v6);
  v51 = CFDictionaryGetValue(*(a3 + 8), @"Network");
  v52 = CFDictionaryGetTypeID();
  if (v51)
  {
    if (CFGetTypeID(v51) == v52 && (v51 = CFDictionaryGetValue(v51, @"DetectionType"), LODWORD(buf.isa) = 0, v53 = CFNumberGetTypeID(), v51) && CFGetTypeID(v51) == v53)
    {
      CFNumberGetValue(v51, kCFNumberSInt32Type, &buf);
      LODWORD(v51) = buf.isa;
      if (LODWORD(buf.isa) >= 4)
      {
        v54 = mysyslog_get_logger();
        v55 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v54, v55))
        {
          LODWORD(buf.isa) = 138412546;
          *(&buf.isa + 4) = v6;
          WORD2(buf.info) = 1024;
          *(&buf.info + 6) = v51;
          _os_log_impl(&dword_277237000, v54, v55, "%@: invalid captive detection type value %d treating as None", &buf, 0x12u);
        }
      }
    }

    else
    {
      LODWORD(v51) = 0;
    }
  }

  v76 = mysyslog_get_logger();
  v77 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = CNPConfidenceGetString(Confidence);
    v79 = CNPCaptiveDetectionTypeGetString(v51);
    LODWORD(buf.isa) = 138412802;
    *(&buf.isa + 4) = v6;
    WORD2(buf.info) = 2080;
    *(&buf.info + 6) = v78;
    HIWORD(buf.data) = 2080;
    buf.length = v79;
    _os_log_impl(&dword_277237000, v76, v77, "%@: network is captive Confidence: %s, Detection Type: %s", &buf, 0x20u);
  }

  if (!*(a1 + 72) || Confidence > *(a1 + 80))
  {
    if (CNPluginStateIsProvider(*a3))
    {
      v80 = CNPluginStateGetAuthenticationProvider(*a3);
      if (v80)
      {
        v81 = v80;
        v82 = mysyslog_get_logger();
        v83 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = CNPluginStateGetDisplayID(v81);
          LODWORD(buf.isa) = 138412290;
          *(&buf.isa + 4) = v84;
          _os_log_impl(&dword_277237000, v82, v83, "making hotspot provider [%@] best plugin", &buf, 0xCu);
        }

        my_FieldSetRetainedCFType((a1 + 72), v81);
        *(a1 + 80) = Confidence;
        CNPluginStateStartHotspotProvider(v81);
      }
    }

    else
    {
      v85 = mysyslog_get_logger();
      v86 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = CNPluginStateGetDisplayID(*a3);
        LODWORD(buf.isa) = 138412290;
        *(&buf.isa + 4) = v87;
        _os_log_impl(&dword_277237000, v85, v86, "making plugin [%@] best plugin", &buf, 0xCu);
      }

      my_FieldSetRetainedCFType((a1 + 72), *a3);
      *(a1 + 80) = Confidence;
    }
  }

  *(a1 + 164) = v51;
  HasNeverBeenCaptive = NetIFWiFiNetworkHasNeverBeenCaptive(*(a1 + 40));
  *(a1 + 161) = HasNeverBeenCaptive;
  if (HasNeverBeenCaptive)
  {
    v89 = mysyslog_get_logger();
    v90 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = *(a1 + 40);
      if (v91)
      {
        v91 = WiFiNetworkGetSSID();
      }

      LODWORD(buf.isa) = 138412290;
      *(&buf.isa + 4) = v91;
      _os_log_impl(&dword_277237000, v89, v90, "SSID %@ became captive network", &buf, 0xCu);
    }
  }

LABEL_84:
  if (CNPluginStateIsBuiltin(*a3))
  {
    v65 = *(a1 + 40);
    if (NetIFIsQuickProbeRequired())
    {
      v66 = mysyslog_get_logger();
      v67 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
        v69 = *(a1 + 40);
        if (v69)
        {
          v69 = WiFiNetworkGetSSID();
        }

        v70 = "failure";
        LODWORD(buf.isa) = 138412802;
        *(&buf.isa + 4) = v68;
        if (!Result)
        {
          v70 = "success";
        }

        WORD2(buf.info) = 2112;
        *(&buf.info + 6) = v69;
        HIWORD(buf.data) = 2080;
        buf.length = v70;
        _os_log_impl(&dword_277237000, v66, v67, "%@: SSID '%@' reporting quick probe %s", &buf, 0x20u);
      }

      v71 = *(a1 + 40);
      NetIFReportQuickProbeResult();
    }
  }

  IsEvaluateResponsePending = CNPluginStateListIsEvaluateResponsePending();
  if (!IsEvaluateResponsePending || Confidence == 2)
  {
    if (!IsEvaluateResponsePending)
    {
      TimerCancel(*(a1 + 88));
      v73 = mysyslog_get_logger();
      v74 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v73, v74))
      {
        LOWORD(buf.isa) = 0;
        _os_log_impl(&dword_277237000, v73, v74, "all the plugins/providers responded to Evaluate command", &buf, 2u);
      }
    }

    if (*(a1 + 72))
    {
      SendCleanupCommandToBuiltinPluginIfNecessary(a1, 0);
      goto LABEL_100;
    }

    goto LABEL_101;
  }

LABEL_102:
  v75 = *MEMORY[0x277D85DE8];
}

void CNInfoAuthenticating(uint64_t a1, int a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(&v35, 0, sizeof(v35));
  if (a2 == 2)
  {
    logger = mysyslog_get_logger();
    v20 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v20))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, logger, v20, "Authenticate timed out", buf, 2u);
    }

    CNPluginStateStopHotspotAuthenticationProvider(*(a1 + 72));
    goto LABEL_20;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      CNInfoSetAuthState(a1, 3);
      CNInfoFlushAuthCommand(a1);
      *(a1 + 104) &= 0xFFFFFFFC;
      *(a1 + 232) = 0;
      v4 = *(a1 + 72);
      if (v4)
      {
        NetIFWiFiNetworkSetCaptive(*(a1 + 40), 1u);
        CNInfoUpdateWiFiNetwork(a1);
        if (CNPluginStateIsAuthenticationProvider(v4))
        {
          p_data = 0;
        }

        else
        {
          p_data = &v35.data;
          networkAttributesInit(&v35.data, *(a1 + 40), 1, 0);
        }

        BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
        AuthCommand = createAuthCommand(BSDName, 3, p_data);
        networkAttributesRelease(&v35.data);
        my_FieldSetRetainedCFType((a1 + 64), AuthCommand);
        CNPluginStateIssueCommand(v4, AuthCommand);
        CFRelease(AuthCommand);
        TimerSet(*(a1 + 88), CNInfoAuthenticating, a1, 2, 0, 45.0);
        if (*(a1 + 184) > 0.0)
        {
          ++*(a1 + 192);
          Current = CFAbsoluteTimeGetCurrent();
          v27 = *(a1 + 184);
          if (Current > v27)
          {
            *(a1 + 200) = Current - v27 + *(a1 + 200);
          }

          *(a1 + 184) = 0;
        }

        goto LABEL_38;
      }

      LOBYTE(v35.isa) = 1;
      v35.info = @"no plugin";
      v22 = mysyslog_get_logger();
      v23 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v22, v23))
      {
        *buf = 0;
        _os_log_impl(&dword_277237000, v22, v23, "no plugin", buf, 2u);
      }

      goto LABEL_37;
    }

LABEL_38:
    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  PassiveDetectSetCallBack(0, 0);
  TimerCancel(*(a1 + 88));
  DisplayID = CNPluginStateGetDisplayID(*a3);
  Result = responseGetResult(*(a3 + 8));
  v9 = Result;
  v10 = 1;
  v11 = @"authentication failure";
  if (Result > 4)
  {
    if (Result != 5)
    {
      if (Result == 6)
      {
LABEL_33:
        v11 = 0;
        v10 = 0;
        goto LABEL_34;
      }

      if (Result == 7)
      {
        v12 = mysyslog_get_logger();
        v13 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v12, v13))
        {
          *buf = 0;
          _os_log_impl(&dword_277237000, v12, v13, "received kCNPResultAPIQueryRequired authentication result", buf, 2u);
        }

        v14 = *(a1 + 72);
        if (v14)
        {
          v15 = mysyslog_get_logger();
          v16 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v15, v16))
          {
            *buf = 0;
            _os_log_impl(&dword_277237000, v15, v16, "re-sending Authenticate command to builtin", buf, 2u);
          }

          v17 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
          v18 = createAuthCommand(v17, 3, 0);
          my_FieldSetRetainedCFType((a1 + 64), v18);
          CNPluginStateIssueCommand(v14, v18);
          CFRelease(v18);
          goto LABEL_38;
        }

        goto LABEL_33;
      }

LABEL_34:
      LOBYTE(v35.isa) = v10;
      v35.info = v11;
      v28 = mysyslog_get_logger();
      v29 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v28, v29))
      {
        String = CNPResultGetString(v9);
        *buf = 138412802;
        v40 = DisplayID;
        v41 = 2080;
        v42 = String;
        v43 = 1024;
        v44 = v9;
        _os_log_impl(&dword_277237000, v28, v29, "%@: Authenticate result %s (%d)", buf, 0x1Cu);
      }

      CNPluginStateStopHotspotAuthenticationProvider(*a3);
LABEL_37:
      CNInfoFailure(a1, &v35);
      goto LABEL_38;
    }

    v32 = mysyslog_get_logger();
    v33 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v32, v33))
    {
      *buf = 138412290;
      v40 = DisplayID;
      _os_log_impl(&dword_277237000, v32, v33, "%@: Authenticate failed: Unsupported Network", buf, 0xCu);
    }

    CNPluginStateStopHotspotAuthenticationProvider(*a3);
    CNInfoAddExcludedDisplayID(a1, DisplayID);
LABEL_20:
    CNInfoEvaluating(a1, 0, 0);
    goto LABEL_38;
  }

  if (Result)
  {
    if (Result != 2)
    {
      goto LABEL_34;
    }

    v21 = *MEMORY[0x277D85DE8];

    CNInfoPresentingUI(a1, 0, 0);
  }

  else
  {
    v34 = *MEMORY[0x277D85DE8];

    CNInfoAuthenticated(a1, 0, a3);
  }
}

void CNInfoMaintaining(uint64_t a1, int a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  memset(v34, 0, sizeof(v34));
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        logger = mysyslog_get_logger();
        v11 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v11))
        {
          LOWORD(buf.isa) = 0;
          _os_log_impl(&dword_277237000, logger, v11, "Maintain timed out at wake, setting interface rank to Never", &buf, 2u);
        }

        CNPluginStateStopHotspotAuthenticationProvider(*(a1 + 72));
        NetIFSetRankNever(*(a1 + 32));
      }

      goto LABEL_53;
    }

    v16 = mysyslog_get_logger();
    v17 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v16, v17))
    {
      LOWORD(buf.isa) = 0;
      _os_log_impl(&dword_277237000, v16, v17, "Maintain timed out", &buf, 2u);
    }

    v18 = *(a1 + 72);
    goto LABEL_35;
  }

  if (!a2)
  {
    CNInfoSetAuthState(a1, 5);
    PassiveDetectSetCallBack(0, 0);
    TimerCancel(*(a1 + 88));
    CNInfoFlushAuthCommand(a1);
    *(a1 + 104) &= ~1u;
    v12 = *(a1 + 72);
    if (v12)
    {
      if (CNPluginStateIsAuthenticationProvider(*(a1 + 72)))
      {
        v13 = 0;
        v14 = 2;
        v15 = 45.0;
      }

      else
      {
        networkAttributesInit(v34, *(a1 + 40), 1, 0);
        if (a3)
        {
          *(&v34[0] + 1) = *a3;
          if (*(a3 + 8))
          {
            v15 = 3.0;
          }

          else
          {
            v15 = 45.0;
          }

          if (*(a3 + 8))
          {
            v14 = 3;
          }

          else
          {
            v14 = 2;
          }
        }

        else
        {
          v14 = 2;
          v15 = 45.0;
        }

        *(&v35 + 1) = NetIFWiFiNetworkCopyCaptivePortalAPIURL(*(a1 + 40));
        if (!*(&v35 + 1))
        {
          v24 = mysyslog_get_logger();
          v25 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v24, v25))
          {
            LOWORD(buf.isa) = 0;
            _os_log_impl(&dword_277237000, v24, v25, "NetIFWiFiNetworkCopyCaptivePortalAPIURL() returned NULL", &buf, 2u);
          }

          BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
          *(&v35 + 1) = networkCopyCaptivePortalAPIURL(BSDName);
        }

        v13 = v34;
      }

      v27 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      AuthCommand = createAuthCommand(v27, 5, v13);
      networkAttributesRelease(v34);
      if (CNPluginStateIsBuiltin(v12) || CNPluginStateIsProvider(v12) || CNPluginStateIsHelperAppRunning(v12))
      {
        my_FieldSetRetainedCFType((a1 + 64), AuthCommand);
        CNPluginStateIssueCommand(v12, AuthCommand);
        CNPluginStateStartHotspotProvider(v12);
        CFRelease(AuthCommand);
        TimerSet(*(a1 + 88), CNInfoMaintaining, a1, v14, 0, v15);
      }

      else
      {
        v30 = mysyslog_get_logger();
        v31 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v30, v31))
        {
          DisplayID = CNPluginStateGetDisplayID(v12);
          LODWORD(buf.isa) = 138412290;
          *(&buf.isa + 4) = DisplayID;
          _os_log_impl(&dword_277237000, v30, v31, "The best plugin [%@] is not running, unable to maintain this network", &buf, 0xCu);
        }

        NetIFSetRankNever(*(a1 + 32));
        CNInfoEvaluating(a1, 0, 0);
        if (AuthCommand)
        {
          CFRelease(AuthCommand);
        }
      }
    }

    else
    {
      *&buf.isa = xmmword_27A7148D0;
      v19 = mysyslog_get_logger();
      v20 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v19, v20))
      {
        *v33 = 0;
        _os_log_impl(&dword_277237000, v19, v20, "no plugin", v33, 2u);
      }

      CNInfoFailure(a1, &buf);
    }

    goto LABEL_53;
  }

  if (a2 != 1)
  {
LABEL_53:
    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  PassiveDetectSetCallBack(0, 0);
  TimerCancel(*(a1 + 88));
  v5 = CNPluginStateGetDisplayID(*a3);
  Value = CFDictionaryGetValue(*(a3 + 8), @"RedirectHostname");
  if (Value)
  {
    PassiveDetectSetRedirectURLHostname(Value);
  }

  Result = responseGetResult(*(a3 + 8));
  if (Result != 4)
  {
    v8 = Result;
    if (!Result)
    {
      PassiveDetectReportNotCaptive();
      if (*(a1 + 162))
      {
        ++*(a1 + 212);
      }

      v9 = *MEMORY[0x277D85DE8];

      CNInfoAuthenticated(a1, 0, a3);
      return;
    }

    v22 = mysyslog_get_logger();
    v23 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v22, v23))
    {
      LODWORD(buf.isa) = 138412802;
      *(&buf.isa + 4) = v5;
      WORD2(buf.info) = 2080;
      *(&buf.info + 6) = CNPResultGetString(v8);
      HIWORD(buf.data) = 1024;
      LODWORD(buf.length) = v8;
      _os_log_impl(&dword_277237000, v22, v23, "%@: Maintain result is %s (%d)", &buf, 0x1Cu);
    }

    NetIFSetRankNever(*(a1 + 32));
    v18 = *a3;
LABEL_35:
    CNPluginStateStopHotspotAuthenticationProvider(v18);
    CNInfoEvaluating(a1, 0, 0);
    goto LABEL_53;
  }

  NetIFSetRankNever(*(a1 + 32));
  if (*(a1 + 162))
  {
    ++*(a1 + 208);
  }

  v21 = *MEMORY[0x277D85DE8];

  CNInfoAuthenticating(a1, 0, 0);
}

void CNInfoPresentingUI(uint64_t a1, int a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(&v22, 0, sizeof(v22));
  if (!a2)
  {
    CNInfoSetAuthState(a1, 7);
    PassiveDetectSetCallBack(0, 0);
    TimerCancel(*(a1 + 88));
    CNInfoFlushAuthCommand(a1);
    v9 = *(a1 + 72);
    if (v9)
    {
      if (CNPluginStateIsAuthenticationProvider(*(a1 + 72)))
      {
        p_data = 0;
      }

      else
      {
        p_data = &v22.data;
        networkAttributesInit(&v22.data, *(a1 + 40), 1, *(a1 + 161));
      }

      BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      AuthCommand = createAuthCommand(BSDName, 4, p_data);
      networkAttributesRelease(&v22.data);
      my_FieldSetRetainedCFType((a1 + 64), AuthCommand);
      CNPluginStateIssueForegroundCommand(v9, AuthCommand);
      CFRelease(AuthCommand);
      goto LABEL_24;
    }

    LOBYTE(v22.isa) = 1;
    v22.info = @"no plugin";
    logger = mysyslog_get_logger();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v18))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, logger, v18, "no plugin", buf, 2u);
    }

LABEL_19:
    CNInfoFailure(a1, &v22);
LABEL_24:
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  DisplayID = CNPluginStateGetDisplayID(*a3);
  Result = responseGetResult(*(a3 + 8));
  v7 = Result;
  if (Result == 6)
  {
    v13 = 0;
    v14 = 0;
LABEL_16:
    LOBYTE(v22.isa) = v14;
    v22.info = v13;
    v15 = mysyslog_get_logger();
    v16 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v15, v16))
    {
      *buf = 138412802;
      v27 = DisplayID;
      v28 = 2080;
      String = CNPResultGetString(v7);
      v30 = 1024;
      v31 = v7;
      _os_log_impl(&dword_277237000, v15, v16, "%@: PresentUI result %s (%d)", buf, 0x1Cu);
    }

    CNPluginStateStopHotspotAuthenticationProvider(*a3);
    goto LABEL_19;
  }

  if (Result == 5)
  {
    v11 = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      *buf = 138412290;
      v27 = DisplayID;
      _os_log_impl(&dword_277237000, v11, v12, "%@: PresentUI failed: Unsupported Network", buf, 0xCu);
    }

    CNPluginStateStopHotspotAuthenticationProvider(*a3);
    CNInfoAddExcludedDisplayID(a1, DisplayID);
    CNInfoEvaluating(a1, 0, 0);
    goto LABEL_24;
  }

  if (Result)
  {
    v14 = 1;
    v13 = @"PresentUI failure";
    goto LABEL_16;
  }

  v8 = *MEMORY[0x277D85DE8];

  CNInfoAuthenticated(a1, 0, a3);
}

void CNInfoLoggingOff(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  v2 = *(a1 + 72);
  if (v2)
  {
    if ((a2 - 1) >= 2)
    {
      if (!a2)
      {
        CNInfoSetAuthState(a1, 8);
        PassiveDetectSetCallBack(0, 0);
        TimerCancel(*(a1 + 88));
        CNInfoFlushAuthCommand(a1);
        v12 = 0;
        if (!CNPluginStateIsAuthenticationProvider(v2))
        {
          v12 = v16;
          networkAttributesInit(v16, *(a1 + 40), 1, 0);
        }

        BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
        AuthCommand = createAuthCommand(BSDName, 6, v12);
        networkAttributesRelease(v16);
        my_FieldSetRetainedCFType((a1 + 64), AuthCommand);
        CNPluginStateIssueCommand(v2, AuthCommand);
        CFRelease(AuthCommand);
        TimerSet(*(a1 + 88), CNInfoLoggingOff, a1, 2, 0, 45.0);
      }
    }

    else
    {
      DisplayID = CNPluginStateGetDisplayID(*(a1 + 72));
      logger = mysyslog_get_logger();
      v7 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v7))
      {
        v8 = "complete";
        if (a2 == 2)
        {
          v8 = "timed out";
        }

        *buf = 136315394;
        v18 = v8;
        v19 = 2112;
        v20 = DisplayID;
        _os_log_impl(&dword_277237000, logger, v7, "CNPluginHandler: Logoff %s (%@)", buf, 0x16u);
      }

      PassiveDetectSetCallBack(0, 0);
      TimerCancel(*(a1 + 88));
      if (*(a1 + 40))
      {
        v9 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
        NetIFTakeWiFiNetworkOffline(v9, *(a1 + 40), 0, 0);
      }

      else
      {
        CNInfoInactive(a1, 0);
      }
    }
  }

  else
  {
    v10 = mysyslog_get_logger();
    v11 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v10, v11, "no plugin", buf, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t my_CFDictionaryContainsKeyAndValue(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"UniqueID");
  if (!Value)
  {
    return 0;
  }

  return CFEqual(Value, a2);
}

void CNInfoSetAuthState(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 72);
  *(a1 + 56) = a2;
  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  v6 = os_log_type_enabled(logger, v5);
  if (v3)
  {
    if (v6)
    {
      BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      v8 = *(a1 + 56);
      if (v8 <= 8)
      {
        v9 = AuthStateString_strings[v8];
      }

      else
      {
        v9 = "<unknown>";
      }

      v18 = 138412802;
      v19 = BSDName;
      v20 = 2080;
      v21 = v9;
      v22 = 2112;
      DisplayID = CNPluginStateGetDisplayID(v3);
      v13 = "CNPluginHandler %@: %s (%@)";
      v14 = logger;
      v15 = v5;
      v16 = 32;
LABEL_12:
      _os_log_impl(&dword_277237000, v14, v15, v13, &v18, v16);
    }
  }

  else if (v6)
  {
    v10 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
    v11 = *(a1 + 56);
    if (v11 <= 8)
    {
      v12 = AuthStateString_strings[v11];
    }

    else
    {
      v12 = "<unknown>";
    }

    v18 = 138412546;
    v19 = v10;
    v20 = 2080;
    v21 = v12;
    v13 = "CNPluginHandler %@: %s";
    v14 = logger;
    v15 = v5;
    v16 = 22;
    goto LABEL_12;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void CNInfoFlushAuthCommand(uint64_t a1)
{
  v2 = (a1 + 64);
  v1 = *(a1 + 64);
  if (v1)
  {
    CNPluginStateListRemoveCommand(v1);

    my_FieldSetRetainedCFType(v2, 0);
  }
}

_OWORD *networkAttributesInit(_OWORD *result, CFTypeRef cf, int a3, int a4)
{
  result[2] = 0u;
  result[3] = 0u;
  *result = 0u;
  result[1] = 0u;
  if (cf)
  {
    v7 = result;
    result = CFRetain(cf);
    v7[4] = cf;
    if (a3)
    {
      result = NetIFWiFiNetworkWasAutoJoined(cf);
      v8 = *MEMORY[0x277CBED28];
      v9 = *MEMORY[0x277CBED10];
      if (result)
      {
        v10 = *MEMORY[0x277CBED28];
      }

      else
      {
        v10 = *MEMORY[0x277CBED10];
      }

      *v7 = v10;
    }

    else
    {
      v8 = *MEMORY[0x277CBED28];
      v9 = *MEMORY[0x277CBED10];
    }

    if (!a4)
    {
      v8 = v9;
    }

    v7[6] = v8;
  }

  return result;
}

const __CFDictionary *networkCopyCaptivePortalAPIURL(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  if (a1 && v2)
  {
    v3 = NetIFCopyAllServiceInformation();
    if (v3)
    {
      v4 = v3;
      v5 = NetIFCopyCaptivePortal(v3, a1);
      CFRelease(v4);
      return v5;
    }

    logger = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v8))
    {
      *v9 = 0;
      _os_log_impl(&dword_277237000, logger, v8, "Failed to get service info", v9, 2u);
    }
  }

  return 0;
}

CFDictionaryRef createAuthCommand(void *a1, int a2, uint64_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  valuePtr = a2;
  v17 = 0;
  v15 = 0;
  v5 = my_CFUUIDStringCreate(0);
  keys[0] = @"UniqueID";
  values[0] = v5;
  v6 = 3;
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  keys[1] = @"Type";
  keys[2] = @"InterfaceName";
  values[1] = v7;
  values[2] = a1;
  if (a3)
  {
    v8 = copy_network_dict(a3);
    a3 = v8;
    if (v8)
    {
      v9 = 0;
      v17 = @"Network";
      v15 = v8;
      v6 = 4;
    }

    else
    {
      v9 = 1;
      v6 = 3;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = CFDictionaryCreate(0, keys, values, v6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if ((v9 & 1) == 0)
  {
    CFRelease(a3);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void networkAttributesRelease(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 56) = 0;
  }
}

void CNInfoFailure(uint64_t a1, __CFString *a2)
{
  CNInfoSetAuthState(a1, 6);
  if (*(a1 + 40))
  {
    SSID = WiFiNetworkGetSSID();
  }

  else
  {
    SSID = 0;
  }

  v5 = *(a1 + 136);
  Current = CFAbsoluteTimeGetCurrent();
  v7 = NetCacheLookupEntry(v5, *(a1 + 48), SSID, Current);
  if (v7)
  {
    NetCacheEntryDestroy(v7);
  }

  CNPluginStateStopHotspotAuthenticationProvider(*(a1 + 72));
  my_FieldSetRetainedCFType((a1 + 72), 0);
  *(a1 + 80) = 0;
  PassiveDetectSetCallBack(0, 0);
  TimerCancel(*(a1 + 88));
  CNInfoFlushAuthCommand(a1);
  v8 = *(a1 + 96);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 96) = 0;
  }

  if (*(a1 + 40))
  {
    if (a2)
    {
      isa_low = LOBYTE(a2->isa);
      a2 = a2->info;
    }

    else
    {
      isa_low = 0;
    }

    BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
    v11 = *(a1 + 40);

    NetIFTakeWiFiNetworkOffline(BSDName, v11, isa_low, a2);
  }

  else
  {

    CNInfoInactive(a1, 0);
  }
}

uint64_t responseGetResult(const __CFDictionary *a1)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"Result");
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  return valuePtr;
}

void _handleIPv6OnlyEvaluationFailure(uint64_t a1)
{
  v2 = *(a1 + 104);
  if ((v2 & 2) != 0)
  {
    *(a1 + 104) = v2 & 0xFFFFFFFD;
    Current = CFRunLoopGetCurrent();
    v4 = *MEMORY[0x277CBF058];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___handleIPv6OnlyEvaluationFailure_block_invoke;
    block[3] = &__block_descriptor_tmp_3;
    block[4] = a1;
    CFRunLoopPerformBlock(Current, v4, block);
    v5 = CFRunLoopGetCurrent();
    CFRunLoopWakeUp(v5);
  }

  else
  {

    CNInfoInactive(a1, 5);
  }
}

void postNonCaptiveAnalyticsEvent(uint64_t a1)
{
  if (!NetIFGetWiFiNetworkWasCaptive(*(a1 + 40)))
  {
    v5 = 0;
    v2 = *(a1 + 40);
    SecurityType = NetIFWiFiNetworkGetSecurityType();
    if ((SecurityType - 1) >= 4)
    {
      v4 = 0;
    }

    else
    {
      v4 = SecurityType;
    }

    LODWORD(v5) = v4;
    BYTE4(v5) = NetIFWiFiNetworkIsUserBypass(*(a1 + 40));
    CaptiveAnalyticsSessionPostNonCaptiveEvent(&v5);
  }
}

void SendCleanupCommandToBuiltinPluginIfNecessary(uint64_t a1, int a2)
{
  if (a2 || (v3 = *(a1 + 72)) == 0)
  {
    if (!a2)
    {
      return;
    }
  }

  else if (CNPluginStateIsBuiltin(v3))
  {
    return;
  }

  v4 = CNPluginStateGet(@"__BUILTIN__");
  if (v4)
  {
    v5 = v4;
    CNPluginStateBuiltinFlushAllCommands(v4);
    BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
    AuthCommand = createAuthCommand(BSDName, 0, 0);
    CNPluginStateIssueCommand(v5, AuthCommand);

    CFRelease(AuthCommand);
  }
}

void CNInfoAuthenticated(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v3 = a3;
  v113 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (a2 != 4)
  {
    if (a2)
    {
      goto LABEL_119;
    }

    CNInfoSetAuthState(a1, 4);
    PassiveDetectSetCallBack(0, 0);
    TimerCancel(*(a1 + 88));
    CNInfoFlushAuthCommand(a1);
    v5 = *(a1 + 104);
    *(a1 + 104) = v5 & 0xFFFFFFFD;
    *(a1 + 232) = 0;
    v6 = *(a1 + 72);
    if (v3)
    {
      v7 = *(v3 + 1);
      if (v7)
      {
        Value = CFDictionaryGetValue(v7, @"LogoffURL");
        v9 = CFDictionaryGetValue(*(v3 + 1), @"RedirectionURL");
        v10 = CFDictionaryGetValue(*(v3 + 1), @"RedirectionURLGenerationID");
        if (v10)
        {
          CFNumberGetValue(v10, kCFNumberSInt64Type, &valuePtr);
        }

        v11 = CFDictionaryGetValue(*(v3 + 1), @"WISPrLoginUsed");
        TypeID = CFBooleanGetTypeID();
        v13 = v11 && CFGetTypeID(v11) == TypeID;
        *(a1 + 216) = v13;
        BooleanValue = my_CFDictionaryGetBooleanValue(*(v3 + 1), @"DisableMaintaining", 0);
        v22 = my_CFDictionaryGetBooleanValue(*(v3 + 1), @"DisableAutologin", 0);
        v23 = my_CFDictionaryGetBooleanValue(*(v3 + 1), @"UpdateWebSheetLoginDate", 0);
        v7 = CFDictionaryGetValue(*(v3 + 1), @"APIStateSecondsRemaining");
        v19 = v23 == 0;
        v20 = v22 == 0;
        v18 = BooleanValue == 0;
        if (v6)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
    Value = 0;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    if (v6)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (v5)
    {
      NetIFSetRankDefault(*(a1 + 32));
      goto LABEL_61;
    }

LABEL_27:
    cf = v7;
    *(a1 + 104) &= ~2u;
    if (!*(a1 + 40) || !NetIFWiFiNetworkIsCarPlayAndInternet())
    {
      logger = mysyslog_get_logger();
      v25 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v25))
      {
        SSID = *(a1 + 40);
        if (SSID)
        {
          SSID = WiFiNetworkGetSSID();
        }

        *buf = 138412290;
        *&buf[4] = SSID;
        _os_log_impl(&dword_277237000, logger, v25, "adding/updating network [%@] to network cache", buf, 0xCu);
      }

      if (*(a1 + 40))
      {
        v27 = valuePtr;
        v28 = WiFiNetworkGetSSID();
        if (v28)
        {
          v29 = v28;
          v102 = v27;
          v103 = v18;
          v30 = *(a1 + 72);
          v31 = v19;
          if (v30)
          {
            DisplayID = CNPluginStateGetDisplayID(v30);
          }

          else
          {
            DisplayID = 0;
          }

          v41 = *(a1 + 136);
          Current = CFAbsoluteTimeGetCurrent();
          updated = NetCacheUpdateEntry(v41, *(a1 + 48), v29, DisplayID != 0, DisplayID, Current);
          v44 = updated;
          if (Value)
          {
            NetCacheEntrySetLogoffURL(updated, Value);
          }

          v18 = v103;
          v19 = v31;
          if (v9)
          {
            NetCacheEntrySetRedirectionURL(v44, v9, v102);
          }
        }
      }
    }

    NetIFSetRankDefault(*(a1 + 32));
    if (!v6)
    {
LABEL_61:
      IsProtected = NetIFWiFiNetworkIsProtected(*(a1 + 40));
      if (IsProtected || !S_WhitelistedNetworkDetectionEnabled)
      {
        v51 = 0;
        if (!IsProtected || !S_WhitelistedProtectedNetworkDetectionEnabled)
        {
          goto LABEL_106;
        }
      }

      if (!*(a1 + 40))
      {
        goto LABEL_80;
      }

      WhitelistedCaptiveNetworkProbeDate = NetIFWiFiNetworkGetWhitelistedCaptiveNetworkProbeDate();
      if (WhitelistedCaptiveNetworkProbeDate)
      {
        v53 = WhitelistedCaptiveNetworkProbeDate;
        IsWhitelistedCaptiveNetwork = NetIFWiFiNetworkIsWhitelistedCaptiveNetwork(*(a1 + 40));
        v55 = mysyslog_get_logger();
        v56 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v55, v56))
        {
          BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
          v58 = *(a1 + 40);
          if (v58)
          {
            v58 = WiFiNetworkGetSSID();
          }

          v59 = "already ";
          *buf = 138412802;
          *&buf[4] = BSDName;
          if (!IsWhitelistedCaptiveNetwork)
          {
            v59 = "not ";
          }

          v107 = 2112;
          v108 = v58;
          v109 = 2080;
          v110 = *&v59;
          _os_log_impl(&dword_277237000, v55, v56, "%@: %@ %smarked whitelisted", buf, 0x20u);
        }

        v60 = CFAbsoluteTimeGetCurrent();
        v61 = CFDateCreate(0, v60);
        TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(v61, v53);
        CFRelease(v61);
        v63 = &S_WhitelistedNetworkProbeInterval;
        if (!IsWhitelistedCaptiveNetwork)
        {
          v63 = &S_UnwhitelistedNetworkProbeInterval;
        }

        v64 = *v63;
        v65 = mysyslog_get_logger();
        v66 = _SC_syslog_os_log_mapping();
        v67 = os_log_type_enabled(v65, v66);
        if (TimeIntervalSinceDate < v64)
        {
          if (v67)
          {
            v68 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
            v69 = *(a1 + 40);
            if (v69)
            {
              v69 = WiFiNetworkGetSSID();
            }

            *buf = 138413058;
            *&buf[4] = v68;
            v107 = 2112;
            v108 = v69;
            v109 = 2048;
            v110 = TimeIntervalSinceDate;
            v111 = 2048;
            v112 = v64;
            _os_log_impl(&dword_277237000, v65, v66, "%@: %@ BrokenBackhaulMonitor can't probe yet (%g < %g)", buf, 0x2Au);
          }

LABEL_80:
          v51 = 1;
LABEL_106:
          if (NetIFGetWiFiNetworkWasCaptive(*(a1 + 40)))
          {
            *(a1 + 162) = 0;
            PassiveDetectSetCallBack(CNPluginHandlerDetectedCaptive, a1);
          }

          if (v5)
          {
            v78 = mysyslog_get_logger();
            v79 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v78, v79))
            {
              v80 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
              v81 = *(a1 + 40);
              if (v81)
              {
                v81 = WiFiNetworkGetSSID();
              }

              *buf = 138412546;
              *&buf[4] = v80;
              v107 = 2112;
              v108 = v81;
              _os_log_impl(&dword_277237000, v78, v79, "%@ reporting inconclusive captive evaluation for '%@' to symptoms", buf, 0x16u);
            }

            CaptiveSymptomReportInconclusiveCaptiveEvaluation();
            v71 = 66;
          }

          else
          {
            v71 = 2;
          }

          goto LABEL_117;
        }

        if (v67)
        {
          v76 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
          v77 = *(a1 + 40);
          if (v77)
          {
            v77 = WiFiNetworkGetSSID();
          }

          *buf = 138413058;
          *&buf[4] = v76;
          v107 = 2112;
          v108 = v77;
          v109 = 2048;
          v110 = TimeIntervalSinceDate;
          v111 = 2048;
          v112 = v64;
          _os_log_impl(&dword_277237000, v65, v66, "%@: %@ BrokenBackhaulMonitor can probe again (%g >= %g)", buf, 0x2Au);
        }
      }

      v51 = 3;
      goto LABEL_106;
    }

    IsBuiltin = CNPluginStateIsBuiltin(v6);
    if (Value)
    {
      v46 = mysyslog_get_logger();
      v47 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
        *buf = 138412546;
        *&buf[4] = v48;
        v107 = 2112;
        v108 = Value;
        _os_log_impl(&dword_277237000, v46, v47, "%@: LogoffURL %@", buf, 0x16u);
      }
    }

    if (IsBuiltin == 1 && v18)
    {
      v49 = CFNumberGetTypeID();
      if (cf && CFGetTypeID(cf) == v49)
      {
        *buf = 0;
        CFNumberGetValue(cf, kCFNumberDoubleType, buf);
        TimerSet(*(a1 + 88), CNInfoMaintaining, a1, 0, 0, *buf);
        goto LABEL_85;
      }
    }

    else if (!IsBuiltin)
    {
LABEL_84:
      TimerSet(*(a1 + 88), CNInfoMaintaining, a1, 0, 0, 300.0);
      CNPluginStateStopHotspotAuthenticationProvider(v6);
LABEL_85:
      PowerChangeRegister(CNPluginHandlerPowerChange);
      if (v20)
      {
        v70 = 3;
      }

      else
      {
        v70 = 7;
      }

      if (v19)
      {
        v71 = v70;
      }

      else
      {
        v71 = v70 | 0x20;
      }

      CNScanListFilterAggregateResults(a1);
      if (v20)
      {
        if (*(a1 + 168) == 0.0)
        {
          *(a1 + 168) = CFAbsoluteTimeGetCurrent();
        }

        *(a1 + 184) = CFAbsoluteTimeGetCurrent();
      }

      if (!IsBuiltin && !*(a1 + 224))
      {
        v72 = CaptiveCopyProbeSettings();
        if (!v72)
        {
          v74 = 0;
          goto LABEL_132;
        }

        v73 = v72;
        v74 = CFDictionaryGetValue(v72, @"ProbeURL");
        v75 = CFStringGetTypeID();
        if (v74 && CFGetTypeID(v74) == v75)
        {
          CFRelease(v73);
LABEL_132:
          v96 = mysyslog_get_logger();
          v97 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v96, v97))
          {
            *buf = 0;
            _os_log_impl(&dword_277237000, v96, v97, "starting probe for an Internet access", buf, 2u);
          }

          if (*(a1 + 40))
          {
            v98 = WiFiNetworkGetSSID();
          }

          else
          {
            v98 = 0;
          }

          v99 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
          v100 = CFRunLoopGetCurrent();
          v101 = captive_agent_send_probe(v98, v99, 0, v74, 0xAu, HandleInternetAccessProbeResult, a1, v100);
          v51 = 0;
          *(a1 + 224) = v101;
LABEL_117:
          NetIFWiFiNetworkSetCaptive(*(a1 + 40), v71);
          if (!v18 || *(a1 + 152))
          {
            goto LABEL_119;
          }

          v83 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
          if (*(a1 + 40) && (v84 = WiFiNetworkGetSSID()) != 0)
          {
            v85 = v84;
            v86 = IsChinaDevice();
            v87 = BBMonitorCreate(v83, v85, v86, v51, _BrokenBackhaulMonitorComplete, a1);
            *(a1 + 152) = v87;
            v88 = mysyslog_get_logger();
            v89 = _SC_syslog_os_log_mapping();
            v90 = os_log_type_enabled(v88, v89);
            if (v87)
            {
              if (v90)
              {
                *buf = 138412546;
                *&buf[4] = v83;
                v107 = 2112;
                v108 = v85;
                _os_log_impl(&dword_277237000, v88, v89, "BrokenBackhaulMonitor started on %@ (%@)", buf, 0x16u);
              }

              BBMonitorStart(*(a1 + 152));
              goto LABEL_119;
            }

            if (!v90)
            {
              goto LABEL_119;
            }

            *buf = 0;
            v93 = "BrokenBackhaulMonitor failed to start";
            v94 = v88;
            v95 = v89;
          }

          else
          {
            v91 = mysyslog_get_logger();
            v92 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v91, v92))
            {
              goto LABEL_119;
            }

            *buf = 0;
            v93 = "BrokenBackhaulMonitor can't be started: no SSID";
            v94 = v91;
            v95 = v92;
          }

          _os_log_impl(&dword_277237000, v94, v95, v93, buf, 2u);
          goto LABEL_119;
        }

        CFRelease(v73);
      }

      v51 = 0;
      goto LABEL_117;
    }

    if (!v18 || PassiveDetectSetCallBack(CNPluginHandlerDetectedCaptive, a1))
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  if (a3)
  {
    LODWORD(v3) = *a3;
  }

  v14 = mysyslog_get_logger();
  v15 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
    v17 = " [whitelist]";
    if (!v3)
    {
      v17 = "";
    }

    *buf = 138412546;
    *&buf[4] = v16;
    v107 = 2080;
    v108 = v17;
    _os_log_impl(&dword_277237000, v14, v15, "%@: detected captive%s", buf, 0x16u);
  }

  if (*(a1 + 72))
  {
    CNInfoMaintaining(a1, 0, 0);
  }

  else if (NetIFGetWiFiNetworkWasCaptive(*(a1 + 40)))
  {
    CNInfoEvaluating(a1, 0, 0);
  }

  else if ((*(a1 + 104) & 1) == 0 && v3)
  {
    PassiveDetectSetCallBack(0, 0);
    NetIFWiFiNetworkSetCaptive(*(a1 + 40), 0x18u);
    CNInfoUpdateWiFiNetwork(a1);
    v33 = mysyslog_get_logger();
    v34 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      v36 = *(a1 + 40);
      if (v36)
      {
        v36 = WiFiNetworkGetSSID();
      }

      *buf = 138412546;
      *&buf[4] = v35;
      v107 = 2112;
      v108 = v36;
      _os_log_impl(&dword_277237000, v33, v34, "%@: %@ whitelists our probe", buf, 0x16u);
    }

    v37 = mysyslog_get_logger();
    v38 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      v40 = *(a1 + 40);
      if (v40)
      {
        v40 = WiFiNetworkGetSSID();
      }

      *buf = 138412546;
      *&buf[4] = v39;
      v107 = 2112;
      v108 = v40;
      _os_log_impl(&dword_277237000, v37, v38, "%@: %@ disabling broken backhaul monitor", buf, 0x16u);
    }

    CNInfoStopBrokenBackhaulMonitor(a1);
  }

LABEL_119:
  v82 = *MEMORY[0x277D85DE8];
}

CFDictionaryRef copy_network_dict(uint64_t *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *keys = 0u;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[4];
    SSID = WiFiNetworkGetSSID();
    if (SSID)
    {
      keys[0] = @"SSIDString";
      *&v23[0] = SSID;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    SSIDData = WiFiNetworkGetSSIDData();
    if (SSIDData)
    {
      *(keys | (8 * v5)) = @"SSID";
      *(v23 & 0xFFFFFFFFFFFFFFF7 | (8 * (v5++ & 1))) = SSIDData;
    }

    Property = WiFiNetworkGetProperty();
    TypeID = CFStringGetTypeID();
    if (Property && CFGetTypeID(Property) == TypeID)
    {
      keys[v5] = @"BSSID";
      *(v23 + v5++) = Property;
    }

    IsProtected = NetIFWiFiNetworkIsProtected(v2);
    v10 = MEMORY[0x277CBED28];
    if (IsProtected)
    {
      keys[v5] = @"IsProtected";
      *(v23 + v5++) = *v10;
    }

    if (NetIFWiFiNetworkIsUserBypass(v2))
    {
      keys[v5] = @"CaptiveBypass";
      *(v23 + v5++) = *v10;
    }

    v11 = *MEMORY[0x277D29900];
    v12 = WiFiNetworkGetProperty();
    v13 = CFNumberGetTypeID();
    if (v12 && CFGetTypeID(v12) == v13)
    {
      keys[v5] = @"SignalStrength";
      *(v23 + v5++) = v12;
    }

    if (NetIFWiFiNetworkIsCarPlayAndInternet())
    {
      keys[v5] = @"CarPlayAndInternet";
      *(v23 + v5++) = *v10;
    }

    if (NetIFIsQuickProbeRequired())
    {
      keys[v5] = @"QuickProbeRequired";
      *(v23 + v5++) = *v10;
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = *a1;
  if (*a1)
  {
    keys[v5] = @"WasAutoJoined";
    *(v23 + v5++) = v14;
  }

  v15 = a1[1];
  if (v15)
  {
    keys[v5] = @"WasJustJoined";
    *(v23 + v5++) = v15;
  }

  v16 = a1[2];
  if (v16)
  {
    keys[v5] = @"WasCaptive";
    *(v23 + v5++) = v16;
  }

  v17 = a1[3];
  if (v17)
  {
    keys[v5] = @"IsCached";
    *(v23 + v5++) = v17;
  }

  v18 = a1[5];
  if (v18)
  {
    keys[v5] = @"IsChosenPlugin";
    *(v23 + v5++) = v18;
  }

  v19 = a1[6];
  if (v19)
  {
    keys[v5] = @"BecameCaptive";
    *(v23 + v5++) = v19;
  }

  v20 = a1[7];
  if (v20)
  {
    keys[v5] = @"PortalURL";
    *(v23 + v5++) = v20;
  }

  else if (!v5)
  {
    result = 0;
    goto LABEL_38;
  }

  result = CFDictionaryCreate(0, keys, v23, v5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void CNInfoInactive(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
    PassiveDetectSetCallBack(0, 0);
    TimerCancel(*(a1 + 88));
    my_FieldSetRetainedCFType((a1 + 48), 0);
    v14 = *(a1 + 40);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 40) = 0;
    }

    CNInfoSetAuthState(a1, 1);

    PowerChangeDeregister();
  }

  else if (!a2)
  {
    BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
    NetIFSetCarPlayModeChangeCallBack(BSDName, 0);
    v4 = *(a1 + 72);
    Current = CFAbsoluteTimeGetCurrent();
    if (v4)
    {
      v6 = *(a1 + 168);
      if (v6 != 0.0)
      {
        if (Current <= v6)
        {
          v7 = 0;
        }

        else
        {
          v7 = (Current - v6);
        }

        if (CNPluginStateIsBuiltin(v4))
        {
          DisplayID = 0u;
          memset(v19, 0, sizeof(v19));
          LODWORD(DisplayID) = *(a1 + 164);
          v17 = v7;
          v8 = *(a1 + 192);
          if (v8 >= 1)
          {
            v9 = *(a1 + 208);
            *(&DisplayID + 1) = llround(*(a1 + 200) / v8);
            *&v10 = v9;
            *(&v10 + 1) = SHIDWORD(v9);
            *(v19 + 8) = v10;
          }

          v11 = *(a1 + 40);
          SecurityType = NetIFWiFiNetworkGetSecurityType();
          if ((SecurityType - 1) >= 4)
          {
            v13 = 0;
          }

          else
          {
            v13 = SecurityType;
          }

          DWORD2(v19[1]) = v13;
          LOBYTE(v19[0]) = *(a1 + 216);
          CaptiveAnalyticsSessionPostBuiltinEvent(&v17);
        }

        else
        {
          v17 = v7;
          DisplayID = CNPluginStateGetDisplayID(v4);
          BYTE8(DisplayID) = *(a1 + 217);
          CaptiveAnalyticsSessionPostHSHelperEvent(&v17);
        }
      }
    }

    CNPluginStateStopHotspotAuthenticationProvider(*(a1 + 72));
    my_FieldSetRetainedCFType((a1 + 72), 0);
    *(a1 + 80) = 0;
    PassiveDetectSetCallBack(0, 0);
    TimerCancel(*(a1 + 88));
    CNInfoFlushAuthCommand(a1);
    SendCleanupCommandToBuiltinPluginIfNecessary(a1, 1);
    my_FieldSetRetainedCFType((a1 + 48), 0);
    v15 = *(a1 + 40);
    if (v15)
    {
      CFRelease(v15);
      *(a1 + 40) = 0;
    }

    v16 = *(a1 + 96);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 96) = 0;
    }

    PassiveDetectNewNetwork();
    if (*(a1 + 56) >= 2u)
    {
      CNInfoSetAuthState(a1, 1);
      NetIFSetRankNever(*(a1 + 32));
    }

    *(a1 + 104) &= 0xFFFFFFFC;
    CNInfoStopBrokenBackhaulMonitor(a1);
    *(a1 + 232) = 0;
    PowerChangeDeregister();
  }
}

void CNInfoStopBrokenBackhaulMonitor(uint64_t a1)
{
  if (*(a1 + 152))
  {
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v3))
    {
      *v4 = 0;
      _os_log_impl(&dword_277237000, logger, v3, "Stopping BrokenBackhaulMonitor", v4, 2u);
    }

    BBMonitorInvalidate(*(a1 + 152));
    BBMonitorRelease(*(a1 + 152));
    *(a1 + 152) = 0;
  }
}

uint64_t ___handleIPv6OnlyEvaluationFailure_block_invoke(uint64_t a1)
{
  logger = mysyslog_get_logger();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_277237000, logger, v3, "scheduling captive evaluation retry", v5, 2u);
  }

  return CNInfoEvaluating(*(a1 + 32), 0, 0);
}

const void *networkGetConfidence(const void *Confidence, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  TypeID = CFDictionaryGetTypeID();
  if (Confidence)
  {
    if (CFGetTypeID(Confidence) != TypeID)
    {
LABEL_6:
      Confidence = 0;
      goto LABEL_7;
    }

    Value = CFDictionaryGetValue(Confidence, @"Confidence");
    Confidence = numberGetConfidence(Value);
    if (Confidence >= 3)
    {
      logger = mysyslog_get_logger();
      v7 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v7))
      {
        v10 = 138412546;
        v11 = a2;
        v12 = 1024;
        v13 = Confidence;
        _os_log_impl(&dword_277237000, logger, v7, "%@: invalid Confidence value %d treating as None", &v10, 0x12u);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return Confidence;
}

uint64_t numberGetConfidence(const void *a1)
{
  valuePtr = 0;
  TypeID = CFNumberGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  return valuePtr;
}

void CNPluginHandlerDetectedCaptive(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  if (*(a1 + 56) == 4)
  {
    *(a1 + 162) = 1;
    CNInfoAuthenticated(a1, 4, &v8);
  }

  else
  {
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v3))
    {
      BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      v5 = *(a1 + 56);
      if (v5 <= 8)
      {
        v6 = AuthStateString_strings[v5];
      }

      else
      {
        v6 = "<unknown>";
      }

      *buf = 138412546;
      v10 = BSDName;
      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_277237000, logger, v3, "CNPluginHandler %@: passive detected in %s state, ignoring", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void CNPluginHandlerPowerChange(int a1)
{
  v17 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v3))
  {
    v4 = "Wake";
    if (!a1)
    {
      v4 = "Sleep";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_277237000, logger, v3, "%s", buf, 0xCu);
  }

  if (a1)
  {
    for (i = S_CNInfoHeadStorage; i; i = *i)
    {
      *buf = 0uLL;
      if (*(i + 40))
      {
        if (*(i + 72))
        {
          BSDName = SCNetworkInterfaceGetBSDName(*(i + 32));
          v7 = NetIFCopyCurrentWiFiNetwork(BSDName);
          if (v7)
          {
            v8 = v7;
            SSID = WiFiNetworkGetSSID();
            v10 = *(i + 40);
            v11 = WiFiNetworkGetSSID();
            LODWORD(SSID) = my_CFEqual(SSID, v11);
            CFRelease(v8);
            if (SSID)
            {
              v12 = mysyslog_get_logger();
              v13 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v12, v13))
              {
                *v15 = 0;
                _os_log_impl(&dword_277237000, v12, v13, "wake on the same captive network", v15, 2u);
              }

              *buf = 0;
              *&buf[8] = 1;
              CNInfoMaintaining(i, 0, buf);
            }
          }
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void CNScanListFilterAggregateResults(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (S_filter_request_count)
  {
    v26 = 0u;
    v27 = 0u;
    *theArray = 0u;
    BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(a1 + 40);
      *(&v26 + 1) = WiFiNetworkGetSSID();
      LOBYTE(v27) = NetIFWiFiNetworkIsProtected(v2);
      *(&v27 + 1) = *(a1 + 72);
    }

    CNPluginStateListApplyFunction(CNScanListFilterAggregateResultsApplier, &BSDName);
    v4 = theArray[0];
    if (theArray[0])
    {
      if (*(a1 + 144) || (Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]), (*(a1 + 144) = Mutable) != 0))
      {
        Count = CFArrayGetCount(v4);
        if (Count >= 1)
        {
          v7 = Count;
          for (i = 0; i != v7; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
            if (!NetworkArrayContainsNetwork(*(a1 + 144), ValueAtIndex))
            {
              MutableCopy = CFDictionaryCreateMutableCopy(0, 0, ValueAtIndex);
              if (MutableCopy)
              {
                v11 = MutableCopy;
                CFDictionaryRemoveValue(MutableCopy, @"Password");
                CFDictionaryRemoveValue(v11, @"PluginNames");
                CFArrayAppendValue(*(a1 + 144), v11);
                CFRelease(v11);
              }
            }
          }
        }

        v12 = CFArrayGetCount(*(a1 + 144));
        if (v12 >= 1)
        {
          v13 = v12;
          for (j = 0; j < v13; ++j)
          {
            v15 = CFArrayGetValueAtIndex(*(a1 + 144), j);
            if (!NetworkArrayContainsNetwork(v4, v15))
            {
              CFArrayAppendValue(v4, v15);
              CFArrayRemoveValueAtIndex(*(a1 + 144), j);
              --v13;
              if (j <= 0)
              {
                j = 0;
              }

              else
              {
                --j;
              }
            }
          }
        }
      }

      else
      {
        logger = mysyslog_get_logger();
        v23 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v23))
        {
          *buf = 0;
          _os_log_impl(&dword_277237000, logger, v23, "failed to allocate memory for cached filter results.", buf, 2u);
        }
      }

      v16 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      ScanListProcessCommand = createScanListProcessCommand(v16, theArray[0]);
      CFRelease(theArray[0]);
      if (ScanListProcessCommand)
      {
        CommandHandlerListApplyFunction(5u, CNScanListFilterAppendCommandApplier, ScanListProcessCommand);
        if (CaptiveIsDebug())
        {
          v18 = mysyslog_get_logger();
          v19 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
            *buf = 138412546;
            v29 = v20;
            v30 = 2112;
            v31 = ScanListProcessCommand;
            _os_log_impl(&dword_277237000, v18, v19, "%@: %@", buf, 0x16u);
          }
        }

        CFRelease(ScanListProcessCommand);
      }
    }

    else
    {
      CNScanListFilterSendClearResults(a1);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void CNInfoUpdateWiFiNetwork(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    SSID = WiFiNetworkGetSSID();
    if (SSID)
    {
      v3 = SSID;
      BSDName = SCNetworkInterfaceGetBSDName(*(a1 + 32));
      v5 = NetIFCopyCurrentWiFiNetwork(BSDName);
      if (v5)
      {
        v6 = v5;
        v7 = WiFiNetworkGetSSID();
        v8 = v7;
        if (v7 && CFEqual(v7, v3))
        {
          v9 = *(a1 + 40);
          if (v9)
          {
            CFRelease(v9);
          }

          *(a1 + 40) = v6;
          logger = mysyslog_get_logger();
          v11 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(logger, v11))
          {
            v12 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
            v13 = *(a1 + 40);
            if (v13)
            {
              v13 = WiFiNetworkGetSSID();
            }

            v19 = 138412546;
            v20 = v12;
            v21 = 2112;
            v22 = v13;
            _os_log_impl(&dword_277237000, logger, v11, "%@: %@ updated", &v19, 0x16u);
          }
        }

        else
        {
          v14 = mysyslog_get_logger();
          v15 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = SCNetworkInterfaceGetBSDName(*(a1 + 32));
            v17 = *(a1 + 40);
            if (v17)
            {
              v17 = WiFiNetworkGetSSID();
            }

            v19 = 138412802;
            v20 = v16;
            v21 = 2112;
            v22 = v17;
            v23 = 2112;
            v24 = v8;
            _os_log_impl(&dword_277237000, v14, v15, "%@: %@ not updated (new %@)", &v19, 0x20u);
          }

          CFRelease(v6);
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}