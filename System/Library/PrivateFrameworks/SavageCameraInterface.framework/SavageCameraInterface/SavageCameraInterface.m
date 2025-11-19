uint64_t connect(uint64_t a1, const char *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  existing = 0;
  if (!a1)
  {
    v8 = 3758096385;
    goto LABEL_40;
  }

  v4 = 0;
  v5 = *MEMORY[0x277CD2898];
  while (1)
  {
    v6 = IOServiceMatching(off_279B6B630[v4]);
    MatchingServices = IOServiceGetMatchingServices(v5, v6, &existing);
    if (existing)
    {
      break;
    }

    if (++v4 == 3)
    {
      v8 = 3758097086;
      goto LABEL_40;
    }
  }

  v8 = MatchingServices;
  v9 = IOServiceNameMatching(off_279B6B630[v4]);
  MatchingService = IOServiceGetMatchingService(v5, v9);
  v11 = MatchingService;
  if (MatchingService)
  {
    v12 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"RestoreMode", *MEMORY[0x277CBECE8], 3u);
    v13 = v12;
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
    }
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 16) = v4;
  if (v4 == 2)
  {
    if (valuePtr == 1 || os_variant_is_recovery())
    {
      v21 = "com.apple.restorecameraispd";
    }

    else if (os_variant_is_darwinos())
    {
      v21 = "com.apple.cameraispdarwind";
    }

    else
    {
      v21 = "com.apple.cameraispd";
    }

    *(a1 + 40) = v21;
    v15 = "ISPServicesRemoteIORegPropertyDataKey";
    v16 = "ISPServicesRemoteIORegPropertyNameKey";
    v17 = "ISPServicesRemoteFusingLengthKey";
    v18 = "ISPServicesRemoteFusingDataKey";
    v19 = "ISPServicesRemoteDataKey";
    v20 = "ISPServicesRemoteTypeKey";
    goto LABEL_21;
  }

  if (v4 == 1)
  {
    if (valuePtr == 1 || os_variant_is_recovery())
    {
      v14 = "com.apple.dietappleh16camerad";
    }

    else if (os_variant_is_darwinos())
    {
      v14 = "com.apple.appleh16darwincamerad";
    }

    else
    {
      v14 = "com.apple.appleh16camerad";
    }

    *(a1 + 40) = v14;
    v15 = "H16ISPServicesRemoteIORegPropertyDataKey";
    v16 = "H16ISPServicesRemoteIORegPropertyNameKey";
    v17 = "H16ISPServicesRemoteFusingLengthKey";
    v18 = "H16ISPServicesRemoteFusingDataKey";
    v19 = "H16ISPServicesRemoteDataKey";
    v20 = "H16ISPServicesRemoteTypeKey";
LABEL_21:
    v22 = 72;
    *(a1 + 24) = v20;
    v23 = 64;
    v24 = 56;
    v25 = 48;
    v26 = 32;
    goto LABEL_27;
  }

  v19 = "com.apple.dietappleh13camerad";
  if (valuePtr == 1)
  {
    v15 = "H13ISPServicesRemoteFusingLengthKey";
  }

  else
  {
    is_recovery = os_variant_is_recovery();
    v15 = "H13ISPServicesRemoteFusingLengthKey";
    if (!is_recovery)
    {
      v19 = "com.apple.appleh13camerad";
    }
  }

  v16 = "H13ISPServicesRemoteFusingDataKey";
  v17 = "H13ISPServicesRemoteDataKey";
  v22 = 56;
  v23 = 48;
  v24 = 32;
  v25 = 24;
  v26 = 40;
  v18 = "H13ISPServicesRemoteTypeKey";
LABEL_27:
  *(a1 + v26) = v19;
  *(a1 + v25) = v18;
  *(a1 + v24) = v17;
  *(a1 + v23) = v16;
  *(a1 + v22) = v15;
  v28 = dispatch_queue_create(a2, 0);
  *(a1 + 8) = v28;
  if (v28)
  {
    mach_service = xpc_connection_create_mach_service(*(a1 + 40), v28, 0);
    *a1 = mach_service;
    if (mach_service)
    {
      goto LABEL_34;
    }

    v8 = 3758097086;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 136315138;
    v37 = "connect";
    v30 = MEMORY[0x277D86220];
    v31 = "%s: Could not establish a connection\n";
    goto LABEL_33;
  }

  v8 = 3758097086;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "connect";
    v30 = MEMORY[0x277D86220];
    v31 = "%s: Could not create a serial dispatch queue, exiting\n";
LABEL_33:
    _os_log_impl(&dword_2647F2000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
  }

LABEL_34:
  if (existing)
  {
    IOObjectRelease(existing);
    existing = 0;
  }

  if (v11)
  {
    IOObjectRelease(v11);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_40:
  v32 = *MEMORY[0x277D85DE8];
  return v8;
}

void disconnect(xpc_connection_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    xpc_connection_set_event_handler(v2, &__block_literal_global);
    xpc_connection_cancel(*a1);
    xpc_release(*a1);
    *a1 = 0;
  }
}

xpc_object_t sendSynchronousXpcMsgWithReply()
{
  v0 = MEMORY[0x28223BE20]();
  *&v29[3329] = *MEMORY[0x277D85DE8];
  if (*v0)
  {
    v4 = v3;
    v5 = v2;
    v6 = v1;
    v7 = v0;
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = v8;
      if (v5 != 1)
      {
        if (v5 != 2)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            bytes = 136315138;
            *v29 = "sendSynchronousXpcMsgWithReply";
            _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Unexpected property type, returning\n", &bytes, 0xCu);
          }

          v12 = 0;
          goto LABEL_41;
        }

        bzero(&bytes, 0xE60uLL);
        bytes = v6;
        xpc_dictionary_set_uint64(v9, v7[3], 2uLL);
        xpc_dictionary_set_data(v9, v7[4], &bytes, 0xE60uLL);
LABEL_40:
        v12 = xpc_connection_send_message_with_reply_sync(*v7, v9);
LABEL_41:
        xpc_release(v9);
        goto LABEL_42;
      }

      v13 = 13320;
      bzero(&bytes, 0x3408uLL);
      bytes = v6;
      v14 = *(v7 + 4);
      v15 = v14 == 0;
      v16 = v14 <= 0;
      v17 = 13176;
      if (!v15)
      {
        v17 = 0;
      }

      if (v16)
      {
        v13 = v17;
      }

      if (v6 > 207)
      {
        if (v6 == 208)
        {
          xpc_dictionary_set_uint64(v9, v7[3], 1uLL);
          xpc_dictionary_set_data(v9, v7[4], &bytes, v13);
          goto LABEL_40;
        }

        if (v6 == 211)
        {
          if (v4)
          {
            v23 = *(v4 + 24);
            v22 = (v4 + 24);
            *&v29[1] = *(v22 - 1);
            *&v29[5] = v23;
            xpc_dictionary_set_uint64(v9, v7[3], 1uLL);
            xpc_dictionary_set_data(v9, v7[4], &bytes, v13);
            xpc_dictionary_set_string(v9, v7[8], *&v29[1]);
            xpc_dictionary_set_data(v9, v7[9], *&v29[3], *v22);
            goto LABEL_40;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          v26 = 136315138;
          v27 = "sendSynchronousXpcMsgWithReply";
          v18 = MEMORY[0x277D86220];
          v19 = "%s: Missing property information to set, returning\n";
          goto LABEL_39;
        }

        if (v6 != 212)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v6 == 105)
        {
          v29[1] = *(v4 + 8);
          xpc_dictionary_set_uint64(v9, v7[3], 1uLL);
          xpc_dictionary_set_data(v9, v7[4], &bytes, v13);
          goto LABEL_40;
        }

        if (v6 != 204 && v6 != 207)
        {
LABEL_21:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          v26 = 136315138;
          v27 = "sendSynchronousXpcMsgWithReply";
          v18 = MEMORY[0x277D86220];
          v19 = "%s: Unhandled property\n";
LABEL_39:
          _os_log_impl(&dword_2647F2000, v18, OS_LOG_TYPE_DEFAULT, v19, &v26, 0xCu);
          goto LABEL_40;
        }
      }

      if (v4)
      {
        v21 = *(v4 + 16);
        v20 = (v4 + 16);
        *&v29[1] = *(v20 - 1);
        *&v29[3] = v21;
        xpc_dictionary_set_uint64(v9, v7[3], 1uLL);
        xpc_dictionary_set_data(v9, v7[4], &bytes, v13);
        xpc_dictionary_set_data(v9, v7[6], *&v29[1], *v20);
        xpc_dictionary_set_uint64(v9, v7[7], *&v29[3]);
        goto LABEL_40;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      v26 = 136315138;
      v27 = "sendSynchronousXpcMsgWithReply";
      v18 = MEMORY[0x277D86220];
      v19 = "%s: Missing property information to set, returning\n";
      goto LABEL_39;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      bytes = 136315138;
      *v29 = "sendSynchronousXpcMsgWithReply";
      v10 = MEMORY[0x277D86220];
      v11 = "%s: Could not create dictionary, exiting\n";
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    bytes = 136315138;
    *v29 = "sendSynchronousXpcMsgWithReply";
    v10 = MEMORY[0x277D86220];
    v11 = "%s: Connection is invalid, exiting \n";
LABEL_10:
    _os_log_impl(&dword_2647F2000, v10, OS_LOG_TYPE_DEFAULT, v11, &bytes, 0xCu);
  }

  v12 = 0;
LABEL_42:
  v24 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t SavageCamInterfaceOpen(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    operator new();
  }

  v1 = *MEMORY[0x277D85DE8];
  return 3758097090;
}

void __SavageCamInterfaceOpen_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x266741540](a2) == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F8])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_2;
      }

      v7 = 136315138;
      v8 = "SavageCamInterfaceOpen_block_invoke";
      v5 = MEMORY[0x277D86220];
      v6 = "%s: Received error XPC_ERROR_CONNECTION_INVALID\n";
    }

    else if (a2 == MEMORY[0x277D863F0])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_2;
      }

      v7 = 136315138;
      v8 = "SavageCamInterfaceOpen_block_invoke";
      v5 = MEMORY[0x277D86220];
      v6 = "%s: Received error XPC_ERROR_CONNECTION_INTERRUPTED\n";
    }

    else
    {
      if (a2 != MEMORY[0x277D86420] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_2;
      }

      v7 = 136315138;
      v8 = "SavageCamInterfaceOpen_block_invoke";
      v5 = MEMORY[0x277D86220];
      v6 = "%s: Received error XPC_ERROR_TERMINATION_IMMINENT\n";
    }

    _os_log_impl(&dword_2647F2000, v5, OS_LOG_TYPE_DEFAULT, v6, &v7, 0xCu);
  }

LABEL_2:
  disconnect(*(a1 + 32));
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t SavageCamInterfaceClose(const void *a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  block[7] = v1;
  block[8] = v2;
  result = getPtrForRef(a1);
  if (result)
  {
    v4 = result;
    v5 = sendSynchronousXpcMsgWithReply();
    v6 = *(v4 + 8);
    if (v6)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __SavageCamInterfaceClose_block_invoke;
      block[3] = &__block_descriptor_tmp_3;
      block[4] = v4;
      dispatch_sync(v6, block);
      dispatch_release(*(v4 + 8));
      *(v4 + 8) = 0;
    }

    MEMORY[0x2667413F0](v4, 0x1070C40BC5C29B4);
    if (v5)
    {
      xpc_release(v5);
    }

    return 0;
  }

  return result;
}

uint64_t SavageCamInterfaceGetSensorInfo(const void *a1, int a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = -536870206;
  if (!a1 || (v5 = a2, a2 > 2) || !a3)
  {
LABEL_4:
    if (*a3 == -1)
    {
      v6 = 3758097086;
    }

    else
    {
      v6 = v4;
    }

    goto LABEL_7;
  }

  PtrForRef = getPtrForRef(a1);
  v10 = sendSynchronousXpcMsgWithReply();
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "SavageCamInterfaceGetSensorInfo";
      _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did not receive a reply from the daemon\n", buf, 0xCu);
    }

    v4 = -536870209;
    goto LABEL_4;
  }

  v11 = v10;
  if (MEMORY[0x266741540]() == MEMORY[0x277D86468])
  {
    length = 0;
    data = xpc_dictionary_get_data(v11, *(PtrForRef + 32), &length);
    v13 = length;
    if (length == 3680)
    {
      v14 = data[9];
      v15 = data[10];
      v16 = data[11];
      *(a3 + 4) = data[8];
      if (v5 == 2)
      {
        v5 = 0;
        *a3 = *(PtrForRef + 80);
        *(a3 + 5) = v16;
      }

      else if (v5 == 1)
      {
        v5 = 0;
        *a3 = *(PtrForRef + 84);
        *(a3 + 5) = v15;
      }

      else if (v5)
      {
        v5 = -536870212;
      }

      else
      {
        *a3 = *(PtrForRef + 80);
        *(a3 + 5) = v14;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v19 = "SavageCamInterfaceGetSensorInfo";
        v20 = 2048;
        v21 = v13;
        v22 = 2048;
        v23 = 3680;
        _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received reply with unexpected length %lu. Expected %lu\n", buf, 0x20u);
      }

      v5 = -536870209;
    }
  }

  else
  {
    v5 = -536870199;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "SavageCamInterfaceGetSensorInfo";
      _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received an unexpected event\n", buf, 0xCu);
    }
  }

  if (*a3 == -1)
  {
    v6 = 3758097086;
  }

  else
  {
    v6 = v5;
  }

  xpc_release(v11);
LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t SavageCamInterfaceSensorPrePersonalize(const void *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = 3758097087;
  v3 = 3758097090;
  if (a1 && a2 <= 2)
  {
    PtrForRef = getPtrForRef(a1);
    if (a2 >= 3)
    {
      v3 = 3758097090;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "SavageCamInterfaceSensorPrePersonalize";
        _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did we miss a sensor in the switch..case ??\n", buf, 0xCu);
      }
    }

    else
    {
      v8 = PtrForRef;
      v9 = dword_2647F4908[a2];
      v10 = sendSynchronousXpcMsgWithReply();
      if (v10)
      {
        v11 = v10;
        if (MEMORY[0x266741540]() == MEMORY[0x277D86468])
        {
          length = 0;
          data = xpc_dictionary_get_data(v11, *(v8 + 32), &length);
          v13 = length;
          if (length == 3680)
          {
            v2 = data[2];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v16 = "SavageCamInterfaceSensorPrePersonalize";
            v17 = 2048;
            v18 = v13;
            v19 = 2048;
            v20 = 3680;
            _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received reply with unexpected length %lu. Expected %lu\n", buf, 0x20u);
          }

          v3 = v2;
        }

        else
        {
          v3 = 3758097097;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v16 = "SavageCamInterfaceSensorPrePersonalize";
            _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received an unexpected event\n", buf, 0xCu);
          }
        }

        xpc_release(v11);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v16 = "SavageCamInterfaceSensorPrePersonalize";
          _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did not receive a reply from the daemon\n", buf, 0xCu);
        }

        v3 = 3758097087;
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t SavageCamInterfaceSensorPreFusing(const void *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = 3758097087;
  v3 = 3758097090;
  if (a1 && a2 <= 2)
  {
    PtrForRef = getPtrForRef(a1);
    if (a2 >= 3)
    {
      v3 = 3758097090;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "SavageCamInterfaceSensorPreFusing";
        _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did we miss a sensor in the switch..case ??\n", buf, 0xCu);
      }
    }

    else
    {
      v8 = PtrForRef;
      v9 = dword_2647F4914[a2];
      v10 = sendSynchronousXpcMsgWithReply();
      if (v10)
      {
        v11 = v10;
        if (MEMORY[0x266741540]() == MEMORY[0x277D86468])
        {
          length = 0;
          data = xpc_dictionary_get_data(v11, *(v8 + 32), &length);
          v13 = length;
          if (length == 3680)
          {
            v2 = data[2];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v16 = "SavageCamInterfaceSensorPreFusing";
            v17 = 2048;
            v18 = v13;
            v19 = 2048;
            v20 = 3680;
            _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received reply with unexpected length %lu. Expected %lu\n", buf, 0x20u);
          }

          v3 = v2;
        }

        else
        {
          v3 = 3758097097;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v16 = "SavageCamInterfaceSensorPreFusing";
            _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Received an unexpected event\n", buf, 0xCu);
          }
        }

        xpc_release(v11);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v16 = "SavageCamInterfaceSensorPreFusing";
          _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did not receive a reply from the daemon\n", buf, 0xCu);
        }

        v3 = 3758097087;
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t SavageCamInterfaceSensorFusing()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v18 = *MEMORY[0x277D85DE8];
  v8 = 3758097090;
  bzero(v15, 0x3408uLL);
  if (v7 && v6 < 3)
  {
    getPtrForRef(v7);
    if (v6 <= 2)
    {
      v8 = 0;
      v11 = dword_2647F4920[v6];
    }

    v16 = v4;
    v17 = v2;
    v12 = sendSynchronousXpcMsgWithReply();
    if (v12)
    {
      xpc_release(v12);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "SavageCamInterfaceSensorFusing";
    _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Bad argument, returning\n", &v13, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t SavageCamInterfaceSensorAuth()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v17 = *MEMORY[0x277D85DE8];
  v8 = 3758097090;
  bzero(v14, 0x3408uLL);
  if (v7 && v6 < 3)
  {
    getPtrForRef(v7);
    if ((v6 & 0xFFFFFFFD) != 0)
    {
      v8 = 3758097090;
    }

    else
    {
      v8 = 0;
    }

    v15 = v4;
    v16 = v2;
    v11 = sendSynchronousXpcMsgWithReply();
    if (v11)
    {
      xpc_release(v11);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "SavageCamInterfaceSensorAuth";
    _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Bad argument, returning\n", &v12, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t SavageCamInterfaceForgetISPFirmware(const void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = 3758097087;
  if (!a1)
  {
    v1 = 3758097090;
    goto LABEL_3;
  }

  PtrForRef = getPtrForRef(a1);
  v5 = sendSynchronousXpcMsgWithReply();
  if (v5)
  {
    v6 = v5;
    if (MEMORY[0x266741540]() == MEMORY[0x277D86468])
    {
      length = 0;
      data = xpc_dictionary_get_data(v6, *(PtrForRef + 32), &length);
      v11 = length;
      if (length == 3680)
      {
        v1 = data[2];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v14 = "SavageCamInterfaceForgetISPFirmware";
        v15 = 2048;
        v16 = v11;
        v17 = 2048;
        v18 = 3680;
        v7 = MEMORY[0x277D86220];
        v8 = "%s: Received reply with unexpected length %lu. Expected %lu\n";
        v9 = 32;
        goto LABEL_14;
      }
    }

    else
    {
      v1 = 3758097097;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v14 = "SavageCamInterfaceForgetISPFirmware";
        v7 = MEMORY[0x277D86220];
        v8 = "%s: Received an unexpected event\n";
        v9 = 12;
LABEL_14:
        _os_log_impl(&dword_2647F2000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, v9);
      }
    }

    xpc_release(v6);
    goto LABEL_3;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "SavageCamInterfaceForgetISPFirmware";
    _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did not receive a reply from the daemon\n", buf, 0xCu);
  }

LABEL_3:
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t SavageCamInterfaceColdBootPowerCycle(const void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = 3758097087;
  if (!a1)
  {
    v1 = 3758097090;
    goto LABEL_3;
  }

  PtrForRef = getPtrForRef(a1);
  v5 = sendSynchronousXpcMsgWithReply();
  if (v5)
  {
    v6 = v5;
    if (MEMORY[0x266741540]() == MEMORY[0x277D86468])
    {
      length = 0;
      data = xpc_dictionary_get_data(v6, *(PtrForRef + 32), &length);
      v11 = length;
      if (length == 3680)
      {
        v1 = data[2];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v14 = "SavageCamInterfaceColdBootPowerCycle";
        v15 = 2048;
        v16 = v11;
        v17 = 2048;
        v18 = 3680;
        v7 = MEMORY[0x277D86220];
        v8 = "%s: Received reply with unexpected length %lu. Expected %lu\n";
        v9 = 32;
        goto LABEL_14;
      }
    }

    else
    {
      v1 = 3758097097;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v14 = "SavageCamInterfaceColdBootPowerCycle";
        v7 = MEMORY[0x277D86220];
        v8 = "%s: Received an unexpected event\n";
        v9 = 12;
LABEL_14:
        _os_log_impl(&dword_2647F2000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, v9);
      }
    }

    xpc_release(v6);
    goto LABEL_3;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "SavageCamInterfaceColdBootPowerCycle";
    _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Did not receive a reply from the daemon\n", buf, 0xCu);
  }

LABEL_3:
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t SavageCamInterfacePublishToRegistry()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v18 = *MEMORY[0x277D85DE8];
  bzero(v14, 0x3408uLL);
  if (v5 && v4)
  {
    if (!getPtrForRef(v5))
    {
      v6 = 3758097101;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v12 = 136315138;
      v13 = "SavageCamInterfacePublishToRegistry";
      v7 = MEMORY[0x277D86220];
      v8 = "%s: Interface to SavageCam not open, returning\n";
      goto LABEL_5;
    }

    CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
    BytePtr = CFDataGetBytePtr(v2);
    Length = CFDataGetLength(v2);
    v11 = sendSynchronousXpcMsgWithReply();
    if (v11)
    {
      xpc_release(v11);
    }

    v6 = 0;
  }

  else
  {
    v6 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "SavageCamInterfacePublishToRegistry";
      v7 = MEMORY[0x277D86220];
      v8 = "%s: Bad argument, returning\n";
LABEL_5:
      _os_log_impl(&dword_2647F2000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
    }
  }

LABEL_6:
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t getPtrForRef(const void *a1)
{
  valuePtr = 0;
  v2 = CFGetTypeID(a1);
  if (v2 == CFNumberGetTypeID() && !CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2647F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "error: getPtrForRef CFNumberGetValue returned false\n", v4, 2u);
  }

  return valuePtr;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}