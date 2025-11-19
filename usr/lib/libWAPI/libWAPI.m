uint64_t isChinaRegion()
{
  v0 = *MEMORY[0x29EDBB118];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService && (v3 = *MEMORY[0x29EDB8ED8], (CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"region-info", *MEMORY[0x29EDB8ED8], 0)) != 0))
  {
    v5 = CFProperty;
    BytePtr = CFDataGetBytePtr(CFProperty);
    if (BytePtr && (v7 = CFStringCreateWithCString(v3, BytePtr, 0x8000100u)) != 0)
    {
      v8 = v7;
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v3, v7, @"/");
      if (ArrayBySeparatingStrings)
      {
        v10 = ArrayBySeparatingStrings;
        if (CFArrayGetCount(ArrayBySeparatingStrings) < 2)
        {
          v12 = 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
          v12 = CFEqual(ValueAtIndex, @"CH");
        }

        CFRelease(v10);
      }

      else
      {
        v12 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v12 = 0;
  }

  printf("isChinaRegion() = %d\n", v12);
  return v12;
}

BOOL WAPIEnabled()
{
  v0 = SCPreferencesCreate(*MEMORY[0x29EDB8ED8], @"com.apple.wapilib", @"com.apple.wifi.plist");
  if (v0)
  {
    v1 = v0;
    Value = SCPreferencesGetValue(v0, @"WAPIEnabled");
    valuePtr = 0;
    if (Value)
    {
      v3 = Value;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v3))
      {
        CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
        LODWORD(Value) = valuePtr;
      }

      else
      {
        v6 = CFBooleanGetTypeID();
        if (v6 == CFGetTypeID(v3))
        {
          LODWORD(Value) = CFEqual(v3, *MEMORY[0x29EDB8F00]);
        }

        else
        {
          v7 = CFStringGetTypeID();
          if (v7 != CFGetTypeID(v3))
          {
            LODWORD(Value) = 0;
            goto LABEL_12;
          }

          LODWORD(Value) = CFStringGetIntValue(v3);
        }

        valuePtr = Value;
      }
    }

LABEL_12:
    v5 = Value != 0;
    CFRelease(v1);
    goto LABEL_13;
  }

  v5 = 0;
LABEL_13:
  printf("WAPIEnabled() = %d\n", v5);
  return v5;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return asl_log(0, 0, 5, a4);
}

uint64_t _WCwapic_start(mach_port_t a1, __int128 *a2, vm_address_t a3, int a4, mach_msg_timeout_t a5)
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = a2[1];
  v20 = *a2;
  v16 = 1;
  v17 = a3;
  v18 = 16777473;
  v19[0] = a4;
  *&v19[1] = *MEMORY[0x29EDCA690];
  v21 = v8;
  v22 = a4;
  reply_port = mig_get_reply_port();
  *&v15.msgh_bits = 2147489043;
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = reply_port;
  *&v15.msgh_voucher_port = 0x36C158900000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v11 = mach_msg(&v15, 275, 0x58u, 0x2Cu, msgh_local_port, a5, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v15.msgh_local_port);
  }

  else
  {
    if (!v11)
    {
      if (v15.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (v15.msgh_id == 57415149)
      {
        v12 = 4294966996;
        if ((v15.msgh_bits & 0x80000000) == 0 && *&v15.msgh_size == 36)
        {
          v12 = HIDWORD(v17);
          if (!HIDWORD(v17))
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(&v15);
      goto LABEL_22;
    }

    mig_dealloc_reply_port(v15.msgh_local_port);
  }

  if (v12 == 268435460)
  {
    if (v17 != a3)
    {
      mig_deallocate(v17, v19[0]);
    }

    v12 = 268435460;
  }

LABEL_22:
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t _WCwapic_stop(mach_port_t a1, __int128 *a2, mach_msg_timeout_t timeout)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA690];
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 57415050;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&msg);
  }

  result = mach_msg(&msg, 17, 0x40u, 0, 0, timeout, 0);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _WCwapic_status(mach_port_t a1, __int128 *a2, _DWORD *a3, mach_msg_timeout_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = *MEMORY[0x29EDCA690];
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x36C158B00000000;
  if (MEMORY[0x2A1C7C4D8])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 275, 0x40u, 0x30u, msgh_local_port, a4, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (v10)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      goto LABEL_25;
    }

    if (msg.msgh_id == 71)
    {
      v11 = 4294966988;
    }

    else if (msg.msgh_id == 57415151)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v11 = v17;
            if (!v17)
            {
              *a3 = DWORD1(v17);
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = v17 == 0;
          }

          if (v12)
          {
            v11 = 4294966996;
          }

          else
          {
            v11 = v17;
          }

          goto LABEL_24;
        }
      }

      v11 = 4294966996;
    }

    else
    {
      v11 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    goto LABEL_25;
  }

  mig_put_reply_port(msg.msgh_local_port);
LABEL_25:
  v13 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t WAPIStart(__int128 *a1, uint64_t a2)
{
  v2 = 5;
  if (a1 && a2)
  {
    v4 = isChinaRegion();
    if (v4 || (v4 = WAPIEnabled(), v4))
    {
      special_port = 0;
      OUTLINED_FUNCTION_0(v4, v5, v6, "WAPIStart() = %s\n\n");
      if (WAPIStatus(a1) != -1)
      {
        WAPIStop(a1);
      }

      sp = 0;
      v2 = task_get_special_port(*MEMORY[0x29EDCA6B0], 4, &special_port);
      if (!v2)
      {
        v8 = bootstrap_look_up(special_port, "com.apple.wapi.client", &sp);
        v2 = v8;
        if (v8)
        {
          OUTLINED_FUNCTION_0(v8, v9, v10, "error: bootstrap_look_up (%d)\n");
        }

        if (sp)
        {
          if (_SCSerialize())
          {
            v11 = _WCwapic_start(sp, a1, 0, 0, 0x1B58u);
            v2 = v11;
            if (v11)
            {
              OUTLINED_FUNCTION_0(v11, v12, v13, "wapic MIG failed (%d, port = %d)\n");
            }
          }
        }
      }
    }

    else
    {
      v2 = 5;
    }
  }

  sStatus = v2;
  return v2;
}

uint64_t WAPIStatus(__int128 *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  sp = 0;
  if (sStatus != -308)
  {
    special_port = 0;
    if (!task_get_special_port(*MEMORY[0x29EDCA6B0], 4, &special_port))
    {
      v2 = bootstrap_look_up(special_port, "com.apple.wapi.client", &sp);
      v3 = v2;
      OUTLINED_FUNCTION_0(v2, v4, v5, "%s: bootstrap_look_up = %d\n\n");
      if (!v3)
      {
        v10 = 0;
        v6 = _WCwapic_status(sp, a1, &v10, 0x64u);
        if (v6 != -308)
        {
          return v10;
        }

        OUTLINED_FUNCTION_0(v6, v7, v8, "error: bootstrap_look_up WAPI inactive(%d)\n");
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t WAPIStop(__int128 *a1)
{
  if (a1)
  {
    special_port = 0;
    sp = 0;
    v2 = task_get_special_port(*MEMORY[0x29EDCA6B0], 4, &special_port);
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v5 = bootstrap_look_up(special_port, "com.apple.wapi.client", &sp);
      v3 = v5;
      if (v5)
      {
        OUTLINED_FUNCTION_0(v5, v6, v7, "error: bootstrap_look_up (%d)\n");
      }

      if (sp)
      {
        v8 = _WCwapic_stop(sp, a1, 0x64u);
        v3 = v8;
        if (v8)
        {
          OUTLINED_FUNCTION_0(v8, v9, v10, "wapic MIG failed (%d, port = %d)\n");
        }
      }
    }
  }

  else
  {
    v3 = 5;
  }

  sStatus = -308;
  return v3;
}