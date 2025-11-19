uint64_t sub_297FA7C40(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 24) + 592);
  *&buf[16] = 2030516999;
  *buf = xmmword_297FDB3B8;
  v3 = MGIsDeviceOneOfType();
  v39 = -762483149;
  v38 = xmmword_297FDB3CC;
  v4 = MGIsDeviceOneOfType();
  v37 = -1276010597;
  v36 = xmmword_297FDB3E0;
  v5 = MGIsDeviceOneOfType();
  v35 = -1926937532;
  v34 = xmmword_297FDB3F4;
  v6 = MGIsDeviceOneOfType();
  v33 = -1902732724;
  v32 = xmmword_297FDB408;
  v7 = MGIsDeviceOneOfType();
  v31 = 300442574;
  v30 = xmmword_297FDB41C;
  v8 = MGIsDeviceOneOfType();
  v29 = -342357580;
  v28 = xmmword_297FDB430;
  v9 = MGIsDeviceOneOfType();
  v27 = -1294188889;
  v26 = xmmword_297FDB444;
  v10 = MGIsDeviceOneOfType();
  if (*a1 != 3)
  {
    if ((v2 & 2) != 0)
    {
      v11 = 6;
    }

    else
    {
      v11 = 5;
    }

    if (((v10 | v9 | v8 | v7 | v6 | v5 | v4) | v3))
    {
      v12 = v11;
    }

    else
    {
      v12 = 5;
    }

    v13 = sub_297F9DC04();
    pthread_mutex_lock((v13[3] + 8));
    v14 = v13[3];
    ++*v14;
    pthread_mutex_unlock((v14 + 8));
    v15 = *(*(a1 + 24) + 560);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_297FAAFF0;
    block[3] = &unk_29EE877B8;
    v23 = v12;
    block[4] = a1;
    block[5] = v13;
    dispatch_async_and_wait(v15, block);
    if (sub_297F9F694(v13))
    {
      v16 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i failed to set baud rate: 0x%04llX", "_NFDriverConfigureBaudRate", 677, *v13);
      }

      dispatch_get_specific(*v16);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *v13;
        *buf = 136446722;
        *&buf[4] = "_NFDriverConfigureBaudRate";
        *&buf[12] = 1024;
        *&buf[14] = 677;
        *&buf[18] = 2048;
        v25 = v19;
        _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to set baud rate: 0x%04llX", buf, 0x1Cu);
      }
    }

    sub_297F9FBDC(v13);
  }

  v20 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_297FA7FA8(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v13 = 1;
  memset(v20, 0, 44);
  NFDriverGetControllerInfo(a1, v20);
  if (DWORD1(v20[0]) < 5 || DWORD1(v20[0]) == 5 && (*(a1 + 58) & 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v3 = sub_297FA02E4(1u, &v13);
    v12 = v3;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i %s CRC", "_NFDriverEnableCRC", 706, "Enabling");
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v15 = "_NFDriverEnableCRC";
      v16 = 1024;
      v17 = 706;
      v18 = 2080;
      v19 = "Enabling";
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s CRC", buf, 0x1Cu);
    }

    v7 = sub_297FA0380(a1, 226, v3, 0);
    if (sub_297F9F694(v7))
    {
      dispatch_get_specific(*v4);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v8(3, "%s:%i Failed to %s NFCC CRC", "_NFDriverEnableCRC", 710, "enable");
      }

      dispatch_get_specific(*v4);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v15 = "_NFDriverEnableCRC";
        v16 = 1024;
        v17 = 710;
        v18 = 2080;
        v19 = "enable";
        _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to %s NFCC CRC", buf, 0x1Cu);
      }

      if (*v7 == 137)
      {
        v2 = 13;
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 0;
    }

    sub_297F9FBDC(v7);
    sub_297FA0714(&v12);
  }

  v10 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t sub_297FA8200(uint64_t a1)
{
  v2 = 1;
  v21 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDC9730];
  while (1)
  {
    v4 = sub_297F9DC04();
    pthread_mutex_lock((v4[3] + 8));
    v5 = v4[3];
    ++*v5;
    pthread_mutex_unlock((v5 + 8));
    v6 = *(*(a1 + 24) + 560);
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 0x40000000;
    *&block[16] = sub_297FAB180;
    *&block[24] = &unk_29EE877D8;
    v19 = a1;
    v20 = v4;
    dispatch_async_and_wait(v6, block);
    if (!sub_297F9F694(v4))
    {
      v13 = 0;
      goto LABEL_24;
    }

    v7 = *v4;
    dispatch_get_specific(*v3);
    Logger = NFLogGetLogger();
    if (v7 == 67)
    {
      if (Logger)
      {
        Logger(3, "%s:%i eSE power-on failed! (%d/%d)", "_NFDriverValidateEEPROM", 769, v2, 3);
      }

      dispatch_get_specific(*v3);
      v12 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *block = 136446978;
      *&block[4] = "_NFDriverValidateEEPROM";
      *&block[12] = 1024;
      *&block[14] = 769;
      *&block[18] = 1024;
      *&block[20] = v2;
      *&block[24] = 1024;
      *&block[26] = 3;
      v10 = v12;
      v11 = "%{public}s:%i eSE power-on failed! (%d/%d)";
      goto LABEL_13;
    }

    if (v7 != 255)
    {
      break;
    }

    if (Logger)
    {
      Logger(3, "%s:%i EEPROM validation failed (%d/%d)", "_NFDriverValidateEEPROM", 767, v2, 3);
    }

    dispatch_get_specific(*v3);
    v9 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *block = 136446978;
    *&block[4] = "_NFDriverValidateEEPROM";
    *&block[12] = 1024;
    *&block[14] = 767;
    *&block[18] = 1024;
    *&block[20] = v2;
    *&block[24] = 1024;
    *&block[26] = 3;
    v10 = v9;
    v11 = "%{public}s:%i EEPROM validation failed (%d/%d)";
LABEL_13:
    _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, v11, block, 0x1Eu);
LABEL_14:
    sub_297F9FBDC(v4);
    if (++v2 == 4)
    {
      v13 = 1;
      goto LABEL_25;
    }
  }

  if (Logger)
  {
    Logger(3, "%s:%i failed to validate EEPROM: 0x%04llX", "_NFDriverValidateEEPROM", 779, *v4);
  }

  dispatch_get_specific(*v3);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = *v4;
    *block = 136446722;
    *&block[4] = "_NFDriverValidateEEPROM";
    *&block[12] = 1024;
    *&block[14] = 779;
    *&block[18] = 2048;
    *&block[20] = v15;
    _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to validate EEPROM: 0x%04llX", block, 0x1Cu);
  }

  if (*v4 == 137)
  {
    v13 = 13;
  }

  else
  {
    v13 = 1;
  }

LABEL_24:
  sub_297F9FBDC(v4);
LABEL_25:
  v16 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t sub_297FA8564(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v13 = 16864417;
  memset(v20, 0, 44);
  if (NFDriverGetControllerInfo(a1, v20))
  {
    if (DWORD1(v20[0]) >= 8 && (*(*(a1 + 24) + 587) & 0x10) != 0)
    {
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i Enabling write counters", "_NFDriverEnableWriteCounters", 1639);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v15 = "_NFDriverEnableWriteCounters";
        v16 = 1024;
        v17 = 1639;
        _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling write counters", buf, 0x12u);
      }

      v12 = sub_297FA02E4(4u, &v13);
      v8 = sub_297FA0380(a1, 37025, v12, 0);
      if (sub_297F9F694(v8))
      {
        dispatch_get_specific(*v5);
        v9 = NFLogGetLogger();
        if (v9)
        {
          v9(3, "%s:%i Failed to enable write counters status:0x%08llx", "_NFDriverEnableWriteCounters", 1647, *v8);
        }

        dispatch_get_specific(*v5);
        v10 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = *v8;
          *buf = 136446722;
          v15 = "_NFDriverEnableWriteCounters";
          v16 = 1024;
          v17 = 1647;
          v18 = 2048;
          v19 = v11;
          _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to enable write counters status:0x%08llx", buf, 0x1Cu);
        }

        v2 = 1;
      }

      else
      {
        v2 = 0;
      }

      sub_297F9FBDC(v8);
      sub_297FA0714(&v12);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 8;
  }

  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t sub_297FA879C(uint64_t a1)
{
  result = sub_297FBF5D0(a1);
  if ((*(a1 + 57) & 1) == 0)
  {
    *(a1 + 44) = 1;
  }

  return result;
}

uint64_t sub_297FA87E8(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  memset(v17, 0, 44);
  if (NFDriverGetControllerInfo(a1, v17))
  {
    if (DWORD1(v17[0]) > 6)
    {
      v8 = *(*(a1 + 24) + 584);
      v9 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if ((v8 & 0x2000000) != 0)
      {
        if (Logger)
        {
          Logger(4, "%s:%i LPCD assist disabled!", "_NFDriverEnableLpcdAssist", 1562);
        }

        dispatch_get_specific(*v9);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v14 = "_NFDriverEnableLpcdAssist";
          v15 = 1024;
          v16 = 1562;
          _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i LPCD assist disabled!", buf, 0x12u);
        }

        result = 0;
        *(*(a1 + 24) + 596) = 0;
      }

      else
      {
        if (Logger)
        {
          Logger(6, "%s:%i enabling LPCD assist", "_NFDriverEnableLpcdAssist", 1580);
        }

        dispatch_get_specific(*v9);
        v11 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v14 = "_NFDriverEnableLpcdAssist";
          v15 = 1024;
          v16 = 1580;
          _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i enabling LPCD assist", buf, 0x12u);
        }

        result = 0;
        *(*(a1 + 24) + 596) = 1;
      }
    }

    else
    {
      v2 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v3 = NFLogGetLogger();
      if (v3)
      {
        v3(6, "%s:%i Device does not support this feature", "_NFDriverEnableLpcdAssist", 1557);
      }

      dispatch_get_specific(*v2);
      v4 = NFSharedLogGetLogger();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v5)
      {
        *buf = 136446466;
        v14 = "_NFDriverEnableLpcdAssist";
        v15 = 1024;
        v16 = 1557;
        _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Device does not support this feature", buf, 0x12u);
        result = 0;
      }
    }
  }

  else
  {
    result = 8;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FA8A78(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 24) + 756);
  v3 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (v2 > 9)
  {
    if (Logger)
    {
      Logger(6, "%s:%i Enabling reader mode dynamic BBA control", "_NFDriverConfigureReaderModeDynamicBBA", 1611);
    }

    dispatch_get_specific(*v3);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v11 = "_NFDriverConfigureReaderModeDynamicBBA";
      v12 = 1024;
      v13 = 1611;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling reader mode dynamic BBA control", buf, 0x12u);
    }

    buf[0] = 1;
    result = sub_297FCD864(a1, 41244, buf, 1u);
  }

  else
  {
    if (Logger)
    {
      Logger(6, "%s:%i Not supported - skipping on this hardware", "_NFDriverConfigureReaderModeDynamicBBA", 1606);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v6)
    {
      *buf = 136446466;
      v11 = "_NFDriverConfigureReaderModeDynamicBBA";
      v12 = 1024;
      v13 = 1606;
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Not supported - skipping on this hardware", buf, 0x12u);
      result = 0;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FA8C38(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 24) + 584);
  if (v2)
  {
    v3 = 2050;
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if ((~*(*(a1 + 24) + 584) & 3) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2175;
  }

  v6 = (v2 >> 4) & 0x200 | (v2 >> 10) & 0x1400 | (v2 >> 6) & 0x100 | v5;
  v7 = sub_297F9DC04();
  pthread_mutex_lock((v7[3] + 8));
  v8 = v7[3];
  ++*v8;
  pthread_mutex_unlock((v8 + 8));
  v9 = *(*(a1 + 24) + 560);
  *block = MEMORY[0x29EDCA5F8];
  *&block[8] = 0x40000000;
  *&block[16] = sub_297FAB304;
  *&block[24] = &unk_29EE877F8;
  v20 = v6;
  v18 = a1;
  v19 = v7;
  dispatch_async_and_wait(v9, block);
  if (sub_297F9F694(v7))
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to configure RF logging : 0x%04llX", "_NFDriverConfigureRFLogging", 1111, *v7);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *v7;
      *block = 136446722;
      *&block[4] = "_NFDriverConfigureRFLogging";
      *&block[12] = 1024;
      *&block[14] = 1111;
      *&block[18] = 2048;
      *&block[20] = v13;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure RF logging : 0x%04llX", block, 0x1Cu);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  sub_297F9FBDC(v7);
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t sub_297FA8E44(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v13 = 900;
  if ((*(*(a1 + 24) + 587) & 1) != 0 && (NFIsRestoreOS() & 1) == 0 && NFProductHasThermistor() && (*(a1 + 56) & 1) == 0 && (memset(v21, 0, 44), NFDriverGetControllerInfo(a1, v21), DWORD1(v21[0]) >= 0xC))
  {
    v14 = DWORD1(v21[0]) == 16;
    v12 = sub_297FA02E4(3u, &v13);
    v5 = sub_297FA0380(a1, 242, v12, 0);
    v6 = sub_297F9F694(v5);
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (v6)
    {
      if (Logger)
      {
        Logger(3, "%s:%i Failed to configure Temperature monitoring : 0x%04llX", "_NFDriverConfigureTemperatureNotifications", 1157, *v5);
      }

      dispatch_get_specific(*v7);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *v5;
        *buf = 136446722;
        v16 = "_NFDriverConfigureTemperatureNotifications";
        v17 = 1024;
        v18 = 1157;
        v19 = 2048;
        v20 = v10;
        _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure Temperature monitoring : 0x%04llX", buf, 0x1Cu);
      }

      if (*v5 == 137)
      {
        v2 = 13;
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      if (Logger)
      {
        Logger(6, "%s:%i Temperature monitoring configured", "_NFDriverConfigureTemperatureNotifications", 1160);
      }

      dispatch_get_specific(*v7);
      v11 = NFSharedLogGetLogger();
      v2 = 0;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v16 = "_NFDriverConfigureTemperatureNotifications";
        v17 = 1024;
        v18 = 1160;
        _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Temperature monitoring configured", buf, 0x12u);
        v2 = 0;
      }
    }

    sub_297F9FBDC(v5);
    sub_297FA0714(&v12);
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t sub_297FA90B0(uint64_t a1)
{
  v55 = *MEMORY[0x29EDCA608];
  v41 = 0;
  v42 = 0;
  v40 = 11;
  v39 = -24319;
  *&v54[5] = 0x294A0000000;
  *v54 = 0x64010A0BA1;
  if (NFProductIsWatch())
  {
    goto LABEL_68;
  }

  if (NFIsRestoreOS())
  {
    goto LABEL_68;
  }

  if (!NFProductHasThermistor())
  {
    goto LABEL_68;
  }

  if (*(a1 + 56))
  {
    goto LABEL_68;
  }

  memset(v53, 0, 44);
  NFDriverGetControllerInfo(a1, v53);
  if (DWORD1(v53[0]) != 16)
  {
    goto LABEL_68;
  }

  v42 = sub_297FA02E4(3u, &v39);
  v41 = sub_297FA02E4(v39 << 8, 0);
  v2 = sub_297FA0380(a1, 37026, v42, v41);
  v3 = sub_297F9F694(v2);
  v4 = MEMORY[0x29EDC9730];
  if (v3)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get RF settings.", "_NFDriverConfigureAIOTemperatureRestriction", 1203);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
      *&buf[12] = 1024;
      *&buf[14] = 1203;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF settings.", buf, 0x12u);
    }

    sub_297FA0714(&v42);
    sub_297FA0714(&v41);
    sub_297F9FBDC(v2);
    v7 = 1;
    goto LABEL_69;
  }

  sub_297F9FBDC(v2);
  sub_297FA0714(&v42);
  v52 = 0u;
  memset(buf, 0, sizeof(buf));
  v8 = *(v41 + 2);
  v9 = *v41;
  dispatch_get_specific(*v4);
  v10 = NFLogGetLogger();
  dispatch_get_specific(*v4);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(v41 + 2);
    *v43 = 136315906;
    v44 = "_NFDriverConfigureAIOTemperatureRestriction";
    v45 = 1024;
    v46 = 1212;
    v47 = 2082;
    v48 = "Thresholds are :";
    v49 = 2048;
    v50 = v12;
    _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v43, 0x26u);
  }

  if (v10)
  {
    v10(6, "%s:%i %s %lu bytes :", "_NFDriverConfigureAIOTemperatureRestriction", 1212, "Thresholds are :", *(v41 + 2));
  }

  if (v8)
  {
    v13 = 0;
    do
    {
      v14 = 0;
      v15 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v13)];
      do
      {
        v16 = v9[v13++];
        v17 = sprintf(v15, "0x%02X ", v16);
        if (v14 > 6)
        {
          break;
        }

        v15 += v17;
        ++v14;
      }

      while (v13 < v8);
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 136446210;
        v44 = buf;
        _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", v43, 0xCu);
      }

      if (v10)
      {
        v10(6, "%s", buf);
      }
    }

    while (v13 < v8);
  }

  if (*(v41 + 2) > 0xDu)
  {
    v22 = *v41;
    v23 = *(*v41 + 5);
    v19 = MEMORY[0x29EDC9730];
    if ((*(*v41 + 4) & 1) == 0)
    {
      goto LABEL_72;
    }

    if (!*(*v41 + 5) && !v22[6])
    {
LABEL_39:
      if (v22[10] || v22[11])
      {
        dispatch_get_specific(*v19);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v26(6, "%s:%i Re-using exit threhold", "_NFDriverConfigureAIOTemperatureRestriction", 1234);
        }

        dispatch_get_specific(*v19);
        v27 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
          *&buf[12] = 1024;
          *&buf[14] = 1234;
          _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Re-using exit threhold", buf, 0x12u);
        }

        v28 = *v41;
        v54[9] = *(*v41 + 10);
        v54[10] = v28[11];
      }

      goto LABEL_46;
    }

    if (!v22[10] && !v22[11])
    {
LABEL_72:
      if (*(*v41 + 5) || v22[6])
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v24 = NFLogGetLogger();
        if (v24)
        {
          v24(6, "%s:%i Re-using entry threhold", "_NFDriverConfigureAIOTemperatureRestriction", 1228);
        }

        dispatch_get_specific(*v19);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
          *&buf[12] = 1024;
          *&buf[14] = 1228;
          _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Re-using entry threhold", buf, 0x12u);
        }

        v22 = *v41;
        v54[4] = *(*v41 + 5);
        v54[5] = v22[6];
      }

      goto LABEL_39;
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v35 = NFLogGetLogger();
    if (v35)
    {
      v35(6, "%s:%i Setting already present - not updating", "_NFDriverConfigureAIOTemperatureRestriction", 1222);
    }

    dispatch_get_specific(*v19);
    v36 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
      *&buf[12] = 1024;
      *&buf[14] = 1222;
      _os_log_impl(&dword_297F97000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Setting already present - not updating", buf, 0x12u);
    }

    sub_297FA0714(&v41);
LABEL_68:
    v7 = 0;
    goto LABEL_69;
  }

  v19 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v20(3, "%s:%i Unexpected length, using custom settings...", "_NFDriverConfigureAIOTemperatureRestriction", 1218);
  }

  dispatch_get_specific(*v19);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
    *&buf[12] = 1024;
    *&buf[14] = 1218;
    _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected length, using custom settings...", buf, 0x12u);
  }

LABEL_46:
  sub_297FA0714(&v41);
  v42 = sub_297FA02E4(0xDu, v54);
  v29 = sub_297FA0380(a1, 37025, v42, 0);
  v30 = sub_297F9F694(v29);
  dispatch_get_specific(*v19);
  v31 = NFLogGetLogger();
  if (v30)
  {
    if (v31)
    {
      v31(3, "%s:%i Failed to configure Temperature restrictor : 0x%04llX", "_NFDriverConfigureAIOTemperatureRestriction", 1246, *v29);
    }

    dispatch_get_specific(*v19);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = *v29;
      *buf = 136446722;
      *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
      *&buf[12] = 1024;
      *&buf[14] = 1246;
      *&buf[18] = 2048;
      *&buf[20] = v33;
      _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to configure Temperature restrictor : 0x%04llX", buf, 0x1Cu);
    }

    if (*v29 == 137)
    {
      v7 = 13;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    if (v31)
    {
      v31(6, "%s:%i Temperature restrictor configured", "_NFDriverConfigureAIOTemperatureRestriction", 1249);
    }

    dispatch_get_specific(*v19);
    v34 = NFSharedLogGetLogger();
    v7 = 0;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverConfigureAIOTemperatureRestriction";
      *&buf[12] = 1024;
      *&buf[14] = 1249;
      _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Temperature restrictor configured", buf, 0x12u);
      v7 = 0;
    }
  }

  sub_297F9FBDC(v29);
  sub_297FA0714(&v42);
LABEL_69:
  v37 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_297FA994C(uint64_t a1)
{
  *&v38[5] = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 24) + 752);
  if (v1 >= 0xA00)
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i timeout must be < %d", "_NFDriverSetGenericATxHappenedTimeout", 1268, 2550);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136446722;
    v34 = "_NFDriverSetGenericATxHappenedTimeout";
    v35 = 1024;
    v36 = 1268;
    v37 = 1024;
    v38[0] = 2550;
    v5 = "%{public}s:%i timeout must be < %d";
LABEL_6:
    _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x18u);
LABEL_7:
    v6 = 5;
    goto LABEL_37;
  }

  v8 = sub_297FBA6E8(a1, 4);
  v32[0] = 1;
  v32[1] = HIBYTE(v8);
  v32[2] = v8;
  v31 = sub_297FA02E4(3u, v32);
  v30 = sub_297FA02E4(0x100u, 0);
  v9 = sub_297FA0380(a1, 37026, v31, v30);
  if (sub_297F9F694(v9))
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i Failed to get TO_BEFORE_STDBY_CFG.", "_NFDriverSetGenericATxHappenedTimeout", 1281);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v34 = "_NFDriverSetGenericATxHappenedTimeout";
      v35 = 1024;
      v36 = 1281;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get TO_BEFORE_STDBY_CFG.", buf, 0x12u);
    }

    sub_297F9FBDC(v9);
    sub_297FA0714(&v31);
    sub_297FA0714(&v30);
    v6 = 1;
  }

  else
  {
    sub_297F9FBDC(v9);
    sub_297FA0714(&v31);
    if (*(v30 + 2) > 5u)
    {
      v17 = *(*v30 + 2);
      v18 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v19(6, "%s:%i toBeforeStdbyCfg=%d ms, requesting %d", "_NFDriverSetGenericATxHappenedTimeout", 1297, v17, v1);
      }

      dispatch_get_specific(*v18);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v34 = "_NFDriverSetGenericATxHappenedTimeout";
        v35 = 1024;
        v36 = 1297;
        v37 = 1024;
        v38[0] = v17;
        LOWORD(v38[1]) = 1024;
        *(&v38[1] + 2) = v1;
        _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s:%i toBeforeStdbyCfg=%d ms, requesting %d", buf, 0x1Eu);
      }

      sub_297FA0714(&v30);
      if (v1 >= v17)
      {
        dispatch_get_specific(*v18);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v26(3, "%s:%i timeout must be < %dms", "_NFDriverSetGenericATxHappenedTimeout", 1303, v17);
        }

        dispatch_get_specific(*v18);
        v4 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        *buf = 136446722;
        v34 = "_NFDriverSetGenericATxHappenedTimeout";
        v35 = 1024;
        v36 = 1303;
        v37 = 1024;
        v38[0] = v17;
        v5 = "%{public}s:%i timeout must be < %dms";
        goto LABEL_6;
      }

      v21 = sub_297FBA6E8(a1, 39);
      v29[0] = HIBYTE(v21);
      v29[1] = v21;
      v29[2] = 1;
      v29[3] = v1 / 0xA;
      v31 = sub_297FA02E4(4u, v29);
      v22 = sub_297FA0380(a1, 37025, v31, 0);
      if (sub_297F9F694(v22))
      {
        dispatch_get_specific(*v18);
        v23 = NFLogGetLogger();
        if (v23)
        {
          v23(3, "%s:%i status=0x%04llX", "_NFDriverSetGenericATxHappenedTimeout", 1318, *v22);
        }

        dispatch_get_specific(*v18);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = *v22;
          *buf = 136446722;
          v34 = "_NFDriverSetGenericATxHappenedTimeout";
          v35 = 1024;
          v36 = 1318;
          v37 = 2048;
          *v38 = v25;
          _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
        }

        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      sub_297F9FBDC(v22);
      sub_297FA0714(&v31);
    }

    else
    {
      v13 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v14(3, "%s:%i Unexpected length for TO_BEFORE_STDBY_CFG : %d", "_NFDriverSetGenericATxHappenedTimeout", 1291, *(v30 + 2));
      }

      dispatch_get_specific(*v13);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(v30 + 2);
        *buf = 136446722;
        v34 = "_NFDriverSetGenericATxHappenedTimeout";
        v35 = 1024;
        v36 = 1291;
        v37 = 1024;
        v38[0] = v16;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected length for TO_BEFORE_STDBY_CFG : %d", buf, 0x18u);
      }

      sub_297FA0714(&v30);
      v6 = 8;
    }
  }

LABEL_37:
  v27 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_297FA9F34(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v17 = xmmword_297FDB4BB;
  v18 = 0;
  v10 = sub_297FA02E4(0x18u, &v17);
  v2 = sub_297FA0380(a1, 37025, v10, 0);
  if (sub_297F9F694(v2))
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to set ECP VAS polling: 0x%08llx", "_NFDriverConfigureECPPolling", 1362, *v2);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *v2;
      *buf = 136446722;
      v12 = "_NFDriverConfigureECPPolling";
      v13 = 1024;
      v14 = 1362;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set ECP VAS polling: 0x%08llx", buf, 0x1Cu);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  sub_297F9FBDC(v2);
  sub_297FA0714(&v10);
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_297FAA0A8(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(v20, 0, 44);
  NFDriverGetControllerInfo(a1, v20);
  if (DWORD1(v20[0]) > 6)
  {
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 0x40000000;
    v13[2] = sub_297FAB44C;
    v13[3] = &unk_29EE87818;
    v13[4] = a1;
    v6 = sub_297FA1B10(a1, v13);
    if (sub_297F9F694(v6))
    {
      v7 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(4, "%s:%i failed to enable VAS CODES: 0x%04llX", "_NFDriverConfigureVASFieldDetectShortcuts", 1453, *v6);
      }

      dispatch_get_specific(*v7);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *v6;
        *buf = 136446722;
        v15 = "_NFDriverConfigureVASFieldDetectShortcuts";
        v16 = 1024;
        v17 = 1453;
        v18 = 2048;
        v19 = v10;
        _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to enable VAS CODES: 0x%04llX", buf, 0x1Cu);
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    sub_297F9FBDC(v6);
  }

  else
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v3 = NFLogGetLogger();
    if (v3)
    {
      v3(6, "%s:%i Device does not support this feature", "_NFDriverConfigureVASFieldDetectShortcuts", 1382);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    v5 = 0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v15 = "_NFDriverConfigureVASFieldDetectShortcuts";
      v16 = 1024;
      v17 = 1382;
      _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Device does not support this feature", buf, 0x12u);
      v5 = 0;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_297FAA300(uint64_t a1)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = sub_297FBA6E8(a1, 24);
  v25 = 0;
  v26 = 0;
  v24[0] = 1;
  v24[1] = HIBYTE(v2);
  v24[2] = v2;
  v3 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i %d%% ASK modulation requested.", "_NFDriverChangeISO15693Modulation", 1475, 100);
  }

  dispatch_get_specific(*v3);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v28 = "_NFDriverChangeISO15693Modulation";
    v29 = 1024;
    v30 = 1475;
    v31 = 1024;
    v32 = 100;
    _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %d%% ASK modulation requested.", buf, 0x18u);
  }

  v6 = sub_297FA02E4(3u, v24);
  v26 = v6;
  v25 = sub_297FA02E4(0x100u, 0);
  v7 = sub_297FA0380(a1, 37026, v6, v25);
  if (sub_297F9F694(v7))
  {
    dispatch_get_specific(*v3);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v8(3, "%s:%i Failed to get RF settings.", "_NFDriverChangeISO15693Modulation", 1483);
    }

    dispatch_get_specific(*v3);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "_NFDriverChangeISO15693Modulation";
      v29 = 1024;
      v30 = 1483;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF settings.", buf, 0x12u);
    }

    sub_297FA0714(&v26);
    sub_297FA0714(&v25);
    sub_297F9FBDC(v7);
    v10 = 1;
  }

  else
  {
    sub_297F9FBDC(v7);
    if (*(v25 + 8) == 5)
    {
      v11 = *(*v25 + 4);
      if (v11 < 0)
      {
        *(*v25 + 4) = v11 & 0x7F;
        sub_297FA0714(&v26);
        dispatch_get_specific(*v3);
        v15 = NFLogGetLogger();
        if (v15)
        {
          v15(6, "%s:%i Setting polling modulation limit to 100%%", "_NFDriverChangeISO15693Modulation", 1524);
        }

        dispatch_get_specific(*v3);
        v16 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v28 = "_NFDriverChangeISO15693Modulation";
          v29 = 1024;
          v30 = 1524;
          _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Setting polling modulation limit to 100%%", buf, 0x12u);
        }

        v26 = sub_297FA02E4(0x10u, 0);
        **v26 = *(*v25 + 1);
        v17 = v26;
        v18 = *v26;
        *(v18 + 1) = 0x37AF7632080002F0;
        v18[3] = -1051982618;
        v19 = sub_297FA0380(a1, 224, v17, 0);
        if (sub_297F9F694(v19))
        {
          dispatch_get_specific(*v3);
          v20 = NFLogGetLogger();
          if (v20)
          {
            v20(3, "%s:%i Failed to set RF settings.", "_NFDriverChangeISO15693Modulation", 1538);
          }

          dispatch_get_specific(*v3);
          v21 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v28 = "_NFDriverChangeISO15693Modulation";
            v29 = 1024;
            v30 = 1538;
            _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set RF settings.", buf, 0x12u);
          }

          v10 = 1;
        }

        else
        {
          v10 = 0;
        }

        sub_297F9FBDC(v19);
        sub_297FA0714(&v26);
        sub_297FA0714(&v25);
      }

      else
      {
        sub_297FA0714(&v26);
        sub_297FA0714(&v25);
        v10 = 0;
      }
    }

    else
    {
      v12 = (*(v25 + 8) - 1);
      dispatch_get_specific(*v3);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v13(3, "%s:%i Unexpected length for ISO modulation : %d, expected %d", "_NFDriverChangeISO15693Modulation", 1493, v12, 4);
      }

      dispatch_get_specific(*v3);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v28 = "_NFDriverChangeISO15693Modulation";
        v29 = 1024;
        v30 = 1493;
        v31 = 1024;
        v32 = v12;
        v33 = 1024;
        v34 = 4;
        _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected length for ISO modulation : %d, expected %d", buf, 0x1Eu);
      }

      sub_297FA0714(&v26);
      sub_297FA0714(&v25);
      v10 = 8;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t sub_297FAA7D4(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = 88;
  v4 = 134217888;
  memset(v6, 0, 44);
  if (NFDriverGetControllerInfo(a1, v6))
  {
    if (DWORD1(v6[0]) == 22)
    {
      result = 0;
    }

    else
    {
      result = NFDriverEnableAntiRelay(a1, &v4, 5);
    }
  }

  else
  {
    result = 8;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FAA888(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (NFIsInternalBuild() && (*(*(a1 + 24) + 585) & 8) != 0)
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Warning : Standby disabled.", "_NFDriverDisableStandby", 1722);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v8 = "_NFDriverDisableStandby";
      v9 = 1024;
      v10 = 1722;
      _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%i Warning : Standby disabled.", buf, 0x12u);
    }

    sub_297FC05A4(a1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_297FAA9A4(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(*(*(a1 + 32) + 24) + 576);
  v3 = phLibNfc_Mgt_GeneralNtfRegister();
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_NFDriverRegisterNCINotifications_block_invoke", 823, v4);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136446722;
    v27 = "_NFDriverRegisterNCINotifications_block_invoke";
    v28 = 1024;
    v29 = 823;
    v30 = 1024;
    v31 = v4;
    v8 = "%{public}s:%i status=0x%04X";
    goto LABEL_6;
  }

  v9 = *(*(*(a1 + 32) + 24) + 576);
  v10 = phLibNfc_SE_NtfRegister();
  if (v10)
  {
    v4 = v10;
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v12(3, "%s:%i status=0x%04X", "_NFDriverRegisterNCINotifications_block_invoke", 830, v4);
    }

    dispatch_get_specific(*v11);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v27 = "_NFDriverRegisterNCINotifications_block_invoke";
      v28 = 1024;
      v29 = 830;
      v30 = 1024;
      v31 = v4;
      _os_log_impl(&dword_297F97000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    v14 = *(*(*(a1 + 32) + 24) + 576);
    phLibNfc_RemoteDev_NtfUnregister();
    goto LABEL_13;
  }

  v18 = *(*(*(a1 + 32) + 24) + 576);
  v19 = phLibNfc_RemoteDev_NtfRegister();
  if (v19)
  {
    v4 = v19;
    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i status=0x%04X", "_NFDriverRegisterNCINotifications_block_invoke", 840, v4);
    }

    dispatch_get_specific(*v20);
    v7 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136446722;
    v27 = "_NFDriverRegisterNCINotifications_block_invoke";
    v28 = 1024;
    v29 = 840;
    v30 = 1024;
    v31 = v4;
    v8 = "%{public}s:%i status=0x%04X";
    goto LABEL_6;
  }

  v22 = *(*(*(a1 + 32) + 24) + 576);
  v23 = phLibNfc_CardEmulation_NtfRegister();
  if (!v23)
  {
    v15 = *(a1 + 40);
    v16 = 0;
    goto LABEL_14;
  }

  v4 = v23;
  v24 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v25(3, "%s:%i HCE Register error = 0x%04x", "_NFDriverRegisterNCINotifications_block_invoke", 847, v4);
  }

  dispatch_get_specific(*v24);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v27 = "_NFDriverRegisterNCINotifications_block_invoke";
    v28 = 1024;
    v29 = 847;
    v30 = 1024;
    v31 = v4;
    v8 = "%{public}s:%i HCE Register error = 0x%04x";
LABEL_6:
    _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x18u);
  }

LABEL_13:
  v15 = *(a1 + 40);
  v16 = v4;
LABEL_14:
  sub_297F9FB20(v15, v16);
  sub_297F9FBDC(*(a1 + 40));
  v17 = *MEMORY[0x29EDCA608];
}

void sub_297FAAD7C(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(*(*(a1 + 32) + 24) + 576);
  v3 = phLibNfc_Mgt_DnldGeneralNtfRegister();
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to register notification callback.", "_NFDriverRegisterFWDLNotifications_block_invoke", 930);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "_NFDriverRegisterFWDLNotifications_block_invoke";
      v11 = 1024;
      v12 = 930;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to register notification callback.", buf, 0x12u);
    }

    sub_297F9FB20(*(a1 + 40), v4);
  }

  sub_297F9FB20(*(a1 + 40), 0);
  sub_297F9FBDC(*(a1 + 40));
  v8 = *MEMORY[0x29EDCA608];
}

void sub_297FAAEBC(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(*(*(a1 + 40) + 24) + 576);
  v3 = phLibNfc_Mgt_GetstackCapabilities();
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_NFDriverSetControllerInfo_block_invoke", 560, v4);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "_NFDriverSetControllerInfo_block_invoke";
      v11 = 1024;
      v12 = 560;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_297FAAFF0(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = phLibNfc_Mgt_ConfigureHsuParams();
  if (v4 != 13)
  {
    v5 = v4;
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_NFDriverConfigureBaudRate_block_invoke", 670, v5);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "_NFDriverConfigureBaudRate_block_invoke";
      v13 = 1024;
      v14 = 670;
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v5);
    sub_297F9FBDC(*(a1 + 40));
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_297FAB140(uint64_t a1, void **a2, unsigned int a3)
{
  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

void sub_297FAB180(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = phLibNfc_Mgt_ValidateEepromSettings();
  if (v4 != 13)
  {
    v5 = v4;
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverValidateEEPROM_block_invoke", 746, v5);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "_Async_NFDriverValidateEEPROM_block_invoke";
      v12 = 1024;
      v13 = 746;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v5);
    sub_297F9FBDC(*(a1 + 40));
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_297FAB2C4(uint64_t a1, void **a2, unsigned int a3)
{
  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

void sub_297FAB304(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 24) + 576);
  v4 = *(a1 + 48);
  v5 = phLibNfc_Mgt_ConfigureLogging();
  if (v5 != 13)
  {
    v6 = v5;
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverConfigureRFLogging_block_invoke", 1069, v6);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "_Async_NFDriverConfigureRFLogging_block_invoke";
      v13 = 1024;
      v14 = 1069;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v6);
    sub_297F9FBDC(*(a1 + 40));
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297FAB44C(uint64_t a1)
{
  v19[4] = *MEMORY[0x29EDCA608];
  v12 = 3;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v19, 0, 24);
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Enabling VAS CODES", "_NFDriverConfigureVASFieldDetectShortcuts_block_invoke", 1396);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "_NFDriverConfigureVASFieldDetectShortcuts_block_invoke";
    v10 = 1024;
    v11 = 1396;
    _os_log_impl(&dword_297F97000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling VAS CODES", buf, 0x12u);
  }

  BYTE2(v13) = 6;
  *(&v13 + 3) = 16958210;
  *(&v13 + 7) = 1;
  BYTE8(v14) = 4;
  *(&v14 + 9) = 180994;
  *(&v15[1] + 5) = 1025;
  *(&v15[1] + 7) = 364290;
  *(&v16 + 3) = 1025;
  *(&v16 + 5) = 362754;
  BYTE10(v17) = 4;
  *(&v17 + 11) = 311554;
  v5 = *(*(*(a1 + 32) + 24) + 576);
  result = phLibNfc_Mgt_SetNfccParams();
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_297FAB620(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v27 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElementCreate", 80, "driver");
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "NFDriverSecureElementCreate";
      v23 = 1024;
      v24 = 80;
      v25 = 2080;
      v26 = "driver";
      _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  if (!sub_297FAB908(a2))
  {
    goto LABEL_14;
  }

  v8 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A004076067311uLL);
  if (!v8)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Failed to allocate se of type %d", "NFDriverSecureElementCreate", 88, a2);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "NFDriverSecureElementCreate";
      v23 = 1024;
      v24 = 88;
      v25 = 1024;
      LODWORD(v26) = a2;
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate se of type %d", buf, 0x18u);
    }

    goto LABEL_14;
  }

  v9 = v8;
  if ((sub_297FABA38(v8, a1, a2, a3, a4) & 1) == 0)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(3, "%s:%i Failed to init se of type %d", "NFDriverSecureElementCreate", 93, a2);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "NFDriverSecureElementCreate";
      v23 = 1024;
      v24 = 93;
      v25 = 1024;
      LODWORD(v26) = a2;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to init se of type %d", buf, 0x18u);
    }

    free(v9);
LABEL_14:
    v9 = 0;
  }

  v16 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_297FAB908(int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = a1 - 2;
  if (a1 - 2) < 5 && ((0x1Du >> v2))
  {
    result = dword_297FDB4E0[v2];
  }

  else
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Unknown SE type %d", "_seTypeToID", 53, a1);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446722;
      v9 = "_seTypeToID";
      v10 = 1024;
      v11 = 53;
      v12 = 1024;
      v13 = a1;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown SE type %d", buf, 0x18u);
      result = 0;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FABA38(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v36 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElementInit", 103, "se");
    }

    dispatch_get_specific(*v25);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v31 = "NFDriverSecureElementInit";
      v32 = 1024;
      v33 = 103;
      v34 = 2080;
      v35 = "se";
LABEL_31:
      _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

LABEL_32:
    abort();
  }

  if (!a2)
  {
    v28 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v29(3, "%s:%i FAILED: %s", "NFDriverSecureElementInit", 104, "driver");
    }

    dispatch_get_specific(*v28);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v31 = "NFDriverSecureElementInit";
      v32 = 1024;
      v33 = 104;
      v34 = 2080;
      v35 = "driver";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v10 = sub_297FAB908(a3);
  if (!v10)
  {
LABEL_22:
    v24 = *MEMORY[0x29EDCA608];
    return 0;
  }

  *(a1 + 16) = v10;
  *a1 = a2;
  *(a1 + 8) = a5;
  *(a1 + 24) = a4;
  if (a3 != 2)
  {
    v12 = &unk_2A1E98058;
    v13 = 4;
    while (--v13)
    {
      v11 = v12 + 4;
      v14 = v12[4];
      v12 += 4;
      if (v14 == a3)
      {
        goto LABEL_9;
      }
    }

    v22 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(3, "%s:%i Unknown SE type %d", "_createSE", 74, a3);
    }

    dispatch_get_specific(*v22);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446722;
    v31 = "_createSE";
    v32 = 1024;
    v33 = 74;
    v34 = 1024;
    LODWORD(v35) = a3;
    v21 = "%{public}s:%i Unknown SE type %d";
LABEL_21:
    _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x18u);
    goto LABEL_22;
  }

  v11 = &unk_2A1E98058;
LABEL_9:
  v15 = v11[1];
  if (!v15)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i missing creator for SE type %d", "_createSE", 67, a3);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446722;
    v31 = "_createSE";
    v32 = 1024;
    v33 = 67;
    v34 = 1024;
    LODWORD(v35) = a3;
    v21 = "%{public}s:%i missing creator for SE type %d";
    goto LABEL_21;
  }

  v16 = *MEMORY[0x29EDCA608];

  return v15(a1);
}

uint64_t sub_297FABE14(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_SetPower", 130, "se");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverSecureElement_SetPower";
      v10 = 1024;
      v11 = 130;
      v12 = 2080;
      v13 = "se";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t sub_297FABF70(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetOSInfo", 140, "se");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverSecureElement_GetOSInfo";
      v10 = 1024;
      v11 = 140;
      v12 = 2080;
      v13 = "se";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t sub_297FAC0CC(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetOSMode", 150, "se");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverSecureElement_GetOSMode";
      v10 = 1024;
      v11 = 150;
      v12 = 2080;
      v13 = "se";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t sub_297FAC228(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetOSUpdateLog", 160, "se");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverSecureElement_GetOSUpdateLog";
      v10 = 1024;
      v11 = 160;
      v12 = 2080;
      v13 = "se";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 56);
  if (v1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t sub_297FAC384(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetAttackCounterLog", 170, "se");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverSecureElement_GetAttackCounterLog";
      v10 = 1024;
      v11 = 170;
      v12 = 2080;
      v13 = "se";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t sub_297FAC4E0(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetPresenceOfAttackLog", 180, "se");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverSecureElement_GetPresenceOfAttackLog";
      v10 = 1024;
      v11 = 180;
      v12 = 2080;
      v13 = "se";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 72);
  if (v1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t sub_297FAC63C(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_UnlockRequestInfo", 190, "se");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverSecureElement_UnlockRequestInfo";
      v10 = 1024;
      v11 = 190;
      v12 = 2080;
      v13 = "se";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 80);
  if (v1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t sub_297FAC798(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_GetManifestQuery", 200, "se");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverSecureElement_GetManifestQuery";
      v10 = 1024;
      v11 = 200;
      v12 = 2080;
      v13 = "se";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 88);
  if (v1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t sub_297FAC8F4(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFDriverSecureElement_IsOSReady", 221, "se");
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFDriverSecureElement_IsOSReady";
      v10 = 1024;
      v11 = 221;
      v12 = 2080;
      v13 = "se";
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v1 = *(a1 + 104);
  if (v1)
  {
    v2 = *MEMORY[0x29EDCA608];

    return v1();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    return 1;
  }
}

BOOL sub_297FACA50(uint64_t a1)
{
  if (a1)
  {
    dword_2A18BD374 = 0;
    *(a1 + 32) = sub_297FACB10;
    *(a1 + 40) = sub_297FACC18;
    *(a1 + 48) = sub_297FADAE8;
    *(a1 + 56) = sub_297FAE090;
    *(a1 + 64) = sub_297FAE4B8;
    *(a1 + 72) = sub_297FAE968;
    *(a1 + 88) = sub_297FAF108;
    *(a1 + 80) = sub_297FAF430;
    *(a1 + 96) = sub_297FAF438;
    *(a1 + 104) = sub_297FAF440;
    *(a1 + 20) = 6;
  }

  return a1 != 0;
}

BOOL sub_297FACB10(uint64_t *a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i WARNING : power cycling SE", "SetPower_Eos", 76);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v10 = "SetPower_Eos";
    v11 = 1024;
    v12 = 76;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i WARNING : power cycling SE", buf, 0x12u);
  }

  result = NFDriverSetEmbeddedSecureElementPower(*a1, a2);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_297FACC18(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x29EDCA608];
  result = sub_297FAF108(a1, a2);
  if (result)
  {
    v74 = 0;
    if (*(a2 + 1250) <= 0xA4uLL)
    {
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Invalid manifest length", "_EosParseManifestQuery", 98);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      *buf = 136446466;
      v77 = "_EosParseManifestQuery";
      v78 = 1024;
      v79 = 98;
      v8 = "%{public}s:%i Invalid manifest length";
      goto LABEL_44;
    }

    v9 = NFDataCreateWithBytes();
    v10 = MEMORY[0x29EDC9730];
    if (!v9)
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v26 = NFLogGetLogger();
      if (v26)
      {
        v26(3, "%s:%i Failed to allocate manifest query data", "_EosParseManifestQuery", 104);
      }

      dispatch_get_specific(*v10);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      *buf = 136446466;
      v77 = "_EosParseManifestQuery";
      v78 = 1024;
      v79 = 104;
      v8 = "%{public}s:%i Failed to allocate manifest query data";
LABEL_44:
      v27 = v7;
      v28 = 18;
LABEL_45:
      _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, v8, buf, v28);
LABEL_46:
      result = 0;
      goto LABEL_115;
    }

    v11 = TLVCreateWithData();
    v75 = v11;
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      do
      {
        v14 = *(v12 + 32);
        if (v14 == 134)
        {
          v15 = *(v12 + 40);
          v16 = *(v15 + 8);
          if (v16 >= 0x19)
          {
            dispatch_get_specific(*v10);
            v17 = NFLogGetLogger();
            if (v17)
            {
              v17(3, "%s:%i Error ! Unexpected serial number length ", "_EosParseManifestQuery", 116);
            }

            dispatch_get_specific(*v10);
            v18 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v77 = "_EosParseManifestQuery";
              v78 = 1024;
              v79 = 116;
              _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected serial number length ", buf, 0x12u);
            }

            v15 = *(v12 + 40);
            v16 = 24;
            v10 = v13;
          }

          memcpy((a2 + 1176), *v15, v16);
          v14 = *(v12 + 32);
        }

        if (v14 == 137)
        {
          v19 = *(v12 + 40);
          if (v19[1] == 32)
          {
            if (**v19 ^ 0x75A5ACE19525D904 | *(*v19 + 8) ^ 0x16F1101E35C189A6 | *(*v19 + 16) ^ 0xA4EEF336B936CDD0 | *(*v19 + 24) ^ 0xBDD1D60286D53B67)
            {
              v20 = 1;
            }

            else
            {
              v20 = 2;
            }
          }

          else
          {
            dispatch_get_specific(*v10);
            v21 = NFLogGetLogger();
            if (v21)
            {
              v21(3, "%s:%i Error ! Unexpected cert length ", "_EosParseManifestQuery", 123);
            }

            dispatch_get_specific(*v10);
            v22 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v77 = "_EosParseManifestQuery";
              v78 = 1024;
              v79 = 123;
              _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected cert length ", buf, 0x12u);
            }

            v20 = 0;
            v10 = v13;
          }

          *(a2 + 1208) = v20;
        }

        v12 = *(v12 + 24);
      }

      while (v12);
      TLVRelease();
    }

    NFDataRelease();
    sub_297FA25B8(a1, a2);
    if (*(a2 + 1204) != 2)
    {
      dispatch_get_specific(*v10);
      v29 = NFLogGetLogger();
      if (v29)
      {
        v29(6, "%s:%i Not updating the rest of OS Info : JCOP is not available", "GetOSInfo_Eos", 228);
      }

      dispatch_get_specific(*v10);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v77 = "GetOSInfo_Eos";
        v78 = 1024;
        v79 = 228;
        _os_log_impl(&dword_297F97000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Not updating the rest of OS Info : JCOP is not available", buf, 0x12u);
      }

      goto LABEL_114;
    }

    v23 = NFDataCreateWithBytes();
    NFDriverSecureElementSelectWithOS(*a1, *(a1 + 16), 0, v23, &v74);
    NFDataRelease();
    switch(v74)
    {
      case 0x6614u:
        dispatch_get_specific(*v10);
        v31 = NFLogGetLogger();
        if (v31)
        {
          v31(5, "%s:%i JCOP OS Update Mode detected", "GetOSInfo_Eos", 245);
        }

        dispatch_get_specific(*v10);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v77 = "GetOSInfo_Eos";
          v78 = 1024;
          v79 = 245;
          _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i JCOP OS Update Mode detected", buf, 0x12u);
        }

        *(a2 + 1256) = 1;
LABEL_57:
        if (*(a2 + 1204) == 3)
        {
          *(a2 + 1256) = 1;
        }

        if ((*(a2 + 1255) & 1) == 0 && (*(a2 + 1256) & 1) == 0)
        {
          sub_297FA27E0(a1, a2);
        }

        v33 = NFDataCreateWithBytes();
        if (!NFDriverSecureElementSelectWithOS(*a1, *(a1 + 16), 0, v33, &v74))
        {
          dispatch_get_specific(*v10);
          v38 = NFLogGetLogger();
          if (v38)
          {
            v38(3, "%s:%i Returned error: 0x%04x", "GetOSInfo_Eos", 273, v74);
          }

          dispatch_get_specific(*v10);
          v39 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v77 = "GetOSInfo_Eos";
            v78 = 1024;
            v79 = 273;
            v80 = 1024;
            *v81 = v74;
            _os_log_impl(&dword_297F97000, v39, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x", buf, 0x18u);
          }

          NFDataRelease();
          goto LABEL_46;
        }

        NFDataRelease();
        sub_297FA25B8(a1, a2);
        v34 = sub_297FA2304(a1, 0, 254, 57120, 0);
        if (v34)
        {
          v35 = *(v34 + 8);
          if (v35 - 48 > 0xFFFFFFFFFFFFFFCELL)
          {
            memcpy((a2 + 1072), *v34, v35);
            *(a2 + 1072 + v35) = 0;
          }

          else
          {
            dispatch_get_specific(*v10);
            v36 = NFLogGetLogger();
            if (v36)
            {
              v36(4, "%s:%i Platform id too long: %ld", "GetOSInfo_Eos", 292, v35);
            }

            dispatch_get_specific(*v10);
            v37 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v77 = "GetOSInfo_Eos";
              v78 = 1024;
              v79 = 292;
              v80 = 2048;
              *v81 = v35;
              _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i Platform id too long: %ld", buf, 0x1Cu);
            }
          }

          NFDataRelease();
        }

        else
        {
          dispatch_get_specific(*v10);
          v42 = NFLogGetLogger();
          if (v42)
          {
            v42(4, "%s:%i Failed to get platform identifier", "GetOSInfo_Eos", 287);
          }

          dispatch_get_specific(*v10);
          v43 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v77 = "GetOSInfo_Eos";
            v78 = 1024;
            v79 = 287;
            _os_log_impl(&dword_297F97000, v43, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get platform identifier", buf, 0x12u);
          }
        }

        v44 = sub_297FA2304(a1, 0, 254, 57164, 0);
        if (!v44)
        {
          dispatch_get_specific(*v10);
          v57 = NFLogGetLogger();
          if (v57)
          {
            v57(4, "%s:%i Failed to get JCOP Version", "GetOSInfo_Eos", 308);
          }

          dispatch_get_specific(*v10);
          v58 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v77 = "GetOSInfo_Eos";
            v78 = 1024;
            v79 = 308;
            _os_log_impl(&dword_297F97000, v58, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get JCOP Version", buf, 0x12u);
          }

          goto LABEL_99;
        }

        v45 = v44[1];
        if (v45 < 2)
        {
LABEL_89:
          dispatch_get_specific(*v10);
          v51 = NFLogGetLogger();
          if (v51)
          {
            v51(3, "%s:%i Did not find version tag!", "_NFDriverEosUpdateJCOPVersion", 155);
          }

          dispatch_get_specific(*v10);
          v52 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_94;
          }

          *buf = 136446466;
          v77 = "_NFDriverEosUpdateJCOPVersion";
          v78 = 1024;
          v79 = 155;
          v53 = "%{public}s:%i Did not find version tag!";
          v54 = v52;
          v55 = OS_LOG_TYPE_ERROR;
          v56 = 18;
        }

        else
        {
          v46 = 0;
          v47 = *v44;
          v48 = 1;
          while (1)
          {
            v49 = *(v47 + v48);
            v50 = v46 + v49 + 2;
            if (*(v47 + v46) == 133)
            {
              break;
            }

            v48 = v46 + v49 + 3;
            v46 += v49 + 2;
            if (v50 + 1 >= v45)
            {
              goto LABEL_89;
            }
          }

          if (v49 != 4 || v50 > v45)
          {
            dispatch_get_specific(*v10);
            v67 = NFLogGetLogger();
            if (v67)
            {
              v67(3, "%s:%i Invalid version tag length %d", "_NFDriverEosUpdateJCOPVersion", 162, v49);
            }

            dispatch_get_specific(*v10);
            v68 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_94;
            }

            *buf = 136446722;
            v77 = "_NFDriverEosUpdateJCOPVersion";
            v78 = 1024;
            v79 = 162;
            v80 = 1024;
            *v81 = v49;
            v53 = "%{public}s:%i Invalid version tag length %d";
            v54 = v68;
            v55 = OS_LOG_TYPE_ERROR;
            v56 = 24;
          }

          else
          {
            *(a2 + 1200) = *(v47 + v46 + 2);
            *(a2 + 1201) = *(v47 + v46 + 3);
            *(a2 + 1202) = *(v47 + v46 + 5);
            dispatch_get_specific(*v10);
            v69 = NFLogGetLogger();
            if (v69)
            {
              v69(6, "%s:%i major = %d, minor %d, build = %d", "_NFDriverEosUpdateJCOPVersion", 171, *(a2 + 1200), *(a2 + 1201), *(a2 + 1202));
            }

            dispatch_get_specific(*v10);
            v70 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_94;
            }

            v71 = *(a2 + 1200);
            v72 = *(a2 + 1201);
            v73 = *(a2 + 1202);
            *buf = 136447234;
            v77 = "_NFDriverEosUpdateJCOPVersion";
            v78 = 1024;
            v79 = 171;
            v80 = 1024;
            *v81 = v71;
            *&v81[4] = 1024;
            *&v81[6] = v72;
            v82 = 1024;
            v83 = v73;
            v53 = "%{public}s:%i major = %d, minor %d, build = %d";
            v54 = v70;
            v55 = OS_LOG_TYPE_DEFAULT;
            v56 = 36;
          }
        }

        _os_log_impl(&dword_297F97000, v54, v55, v53, buf, v56);
LABEL_94:
        NFDataRelease();
LABEL_99:
        v59 = sub_297FA2304(a1, 0, 254, 57121, 0);
        if (v59)
        {
          v60 = *(v59 + 8);
          if (v60 < 0x19)
          {
            memcpy((a2 + 1152), *v59, v60);
          }

          else
          {
            dispatch_get_specific(*v10);
            v61 = NFLogGetLogger();
            if (v61)
            {
              v61(4, "%s:%i serial number too long: %ld", "GetJCOPOSSerialNumber", 188, v60);
            }

            dispatch_get_specific(*v10);
            v62 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v77 = "GetJCOPOSSerialNumber";
              v78 = 1024;
              v79 = 188;
              v80 = 2048;
              *v81 = v60;
              _os_log_impl(&dword_297F97000, v62, OS_LOG_TYPE_ERROR, "%{public}s:%i serial number too long: %ld", buf, 0x1Cu);
            }
          }

          NFDataRelease();
        }

        else
        {
          dispatch_get_specific(*v10);
          v63 = NFLogGetLogger();
          if (v63)
          {
            v63(4, "%s:%i Failed to get serial number", "GetJCOPOSSerialNumber", 183);
          }

          dispatch_get_specific(*v10);
          v64 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v77 = "GetJCOPOSSerialNumber";
            v78 = 1024;
            v79 = 183;
            _os_log_impl(&dword_297F97000, v64, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get serial number", buf, 0x12u);
          }
        }

        if ((*(a2 + 1255) & 1) == 0 && (*(a2 + 1256) & 1) == 0)
        {
          sub_297FA30D8(a1, 0, a2);
        }

LABEL_114:
        result = 1;
        goto LABEL_115;
      case 0x9000u:
        *(a2 + 1255) = 0;
        goto LABEL_57;
      case 0x66A5u:
        dispatch_get_specific(*v10);
        v24 = NFLogGetLogger();
        if (v24)
        {
          v24(5, "%s:%i Restricted Mode detected", "GetOSInfo_Eos", 241);
        }

        dispatch_get_specific(*v10);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v77 = "GetOSInfo_Eos";
          v78 = 1024;
          v79 = 241;
          _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Restricted Mode detected", buf, 0x12u);
        }

        *(a2 + 1255) = 1;
        goto LABEL_57;
    }

    dispatch_get_specific(*v10);
    v40 = NFLogGetLogger();
    if (v40)
    {
      v40(3, "%s:%i Returned error: 0x%04x", "GetOSInfo_Eos", 249, v74);
    }

    dispatch_get_specific(*v10);
    v41 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446722;
      v77 = "GetOSInfo_Eos";
      v78 = 1024;
      v79 = 249;
      v80 = 1024;
      *v81 = v74;
      v8 = "%{public}s:%i Returned error: 0x%04x";
      v27 = v41;
      v28 = 24;
      goto LABEL_45;
    }
  }

LABEL_115:
  v65 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_297FADAE8(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  if (!a1)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "GetOSMode_Eos", 347, "se");
    }

    dispatch_get_specific(*v2);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "GetOSMode_Eos";
      v30 = 1024;
      v31 = 347;
      v32 = 2080;
      v33 = "se";
      _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  *(a2 + 1220) = 7;
  *(a2 + 1224) = *(a1 + 20);
  dispatch_get_specific(*v2);
  v5 = NFLogGetLogger();
  if (v5)
  {
    v5(6, "%s:%i SELECT OS Update AID", "GetOSMode_Eos", 352);
  }

  dispatch_get_specific(*v2);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v29 = "GetOSMode_Eos";
    v30 = 1024;
    v31 = 352;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SELECT OS Update AID", buf, 0x12u);
  }

  v7 = NFDataCreateWithBytes();
  v8 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 2u, 0, 164, 4, 0, 0, v7);
  NFDataRelease();
  if (v8)
  {
    v9 = v8[1];
    if (v9 < 2)
    {
      v10 = 0;
LABEL_22:
      dispatch_get_specific(*v2);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v19(3, "%s:%i Unexpected status: 0x%X", "GetOSMode_Eos", 403, v10);
      }

      dispatch_get_specific(*v2);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v29 = "GetOSMode_Eos";
        v30 = 1024;
        v31 = 403;
        v32 = 1024;
        LODWORD(v33) = v10;
        _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected status: 0x%X", buf, 0x18u);
      }

      v18 = 0;
LABEL_27:
      *(a2 + 1204) = v18;
      NFDataRelease();
      dword_2A18BD374 = *(a2 + 1204);
      goto LABEL_28;
    }

    v13 = *v8;
    v10 = __rev16(*(*v8 + v9 - 2));
    if (v10 != 36864)
    {
      goto LABEL_22;
    }

    if (v9 <= 0x24)
    {
      if (*(a2 + 1253))
      {
LABEL_16:
        v15 = *(a2 + 1254);
        dispatch_get_specific(*v2);
        v16 = NFLogGetLogger();
        if (v15)
        {
          if (v16)
          {
            v16(6, "%s:%i Note : OS mode is JCOP", "GetOSMode_Eos", 398);
          }

          dispatch_get_specific(*v2);
          v25 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v29 = "GetOSMode_Eos";
            v30 = 1024;
            v31 = 398;
            _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Note : OS mode is JCOP", buf, 0x12u);
          }

          v18 = 2;
        }

        else
        {
          if (v16)
          {
            v16(6, "%s:%i Note : OS mode is System only", "GetOSMode_Eos", 395);
          }

          dispatch_get_specific(*v2);
          v17 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v29 = "GetOSMode_Eos";
            v30 = 1024;
            v31 = 395;
            _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Note : OS mode is System only", buf, 0x12u);
          }

          v18 = 3;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v14 = *(v13 + 9);
      *(a2 + 1253) = v14;
      *(a2 + 1242) = bswap32(*(v13 + 10)) >> 16;
      *(a2 + 1254) = *(v13 + 12);
      *(a2 + 1244) = bswap32(*(v13 + 13)) >> 16;
      *(a2 + 1232) = *(v13 + 17);
      *(a2 + 1252) = *(v13 + 18);
      *(a2 + 1228) = bswap32(*(v13 + 19));
      if (v14)
      {
        goto LABEL_16;
      }
    }

    dispatch_get_specific(*v2);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v23(6, "%s:%i Note : OS mode is Boot Loader", "GetOSMode_Eos", 392);
    }

    dispatch_get_specific(*v2);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v29 = "GetOSMode_Eos";
      v30 = 1024;
      v31 = 392;
      _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Note : OS mode is Boot Loader", buf, 0x12u);
    }

    v18 = 1;
    goto LABEL_27;
  }

  dispatch_get_specific(*v2);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v11(3, "%s:%i Failed to select", "GetOSMode_Eos", 367);
  }

  dispatch_get_specific(*v2);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v29 = "GetOSMode_Eos";
    v30 = 1024;
    v31 = 367;
    _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to select", buf, 0x12u);
  }

LABEL_28:
  result = v8 != 0;
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FAE090(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = NFDataCreateWithBytes();
  if (!v2)
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Allocation failure", "GetOSUpdateLog_Eos", 427);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "GetOSUpdateLog_Eos";
      v28 = 1024;
      v29 = 427;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
    }

    goto LABEL_30;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 2u, 128, 202, 0, 254, 0, v3);
    v7 = v6;
    if (!v6 || (v8 = v6[1], v8 <= 1))
    {
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i Failed to get data", "GetOSUpdateLog_Eos", 439);
      }

      dispatch_get_specific(*v15);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v27 = "GetOSUpdateLog_Eos";
        v28 = 1024;
        v29 = 439;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get data", buf, 0x12u);
      }

      if (v7)
      {
LABEL_22:
        NFDataRelease();
      }

      NFDataRelease();
      if (!v5)
      {
        goto LABEL_30;
      }

LABEL_24:
      result = NFDataCreateWithBytesNoCopy();
      goto LABEL_31;
    }

    v9 = __rev16(*(*v6 + v8 - 2));
    if (v9 != 36864 && v9 != 25360)
    {
      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(4, "%s:%i Got error 0x%2X", "GetOSUpdateLog_Eos", 458, v9);
      }

      dispatch_get_specific(*v23);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v27 = "GetOSUpdateLog_Eos";
        v28 = 1024;
        v29 = 458;
        v30 = 1024;
        v31 = v9;
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Got error 0x%2X", buf, 0x18u);
      }

      goto LABEL_22;
    }

    v11 = reallocf(v5, v8 + v4 - 2);
    if (!v11)
    {
      break;
    }

    v5 = v11;
    memcpy(&v11[v4], *v7, v7[1] - 2);
    v4 = v4 + *(v7 + 2) - 2;
    NFDataRelease();
    if (v9 != 25360)
    {
      NFDataRelease();
      goto LABEL_24;
    }
  }

  v19 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v20(3, "%s:%i Allocation failure", "GetOSUpdateLog_Eos", 449);
  }

  dispatch_get_specific(*v19);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v27 = "GetOSUpdateLog_Eos";
    v28 = 1024;
    v29 = 449;
    _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
  }

  NFDataRelease();
  NFDataRelease();
LABEL_30:
  result = 0;
LABEL_31:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_297FAE4B8(uint64_t a1, void *a2, uint64_t *a3)
{
  result = 0;
  v40 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    *a3 = 0;
    v7 = NFDataCreateWithBytes();
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 2u, 128, 202, 0, 254, 0, v8);
        v12 = v11;
        if (!v11)
        {
          break;
        }

        v13 = v11[1];
        if (v13 <= 1)
        {
          break;
        }

        v14 = __rev16(*(*v11 + v13 - 2));
        if (v14 != 36864 && v14 != 25360)
        {
          v31 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(4, "%s:%i Got error 0x%2X", "GetAttackCounterLog_Eos", 561, v14);
          }

          dispatch_get_specific(*v31);
          v33 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v35 = "GetAttackCounterLog_Eos";
            v36 = 1024;
            v37 = 561;
            v38 = 1024;
            v39 = v14;
            _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i Got error 0x%2X", buf, 0x18u);
          }

LABEL_24:
          NFDataRelease();
          goto LABEL_25;
        }

        v16 = reallocf(v10, v13 + v9 - 2);
        if (!v16)
        {
          v27 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v28 = NFLogGetLogger();
          if (v28)
          {
            v28(3, "%s:%i Allocation failure", "GetAttackCounterLog_Eos", 552);
          }

          dispatch_get_specific(*v27);
          v29 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v35 = "GetAttackCounterLog_Eos";
            v36 = 1024;
            v37 = 552;
            _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
          }

          NFDataRelease();
          NFDataRelease();
          goto LABEL_36;
        }

        v10 = v16;
        memcpy(&v16[v9], *v12, v12[1] - 2);
        v9 = v9 + *(v12 + 2) - 2;
        NFDataRelease();
        if (v14 != 25360)
        {
          NFDataRelease();
          goto LABEL_26;
        }
      }

      v20 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v21(3, "%s:%i Failed to get data", "GetAttackCounterLog_Eos", 542);
      }

      dispatch_get_specific(*v20);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v35 = "GetAttackCounterLog_Eos";
        v36 = 1024;
        v37 = 542;
        _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get data", buf, 0x12u);
      }

      if (v12)
      {
        goto LABEL_24;
      }

LABEL_25:
      NFDataRelease();
      if (!v10)
      {
        goto LABEL_36;
      }

LABEL_26:
      v23 = malloc_type_calloc(2uLL, 0x10uLL, 0x10200403A5D3213uLL);
      if (!v23)
      {
        free(v10);
        goto LABEL_36;
      }

      v24 = v23;
      v23[2] = 57126;
      v25 = 1;
      *v23 = NFDataCreateWithBytesNoCopy();
      v26 = sub_297FAF560(a1);
      if (v26)
      {
        v24[6] = 57162;
        *(v24 + 2) = v26;
        v25 = 2;
      }

      *a2 = v24;
      *a3 = v25;
      result = 1;
    }

    else
    {
      v17 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v18(3, "%s:%i Allocation failure", "GetAttackCounterLog_Eos", 530);
      }

      dispatch_get_specific(*v17);
      v19 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v35 = "GetAttackCounterLog_Eos";
        v36 = 1024;
        v37 = 530;
        _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
LABEL_36:
        result = 0;
      }
    }
  }

  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FAE968(uint64_t a1, _BYTE *a2)
{
  *(&v85[3] + 4) = *MEMORY[0x29EDCA608];
  if (a2)
  {
    *a2 = 0;
  }

  if (!sub_297FAF560(a1))
  {
    LOBYTE(v6) = 0;
    v4 = 0;
    if (!a2)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  v3 = TLVCreateWithData();
  v4 = v3 != 0;
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = MEMORY[0x29EDC9730];
    while (1)
    {
      v8 = *(v5 + 32);
      if (v8 != 128)
      {
        goto LABEL_31;
      }

      v9 = *(v5 + 40);
      if (v9 && v9[1])
      {
        v10 = **v9;
        dispatch_get_specific(*v7);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          if (v10 == 90)
          {
            v12 = "YES";
          }

          else
          {
            v12 = "NO";
          }

          Logger(6, "%s:%i Primary = %s", "GetPresenceOfAttackLog_Eos", 621, v12);
        }

        v6 |= v10 == 90;
        dispatch_get_specific(*v7);
        v13 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

        *buf = 136446722;
        if (v10 == 90)
        {
          v14 = "YES";
        }

        else
        {
          v14 = "NO";
        }

        v81 = "GetPresenceOfAttackLog_Eos";
        v82 = 1024;
        v83 = 621;
        v84 = 2080;
        v85[0] = v14;
        v15 = v13;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = "%{public}s:%i Primary = %s";
        v18 = 28;
      }

      else
      {
        dispatch_get_specific(*v7);
        v19 = NFLogGetLogger();
        if (v19)
        {
          v20 = *(v5 + 40);
          if (v20)
          {
            v21 = *(v20 + 8);
          }

          else
          {
            v21 = -1;
          }

          v19(3, "%s:%i Invalid value for 0x%X, len=%ld", "GetPresenceOfAttackLog_Eos", 623, *(v5 + 32), v21);
        }

        dispatch_get_specific(*v7);
        v22 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v23 = *(v5 + 40);
        if (v23)
        {
          v24 = *(v23 + 8);
        }

        else
        {
          v24 = -1;
        }

        v25 = *(v5 + 32);
        *buf = 136446978;
        v81 = "GetPresenceOfAttackLog_Eos";
        v82 = 1024;
        v83 = 623;
        v84 = 1024;
        LODWORD(v85[0]) = v25;
        WORD2(v85[0]) = 2048;
        *(v85 + 6) = v24;
        v15 = v22;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = "%{public}s:%i Invalid value for 0x%X, len=%ld";
        v18 = 34;
      }

      _os_log_impl(&dword_297F97000, v15, v16, v17, buf, v18);
LABEL_30:
      v8 = *(v5 + 32);
LABEL_31:
      if (v8 != 144)
      {
        goto LABEL_55;
      }

      v26 = *(v5 + 40);
      if (v26 && v26[1])
      {
        v27 = **v26;
        dispatch_get_specific(*v7);
        v28 = NFLogGetLogger();
        if (v28)
        {
          if (v27 == 90)
          {
            v29 = "YES";
          }

          else
          {
            v29 = "NO";
          }

          v28(6, "%s:%i JCOP1 = %s", "GetPresenceOfAttackLog_Eos", 631, v29);
        }

        v6 |= v27 == 90;
        dispatch_get_specific(*v7);
        v30 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          if (v27 == 90)
          {
            v31 = "YES";
          }

          else
          {
            v31 = "NO";
          }

          v81 = "GetPresenceOfAttackLog_Eos";
          v82 = 1024;
          v83 = 631;
          v84 = 2080;
          v85[0] = v31;
          v32 = v30;
          v33 = OS_LOG_TYPE_DEFAULT;
          v34 = "%{public}s:%i JCOP1 = %s";
          v35 = 28;
LABEL_54:
          _os_log_impl(&dword_297F97000, v32, v33, v34, buf, v35);
        }
      }

      else
      {
        dispatch_get_specific(*v7);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v37 = *(v5 + 40);
          if (v37)
          {
            v38 = *(v37 + 8);
          }

          else
          {
            v38 = -1;
          }

          v36(3, "%s:%i Invalid value for 0x%X, len=%ld", "GetPresenceOfAttackLog_Eos", 633, *(v5 + 32), v38);
        }

        dispatch_get_specific(*v7);
        v39 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = *(v5 + 40);
          if (v40)
          {
            v41 = *(v40 + 8);
          }

          else
          {
            v41 = -1;
          }

          v42 = *(v5 + 32);
          *buf = 136446978;
          v81 = "GetPresenceOfAttackLog_Eos";
          v82 = 1024;
          v83 = 633;
          v84 = 1024;
          LODWORD(v85[0]) = v42;
          WORD2(v85[0]) = 2048;
          *(v85 + 6) = v41;
          v32 = v39;
          v33 = OS_LOG_TYPE_ERROR;
          v34 = "%{public}s:%i Invalid value for 0x%X, len=%ld";
          v35 = 34;
          goto LABEL_54;
        }
      }

LABEL_55:
      v43 = *(v5 + 32);
      if (v43 != 160)
      {
        goto LABEL_80;
      }

      v44 = *(v5 + 40);
      if (v44 && v44[1])
      {
        v45 = **v44;
        dispatch_get_specific(*v7);
        v46 = NFLogGetLogger();
        if (v46)
        {
          if (v45 == 90)
          {
            v47 = "YES";
          }

          else
          {
            v47 = "NO";
          }

          v46(6, "%s:%i EUICC = %s", "GetPresenceOfAttackLog_Eos", 641, v47);
        }

        v6 |= v45 == 90;
        dispatch_get_specific(*v7);
        v48 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_79;
        }

        *buf = 136446722;
        if (v45 == 90)
        {
          v49 = "YES";
        }

        else
        {
          v49 = "NO";
        }

        v81 = "GetPresenceOfAttackLog_Eos";
        v82 = 1024;
        v83 = 641;
        v84 = 2080;
        v85[0] = v49;
        v50 = v48;
        v51 = OS_LOG_TYPE_DEFAULT;
        v52 = "%{public}s:%i EUICC = %s";
        v53 = 28;
      }

      else
      {
        dispatch_get_specific(*v7);
        v54 = NFLogGetLogger();
        if (v54)
        {
          v55 = *(v5 + 40);
          if (v55)
          {
            v56 = *(v55 + 8);
          }

          else
          {
            v56 = -1;
          }

          v54(3, "%s:%i Invalid value for 0x%X, len=%ld", "GetPresenceOfAttackLog_Eos", 643, *(v5 + 32), v56);
        }

        dispatch_get_specific(*v7);
        v57 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_79;
        }

        v58 = *(v5 + 40);
        if (v58)
        {
          v59 = *(v58 + 8);
        }

        else
        {
          v59 = -1;
        }

        v60 = *(v5 + 32);
        *buf = 136446978;
        v81 = "GetPresenceOfAttackLog_Eos";
        v82 = 1024;
        v83 = 643;
        v84 = 1024;
        LODWORD(v85[0]) = v60;
        WORD2(v85[0]) = 2048;
        *(v85 + 6) = v59;
        v50 = v57;
        v51 = OS_LOG_TYPE_ERROR;
        v52 = "%{public}s:%i Invalid value for 0x%X, len=%ld";
        v53 = 34;
      }

      _os_log_impl(&dword_297F97000, v50, v51, v52, buf, v53);
LABEL_79:
      v43 = *(v5 + 32);
LABEL_80:
      if (v43 == 129)
      {
        v61 = *(v5 + 40);
        if (v61 && v61[1])
        {
          v62 = **v61;
          dispatch_get_specific(*v7);
          v63 = NFLogGetLogger();
          if (v63)
          {
            if (v62 == 90)
            {
              v64 = "YES";
            }

            else
            {
              v64 = "NO";
            }

            v63(6, "%s:%i Secondary = %s", "GetPresenceOfAttackLog_Eos", 651, v64);
          }

          v6 |= v62 == 90;
          dispatch_get_specific(*v7);
          v65 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_104;
          }

          *buf = 136446722;
          if (v62 == 90)
          {
            v66 = "YES";
          }

          else
          {
            v66 = "NO";
          }

          v81 = "GetPresenceOfAttackLog_Eos";
          v82 = 1024;
          v83 = 651;
          v84 = 2080;
          v85[0] = v66;
          v67 = v65;
          v68 = OS_LOG_TYPE_DEFAULT;
          v69 = "%{public}s:%i Secondary = %s";
          v70 = 28;
        }

        else
        {
          dispatch_get_specific(*v7);
          v71 = NFLogGetLogger();
          if (v71)
          {
            v72 = *(v5 + 40);
            if (v72)
            {
              v73 = *(v72 + 8);
            }

            else
            {
              v73 = -1;
            }

            v71(3, "%s:%i Invalid value for 0x%X, len=%ld", "GetPresenceOfAttackLog_Eos", 653, *(v5 + 32), v73);
          }

          dispatch_get_specific(*v7);
          v74 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_104;
          }

          v75 = *(v5 + 40);
          if (v75)
          {
            v76 = *(v75 + 8);
          }

          else
          {
            v76 = -1;
          }

          v77 = *(v5 + 32);
          *buf = 136446978;
          v81 = "GetPresenceOfAttackLog_Eos";
          v82 = 1024;
          v83 = 653;
          v84 = 1024;
          LODWORD(v85[0]) = v77;
          WORD2(v85[0]) = 2048;
          *(v85 + 6) = v76;
          v67 = v74;
          v68 = OS_LOG_TYPE_ERROR;
          v69 = "%{public}s:%i Invalid value for 0x%X, len=%ld";
          v70 = 34;
        }

        _os_log_impl(&dword_297F97000, v67, v68, v69, buf, v70);
      }

LABEL_104:
      v5 = *(v5 + 24);
      if (!v5)
      {
        TLVRelease();
        v4 = v4;
        goto LABEL_109;
      }
    }
  }

  LOBYTE(v6) = 0;
LABEL_109:
  NFDataRelease();
  if (a2)
  {
LABEL_110:
    *a2 = v6 & 1;
  }

LABEL_111:
  v78 = *MEMORY[0x29EDCA608];
  return v4;
}

BOOL sub_297FAF108(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = NFDataCreateWithBytes();
  v5 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 2u, 128, 202, 0, 254, 0, v4);
  NFDataRelease();
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6 < 2)
    {
      v7 = 0;
LABEL_14:
      v18 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i AID_MANIFESTQUERY returned error: 0x%04x", "GetManifestQuery_Eos", 53, v7);
      }

      dispatch_get_specific(*v18);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v24 = "GetManifestQuery_Eos";
        v25 = 1024;
        v26 = 53;
        v27 = 1024;
        LODWORD(v28) = v7;
        _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i AID_MANIFESTQUERY returned error: 0x%04x", buf, 0x18u);
      }

      NFDataRelease();
      goto LABEL_19;
    }

    v12 = *v5;
    v7 = __rev16(*(*v5 + v6 - 2));
    if (v7 != 36864)
    {
      goto LABEL_14;
    }

    v13 = v6 - 2;
    if (v13)
    {
      if (v13 >= 0x100)
      {
        v22 = 256;
      }

      else
      {
        v22 = v13;
      }

      *(a2 + 1250) = v22;
      memcpy((a2 + 816), v12, v22);
    }

    else
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i Incorrect manifest query length: %zu", "GetManifestQuery_Eos", 63, *(v5 + 8));
      }

      dispatch_get_specific(*v14);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v5 + 8);
        *buf = 136446722;
        v24 = "GetManifestQuery_Eos";
        v25 = 1024;
        v26 = 63;
        v27 = 2048;
        v28 = v17;
        _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Incorrect manifest query length: %zu", buf, 0x1Cu);
      }
    }

    NFDataRelease();
    result = 1;
  }

  else
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i Failed to get ManifestQuery", "GetManifestQuery_Eos", 48);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v24 = "GetManifestQuery_Eos";
      v25 = 1024;
      v26 = 48;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get ManifestQuery", buf, 0x12u);
LABEL_19:
      result = 0;
    }
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_297FAF440(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = (dword_2A18BD374 & 0xFFFFFFFD) == 1 && a2 == 0;
  if ((a2 == 0) != v2 && dword_2A18BD374 == 0)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i WARNING ! Do not send data to JCOP in unknown state !!!!!", "IsOSReady_Eos", 697);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "IsOSReady_Eos";
      v11 = 1024;
      v12 = 697;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i WARNING ! Do not send data to JCOP in unknown state !!!!!", buf, 0x12u);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return !v2;
}

uint64_t sub_297FAF560(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = NFDataCreateWithBytes();
  if (v2)
  {
    v3 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 2u, 128, 202, 0, 254, 0, v2);
    v4 = v3;
    if (v3)
    {
      v5 = v3[1];
      if (v5 >= 8 && __rev16(*(*v3 + v5 - 2)) == 36864)
      {
        v20 = *v3 + 5;
        v13 = NFDataCreateWithBytes();
LABEL_27:
        NFDataRelease();
        NFDataRelease();
        goto LABEL_28;
      }

      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = v4[1];
        if (v8 >= 2)
        {
          v9 = __rev16(*(*v4 + v8 - 2));
        }

        else
        {
          v9 = 0;
        }

        Logger(3, "%s:%i Query AC log presence failed with 0x%02X", "_getACLogPresence", 502, v9);
      }

      dispatch_get_specific(*v6);
      v21 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        v13 = 0;
        goto LABEL_27;
      }

      v22 = v4[1];
      if (v22 >= 2)
      {
        v23 = __rev16(*(*v4 + v22 - 2));
      }

      else
      {
        v23 = 0;
      }

      *buf = 136446722;
      v27 = "_getACLogPresence";
      v28 = 1024;
      v29 = 502;
      v30 = 1024;
      v31 = v23;
      v17 = "%{public}s:%i Query AC log presence failed with 0x%02X";
      v18 = v21;
      v19 = 24;
    }

    else
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i Unable to get presence of AC log", "_getACLogPresence", 495);
      }

      dispatch_get_specific(*v14);
      v16 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 136446466;
      v27 = "_getACLogPresence";
      v28 = 1024;
      v29 = 495;
      v17 = "%{public}s:%i Unable to get presence of AC log";
      v18 = v16;
      v19 = 18;
    }

    _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    goto LABEL_26;
  }

  v10 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v11(3, "%s:%i Allocation failure", "_getACLogPresence", 485);
  }

  dispatch_get_specific(*v10);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v27 = "_getACLogPresence";
    v28 = 1024;
    v29 = 485;
    _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
  }

  v13 = 0;
LABEL_28:
  v24 = *MEMORY[0x29EDCA608];
  return v13;
}

BOOL sub_297FAF8A0(uint64_t a1)
{
  if (a1)
  {
    dword_2A18BD370 = 0;
    *(a1 + 32) = sub_297FAF950;
    *(a1 + 40) = sub_297FAF958;
    *(a1 + 48) = sub_297FAF9B0;
    *(a1 + 56) = sub_297FAFE8C;
    *(a1 + 64) = sub_297FAFE90;
    *(a1 + 72) = sub_297FB0490;
    *(a1 + 88) = sub_297FB0630;
    *(a1 + 80) = sub_297FB0C88;
    *(a1 + 96) = sub_297FB0C90;
    *(a1 + 104) = 0;
    *(a1 + 20) = 2;
  }

  return a1 != 0;
}

BOOL sub_297FAF958(void *a1, uint64_t a2)
{
  result = sub_297FA3B84(a1, a2, 0, 0);
  if (result)
  {

    return sub_297FB0630(a1, a2);
  }

  return result;
}

BOOL sub_297FAF9B0(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  *(a2 + 1220) = 7;
  *(a2 + 1224) = *(a1 + 5);
  v25 = 0;
  v4 = MEMORY[0x29EDC9730];
  if (dword_2A18BD370 == 2)
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i SELECT: ISD", "GetOSMode_P73", 127);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v27 = "GetOSMode_P73";
      v28 = 1024;
      v29 = 127;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SELECT: ISD", buf, 0x12u);
    }

    v7 = NFDataCreateWithBytes();
    if (!NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v7, &v25))
    {
      dispatch_get_specific(*v4);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i Returned error: 0x%04x", "GetOSMode_P73", 130, v25);
      }

      dispatch_get_specific(*v4);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v27 = "GetOSMode_P73";
        v28 = 1024;
        v29 = 130;
        v30 = 1024;
        LODWORD(v31) = v25;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x", buf, 0x18u);
      }

LABEL_23:
      NFDataRelease();
      goto LABEL_24;
    }

    NFDataRelease();
  }

  dispatch_get_specific(*v4);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(6, "%s:%i GET OS MODE", "GetOSMode_P73", 137);
  }

  dispatch_get_specific(*v4);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v27 = "GetOSMode_P73";
    v28 = 1024;
    v29 = 137;
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i GET OS MODE", buf, 0x12u);
  }

  v10 = NFDataCreateWithBytes();
  v11 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 0, 164, 4, 0, 0, v10);
  NFDataRelease();
  if (v11)
  {
    v12 = v11[1];
    if (v12 <= 1)
    {
      v25 = 0;
LABEL_31:
      v20 = 2;
LABEL_32:
      *(a2 + 1204) = v20;
      NFDataRelease();
      dword_2A18BD370 = *(a2 + 1204);
      result = 1;
      goto LABEL_33;
    }

    v18 = *v11;
    v19 = __rev16(*(*v11 + v12 - 2));
    v25 = v19;
    if (v19 != 36864)
    {
      goto LABEL_31;
    }

    if (v12 >= 0xF)
    {
      *(a2 + 1253) = *(v18 + 9);
      *(a2 + 1242) = bswap32(*(v18 + 10)) >> 16;
      *(a2 + 1254) = *(v18 + 12);
      if (v12 >= 0x11)
      {
        *(a2 + 1244) = bswap32(*(v18 + 13)) >> 16;
        if (v12 >= 0x15)
        {
          *(a2 + 1228) = __rev16(*(v18 + 15));
          *(a2 + 1232) = *(v18 + 17);
          *(a2 + 1252) = *(v18 + 18);
        }
      }

      v20 = 1;
      goto LABEL_32;
    }

    dispatch_get_specific(*v4);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Unexpected length: %zu", "GetOSMode_P73", 178, v11[1]);
    }

    dispatch_get_specific(*v4);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = v11[1];
      *buf = 136446722;
      v27 = "GetOSMode_P73";
      v28 = 1024;
      v29 = 178;
      v30 = 2048;
      v31 = v24;
      _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected length: %zu", buf, 0x1Cu);
    }

    goto LABEL_23;
  }

  dispatch_get_specific(*v4);
  v13 = NFLogGetLogger();
  if (v13)
  {
    v13(3, "%s:%i Failed to select", "GetOSMode_P73", 151);
  }

  dispatch_get_specific(*v4);
  v14 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v27 = "GetOSMode_P73";
    v28 = 1024;
    v29 = 151;
    _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to select", buf, 0x12u);
LABEL_24:
    result = 0;
  }

LABEL_33:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297FAFE90(uint64_t *a1, void *a2, void *a3)
{
  v3 = 0;
  v47 = *MEMORY[0x29EDCA608];
  v38 = -1;
  if (a2 && a3)
  {
    *a3 = 0;
    memset(v45, 0, 512);
    if (sub_297FAF9B0(a1, v45))
    {
      if (v46 == 2)
      {
        v7 = NFDataCreateWithBytes();
        if (!NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v7, &v38))
        {
          v31 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(4, "%s:%i SELECT returned error: 0x%04x", "GetAttackCounterLog_P73", 219, v38);
          }

          dispatch_get_specific(*v31);
          v33 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_48;
          }

          *buf = 136446722;
          v40 = "GetAttackCounterLog_P73";
          v41 = 1024;
          v42 = 219;
          v43 = 1024;
          v44 = v38;
          v24 = "%{public}s:%i SELECT returned error: 0x%04x";
          v25 = v33;
          v26 = 24;
          goto LABEL_41;
        }

        NFDataRelease();
      }

      v8 = NFDataCreateWithBytes();
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = 0;
        v12 = MEMORY[0x29EDC9730];
        while (1)
        {
          v13 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 128, 202, 0, 254, 0, v9);
          v14 = v13;
          if (!v13)
          {
            break;
          }

          v15 = v13[1];
          if (v15 <= 1)
          {
            break;
          }

          v16 = __rev16(*(*v13 + v15 - 2));
          v38 = v16;
          if (v16 == 36864 || v16 == 25360)
          {
            v18 = reallocf(v11, v15 + v10 - 2);
            if (!v18)
            {
              dispatch_get_specific(*v12);
              v34 = NFLogGetLogger();
              if (v34)
              {
                v34(3, "%s:%i Allocation failure", "GetAttackCounterLog_P73", 253);
              }

              dispatch_get_specific(*v12);
              v35 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v40 = "GetAttackCounterLog_P73";
                v41 = 1024;
                v42 = 253;
                _os_log_impl(&dword_297F97000, v35, OS_LOG_TYPE_ERROR, "%{public}s:%i Allocation failure", buf, 0x12u);
              }

              NFDataRelease();
              NFDataRelease();
              goto LABEL_48;
            }

            v11 = v18;
            memcpy(&v18[v10], *v14, v14[1] - 2);
            v10 = v10 + *(v14 + 2) - 2;
          }

          else
          {
            dispatch_get_specific(*v12);
            v19 = NFLogGetLogger();
            if (v19)
            {
              v19(4, "%s:%i Got error 0x%2X", "GetAttackCounterLog_P73", 262, v38);
            }

            dispatch_get_specific(*v12);
            v20 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v40 = "GetAttackCounterLog_P73";
              v41 = 1024;
              v42 = 262;
              v43 = 1024;
              v44 = v38;
              _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Got error 0x%2X", buf, 0x18u);
            }
          }

          NFDataRelease();
          if (v38 != 25360)
          {
            goto LABEL_34;
          }
        }

        dispatch_get_specific(*v12);
        v27 = NFLogGetLogger();
        if (v27)
        {
          v27(3, "%s:%i Failed to get data", "GetAttackCounterLog_P73", 243);
        }

        dispatch_get_specific(*v12);
        v28 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v40 = "GetAttackCounterLog_P73";
          v41 = 1024;
          v42 = 243;
          _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get data", buf, 0x12u);
        }

        if (v14)
        {
          NFDataRelease();
        }

LABEL_34:
        NFDataRelease();
        if (!v11)
        {
          goto LABEL_48;
        }

        v29 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
        if (v29)
        {
          v30 = v29;
          v29[2] = 57126;
          v3 = 1;
          *v29 = NFDataCreateWithBytesNoCopy();
          *a2 = v30;
          *a3 = 1;
          goto LABEL_49;
        }

        free(v11);
        goto LABEL_48;
      }

      v21 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v22(3, "%s:%i Allocation failure", "GetAttackCounterLog_P73", 232);
      }

      dispatch_get_specific(*v21);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v40 = "GetAttackCounterLog_P73";
        v41 = 1024;
        v42 = 232;
        v24 = "%{public}s:%i Allocation failure";
        v25 = v23;
        v26 = 18;
LABEL_41:
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      }
    }

LABEL_48:
    v3 = 0;
  }

LABEL_49:
  v36 = *MEMORY[0x29EDCA608];
  return v3;
}

BOOL sub_297FB0490(void *a1, _BYTE *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  memset(v14, 0, 512);
  if (!sub_297FAF9B0(a1, v14))
  {
LABEL_10:
    v9 = *MEMORY[0x29EDCA608];
    return 0;
  }

  if (v15 != 2)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i GetPresenseOfAttackLog will only work in JCOP mode", "GetPresenseOfAttackLog_P73", 298);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "GetPresenseOfAttackLog_P73";
      v12 = 1024;
      v13 = 298;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i GetPresenseOfAttackLog will only work in JCOP mode", buf, 0x12u);
    }

    goto LABEL_10;
  }

  v4 = *MEMORY[0x29EDCA608];

  return sub_297FA4B94(a1, a2);
}

BOOL sub_297FB0630(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x29EDCA608];
  v40 = 0;
  if (*(a1 + 5) == 2 && *(a2 + 1242) <= 0x117u)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Manifest Query is not supported on this OS version (sequence counter: %d)", "GetManifestQuery_P73", 37, *(a2 + 1242));
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 1242);
      *buf = 136446722;
      v42 = "GetManifestQuery_P73";
      v43 = 1024;
      v44 = 37;
      v45 = 1024;
      LODWORD(v46) = v7;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Manifest Query is not supported on this OS version (sequence counter: %d)", buf, 0x18u);
    }

LABEL_48:
    result = 1;
    goto LABEL_49;
  }

  if (*(a2 + 1204) == 1)
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(6, "%s:%i Selecting OSU", "GetManifestQuery_P73", 44);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v42 = "GetManifestQuery_P73";
      v43 = 1024;
      v44 = 44;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Selecting OSU", buf, 0x12u);
    }
  }

  v11 = NFDataCreateWithBytes();
  if (v11)
  {
    v12 = NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v11, &v40);
    NFDataRelease();
    if (v12)
    {
      v13 = NFDataCreateWithBytes();
      v14 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 128, 202, 0, 254, 0, v13);
      NFDataRelease();
      if (v14)
      {
        v15 = *(v14 + 8);
        if (v15 > 1)
        {
          v28 = *v14;
          v29 = __rev16(*(*v14 + v15 - 2));
          v40 = v29;
          if (v29 == 36864)
          {
            v30 = v15 - 2;
            if (v30)
            {
              if (v30 >= 0x100)
              {
                v38 = 256;
              }

              else
              {
                v38 = v30;
              }

              *(a2 + 1250) = v38;
              memcpy((a2 + 816), v28, v38);
            }

            else
            {
              v31 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v32 = NFLogGetLogger();
              if (v32)
              {
                v32(3, "%s:%i Incorrect manifest query length: %zu", "GetManifestQuery_P73", 90, *(v14 + 8));
              }

              dispatch_get_specific(*v31);
              v33 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v34 = *(v14 + 8);
                *buf = 136446722;
                v42 = "GetManifestQuery_P73";
                v43 = 1024;
                v44 = 90;
                v45 = 2048;
                v46 = v34;
                _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i Incorrect manifest query length: %zu", buf, 0x1Cu);
              }
            }

            NFDataRelease();
            goto LABEL_48;
          }
        }

        else
        {
          v40 = 0;
        }

        v35 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v36(3, "%s:%i AID_P73_MANIFESTQUERY returned error: 0x%04x", "GetManifestQuery_P73", 80, v40);
        }

        dispatch_get_specific(*v35);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v42 = "GetManifestQuery_P73";
          v43 = 1024;
          v44 = 80;
          v45 = 1024;
          LODWORD(v46) = v40;
          _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i AID_P73_MANIFESTQUERY returned error: 0x%04x", buf, 0x18u);
        }

        NFDataRelease();
        goto LABEL_42;
      }

      v26 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v27(3, "%s:%i Failed to get ManifestQuery", "GetManifestQuery_P73", 75);
      }

      dispatch_get_specific(*v26);
      v18 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v42 = "GetManifestQuery_P73";
        v43 = 1024;
        v44 = 75;
        v20 = "%{public}s:%i Failed to get ManifestQuery";
        goto LABEL_29;
      }
    }

    else
    {
      v21 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v22(3, "%s:%i select returned error: 0x%04x", "GetManifestQuery_P73", 59, v40);
      }

      dispatch_get_specific(*v21);
      v23 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446722;
        v42 = "GetManifestQuery_P73";
        v43 = 1024;
        v44 = 59;
        v45 = 1024;
        LODWORD(v46) = v40;
        v20 = "%{public}s:%i select returned error: 0x%04x";
        v24 = v23;
        v25 = 24;
LABEL_30:
        _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, v20, buf, v25);
LABEL_42:
        result = 0;
      }
    }
  }

  else
  {
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i Failed to get ManifestQuery", "GetManifestQuery_P73", 52);
    }

    dispatch_get_specific(*v16);
    v18 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v42 = "GetManifestQuery_P73";
      v43 = 1024;
      v44 = 52;
      v20 = "%{public}s:%i Failed to get ManifestQuery";
LABEL_29:
      v24 = v18;
      v25 = 18;
      goto LABEL_30;
    }
  }

LABEL_49:
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_297FB0C90(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = NFDataCreateWithBytes();
  v3 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), 0, 128, 202, 0, 254, 0, v2);
  NFDataRelease();
  if (v3 && v3[1] == 15)
  {
    v4 = bswap64(*(*v3 + 5));
    v5 = v4 / 0x3E8;
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i uptimne is %llu", "GetUptime_P73", 324, v4 / 0x3E8);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v17 = "GetUptime_P73";
      v18 = 1024;
      v19 = 324;
      v20 = 2048;
      v21 = v4 / 0x3E8;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i uptimne is %llu", buf, 0x1Cu);
    }
  }

  else
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v10 = NFLogGetLogger();
    if (v10)
    {
      if (v3)
      {
        v11 = v3[1];
      }

      else
      {
        v11 = -1;
      }

      v10(3, "%s:%i Data length is %ld", "GetUptime_P73", 326, v11);
    }

    dispatch_get_specific(*v9);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (v3)
      {
        v13 = v3[1];
      }

      else
      {
        v13 = -1;
      }

      *buf = 136446722;
      v17 = "GetUptime_P73";
      v18 = 1024;
      v19 = 326;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Data length is %ld", buf, 0x1Cu);
    }

    v5 = 0;
  }

  NFDataRelease();
  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

void NFDriverRFSettingsStoreValueForTagAtOffset(uint64_t a1, unsigned int a2, int a3, unsigned int a4, char a5, char a6)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v8 = 0;
    while (1)
    {
      v9 = v8 + 2;
      v10 = bswap32(*(a1 + v8));
      v11 = v8 + 3;
      v12 = *(a1 + v9);
      if (a3 == HIWORD(v10))
      {
        break;
      }

      v8 = v11 + v12;
      if (v8 >= a2)
      {
        goto LABEL_5;
      }
    }

    v19 = v11 + a4;
    if (v19 < a2 && v12 > a4)
    {
      *(a1 + v19) = (*(a1 + v19) | a6) & (a5 | ~a6);
      goto LABEL_17;
    }

    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Invalid offset %d for tag 0x%04x", "NFDriverRFSettingsStoreValueForTagAtOffset", 87, a4, a3);
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v25 = "NFDriverRFSettingsStoreValueForTagAtOffset";
      v26 = 1024;
      v27 = 87;
      v28 = 1024;
      v29 = a4;
      v30 = 1024;
      v31 = a3;
      v16 = "%{public}s:%i Invalid offset %d for tag 0x%04x";
      v17 = v22;
      v18 = 30;
      goto LABEL_9;
    }
  }

  else
  {
LABEL_5:
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Failed to find tag 0x%04x", "NFDriverRFSettingsStoreValueForTagAtOffset", 93, a3);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "NFDriverRFSettingsStoreValueForTagAtOffset";
      v26 = 1024;
      v27 = 93;
      v28 = 1024;
      v29 = a3;
      v16 = "%{public}s:%i Failed to find tag 0x%04x";
      v17 = v15;
      v18 = 24;
LABEL_9:
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    }
  }

LABEL_17:
  v23 = *MEMORY[0x29EDCA608];
}

UInt8 *NFDriverRFSettingsGetVendorParameters(unsigned int *a1, unsigned int *a2, const char *a3, uint64_t a4)
{
  v44 = *MEMORY[0x29EDCA608];
  v7 = CFDataCreate(0, *a4, *(a4 + 8));
  v8 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
  v9 = CFStringCreateWithCString(0, a3, 0x8000100u);
  v10 = CFStringCreateWithFormat(0, 0, @"%02X", *a1);
  if (a1[1] == 22)
  {
    v11 = 12;
  }

  else
  {
    v11 = 8;
  }

  v12 = CFStringCreateWithFormat(0, 0, @"%02X.%02X", a1[2], a1[3] >> v11);
  *a2 = 0;
  CFRelease(v7);
  if (!v8)
  {
    v28 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to decode plist", "NFDriverRFSettingsGetVendorParameters", 115);
    }

    dispatch_get_specific(*v28);
    v30 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 136446466;
    v41 = "NFDriverRFSettingsGetVendorParameters";
    v42 = 1024;
    v43 = 115;
    v31 = "%{public}s:%i Failed to decode plist";
LABEL_32:
    _os_log_impl(&dword_297F97000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x12u);
    goto LABEL_33;
  }

  v13 = CFGetTypeID(v8);
  if (v13 != CFDictionaryGetTypeID())
  {
    v32 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v33(3, "%s:%i Invalid format", "NFDriverRFSettingsGetVendorParameters", 120);
    }

    dispatch_get_specific(*v32);
    v30 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 136446466;
    v41 = "NFDriverRFSettingsGetVendorParameters";
    v42 = 1024;
    v43 = 120;
    v31 = "%{public}s:%i Invalid format";
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(v8, @"Config");
  if (!Value || (v15 = Value, v16 = CFGetTypeID(Value), v16 != CFArrayGetTypeID()))
  {
    v34 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v35 = NFLogGetLogger();
    if (v35)
    {
      v35(3, "%s:%i Invalid format", "NFDriverRFSettingsGetVendorParameters", 126);
    }

    dispatch_get_specific(*v34);
    v30 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 136446466;
    v41 = "NFDriverRFSettingsGetVendorParameters";
    v42 = 1024;
    v43 = 126;
    v31 = "%{public}s:%i Invalid format";
    goto LABEL_32;
  }

  if (CFArrayGetCount(v15) < 1)
  {
LABEL_33:
    v36 = 0;
    goto LABEL_34;
  }

  v17 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v15, v17);
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(ValueAtIndex))
    {
      v20 = CFDictionaryGetValue(ValueAtIndex, @"HW");
      v21 = CFArrayGetTypeID();
      if (v21 == CFGetTypeID(v20))
      {
        v45.length = CFArrayGetCount(v20);
        v45.location = 0;
        if (CFArrayContainsValue(v20, v45, v10))
        {
          v22 = CFDictionaryGetValue(ValueAtIndex, @"antenna");
          v23 = CFStringGetTypeID();
          if (v23 == CFGetTypeID(v22) && CFStringCompare(v22, v9, 1uLL) == kCFCompareEqualTo)
          {
            v24 = CFDictionaryGetValue(ValueAtIndex, @"fwVersion");
            v25 = CFStringGetTypeID();
            if (v25 == CFGetTypeID(v24))
            {
              v47.location = 0;
              v47.length = 5;
              if (CFStringCompareWithOptions(v24, v12, v47, 1uLL) == kCFCompareEqualTo)
              {
                v26 = CFDictionaryGetValue(ValueAtIndex, @"settings");
                v27 = CFDataGetTypeID();
                if (v27 == CFGetTypeID(v26))
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

    if (CFArrayGetCount(v15) <= ++v17)
    {
      goto LABEL_33;
    }
  }

  Length = CFDataGetLength(v26);
  v36 = malloc_type_calloc(1uLL, Length, 0x100004077774924uLL);
  if (v36)
  {
    v46.location = 0;
    v46.length = Length;
    CFDataGetBytes(v26, v46, v36);
    *a2 = Length;
  }

LABEL_34:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v37 = *MEMORY[0x29EDCA608];
  return v36;
}

uint64_t NFDriverConfigurRSTNDelay(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v17 = 103329;
  v16 = 33658017;
  v14 = &v17;
  v15 = 4;
  v2 = sub_297FB820C(&v14);
  v13 = v2;
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = sub_297FA0380(a1, 37025, v2, 0);
  if (sub_297F9F694(v3))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to write IRQ", "NFDriverConfigurRSTNDelay", 939);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136446466;
    v19 = "NFDriverConfigurRSTNDelay";
    v20 = 1024;
    v21 = 939;
    goto LABEL_7;
  }

  sub_297F9FBDC(v3);
  sub_297FA0714(&v13);
  v14 = &v16;
  LODWORD(v15) = 4;
  v8 = sub_297FB820C(&v14);
  v13 = v8;
  if (!v8)
  {
LABEL_16:
    v7 = 3;
    goto LABEL_17;
  }

  v3 = sub_297FA0380(a1, 37025, v8, 0);
  if (!sub_297F9F694(v3))
  {
    v7 = 0;
    goto LABEL_9;
  }

  v9 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v10(3, "%s:%i Failed to write IRQ", "NFDriverConfigurRSTNDelay", 955);
  }

  dispatch_get_specific(*v9);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v19 = "NFDriverConfigurRSTNDelay";
    v20 = 1024;
    v21 = 955;
LABEL_7:
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write IRQ", buf, 0x12u);
  }

LABEL_8:
  v7 = 1;
LABEL_9:
  sub_297F9FBDC(v3);
  sub_297FA0714(&v13);
LABEL_17:
  v11 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t NFDriverConfigureSPMIIRQ(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a2 == 3)
  {
    v3 = 49;
  }

  else
  {
    v3 = 1;
  }

  v17 = 2721;
  v18 = 1;
  v19 = v3;
  v16[0] = &v17;
  if (a2 && a2 != 3)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Invalid I/O selected", "NFDriverConfigureSPMIIRQ", 981);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v21 = "NFDriverConfigureSPMIIRQ";
      v22 = 1024;
      v23 = 981;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid I/O selected", buf, 0x12u);
    }

    v9 = 5;
  }

  else
  {
    v16[1] = 4;
    v4 = sub_297FB820C(v16);
    v15 = v4;
    if (v4)
    {
      v5 = sub_297FA0380(a1, 37025, v4, 0);
      if (sub_297F9F694(v5))
      {
        v6 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v7 = NFLogGetLogger();
        if (v7)
        {
          v7(3, "%s:%i Failed to write IRQ", "NFDriverConfigureSPMIIRQ", 992);
        }

        dispatch_get_specific(*v6);
        v8 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v21 = "NFDriverConfigureSPMIIRQ";
          v22 = 1024;
          v23 = 992;
          _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write IRQ", buf, 0x12u);
        }

        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

      sub_297F9FBDC(v5);
      sub_297FA0714(&v15);
    }

    else
    {
      v9 = 3;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t NFDriverConfigureI2CForLPM(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 1;
  v12 = 587340192;
  v11[0] = &v12;
  v11[1] = 5;
  v2 = sub_297FB820C(v11);
  v10 = v2;
  if (v2)
  {
    v3 = sub_297FA0380(a1, 37025, v2, 0);
    if (sub_297F9F694(v3))
    {
      v4 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to write I2C config", "NFDriverConfigureI2CForLPM", 1015);
      }

      dispatch_get_specific(*v4);
      v6 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v15 = "NFDriverConfigureI2CForLPM";
        v16 = 1024;
        v17 = 1015;
        _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write I2C config", buf, 0x12u);
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    sub_297F9FBDC(v3);
    sub_297FA0714(&v10);
  }

  else
  {
    v7 = 3;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t NFDriverRFSettingsSetup(uint64_t a1, const char *a2, uint64_t a3)
{
  v115 = *MEMORY[0x29EDCA608];
  memset(v91, 0, 44);
  if (!a3)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No RF settings.", "NFDriverRFSettingsSetup", 1373);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverRFSettingsSetup";
      *&buf[12] = 1024;
      *&buf[14] = 1373;
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i No RF settings.", buf, 0x12u);
    }

    v16 = 5;
    goto LABEL_77;
  }

  if (!NFDriverGetControllerInfo(a1, v91))
  {
LABEL_67:
    v16 = 1;
    goto LABEL_77;
  }

  if (DWORD1(v91[0]) < 5)
  {
LABEL_76:
    v16 = 0;
    goto LABEL_77;
  }

  v88 = 0;
  *(a1 + 56);
  v6 = NFCalibrationCopyAntennaName();
  v7 = MEMORY[0x29EDC9730];
  if (v6)
  {
    v8 = v6;
    NFGetProductType();
    CString = CFStringGetCString(v8, byte_2A13A5DA8, 31, 0x600u);
    dispatch_get_specific(*v7);
    v10 = NFLogGetLogger();
    if (CString)
    {
      if (v10)
      {
        v10(6, "%s:%i EDT antenna name: %s", "_NFDriverRFSettingsGetAntennaName", 1071, byte_2A13A5DA8);
      }

      dispatch_get_specific(*v7);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "_NFDriverRFSettingsGetAntennaName";
        *&buf[12] = 1024;
        *&buf[14] = 1071;
        *&buf[18] = 2080;
        *&buf[20] = byte_2A13A5DA8;
        _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i EDT antenna name: %s", buf, 0x1Cu);
      }

      CFRelease(v8);
      v12 = byte_2A13A5DA8;
      goto LABEL_55;
    }

    if (v10)
    {
      v10(3, "%s:%i Failed to get antenna name from EDT : %s", "_NFDriverRFSettingsGetAntennaName", 1076, byte_2A13A5DA8);
    }

    dispatch_get_specific(*v7);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "_NFDriverRFSettingsGetAntennaName";
      *&buf[12] = 1024;
      *&buf[14] = 1076;
      *&buf[18] = 2080;
      *&buf[20] = byte_2A13A5DA8;
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get antenna name from EDT : %s", buf, 0x1Cu);
    }

    CFRelease(v8);
  }

  if (NFProductIsWatch())
  {
    v12 = "Bermuda";
  }

  else
  {
    v12 = "RTM";
  }

  switch(NFGetProductType())
  {
    case 0x1Bu:
    case 0x1Du:
      v12 = "BMA7A_2";
      break;
    case 0x1Cu:
    case 0x1Eu:
      v12 = "BMA7A_1";
      break;
    case 0x1Fu:
      v12 = "BMA7A_3";
      break;
    case 0x20u:
    case 0x21u:
      v12 = "BMA7B_1";
      break;
    case 0x22u:
    case 0x23u:
      v12 = "BMA7B_2";
      break;
    case 0x24u:
    case 0x26u:
      v12 = "BMA7C_2";
      break;
    case 0x25u:
    case 0x27u:
      v12 = "BMA7C_1";
      break;
    case 0x28u:
      v12 = "BMA7C_5";
      break;
    case 0x29u:
    case 0x2Bu:
      v12 = "BMA7C_4";
      break;
    case 0x2Au:
    case 0x2Cu:
      v12 = "BMA7C_3";
      break;
    case 0x36u:
      v18 = *(a1 + 56);
      v19 = "RTM7A_3_2";
      goto LABEL_47;
    case 0x37u:
      v18 = *(a1 + 56);
      v19 = "RTM7A_4_2";
      goto LABEL_47;
    case 0x38u:
      v18 = *(a1 + 56);
      v19 = "RTM7A_1";
      goto LABEL_47;
    case 0x39u:
      v18 = *(a1 + 56);
      v19 = "RTM7A_2";
LABEL_47:
      v20 = "RTM7A_xS";
      goto LABEL_48;
    case 0x3Au:
      v18 = *(a1 + 56);
      v19 = "RTM7B_3";
      goto LABEL_43;
    case 0x3Bu:
      v18 = *(a1 + 56);
      v19 = "RTM7B_4";
      goto LABEL_43;
    case 0x3Cu:
      v18 = *(a1 + 56);
      v19 = "RTM7B_1";
      goto LABEL_43;
    case 0x3Du:
      v18 = *(a1 + 56);
      v19 = "RTM7B_2";
LABEL_43:
      v20 = "RTM7B_xS";
      goto LABEL_48;
    case 0x3Eu:
      v18 = *(a1 + 56);
      v19 = "RTM7C_1";
      v20 = "RTM7C_1S";
      goto LABEL_48;
    case 0x3Fu:
      v18 = *(a1 + 56);
      v19 = "RTM7C_2";
      v20 = "RTM7C_2S";
      goto LABEL_48;
    case 0x40u:
      v18 = *(a1 + 56);
      v19 = "RTM7C_3";
      v20 = "RTM7C_3S";
      goto LABEL_48;
    case 0x41u:
      v18 = *(a1 + 56);
      v19 = "RTM7C_4";
      v20 = "RTM7C_4S";
LABEL_48:
      if (v18)
      {
        v12 = v20;
      }

      else
      {
        v12 = v19;
      }

      break;
    case 0x43u:
      v12 = "RTM7C_5";
      break;
    default:
      break;
  }

  dispatch_get_specific(*v7);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v21(6, "%s:%i Using default antenna name %s", "_NFDriverRFSettingsGetAntennaName", 1362, v12);
  }

  dispatch_get_specific(*v7);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "_NFDriverRFSettingsGetAntennaName";
    *&buf[12] = 1024;
    *&buf[14] = 1362;
    *&buf[18] = 2080;
    *&buf[20] = v12;
    _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using default antenna name %s", buf, 0x1Cu);
  }

LABEL_55:
  VendorParameters = NFDriverRFSettingsGetVendorParameters(v91, &v88, v12, a3);
  v24 = v88;
  dispatch_get_specific(*v7);
  v25 = NFLogGetLogger();
  if (VendorParameters && v24)
  {
    if (v25)
    {
      v25(6, "%s:%i Pushing vendor RF settings for %s", "NFDriverRFSettingsSetup", 1392, v12);
    }

    dispatch_get_specific(*v7);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "NFDriverRFSettingsSetup";
      *&buf[12] = 1024;
      *&buf[14] = 1392;
      *&buf[18] = 2080;
      *&buf[20] = v12;
      _os_log_impl(&dword_297F97000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Pushing vendor RF settings for %s", buf, 0x1Cu);
    }

    if (sub_297FB873C(a1, VendorParameters, v88, 1))
    {
      dispatch_get_specific(*v7);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v27(3, "%s:%i Failed to push builtin RF settings.", "NFDriverRFSettingsSetup", 1394);
      }

      dispatch_get_specific(*v7);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverRFSettingsSetup";
        *&buf[12] = 1024;
        *&buf[14] = 1394;
        _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to push builtin RF settings.", buf, 0x12u);
      }

      free(VendorParameters);
      goto LABEL_67;
    }

    free(VendorParameters);
  }

  else
  {
    if (v25)
    {
      v25(4, "%s:%i No vendor RF settings found for %s!", "NFDriverRFSettingsSetup", 1400, v12);
    }

    dispatch_get_specific(*v7);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "NFDriverRFSettingsSetup";
      *&buf[12] = 1024;
      *&buf[14] = 1400;
      *&buf[18] = 2080;
      *&buf[20] = v12;
      _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i No vendor RF settings found for %s!", buf, 0x1Cu);
    }
  }

  v30 = sub_297FB4FD8(a1, v91, a2);
  v16 = 8;
  if (v30 <= 0xB && ((1 << v30) & 0xE01) != 0)
  {
    if (*(a1 + 56))
    {
      goto LABEL_76;
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    memset(buf, 0, sizeof(buf));
    memset(buffer, 0, sizeof(buffer));
    *theString = 0u;
    *v90 = 0u;
    v33 = &off_29EE87860;
    v34 = 46;
    v35 = NFGetProductType();
    while (*(v33 - 10) != v35)
    {
      v33 += 6;
      if (!--v34)
      {
        goto LABEL_88;
      }
    }

    if (v35)
    {
      dispatch_get_specific(*v7);
      v36 = NFLogGetLogger();
      if (v36)
      {
        v36(6, "%s:%i Using local RF settings", "_NFDriverRFSettingsSetup", 750);
      }

      dispatch_get_specific(*v7);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v98 = 136446466;
        *&v98[4] = "_NFDriverRFSettingsSetup";
        *&v98[12] = 1024;
        *&v98[14] = 750;
        _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using local RF settings", v98, 0x12u);
      }

      CStringPtr = *(v33 - 1);
      v39 = *v33;
      goto LABEL_135;
    }

LABEL_88:
    RFConfigTLVs = NFCalibrationGetRFConfigTLVs();
    dispatch_get_specific(*v7);
    v41 = NFLogGetLogger();
    if (!RFConfigTLVs)
    {
      if (v41)
      {
        v41(4, "%s:%i No custom RF settings found!", "_NFDriverRFSettingsSetup", 825);
      }

      dispatch_get_specific(*v7);
      v47 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_105;
      }

      *v98 = 136446466;
      *&v98[4] = "_NFDriverRFSettingsSetup";
      *&v98[12] = 1024;
      *&v98[14] = 825;
      v48 = "%{public}s:%i No custom RF settings found!";
      v49 = v98;
      goto LABEL_104;
    }

    if (v41)
    {
      v41(6, "%s:%i Using EDT RF settings", "_NFDriverRFSettingsSetup", 756);
    }

    dispatch_get_specific(*v7);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *v98 = 136446466;
      *&v98[4] = "_NFDriverRFSettingsSetup";
      *&v98[12] = 1024;
      *&v98[14] = 756;
      _os_log_impl(&dword_297F97000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using EDT RF settings", v98, 0x12u);
    }

    if (theString[0])
    {
      CStringPtr = CFStringGetCStringPtr(theString[0], 0x600u);
      if (!CStringPtr)
      {
        CStringPtr = buf;
        if (!CFStringGetCString(theString[0], buf, 256, 0x600u))
        {
          dispatch_get_specific(*v7);
          v43 = NFLogGetLogger();
          if (v43)
          {
            v43(3, "%s:%i failed to get clock TLV", "_NFDriverRFSettingsSetup", 769);
          }

          dispatch_get_specific(*v7);
          v44 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_159;
          }

          *v98 = 136446466;
          *&v98[4] = "_NFDriverRFSettingsSetup";
          *&v98[12] = 1024;
          *&v98[14] = 769;
          v45 = "%{public}s:%i failed to get clock TLV";
          v46 = v98;
LABEL_156:
          v54 = v44;
          v55 = OS_LOG_TYPE_ERROR;
          goto LABEL_157;
        }
      }
    }

    else
    {
      CStringPtr = buf;
    }

    if (theString[1])
    {
      v50 = CFStringGetCStringPtr(theString[1], 0x600u);
      if (v50)
      {
LABEL_109:
        v39 = v50;
LABEL_135:
        if (NFProductIsDevBoard())
        {
          v57 = *CStringPtr;
          memset(v98, 0, 44);
          if (NFDriverGetControllerInfo(a1, v98))
          {
            v58 = v57 == 0;
            if ((*&v98[4] - 7) <= 1)
            {
              dispatch_get_specific(*v7);
              v59 = NFLogGetLogger();
              if (v59)
              {
                v59(3, "%s:%i Not supported on SN100V dev boards - skipping..", "_NFDriverRFSettingsSetup", 844);
              }

              dispatch_get_specific(*v7);
              v47 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_105;
              }

              *v92 = 136446466;
              v93 = "_NFDriverRFSettingsSetup";
              v94 = 1024;
              v95 = 844;
              v48 = "%{public}s:%i Not supported on SN100V dev boards - skipping..";
              v49 = v92;
LABEL_104:
              _os_log_impl(&dword_297F97000, v47, OS_LOG_TYPE_ERROR, v48, v49, 0x12u);
LABEL_105:
              v16 = 0;
              goto LABEL_160;
            }

            goto LABEL_144;
          }
        }

        else
        {
          memset(v98, 0, 44);
          if (NFDriverGetControllerInfo(a1, v98))
          {
            v58 = 1;
LABEL_144:
            v60 = NFDataCreateWithHexString();
            if (v60)
            {
              v61 = v60;
              if (v39)
              {
                v62 = v58;
              }

              else
              {
                v62 = 0;
              }

              if (!v62)
              {
                v16 = 8;
LABEL_173:
                if (*(v61 + 8) > 3uLL)
                {
                  v74 = NFDataAsHexString();
                  if (v74)
                  {
                    v75 = v74;
                    dispatch_get_specific(*v7);
                    v76 = NFLogGetLogger();
                    if (v76)
                    {
                      v76(6, "%s:%i RF config to set: %s", "_NFDriverRFSettingsSetup", 881, v75);
                    }

                    dispatch_get_specific(*v7);
                    v77 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                    {
                      *v92 = 136446722;
                      v93 = "_NFDriverRFSettingsSetup";
                      v94 = 1024;
                      v95 = 881;
                      v96 = 2080;
                      v97 = v75;
                      _os_log_impl(&dword_297F97000, v77, OS_LOG_TYPE_DEFAULT, "%{public}s:%i RF config to set: %s", v92, 0x1Cu);
                    }

                    free(v75);
                  }

                  v78 = sub_297FB873C(a1, *v61, *(v61 + 8), 0);
                  if (!v78)
                  {
                    if (sub_297FB4098(a1, *v61, *(v61 + 8)))
                    {
                      v16 = 0;
                    }

                    else
                    {
                      v16 = 8;
                    }

                    goto LABEL_203;
                  }

                  v16 = v78;
                  dispatch_get_specific(*v7);
                  v79 = NFLogGetLogger();
                  if (v79)
                  {
                    v79(3, "%s:%i Failed to set RF settings.", "_NFDriverRFSettingsSetup", 890);
                  }

                  dispatch_get_specific(*v7);
                  v80 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_203;
                  }

                  *v92 = 136446466;
                  v93 = "_NFDriverRFSettingsSetup";
                  v94 = 1024;
                  v95 = 890;
                  v71 = "%{public}s:%i Failed to set RF settings.";
                  v72 = v80;
                  v73 = 18;
                }

                else
                {
                  dispatch_get_specific(*v7);
                  v68 = NFLogGetLogger();
                  if (v68)
                  {
                    v68(3, "%s:%i RF settings is too short: length=%zu", "_NFDriverRFSettingsSetup", 874, *(v61 + 8));
                  }

                  dispatch_get_specific(*v7);
                  v69 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_203;
                  }

                  v70 = *(v61 + 8);
                  *v92 = 136446722;
                  v93 = "_NFDriverRFSettingsSetup";
                  v94 = 1024;
                  v95 = 874;
                  v96 = 2048;
                  v97 = v70;
                  v71 = "%{public}s:%i RF settings is too short: length=%zu";
                  v72 = v69;
                  v73 = 28;
                }

                _os_log_impl(&dword_297F97000, v72, OS_LOG_TYPE_ERROR, v71, v92, v73);
LABEL_203:
                NFDataRelease();
                goto LABEL_160;
              }

              if (NFDataCreateWithHexString())
              {
                v63 = NFDataAppend();
                NFDataRelease();
                if (v63)
                {
                  v16 = 0;
                  goto LABEL_173;
                }

                dispatch_get_specific(*v7);
                v86 = NFLogGetLogger();
                if (v86)
                {
                  v86(3, "%s:%i Failed to merge RF settings", "_NFDriverRFSettingsSetup", 867);
                }

                dispatch_get_specific(*v7);
                v87 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_199;
                }

                *v92 = 136446466;
                v93 = "_NFDriverRFSettingsSetup";
                v94 = 1024;
                v95 = 867;
                v83 = "%{public}s:%i Failed to merge RF settings";
                v84 = v87;
                v85 = 18;
              }

              else
              {
                dispatch_get_specific(*v7);
                v81 = NFLogGetLogger();
                if (v81)
                {
                  v81(3, "%s:%i Failed to create RF settings from TLV string %s", "_NFDriverRFSettingsSetup", 859, v39);
                }

                dispatch_get_specific(*v7);
                v82 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_199;
                }

                *v92 = 136446722;
                v93 = "_NFDriverRFSettingsSetup";
                v94 = 1024;
                v95 = 859;
                v96 = 2080;
                v97 = v39;
                v83 = "%{public}s:%i Failed to create RF settings from TLV string %s";
                v84 = v82;
                v85 = 28;
              }

              _os_log_impl(&dword_297F97000, v84, OS_LOG_TYPE_ERROR, v83, v92, v85);
LABEL_199:
              NFDataRelease();
              goto LABEL_159;
            }

            dispatch_get_specific(*v7);
            v66 = NFLogGetLogger();
            if (v66)
            {
              v66(3, "%s:%i Failed to create RF settings from clock TLV string %s", "_NFDriverRFSettingsSetup", 852, CStringPtr);
            }

            dispatch_get_specific(*v7);
            v67 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_159;
            }

            *v92 = 136446722;
            v93 = "_NFDriverRFSettingsSetup";
            v94 = 1024;
            v95 = 852;
            v96 = 2080;
            v97 = CStringPtr;
            v45 = "%{public}s:%i Failed to create RF settings from clock TLV string %s";
            v46 = v92;
            v54 = v67;
            v55 = OS_LOG_TYPE_ERROR;
            v65 = 28;
LABEL_158:
            _os_log_impl(&dword_297F97000, v54, v55, v45, v46, v65);
LABEL_159:
            v16 = 8;
LABEL_160:
            if (theString[0])
            {
              CFRelease(theString[0]);
            }

            if (theString[1])
            {
              CFRelease(theString[1]);
            }

            if (v90[1])
            {
              CFRelease(v90[1]);
            }

            if (v90[0])
            {
              CFRelease(v90[0]);
            }

            goto LABEL_77;
          }
        }

        dispatch_get_specific(*v7);
        v64 = NFLogGetLogger();
        if (v64)
        {
          v64(3, "%s:%i Failed to get controller info", "_NFDriverRFSettingsSetup", 838);
        }

        dispatch_get_specific(*v7);
        v44 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_159;
        }

        *v92 = 136446466;
        v93 = "_NFDriverRFSettingsSetup";
        v94 = 1024;
        v95 = 838;
        v45 = "%{public}s:%i Failed to get controller info";
        v46 = v92;
        goto LABEL_156;
      }

      v39 = buffer;
      if (CFStringGetCString(theString[1], buffer, 256, 0x600u))
      {
        goto LABEL_135;
      }

      dispatch_get_specific(*v7);
      v53 = NFLogGetLogger();
      if (v53)
      {
        v53(6, "%s:%i failed to get config TLV", "_NFDriverRFSettingsSetup", 785);
      }

      dispatch_get_specific(*v7);
      v52 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_159;
      }

      *v98 = 136446466;
      *&v98[4] = "_NFDriverRFSettingsSetup";
      *&v98[12] = 1024;
      *&v98[14] = 785;
      v45 = "%{public}s:%i failed to get config TLV";
    }

    else if (sub_297FB3E60("JDI"))
    {
      if (!v90[1])
      {
        v39 = buffer;
        goto LABEL_135;
      }

      v50 = CFStringGetCStringPtr(v90[1], 0x600u);
      if (v50)
      {
        goto LABEL_109;
      }

      v39 = buffer;
      if (CFStringGetCString(v90[1], buffer, 256, 0x600u))
      {
        goto LABEL_135;
      }

      dispatch_get_specific(*v7);
      v51 = NFLogGetLogger();
      if (v51)
      {
        v51(6, "%s:%i failed to get config TLV JDI", "_NFDriverRFSettingsSetup", 801);
      }

      dispatch_get_specific(*v7);
      v52 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_159;
      }

      *v98 = 136446466;
      *&v98[4] = "_NFDriverRFSettingsSetup";
      *&v98[12] = 1024;
      *&v98[14] = 801;
      v45 = "%{public}s:%i failed to get config TLV JDI";
    }

    else
    {
      v39 = buffer;
      if (!sub_297FB3E60("LGD") || !v90[0])
      {
        goto LABEL_135;
      }

      v50 = CFStringGetCStringPtr(v90[0], 0x600u);
      if (v50)
      {
        goto LABEL_109;
      }

      v39 = buffer;
      if (CFStringGetCString(v90[0], buffer, 256, 0x600u))
      {
        goto LABEL_135;
      }

      dispatch_get_specific(*v7);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v56(6, "%s:%i failed to get config TLV LGD", "_NFDriverRFSettingsSetup", 818);
      }

      dispatch_get_specific(*v7);
      v52 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_159;
      }

      *v98 = 136446466;
      *&v98[4] = "_NFDriverRFSettingsSetup";
      *&v98[12] = 1024;
      *&v98[14] = 818;
      v45 = "%{public}s:%i failed to get config TLV LGD";
    }

    v46 = v98;
    v54 = v52;
    v55 = OS_LOG_TYPE_DEFAULT;
LABEL_157:
    v65 = 18;
    goto LABEL_158;
  }

LABEL_77:
  v31 = *MEMORY[0x29EDCA608];
  return v16;
}

BOOL NFDriverRFSettingsCopy(uint64_t a1, uint64_t a2, void **a3, _WORD *a4)
{
  v7 = sub_297FB6264(a1, a2, a3, a4);
  if (v7)
  {
    __src = 0;
    v13 = 0;
    if (sub_297FB3100(a1, &__src, &v13))
    {
      v8 = v13;
      v9 = malloc_type_calloc(1uLL, v13 + *a4, 0x8F150FFBuLL);
      v10 = __src;
      if (v9)
      {
        v11 = v9;
        memcpy(v9, __src, v8);
        memcpy(&v11[v8], *a3, *a4);
        *a4 += v8;
        free(*a3);
        *a3 = v11;
      }

      free(v10);
    }
  }

  return v7;
}

BOOL sub_297FB3100(uint64_t a1, void *a2, _WORD *a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v41 = 0;
  v42 = 0;
  v40 = 2401;
  v50[0] = 12;
  v50[1] = sub_297FBA6E8(a1, 1) >> 8;
  v50[2] = sub_297FBA6E8(a1, 1);
  v50[3] = sub_297FBA6E8(a1, 7) >> 8;
  v50[4] = sub_297FBA6E8(a1, 7);
  v50[5] = sub_297FBA6E8(a1, 35) >> 8;
  v50[6] = sub_297FBA6E8(a1, 35);
  v50[7] = sub_297FBA6E8(a1, 25) >> 8;
  v50[8] = sub_297FBA6E8(a1, 25);
  v50[9] = sub_297FBA6E8(a1, 30) >> 8;
  v50[10] = sub_297FBA6E8(a1, 30);
  v50[11] = sub_297FBA6E8(a1, 23) >> 8;
  v50[12] = sub_297FBA6E8(a1, 23);
  v51 = 0x13A09EA098A094A0;
  v52 = 178325664;
  memset(v49, 0, sizeof(v49));
  if ((NFDriverGetControllerInfo(a1, v49) & 1) == 0)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i Failed to query controller info.", "_NFDriverRFSettingsGetRFProp", 207);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v44 = "_NFDriverRFSettingsGetRFProp";
      v45 = 1024;
      v46 = 207;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to query controller info.", buf, 0x12u);
    }

    goto LABEL_11;
  }

  if (*&v49[4] > 6u)
  {
    *a2 = 0;
    *a3 = 0;
    v13 = sub_297FA02E4(0x19u, v50);
    v42 = v13;
    v14 = sub_297FA02E4(0xC00u, 0);
    v41 = v14;
    if (!v13 || !v14)
    {
      v20 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v21(4, "%s:%i Failed to allocate buffer.", "_NFDriverRFSettingsGetRFProp", 222);
      }

      dispatch_get_specific(*v20);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v44 = "_NFDriverRFSettingsGetRFProp";
        v45 = 1024;
        v46 = 222;
        _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate buffer.", buf, 0x12u);
      }

      sub_297FA0714(&v42);
      sub_297FA0714(&v41);
      goto LABEL_48;
    }

    v15 = sub_297FA0380(a1, 37026, v13, v14);
    v16 = sub_297F9F694(v15);
    if (v16 != 18 && v16)
    {
      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i Failed to get RF settings; status=0x%04llX", "_NFDriverRFSettingsGetRFProp", 240, *v15);
      }

      dispatch_get_specific(*v23);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *v15;
        *buf = 136446722;
        v44 = "_NFDriverRFSettingsGetRFProp";
        v45 = 1024;
        v46 = 240;
        v47 = 2048;
        v48 = v26;
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF settings; status=0x%04llX", buf, 0x1Cu);
      }

      v18 = 0;
    }

    else
    {
      v17 = malloc_type_calloc(1uLL, *(v41 + 2), 0x100004077774924uLL);
      v18 = v17;
      if (v17)
      {
        memcpy(v17, *v41, *(v41 + 2));
        v19 = *(v41 + 2);
LABEL_29:
        sub_297F9FBDC(v15);
        sub_297FA0714(&v42);
        sub_297FA0714(&v41);
        v42 = sub_297FA02E4(2u, &v40);
        v27 = sub_297FA02E4(0x100u, 0);
        v41 = v27;
        if (v27 && v42)
        {
          v28 = sub_297FA0380(a1, 37027, v42, v27);
          if (sub_297F9F694(v28))
          {
            v29 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v30 = NFLogGetLogger();
            if (v30)
            {
              v30(3, "%s:%i Failed to get RF settings registers.", "_NFDriverRFSettingsGetRFProp", 276);
            }

            dispatch_get_specific(*v29);
            v31 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v44 = "_NFDriverRFSettingsGetRFProp";
              v45 = 1024;
              v46 = 276;
              _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF settings registers.", buf, 0x12u);
            }
          }

          else
          {
            v35 = malloc_type_realloc(v18, *(v41 + 2) + v19 + 5, 0x4BE86634uLL);
            if (v35)
            {
              v36 = v35;
              v37 = sub_297FBA6E8(a1, 6);
              v38 = &v36[v19];
              *v38 = __rev16(v37);
              v38[2] = *(v41 + 8) + 2;
              *&v36[(v19 + 3)] = v40;
              memcpy(&v36[(v19 + 5)], *v41, *(v41 + 2));
              LOWORD(v19) = v19 + 5 + *(v41 + 4);
              v18 = v36;
            }
          }

          sub_297FA0714(&v42);
          sub_297FA0714(&v41);
          sub_297F9FBDC(v28);
          if (v18 && v19)
          {
            *a2 = v18;
            *a3 = v19;
LABEL_11:
            result = 1;
            goto LABEL_49;
          }

          if (!v18)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v32 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v33 = NFLogGetLogger();
          if (v33)
          {
            v33(4, "%s:%i Failed to allocate outParams buffer.", "_NFDriverRFSettingsGetRFProp", 249);
          }

          dispatch_get_specific(*v32);
          v34 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v44 = "_NFDriverRFSettingsGetRFProp";
            v45 = 1024;
            v46 = 249;
            _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate outParams buffer.", buf, 0x12u);
          }

          sub_297FA0714(&v42);
          sub_297FA0714(&v41);
        }

        free(v18);
        goto LABEL_48;
      }
    }

    LOWORD(v19) = 0;
    goto LABEL_29;
  }

  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v7 = NFLogGetLogger();
  if (v7)
  {
    v7(4, "%s:%i Unsupported hardware.", "_NFDriverRFSettingsGetRFProp", 211);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v44 = "_NFDriverRFSettingsGetRFProp";
    v45 = 1024;
    v46 = 211;
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Unsupported hardware.", buf, 0x12u);
LABEL_48:
    result = 0;
  }

LABEL_49:
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFDriverDisableBoost(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  memset(v22, 0, 44);
  v15 = -520024159;
  if (*(a1 + 58) != 1)
  {
    goto LABEL_4;
  }

  if (!NFDriverGetControllerInfo(a1, v22))
  {
    v2 = 8;
    goto LABEL_20;
  }

  if ((DWORD1(v22[0]) - 13) >= 0xFFFFFFFD)
  {
    v3 = sub_297FA02E4(4u, &v15);
    v14 = v3;
    if (v3)
    {
      v4 = v3;
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i Disabling boost", "NFDriverDisableBoost", 1476);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v17 = "NFDriverDisableBoost";
        v18 = 1024;
        v19 = 1476;
        _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Disabling boost", buf, 0x12u);
      }

      v8 = sub_297FA0380(a1, 37025, v4, 0);
      if (sub_297F9F694(v8))
      {
        dispatch_get_specific(*v5);
        v9 = NFLogGetLogger();
        if (v9)
        {
          v9(3, "%s:%i status=0x%04llX", "NFDriverDisableBoost", 1479, *v8);
        }

        dispatch_get_specific(*v5);
        v10 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = *v8;
          *buf = 136446722;
          v17 = "NFDriverDisableBoost";
          v18 = 1024;
          v19 = 1479;
          v20 = 2048;
          v21 = v11;
          _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
        }

        v2 = 1;
      }

      else
      {
        v2 = 0;
      }

      sub_297F9FBDC(v8);
      sub_297FA0714(&v14);
    }

    else
    {
      v2 = 3;
    }
  }

  else
  {
LABEL_4:
    v2 = 0;
  }

LABEL_20:
  v12 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t NFDriverDisableLPCDAssist(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = sub_297FA02E4(4u, &unk_297FDB538);
  v10 = v2;
  if (v2)
  {
    v3 = sub_297FA0380(a1, 37025, v2, 0);
    if (sub_297F9F694(v3))
    {
      v4 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to setup LPCD_CFG", "NFDriverDisableLPCDAssist", 1502);
      }

      dispatch_get_specific(*v4);
      v6 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v12 = "NFDriverDisableLPCDAssist";
        v13 = 1024;
        v14 = 1502;
        _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to setup LPCD_CFG", buf, 0x12u);
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    sub_297F9FBDC(v3);
    sub_297FA0714(&v10);
  }

  else
  {
    v7 = 3;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t NFDriverEnableSERMPowerSave(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v15 = 12;
  v14 = 33776289;
  v2 = sub_297FA02E4(6u, &v14);
  v13 = v2;
  if (v2)
  {
    if ((*(*(a1 + 24) + 588) & 2) != 0)
    {
      v8 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i WARNING : Disabling SE reader mode Power save. Temperature will rise much faster !", "NFDriverEnableSERMPowerSave", 1525);
      }

      dispatch_get_specific(*v8);
      v10 = NFSharedLogGetLogger();
      v7 = 0;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v17 = "NFDriverEnableSERMPowerSave";
        v18 = 1024;
        v19 = 1525;
        _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i WARNING : Disabling SE reader mode Power save. Temperature will rise much faster !", buf, 0x12u);
        v7 = 0;
      }
    }

    else
    {
      v3 = sub_297FA0380(a1, 37025, v2, 0);
      if (sub_297F9F694(v3))
      {
        v4 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v5 = NFLogGetLogger();
        if (v5)
        {
          v5(3, "%s:%i Failed to setup SERM power save", "NFDriverEnableSERMPowerSave", 1533);
        }

        dispatch_get_specific(*v4);
        v6 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v17 = "NFDriverEnableSERMPowerSave";
          v18 = 1024;
          v19 = 1533;
          _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to setup SERM power save", buf, 0x12u);
        }

        v7 = 1;
      }

      else
      {
        v7 = 0;
      }

      sub_297F9FBDC(v3);
    }

    sub_297FA0714(&v13);
  }

  else
  {
    v7 = 3;
  }

  v11 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_297FB3E60(const char *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *MEMORY[0x29EDBB110];
    v3 = IOServiceNameMatching("disp0");
    MatchingService = IOServiceGetMatchingService(v2, v3);
    if (MatchingService)
    {
      v5 = MatchingService;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"bics-param-set", 0, 0);
      if (!CFProperty)
      {
        v13 = 0;
        goto LABEL_17;
      }

      v7 = CFProperty;
      v8 = CFGetTypeID(CFProperty);
      if (v8 == CFDataGetTypeID() && CFDataGetLength(v7) >= 4)
      {
        BytePtr = CFDataGetBytePtr(v7);
        if (!strcmp("LGD", a1))
        {
          v16 = *BytePtr;
          v13 = 1;
          v17 = v16 > 0x2D || ((1 << v16) & 0x200340000500) == 0;
          if (!v17 || v16 == 93)
          {
            goto LABEL_13;
          }
        }

        else if (!strcmp("JDI", a1))
        {
          v18 = *BytePtr;
          if ((v18 - 31) <= 0x3F && ((1 << (v18 - 31)) & 0x8000000000000009) != 0 || v18 == 12)
          {
            v13 = 1;
            goto LABEL_13;
          }
        }

        else
        {
          v10 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(3, "%s:%i Unknown parameter !", "watchDisplayCheck", 526);
          }

          dispatch_get_specific(*v10);
          v12 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v22 = "watchDisplayCheck";
            v23 = 1024;
            v24 = 526;
            _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown parameter !", buf, 0x12u);
          }
        }
      }

      v13 = 0;
LABEL_13:
      CFRelease(v7);
LABEL_17:
      IOObjectRelease(v5);
      goto LABEL_18;
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

LABEL_18:
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t sub_297FB4098(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v73 = *MEMORY[0x29EDCA608];
  v63 = 0;
  v62 = 0;
  if (!sub_297FB3100(a1, &v63, &v62))
  {
    v8 = 1;
    goto LABEL_9;
  }

  v5 = v63;
  v6 = v62;
  if (NFDataCreateWithBytes())
  {
    NFDataPrintAsHexString();
    NFDataRelease();
  }

  if (!v5)
  {
    v53 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "_NFDriverRFSettingsValidate", 438, "actualRfConfig");
    }

    dispatch_get_specific(*v53);
    v55 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "_NFDriverRFSettingsValidate";
      *&buf[12] = 1024;
      *&buf[14] = 438;
      *&buf[18] = 2080;
      *&buf[20] = "actualRfConfig";
      _os_log_impl(&dword_297F97000, v55, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", buf, 0x1Cu);
    }

    abort();
  }

  v7 = a3;
  v56 = v5;
  if (a3 < 3u)
  {
    v8 = 1;
    goto LABEL_7;
  }

  v11 = 0;
  v59 = v5 + 1;
  v58 = (v6 - 1);
  v8 = 1;
  v12 = 3;
  v60 = a3;
  v57 = a2;
  do
  {
    v13 = *(a2 + v11 + 2);
    if (v12 + v13 > v7)
    {
      break;
    }

    v14 = *(a2 + v11 + 1) | (*(a2 + v11) << 8);
    v61 = v12 + v13;
    if (v14 > 41065)
    {
      if (v14 > 41117)
      {
        if (v14 > 41134)
        {
          if (v14 == 41135)
          {
            v15 = "APC_CONTROL_TAG";
          }

          else
          {
            if (v14 != 41226)
            {
              goto LABEL_101;
            }

            v15 = "VGPIO_CONFIG_TAG";
          }

          goto LABEL_55;
        }

        if (v14 != 41118)
        {
          if (v14 == 41133)
          {
            v16 = "FELICA_HIGHZ_RX_TAG";
            goto LABEL_45;
          }

LABEL_101:
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v51 = NFLogGetLogger();
          if (v51)
          {
            v51(6, "%s:%i Unmatched tag 0x%04x", "_NFDriverRFSettingsNameForTag", 414, v14);
          }

          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v52 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_99;
          }

          *buf = 136446722;
          *&buf[4] = "_NFDriverRFSettingsNameForTag";
          *&buf[12] = 1024;
          *&buf[14] = 414;
          *&buf[18] = 1024;
          *&buf[20] = v14;
          v19 = v52;
          v20 = "%{public}s:%i Unmatched tag 0x%04x";
          v21 = 24;
LABEL_50:
          _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
          goto LABEL_99;
        }

        v15 = "RX_CTRL";
      }

      else if (v14 > 41111)
      {
        if (v14 == 41112)
        {
          v15 = "LMA_RSSI";
        }

        else
        {
          if (v14 != 41114)
          {
            goto LABEL_101;
          }

          v15 = "GC_RSSI_THRESHOLD_TAG";
        }
      }

      else
      {
        if (v14 != 41066)
        {
          if (v14 == 41108)
          {
            v16 = "CEF_FILTERING_CONFIG_TAG";
            goto LABEL_45;
          }

          goto LABEL_101;
        }

        v15 = "PHASE_OFFSET_TAG";
      }
    }

    else if (v14 > 40976)
    {
      if (v14 > 41015)
      {
        v16 = "NFCLD_THRESHOLD_TAG";
        if (v14 == 41016)
        {
          goto LABEL_45;
        }

        if (v14 != 41064)
        {
          goto LABEL_101;
        }

        v15 = "LPCD_CONFIG_TAG";
      }

      else
      {
        if (v14 == 40977)
        {
          v16 = "CLOCK_SEL_CFG_SN100v";
LABEL_45:
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v17 = NFLogGetLogger();
          if (v17)
          {
            v17(6, "%s:%i %s(%04X) skipped", "_NFDriverRFSettingsValidate", 465, v16, v14);
          }

          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v18 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_99;
          }

          *buf = 136446978;
          *&buf[4] = "_NFDriverRFSettingsValidate";
          *&buf[12] = 1024;
          *&buf[14] = 465;
          *&buf[18] = 2080;
          *&buf[20] = v16;
          *&buf[28] = 1024;
          *&buf[30] = v14;
          v19 = v18;
          v20 = "%{public}s:%i %s(%04X) skipped";
LABEL_49:
          v21 = 34;
          goto LABEL_50;
        }

        if (v14 != 40979)
        {
          goto LABEL_101;
        }

        v15 = "PMU_CONFIG_TAG";
      }
    }

    else if (v14 > 40972)
    {
      if (v14 == 40973)
      {
        v15 = "RF_REGISTER_SETTINGS/FDT";
      }

      else
      {
        if (v14 != 40974)
        {
          goto LABEL_101;
        }

        v15 = "PMU_CFG_TAG";
      }
    }

    else
    {
      v15 = "CLOCK_SEL_CFG";
      if (v14 != 40963)
      {
        if (v14 != 40968)
        {
          goto LABEL_101;
        }

        v15 = "SPMI_CONFIG_TAG";
      }
    }

LABEL_55:
    v22 = 0;
    v23 = (a2 + v12);
    do
    {
      v24 = v22 + 3;
      if (v22 + 3 > v58 || (v25 = v59[v22 + 2], v24 + v25 > v58))
      {
        v27 = 0;
        v25 = 0;
LABEL_66:
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v30 = NFLogGetLogger();
        if (v30)
        {
          v30(3, "%s:%i Failed to verify %s(%04X)", "_NFDriverRFSettingsValidateTag", 338, v15, v14);
        }

        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v31 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "_NFDriverRFSettingsValidateTag";
          *&buf[12] = 1024;
          *&buf[14] = 338;
          *&buf[18] = 2080;
          *&buf[20] = v15;
          *&buf[28] = 1024;
          *&buf[30] = v14;
          _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to verify %s(%04X)", buf, 0x22u);
        }

        memset(buf, 0, sizeof(buf));
        v32 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v33 = NFLogGetLogger();
        dispatch_get_specific(*v32);
        v34 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *v64 = 136315906;
          v65 = "_NFDriverRFSettingsValidateTag";
          v66 = 1024;
          v67 = 339;
          v68 = 2082;
          v69 = "Expected tag value : ";
          v70 = 2048;
          v71 = v13;
          _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v64, 0x26u);
        }

        if (v33)
        {
          v33(3, "%s:%i %s %lu bytes :", "_NFDriverRFSettingsValidateTag", 339, "Expected tag value : ", v13);
        }

        if (v13)
        {
          v35 = 0;
          do
          {
            v36 = 0;
            v37 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v35)];
            do
            {
              v38 = v23[v35++];
              v39 = sprintf(v37, "0x%02X ", v38);
              if (v36 > 6)
              {
                break;
              }

              v37 += v39;
              ++v36;
            }

            while (v35 < v13);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v40 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *v64 = 136446210;
              v65 = buf;
              _os_log_impl(&dword_297F97000, v40, OS_LOG_TYPE_ERROR, "%{public}s", v64, 0xCu);
            }

            if (v33)
            {
              v33(3, "%s", buf);
            }
          }

          while (v35 < v13);
        }

        memset(buf, 0, sizeof(buf));
        v41 = v25;
        v42 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v43 = NFLogGetLogger();
        dispatch_get_specific(*v42);
        v44 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *v64 = 136315906;
          v65 = "_NFDriverRFSettingsValidateTag";
          v66 = 1024;
          v67 = 340;
          v68 = 2082;
          v69 = "Received tag value : ";
          v70 = 2048;
          v71 = v25;
          _os_log_impl(&dword_297F97000, v44, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v64, 0x26u);
        }

        a2 = v57;
        if (v43)
        {
          v43(3, "%s:%i %s %lu bytes :", "_NFDriverRFSettingsValidateTag", 340, "Received tag value : ", v25);
        }

        if (v25)
        {
          v45 = 0;
          do
          {
            v46 = 0;
            v47 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v45)];
            do
            {
              v48 = v27[v45++];
              v49 = sprintf(v47, "0x%02X ", v48);
              if (v46 > 6)
              {
                break;
              }

              v47 += v49;
              ++v46;
            }

            while (v45 < v41);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v50 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *v64 = 136446210;
              v65 = buf;
              _os_log_impl(&dword_297F97000, v50, OS_LOG_TYPE_ERROR, "%{public}s", v64, 0xCu);
            }

            if (v43)
            {
              v43(3, "%s", buf);
            }
          }

          while (v45 < v41);
        }

        v8 = 0;
        v7 = v60;
        goto LABEL_99;
      }

      v26 = v59[v22 + 1] | (v59[v22] << 8);
      v22 = v24 + v25;
    }

    while (v26 != v14);
    v27 = &v59[v24];
    if (v25 != v13)
    {
      goto LABEL_66;
    }

    v25 = v13;
    if (memcmp(v23, &v59[v24], v13))
    {
      goto LABEL_66;
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v28(6, "%s:%i %s(%04X) is OK", "_NFDriverRFSettingsValidateTag", 344, v15, v14);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v29 = NFSharedLogGetLogger();
    v7 = v60;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      *&buf[4] = "_NFDriverRFSettingsValidateTag";
      *&buf[12] = 1024;
      *&buf[14] = 344;
      *&buf[18] = 2080;
      *&buf[20] = v15;
      *&buf[28] = 1024;
      *&buf[30] = v14;
      v19 = v29;
      v20 = "%{public}s:%i %s(%04X) is OK";
      goto LABEL_49;
    }

LABEL_99:
    v11 = v61;
    v12 = v61 + 3;
  }

  while (v61 + 3 <= v7);
LABEL_7:
  free(v56);
LABEL_9:
  v9 = *MEMORY[0x29EDCA608];
  return v8 & 1;
}

CFStringRef NFDriverCopySEIDFromFDR()
{
  v32 = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDB8ED8];
  v1 = AMFDRCreateTypeWithOptions();
  if (v1)
  {
    v2 = v1;
    v3 = AMFDRSealingMapCopyManifestProperties();
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(v3, @"seid");
      if (Value)
      {
        v6 = Value;
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v6))
        {
          Copy = CFStringCreateCopy(0, v6);
          v9 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(6, "%s:%i SEID in manifest is %@", "NFDriverCopySEIDFromFDR", 270, Copy);
          }

          dispatch_get_specific(*v9);
          v11 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v27 = "NFDriverCopySEIDFromFDR";
            v28 = 1024;
            v29 = 270;
            v30 = 2112;
            v31 = Copy;
            _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SEID in manifest is %@", buf, 0x1Cu);
          }

          goto LABEL_29;
        }

        v22 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v23 = NFLogGetLogger();
        if (v23)
        {
          v23(3, "%s:%i Unexpected type", "NFDriverCopySEIDFromFDR", 264);
        }

        dispatch_get_specific(*v22);
        v20 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
LABEL_28:
          Copy = 0;
LABEL_29:
          CFRelease(v2);
          CFRelease(v4);
          goto LABEL_30;
        }

        *buf = 136446466;
        v27 = "NFDriverCopySEIDFromFDR";
        v28 = 1024;
        v29 = 264;
        v21 = "%{public}s:%i Unexpected type";
      }

      else
      {
        v18 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v19 = NFLogGetLogger();
        if (v19)
        {
          v19(3, "%s:%i No SEID in manifest", "NFDriverCopySEIDFromFDR", 259);
        }

        dispatch_get_specific(*v18);
        v20 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        *buf = 136446466;
        v27 = "NFDriverCopySEIDFromFDR";
        v28 = 1024;
        v29 = 259;
        v21 = "%{public}s:%i No SEID in manifest";
      }

      _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x12u);
      goto LABEL_28;
    }

    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i No sealing manifest", "NFDriverCopySEIDFromFDR", 252);
    }

    dispatch_get_specific(*v15);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "NFDriverCopySEIDFromFDR";
      v28 = 1024;
      v29 = 252;
      _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i No sealing manifest", buf, 0x12u);
    }

    CFRelease(v2);
  }

  else
  {
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i amfdr is NULL", "NFDriverCopySEIDFromFDR", 246);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "NFDriverCopySEIDFromFDR";
      v28 = 1024;
      v29 = 246;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i amfdr is NULL", buf, 0x12u);
    }
  }

  Copy = 0;
LABEL_30:
  v24 = *MEMORY[0x29EDCA608];
  return Copy;
}

uint64_t sub_297FB4FD8(uint64_t a1, uint64_t a2, const char *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  if (*(a1 + 56))
  {
    result = 10;
    goto LABEL_36;
  }

  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Restoring RF", "NFDriverRFSettingsSetupSigned", 395);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v24 = "NFDriverRFSettingsSetupSigned";
    v25 = 1024;
    v26 = 395;
    _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Restoring RF", buf, 0x12u);
  }

  v9 = sub_297FB53B4(a1, @"ShMC", a3);
  if (v9)
  {
    v10 = sub_297FB5E54(a1, v9);
    NFDataRelease();
    if (!v10)
    {
      dispatch_get_specific(*v6);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(3, "%s:%i Failed to write RF cal data to NFCC", "NFDriverRFSettingsSetupSigned", 404);
      }

      dispatch_get_specific(*v6);
      v12 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 136446466;
      v24 = "NFDriverRFSettingsSetupSigned";
      v25 = 1024;
      v26 = 404;
      goto LABEL_34;
    }
  }

  else if (NFProductHasModuleCal())
  {
    dispatch_get_specific(*v6);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Failed to read Module cal data from FDR.", "NFDriverRFSettingsSetupSigned", 409);
    }

    dispatch_get_specific(*v6);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v24 = "NFDriverRFSettingsSetupSigned";
      v25 = 1024;
      v26 = 409;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read Module cal data from FDR.", buf, 0x12u);
    }

    v15 = sub_297FB606C() == 0;
    v16 = 10;
    goto LABEL_27;
  }

  v17 = sub_297FB53B4(a1, @"ShSC", a3);
  if (v17)
  {
    v18 = sub_297FB5E54(a1, v17);
    NFDataRelease();
    if (v18)
    {
      result = 0;
      goto LABEL_36;
    }

    dispatch_get_specific(*v6);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i Failed to write RF cal data to NFCC", "NFDriverRFSettingsSetupSigned", 424);
    }

    dispatch_get_specific(*v6);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_35:
      result = 1;
      goto LABEL_36;
    }

    *buf = 136446466;
    v24 = "NFDriverRFSettingsSetupSigned";
    v25 = 1024;
    v26 = 424;
LABEL_34:
    _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to write RF cal data to NFCC", buf, 0x12u);
    goto LABEL_35;
  }

  dispatch_get_specific(*v6);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(3, "%s:%i Failed to read RF cal data from FDR.", "NFDriverRFSettingsSetupSigned", 417);
  }

  dispatch_get_specific(*v6);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v24 = "NFDriverRFSettingsSetupSigned";
    v25 = 1024;
    v26 = 417;
    _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read RF cal data from FDR.", buf, 0x12u);
  }

  v15 = sub_297FB606C() == 0;
  v16 = 11;
LABEL_27:
  if (v15)
  {
    result = 0;
  }

  else
  {
    result = v16;
  }

LABEL_36:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_297FB53B4(uint64_t a1, const __CFString *a2, const char *a3)
{
  v88 = *MEMORY[0x29EDCA608];
  cf = 0;
  *v65 = 0;
  UniqueFDRKey = NFDriverGetUniqueFDRKey(a1, v65);
  if (!UniqueFDRKey)
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get FDR key : %d", "_NFDriverCreateInstanceNameForClassData", 286, *v65);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "_NFDriverCreateInstanceNameForClassData";
      *&buf[12] = 1024;
      *&buf[14] = 286;
      *&buf[18] = 1024;
      *&buf[20] = *v65;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get FDR key : %d", buf, 0x18u);
    }

    goto LABEL_71;
  }

  v6 = UniqueFDRKey;
  if (CFStringCompare(a2, @"ShMC", 0) == kCFCompareEqualTo)
  {
    v10 = CFStringCreateWithCString(0, v6, 0x600u);
    goto LABEL_34;
  }

  if (CFStringCompare(a2, @"ShSC", 0))
  {
LABEL_4:
    free(v6);
LABEL_71:
    v53 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v54(3, "%s:%i Failed to get instance name", "_NFDriverRFSettingsReadCalDataFromFDR", 338);
    }

    dispatch_get_specific(*v53);
    v55 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverRFSettingsReadCalDataFromFDR";
      *&buf[12] = 1024;
      *&buf[14] = 338;
      _os_log_impl(&dword_297F97000, v55, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get instance name", buf, 0x12u);
    }

LABEL_75:
    result = 0;
    goto LABEL_76;
  }

  v11 = MGCopyAnswer();
  v12 = MGCopyAnswer();
  if (!v12 || !v11)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i Failed to get MG types", "_NFDriverCreateInstanceNameForClassData", 323);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverCreateInstanceNameForClassData";
      *&buf[12] = 1024;
      *&buf[14] = 323;
      _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get MG types", buf, 0x12u);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_4;
  }

  v13 = AMFDRCreateInstanceString();
  v14 = AMFDRCreateInstanceString();
  v15 = v14;
  if (v13 && v14)
  {
    Mutable = CFStringCreateMutable(0, 0);
    v17 = Mutable;
    if (Mutable)
    {
      CFStringAppendCString(Mutable, v6, 0x600u);
      CFStringAppend(v17, @"-");
      CFStringAppend(v17, v13);
      CFStringAppend(v17, @"-");
      CFStringAppend(v17, v15);
    }

    CFRelease(v13);
  }

  else
  {
    v21 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Failed to get CF types", "_NFDriverCreateInstanceNameForClassData", 315);
    }

    dispatch_get_specific(*v21);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverCreateInstanceNameForClassData";
      *&buf[12] = 1024;
      *&buf[14] = 315;
      _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get CF types", buf, 0x12u);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v17 = 0;
    v10 = 0;
    if (!v15)
    {
      goto LABEL_33;
    }
  }

  CFRelease(v15);
  v10 = v17;
LABEL_33:
  CFRelease(v11);
  CFRelease(v12);
LABEL_34:
  free(v6);
  if (!v10)
  {
    goto LABEL_71;
  }

  v24 = sub_297FB6F0C(a2, v10, &cf, @"Local", a3);
  if (!v24)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(6, "%s:%i Failed to get FDR data from local store, trying memory", "_NFDriverRFSettingsReadCalDataFromFDR", 345);
    }

    dispatch_get_specific(*v25);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "_NFDriverRFSettingsReadCalDataFromFDR";
      *&buf[12] = 1024;
      *&buf[14] = 345;
      _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Failed to get FDR data from local store, trying memory", buf, 0x12u);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v24 = sub_297FB6F0C(a2, v10, &cf, @"Memory", a3);
    if (!v24)
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      memset(buf, 0, sizeof(buf));
      v57 = CFErrorCopyDescription(cf);
      CFStringGetCString(v57, buf, 255, 0x8000100u);
      dispatch_get_specific(*v25);
      v58 = NFLogGetLogger();
      if (v58)
      {
        v59 = v58;
        Code = CFErrorGetCode(cf);
        v59(3, "%s:%i Failed to get FDR data : %ld - %s", "_NFDriverRFSettingsReadCalDataFromFDR", 356, Code, buf);
      }

      dispatch_get_specific(*v25);
      v61 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = CFErrorGetCode(cf);
        *v65 = 136446978;
        v66 = "_NFDriverRFSettingsReadCalDataFromFDR";
        v67 = 1024;
        v68 = 356;
        v69 = 2048;
        v70 = v62;
        v71 = 2080;
        v72 = buf;
        _os_log_impl(&dword_297F97000, v61, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get FDR data : %ld - %s", v65, 0x26u);
      }

      CFRelease(v10);
      if (v57)
      {
        CFRelease(v57);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_75;
    }
  }

  v28 = v24;
  if (cf)
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v77 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    memset(buf, 0, sizeof(buf));
    v29 = CFErrorCopyDescription(cf);
    CFStringGetCString(v29, buf, 255, 0x8000100u);
    v30 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = CFErrorGetCode(cf);
      v32(4, "%s:%i Got FDR data but an error is set : %ld - %s", "_NFDriverRFSettingsReadCalDataFromFDR", 366, v33, buf);
    }

    dispatch_get_specific(*v30);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = CFErrorGetCode(cf);
      *v65 = 136446978;
      v66 = "_NFDriverRFSettingsReadCalDataFromFDR";
      v67 = 1024;
      v68 = 366;
      v69 = 2048;
      v70 = v35;
      v71 = 2080;
      v72 = buf;
      _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_ERROR, "%{public}s:%i Got FDR data but an error is set : %ld - %s", v65, 0x26u);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  CFDataGetBytePtr(v28);
  CFDataGetLength(v28);
  v36 = NFDataCreateWithBytes();
  CFRelease(v28);
  CFRelease(v10);
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v37 = NFLogGetLogger();
  if (v37)
  {
    v37(6, "%s:%i Found FDR data, %ld bytes", "_NFDriverRFSettingsReadCalDataFromFDR", 375, v36[1]);
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v38 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v36[1];
    *buf = 136446722;
    *&buf[4] = "_NFDriverRFSettingsReadCalDataFromFDR";
    *&buf[12] = 1024;
    *&buf[14] = 375;
    *&buf[18] = 2048;
    *&buf[20] = v39;
    _os_log_impl(&dword_297F97000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found FDR data, %ld bytes", buf, 0x1Cu);
  }

  v74 = 0u;
  memset(buf, 0, sizeof(buf));
  v40 = *v36;
  v41 = v36[1];
  v42 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v43 = NFLogGetLogger();
  dispatch_get_specific(*v42);
  v44 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v36[1];
    *v65 = 136315906;
    v66 = "_NFDriverRFSettingsReadCalDataFromFDR";
    v67 = 1024;
    v68 = 376;
    v69 = 2082;
    v70 = "FDR: ";
    v71 = 2048;
    v72 = v45;
    _os_log_impl(&dword_297F97000, v44, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v65, 0x26u);
  }

  if (v43)
  {
    v43(6, "%s:%i %s %lu bytes :", "_NFDriverRFSettingsReadCalDataFromFDR", 376, "FDR: ", v36[1]);
  }

  v63 = v36;
  if (v41)
  {
    v46 = 0;
    do
    {
      v47 = 0;
      v48 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v46)];
      do
      {
        v49 = *(v40 + v46++);
        v50 = sprintf(v48, "0x%02X ", v49);
        if (v47 > 6)
        {
          break;
        }

        v48 += v50;
        ++v47;
      }

      while (v46 < v41);
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v51 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *v65 = 136446210;
        v66 = buf;
        _os_log_impl(&dword_297F97000, v51, OS_LOG_TYPE_DEFAULT, "%{public}s", v65, 0xCu);
      }

      if (v43)
      {
        v43(6, "%s", buf);
      }
    }

    while (v46 < v41);
  }

  result = v63;
LABEL_76:
  v56 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_297FB5E54(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (sub_297FB77BC(*a2, *(a2 + 8)))
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to parse TLVs, is the format correct ?", "_NFDriverRFSettingsWriteSignedCalData", 505);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "_NFDriverRFSettingsWriteSignedCalData";
      v19 = 1024;
      v20 = 505;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to parse TLVs, is the format correct ?", buf, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    v16 = sub_297FA02E4(*(a2 + 8), *a2);
    v8 = sub_297FA0380(a1, 222, v16, 0);
    v9 = sub_297F9F694(v8);
    v7 = v9 == 0;
    if (v9)
    {
      v10 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(3, "%s:%i Failed to push Cal to NFCC : 0x%4llx", "_NFDriverRFSettingsWriteSignedCalData", 514, *v8);
      }

      dispatch_get_specific(*v10);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *v8;
        *buf = 136446722;
        v18 = "_NFDriverRFSettingsWriteSignedCalData";
        v19 = 1024;
        v20 = 514;
        v21 = 2048;
        v22 = v13;
        _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to push Cal to NFCC : 0x%4llx", buf, 0x1Cu);
      }
    }

    sub_297F9FBDC(v8);
    sub_297FA0714(&v16);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_297FB606C()
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = AMFDRCreateWithOptions();
  v1 = MEMORY[0x29EDC9730];
  if (v0)
  {
    v2 = v0;
    v3 = AMFDRSealingMapVerifySealing();
    CFRelease(v2);
  }

  else
  {
    v3 = 1;
  }

  dispatch_get_specific(*v1);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Sealing status is %d", "_NFDriverRFSettingsFDRSealed", 101, v3);
  }

  dispatch_get_specific(*v1);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v9 = "_NFDriverRFSettingsFDRSealed";
    v10 = 1024;
    v11 = 101;
    v12 = 1024;
    LODWORD(v13) = v3;
    _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Sealing status is %d", buf, 0x18u);
  }

  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

BOOL sub_297FB6264(uint64_t a1, uint64_t a2, void **a3, _WORD *a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v7 = sub_297FA02E4(0x400u, 0);
  v22 = v7;
  *a3 = 0;
  *a4 = 0;
  v8 = sub_297FA0380(a1, 223, 0, v7);
  v9 = sub_297F9F694(v8);
  if (v9)
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to get RF settings; status=0x%04llX.", "NFDriverRFSettingsCopySigned", 481, *v8);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *v8;
      *buf = 136446722;
      v24 = "NFDriverRFSettingsCopySigned";
      v25 = 1024;
      v26 = 481;
      v27 = 2048;
      v28 = v13;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get RF settings; status=0x%04llX.", buf, 0x1Cu);
    }
  }

  else
  {
    *a3 = malloc_type_calloc(1uLL, v7[2], 0x100004077774924uLL);
    v14 = v7[2];
    if (v14 >= 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 4;
      do
      {
        v18 = *(*v7 + v15 + 3);
        if (v14 - v15 - 4 < v18)
        {
          break;
        }

        *(*a3 + v16) = *(*v7 + v15);
        *(*a3 + v16 + 2) = *(*v7 + v15 + 2 + 1);
        v19 = v16 + 3;
        memcpy(*a3 + v19, (*v7 + v17), v18);
        v16 = v19 + v18;
        v15 = v17 + v18;
        v17 += v18 + 4;
        v14 = v7[2];
      }

      while (v17 <= v14);
    }

    *a4 = v14 - 1;
  }

  sub_297FA0714(&v22);
  sub_297F9FBDC(v8);
  v20 = *MEMORY[0x29EDCA608];
  return v9 == 0;
}

BOOL NFDriverRFSettingsPushSetting(uint64_t a1, uint64_t a2, int a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a3 != 1)
  {
    if (a3 == 3)
    {
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Error : unable to write to transition registers", "NFDriverRFSettingsPushSetting", 529);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v25 = "NFDriverRFSettingsPushSetting";
      v26 = 1024;
      v27 = 529;
      v8 = "%{public}s:%i Error : unable to write to transition registers";
    }

    else
    {
      v11 = sub_297FA02E4(*(a2 + 8), *a2);
      v23 = v11;
      if (v11)
      {
        if (a3 == 2)
        {
          v12 = 222;
        }

        else
        {
          v12 = 37025;
        }

        v13 = sub_297FA0380(a1, v12, v11, 0);
        v14 = sub_297F9F694(v13);
        v15 = v14 == 0;
        if (v14)
        {
          v16 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v17 = NFLogGetLogger();
          if (v17)
          {
            v17(3, "%s:%i Failed to push Cal to NFCC : 0x%4llx", "NFDriverRFSettingsPushSetting", 546, *v13);
          }

          dispatch_get_specific(*v16);
          v18 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = *v13;
            *buf = 136446722;
            v25 = "NFDriverRFSettingsPushSetting";
            v26 = 1024;
            v27 = 546;
            v28 = 2048;
            v29 = v19;
            _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to push Cal to NFCC : 0x%4llx", buf, 0x1Cu);
          }
        }

        sub_297F9FBDC(v13);
        sub_297FA0714(&v23);
        goto LABEL_26;
      }

      v20 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v21(3, "%s:%i Error : Allocation failure", "NFDriverRFSettingsPushSetting", 540);
      }

      dispatch_get_specific(*v20);
      v7 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_25:
        v15 = 0;
LABEL_26:
        v22 = *MEMORY[0x29EDCA608];
        return v15;
      }

      *buf = 136446466;
      v25 = "NFDriverRFSettingsPushSetting";
      v26 = 1024;
      v27 = 540;
      v8 = "%{public}s:%i Error : Allocation failure";
    }

    _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
    goto LABEL_25;
  }

  v9 = *MEMORY[0x29EDCA608];

  return sub_297FB5E54(a1, a2);
}

uint64_t NFDriverRFSettingsReadSetting(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v60 = *MEMORY[0x29EDCA608];
  if (a3 == 3)
  {
    v4 = 37027;
  }

  else
  {
    v4 = 37026;
  }

  if (a3 == 1)
  {
    v4 = 223;
  }

  v45 = v4;
  v59 = 0u;
  memset(v58, 0, sizeof(v58));
  v5 = *a2;
  v6 = a2[1];
  v7 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  dispatch_get_specific(*v7);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a2[1];
    *buf = 136315906;
    v51 = "NFDriverRFSettingsReadSetting";
    v52 = 1024;
    v53 = 574;
    v54 = 2082;
    v55 = "Reading registers";
    v56 = 2048;
    v57 = v10;
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
  }

  if (Logger)
  {
    Logger(6, "%s:%i %s %lu bytes :", "NFDriverRFSettingsReadSetting", 574, "Reading registers", a2[1]);
  }

  if (v6)
  {
    v11 = 0;
    do
    {
      v12 = 0;
      v13 = &v58[__sprintf_chk(v58, 0, 0x30uLL, "%04lX: ", v11)];
      do
      {
        v14 = v5[v11++];
        v15 = sprintf(v13, "0x%02X ", v14);
        if (v12 > 6)
        {
          break;
        }

        v13 += v15;
        ++v12;
      }

      while (v11 < v6);
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v51 = v58;
        _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }

      if (Logger)
      {
        Logger(6, "%s", v58);
      }
    }

    while (v11 < v6);
  }

  v49 = sub_297FA02E4(*(a2 + 2), *a2);
  if (v49)
  {
    v17 = sub_297FA02E4(0x400u, 0);
    v48 = v17;
    if (v17)
    {
      v18 = v17;
      v19 = sub_297FA0380(a1, v45, v49, v17);
      if (sub_297F9F694(v19))
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v20 = NFLogGetLogger();
        if (v20)
        {
          v20(3, "%s:%i Failed to read registers from NFCC : 0x%4llx", "NFDriverRFSettingsReadSetting", 591, *v19);
        }

        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v21 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *v19;
          *v58 = 136446722;
          *&v58[4] = "NFDriverRFSettingsReadSetting";
          *&v58[12] = 1024;
          *&v58[14] = 591;
          *&v58[18] = 2048;
          *&v58[20] = v22;
          _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to read registers from NFCC : 0x%4llx", v58, 0x1Cu);
        }

        v23 = v18[2];
        if (v23)
        {
          v47 = v19;
          v59 = 0u;
          memset(v58, 0, sizeof(v58));
          v24 = *v18;
          v25 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v26 = NFLogGetLogger();
          dispatch_get_specific(*v25);
          v27 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = v18[2];
            *buf = 136315906;
            v51 = "NFDriverRFSettingsReadSetting";
            v52 = 1024;
            v53 = 593;
            v54 = 2082;
            v55 = "Error data :";
            v56 = 2048;
            v57 = v28;
            _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", buf, 0x26u);
          }

          if (v26)
          {
            v26(3, "%s:%i %s %lu bytes :", "NFDriverRFSettingsReadSetting", 593, "Error data :", v18[2]);
          }

          v29 = 0;
          do
          {
            v30 = 0;
            v31 = &v58[__sprintf_chk(v58, 0, 0x30uLL, "%04lX: ", v29)];
            do
            {
              v32 = *(v24 + v29++);
              v33 = sprintf(v31, "0x%02X ", v32);
              if (v30 > 6)
              {
                break;
              }

              v31 += v33;
              ++v30;
            }

            while (v29 < v23);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v34 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v51 = v58;
              _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
            }

            if (v26)
            {
              v26(3, "%s", v58);
            }
          }

          while (v29 < v23);
          v35 = 0;
          v19 = v47;
          goto LABEL_59;
        }
      }

      else
      {
        if (v18[2])
        {
          v40 = *v18;
          v35 = NFDataCreateWithBytes();
LABEL_59:
          sub_297F9FBDC(v19);
          sub_297FA0714(&v49);
          sub_297FA0714(&v48);
          goto LABEL_60;
        }

        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v41 = NFLogGetLogger();
        if (v41)
        {
          v41(3, "%s:%i No data received.", "NFDriverRFSettingsReadSetting", 596);
        }

        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v42 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *v58 = 136446466;
          *&v58[4] = "NFDriverRFSettingsReadSetting";
          *&v58[12] = 1024;
          *&v58[14] = 596;
          _os_log_impl(&dword_297F97000, v42, OS_LOG_TYPE_ERROR, "%{public}s:%i No data received.", v58, 0x12u);
        }
      }

      v35 = 0;
      goto LABEL_59;
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v38(3, "%s:%i Error : Allocation failure", "NFDriverRFSettingsReadSetting", 584);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *v58 = 136446466;
      *&v58[4] = "NFDriverRFSettingsReadSetting";
      *&v58[12] = 1024;
      *&v58[14] = 584;
      _os_log_impl(&dword_297F97000, v39, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : Allocation failure", v58, 0x12u);
    }

    sub_297FA0714(&v49);
  }

  else
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v36(3, "%s:%i Error : Allocation failure", "NFDriverRFSettingsReadSetting", 578);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *v58 = 136446466;
      *&v58[4] = "NFDriverRFSettingsReadSetting";
      *&v58[12] = 1024;
      *&v58[14] = 578;
      _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : Allocation failure", v58, 0x12u);
    }
  }

  v35 = 0;
LABEL_60:
  v43 = *MEMORY[0x29EDCA608];
  return v35;
}

uint64_t sub_297FB6F0C(uint64_t a1, uint64_t a2, CFErrorRef *a3, uint64_t a4, const char *a5)
{
  v50 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (a3)
    {
      *a3 = CFErrorCreate(0, *MEMORY[0x29EDB8F48], 1, 0);
    }

    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i dataClass is NULL", "_NF_AMFDRSealingMapCopyLocalDataForClass", 160);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446466;
    v47 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
    v48 = 1024;
    v49 = 160;
    v15 = "%{public}s:%i dataClass is NULL";
LABEL_18:
    _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
    goto LABEL_19;
  }

  v7 = *MEMORY[0x29EDB8ED8];
  v8 = AMFDRCreateTypeWithOptions();
  if (!v8)
  {
    if (a3)
    {
      *a3 = CFErrorCreate(0, *MEMORY[0x29EDB8F48], 1, 0);
    }

    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i amfdr is NULL", "_NF_AMFDRSealingMapCopyLocalDataForClass", 162);
    }

    dispatch_get_specific(*v16);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136446466;
    v47 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
    v48 = 1024;
    v49 = 162;
    v15 = "%{public}s:%i amfdr is NULL";
    goto LABEL_18;
  }

  v9 = v8;
  if (AMFDRDataApTicketPopulate())
  {
    v10 = AMFDRDataApTicketCopyObjectProperty();
    if (v10)
    {
      v11 = v10;
      AMFDRSetOption();
      goto LABEL_27;
    }

    if (a3)
    {
      *a3 = CFErrorCreate(0, *MEMORY[0x29EDB8F48], 199, 0);
    }

    v41 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v42(3, "%s:%i Unable to extract trust object digest from AP Ticket", "_NF_AMFDRSealingMapCopyLocalDataForClass", 173);
    }

    dispatch_get_specific(*v41);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v47 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
      v48 = 1024;
      v49 = 173;
      _os_log_impl(&dword_297F97000, v43, OS_LOG_TYPE_ERROR, "%{public}s:%i Unable to extract trust object digest from AP Ticket", buf, 0x12u);
    }

    CFRelease(v9);
LABEL_19:
    v18 = 0;
    goto LABEL_72;
  }

  if (a3)
  {
    *a3 = CFErrorCreate(0, *MEMORY[0x29EDB8F48], 1, 0);
  }

  v19 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v20(3, "%s:%i Unable to read AP Ticket", "_NF_AMFDRSealingMapCopyLocalDataForClass", 179);
  }

  dispatch_get_specific(*v19);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v47 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
    v48 = 1024;
    v49 = 179;
    _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Unable to read AP Ticket", buf, 0x12u);
  }

  v11 = 0;
LABEL_27:
  v22 = AMFDRSealingMapCopyInstanceForClass();
  if (!v22)
  {
    if (a3)
    {
      *a3 = CFErrorCreate(0, *MEMORY[0x29EDB8F48], 199, 0);
    }

    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(3, "%s:%i Could not get Sealed Data Instance", "_NF_AMFDRSealingMapCopyLocalDataForClass", 188);
    }

    dispatch_get_specific(*v25);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v47 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
      v48 = 1024;
      v49 = 188;
      _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i Could not get Sealed Data Instance", buf, 0x12u);
    }

    v28 = 0;
    v18 = 0;
    goto LABEL_68;
  }

  v23 = v22;
  AMFDRSetOption();
  v24 = *MEMORY[0x29EDB8EF8];
  AMFDRSetOption();
  AMFDRSetOption();
  AMFDRDataCopyTrustObject();
  v29 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v30 = NFLogGetLogger();
  if (v30)
  {
    v30(3, "%s:%i AMFDRDataCopyTrustObject failed", "_NF_AMFDRSealingMapCopyLocalDataForClass", 200);
  }

  dispatch_get_specific(*v29);
  v31 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v47 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
    v48 = 1024;
    v49 = 200;
    _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i AMFDRDataCopyTrustObject failed", buf, 0x12u);
  }

  v28 = AMFDRDataCopy();
  if (v28)
  {
    AMFDRSetOption();
  }

  else
  {
    v32 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v33(3, "%s:%i sealingManifestData DataCopy failed", "_NF_AMFDRSealingMapCopyLocalDataForClass", 209);
    }

    dispatch_get_specific(*v32);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v47 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
      v48 = 1024;
      v49 = 209;
      _os_log_impl(&dword_297F97000, v34, OS_LOG_TYPE_ERROR, "%{public}s:%i sealingManifestData DataCopy failed", buf, 0x12u);
    }
  }

  AMFDRSetOption();
  AMFDRSetOption();
  Mutable = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    v36 = Mutable;
    if (a5 && *a5)
    {
      CFStringAppendCString(Mutable, a5, 0x8000100u);
    }

    else
    {
      if (!NFIsRestoreOS())
      {
        v37 = v36;
LABEL_66:
        CFRelease(v37);
        goto LABEL_67;
      }

      CFStringAppend(v36, @"/mnt1");
    }

    CFStringAppend(v36, @"/System/Library/Caches/com.apple.factorydata");
    v37 = CFURLCreateWithString(0, v36, 0);
    CFRelease(v36);
    if (v37)
    {
      v38 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v39 = NFLogGetLogger();
      if (v39)
      {
        v39(6, "%s:%i Forcing FDR path.", "_NF_AMFDRSealingMapCopyLocalDataForClass", 219);
      }

      dispatch_get_specific(*v38);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v47 = "_NF_AMFDRSealingMapCopyLocalDataForClass";
        v48 = 1024;
        v49 = 219;
        _os_log_impl(&dword_297F97000, v40, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Forcing FDR path.", buf, 0x12u);
      }

      AMFDRSetOption();
      goto LABEL_66;
    }
  }

LABEL_67:
  v18 = AMFDRDataCopy();
  CFRelease(v23);
LABEL_68:
  CFRelease(v9);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v28)
  {
    CFRelease(v28);
  }

LABEL_72:
  v44 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t sub_297FB77BC(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v31 = *MEMORY[0x29EDCA608];
  while (1)
  {
    if (a2 - v4 <= 1)
    {
      v11 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Invalid length : no room for tag", "_NFDriverRFSettingsTLVParser", 43);
      }

      dispatch_get_specific(*v11);
      v13 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 136446466;
      v26 = "_NFDriverRFSettingsTLVParser";
      v27 = 1024;
      v28 = 43;
      v14 = "%{public}s:%i Invalid length : no room for tag";
      v15 = v13;
      v16 = 18;
      goto LABEL_18;
    }

    v5 = __rev16(*(a1 + v4));
    if (a2 - (v4 + 2) <= 1)
    {
      v17 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v18(3, "%s:%i Invalid length for tag 0x%x", "_NFDriverRFSettingsTLVParser", 50, v5);
      }

      dispatch_get_specific(*v17);
      v19 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 136446722;
      v26 = "_NFDriverRFSettingsTLVParser";
      v27 = 1024;
      v28 = 50;
      v29 = 1024;
      v30 = v5;
      v14 = "%{public}s:%i Invalid length for tag 0x%x";
      v15 = v19;
      v16 = 24;
LABEL_18:
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
LABEL_19:
      v9 = -1;
      goto LABEL_20;
    }

    v6 = v4 + 4;
    v7 = *(a1 + v4 + 3) | (*(a1 + v4 + 2) << 8);
    if ((v5 & 0xFFFE) != 0xF000)
    {
      v10 = v7;
      goto LABEL_8;
    }

    v8 = sub_297FB77BC(a1 + v6, *(a1 + v4 + 3) | (*(a1 + v4 + 2) << 8));
    v9 = v8;
    if (v8 < 0)
    {
      break;
    }

    v10 = v7 - v8;
LABEL_8:
    v4 = v10 + v6;
    v9 = a2 - v4;
    if (a2 <= v4)
    {
      goto LABEL_20;
    }
  }

  v22 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v23 = NFLogGetLogger();
  if (v23)
  {
    v23(3, "%s:%i Failure for tag 0x%x", "_NFDriverRFSettingsTLVParser", 62, v5);
  }

  dispatch_get_specific(*v22);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v26 = "_NFDriverRFSettingsTLVParser";
    v27 = 1024;
    v28 = 62;
    v29 = 1024;
    v30 = v5;
    _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Failure for tag 0x%x", buf, 0x18u);
  }

LABEL_20:
  v20 = *MEMORY[0x29EDCA608];
  return v9;
}

void NFDriverDumpUART(uint64_t a1)
{
  v1 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FB7B1C;
  block[3] = &unk_29EE880F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

void sub_297FB7B1C(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(*(*(a1 + 32) + 24) + 576))
  {
    v1 = phTmlNfc_IoCtl();
    if (v1)
    {
      v2 = v1;
      v3 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i status=0x%04X", "NFDriverDumpUART_block_invoke", 125, v2);
      }

      dispatch_get_specific(*v3);
      v5 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v8 = "NFDriverDumpUART_block_invoke";
        v9 = 1024;
        v10 = 125;
        v11 = 1024;
        v12 = v2;
        _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

BOOL NFDriverNFCCPowerOff(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(*(a1 + 24) + 560);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = sub_297FB7CF8;
  v4[3] = &unk_29EE88120;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_async_and_wait(v1, v4);
  v2 = *(v6 + 12) == 0;
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_297FB7CF8(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(*(*(a1 + 40) + 24) + 576);
  v3 = phTmlNfc_IoCtl();
  *(*(*(a1 + 32) + 8) + 24) = v3;
  if (v3)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "NFDriverNFCCPowerOff_block_invoke", 152, *(*(*(a1 + 32) + 8) + 24));
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136446722;
      v10 = "NFDriverNFCCPowerOff_block_invoke";
      v11 = 1024;
      v12 = 152;
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297FB7E3C(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!*(*(a1 + 24) + 576))
  {
    goto LABEL_10;
  }

  if (*a1 == 3)
  {
    goto LABEL_9;
  }

  v1 = phTmlNfc_IoCtl();
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i status=0x%04X", "_NFDriverDebugFailedHW", 173, v2);
  }

  dispatch_get_specific(*v3);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v9 = "_NFDriverDebugFailedHW";
    v10 = 1024;
    v11 = 173;
    v12 = 1024;
    v13 = v2;
    _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
  }

  if (v2 == 11)
  {
LABEL_9:
    result = 16;
  }

  else
  {
LABEL_10:
    result = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFDriverIsHostWakeCapable(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(*(a1 + 24) + 560);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = sub_297FB8030;
  v4[3] = &unk_29EE88148;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_async_and_wait(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_297FB8030(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 24) + 576);
  result = phTmlNfc_IoCtl();
  *(*(*(a1 + 32) + 8) + 24) = result == 0;
  return result;
}

BOOL sub_297FB8080(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(*(a1 + 24) + 767))
  {
    v2 = 666000000000;
  }

  else
  {
    v2 = 20000000000;
  }

  v3 = dispatch_time(0, v2);
  v4 = dispatch_semaphore_wait(*(*(a1 + 24) + 552), v3);
  if (v4)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Error : timeout occured !!!", "_NFDriverAcquireSE", 284);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "_NFDriverAcquireSE";
      v12 = 1024;
      v13 = 284;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : timeout occured !!!", buf, 0x12u);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_297F97000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "Error : timeout occured !!!", buf, 2u);
    }
  }

  result = v4 == 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned int *sub_297FB820C(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 8);
    v2[2] = v4;
    v5 = malloc_type_calloc(1uLL, v4, 0x100004077774924uLL);
    *v3 = v5;
    if (v5)
    {
      memcpy(v5, *a1, v3[2]);
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

BOOL NFDriverRunIntegrityDebug(uint64_t a1)
{
  v80 = *MEMORY[0x29EDCA608];
  v2 = sub_297FA02E4(0x30u, 0);
  v44 = v2;
  memset(v79, 0, 44);
  if (*(a1 + 57) == 1)
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i This API is available in DL mode only", "NFDriverRunIntegrityDebug", 613);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136446466;
    v46 = "NFDriverRunIntegrityDebug";
    v47 = 1024;
    v48 = 613;
    v6 = "%{public}s:%i This API is available in DL mode only";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  v9 = v2;
  if (!NFDriverGetControllerInfo(a1, v79))
  {
    goto LABEL_13;
  }

  if ((DWORD1(v79[0]) - 21) > 1)
  {
    v16 = sub_297FA0380(a1, 241, 0, v9);
    v17 = sub_297F9F694(v16);
    v13 = v17 == 0;
    if (v17)
    {
      v18 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v19(3, "%s:%i Failed to get integrity check", "NFDriverRunIntegrityDebug", 632);
      }

      dispatch_get_specific(*v18);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v46 = "NFDriverRunIntegrityDebug";
      v47 = 1024;
      v48 = 632;
      v21 = "%{public}s:%i Failed to get integrity check";
      v22 = v20;
      v23 = OS_LOG_TYPE_ERROR;
      v24 = 18;
    }

    else
    {
      v25 = *v9;
      v26 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v27(6, "%s:%i Session State=%d,                     HW Version=0x%x,                     ROM=0x%x,                     Model=0x%x,                     FW=%x.%x,                     MW=%x.%x r%llx,                     Chip=%x                     Life cycle=%x,                     Data section count=%d,                     Code section count=%d,                     CRC=0x%x,                     status=0x%x", "NFDriverRunIntegrityDebug", 663, *v25, v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], *(v25 + 2), *(v25 + 12), *(v25 + 13), v25[32], v25[33], *(v25 + 9), *(v25 + 20));
      }

      dispatch_get_specific(*v26);
      v28 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v29 = *v25;
      v30 = v25[8];
      v31 = v25[9];
      v32 = v25[10];
      v33 = v25[11];
      v34 = v25[12];
      v35 = v25[13];
      v36 = v25[14];
      v37 = *(v25 + 2);
      v38 = *(v25 + 12);
      v39 = *(v25 + 13);
      v40 = v25[32];
      v41 = v25[33];
      v42 = *(v25 + 9);
      v43 = *(v25 + 20);
      *buf = 136450306;
      v46 = "NFDriverRunIntegrityDebug";
      v47 = 1024;
      v48 = 663;
      v49 = 1024;
      v50 = v29;
      v51 = 1024;
      v52 = v30;
      v53 = 1024;
      v54 = v31;
      v55 = 1024;
      v56 = v32;
      v57 = 1024;
      v58 = v33;
      v59 = 1024;
      v60 = v34;
      v61 = 1024;
      v62 = v35;
      v63 = 1024;
      v64 = v36;
      v65 = 2048;
      v66 = v37;
      v67 = 1024;
      v68 = v38;
      v69 = 1024;
      v70 = v39;
      v71 = 1024;
      v72 = v40;
      v73 = 1024;
      v74 = v41;
      v75 = 1024;
      v76 = v42;
      v77 = 1024;
      v78 = v43;
      v21 = "%{public}s:%i Session State=%d,                     HW Version=0x%x,                     ROM=0x%x,                     Model=0x%x,                     FW=%x.%x,                     MW=%x.%x r%llx,                     Chip=%x                     Life cycle=%x,                     Data section count=%d,                     Code section count=%d,                     CRC=0x%x,                     status=0x%x";
      v22 = v28;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 112;
    }

    _os_log_impl(&dword_297F97000, v22, v23, v21, buf, v24);
LABEL_25:
    sub_297F9FBDC(v16);
    goto LABEL_14;
  }

  v10 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v11(6, "%s:%i Device does not support this feature", "NFDriverRunIntegrityDebug", 625);
  }

  dispatch_get_specific(*v10);
  v12 = NFSharedLogGetLogger();
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_13;
  }

  *buf = 136446466;
  v46 = "NFDriverRunIntegrityDebug";
  v47 = 1024;
  v48 = 625;
  v6 = "%{public}s:%i Device does not support this feature";
  v7 = v12;
  v8 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
  _os_log_impl(&dword_297F97000, v7, v8, v6, buf, 0x12u);
LABEL_13:
  v13 = 0;
LABEL_14:
  sub_297FA0714(&v44);
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}