uint64_t VTParavirtualizationGuestSupportSetUpWithHandlers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __VTParavirtualizationGuestSupportSetUpWithHandlers_block_invoke;
  block[3] = &unk_279E20060;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  if (VTParavirtualizationGuestSupportSetUpWithHandlers_sOnce != -1)
  {
    dispatch_once(&VTParavirtualizationGuestSupportSetUpWithHandlers_sOnce, block);
  }

  return VTParavirtualizationGuestSupportSetUpWithHandlers_sStatus;
}

uint64_t __VTParavirtualizationGuestSupportSetUpWithHandlers_block_invoke(const void **a1)
{
  qword_280B134C8 = _Block_copy(a1[4]);
  qword_280B134D0 = _Block_copy(a1[5]);
  qword_280B134D8 = _Block_copy(a1[6]);
  v2 = IOServiceMatching("AppleVideoToolboxParavirtualizationDriver");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v2);
  if (!MatchingService)
  {
    goto LABEL_9;
  }

  v4 = MatchingService;
  IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &_MergedGlobals);
  IOObjectRelease(v4);
  if (!_MergedGlobals || (dword_280B134BC = IODataQueueAllocateNotificationPort()) == 0 || (v5 = dispatch_queue_create("com.apple.videotoolbox.paravirtualization.host-to-guest", 0), (sVTParavirtualizationHostToGuestNotificationDispatchQueue = v5) == 0) || (v6 = dispatch_source_create(MEMORY[0x277D85D08], dword_280B134BC, 0, v5), (sVTParavirtualizationHostToGuestNotificationDispatchSource = v6) == 0))
  {
LABEL_9:
    result = 4294948206;
LABEL_10:
    VTParavirtualizationGuestSupportSetUpWithHandlers_sStatus = result;
    return result;
  }

  dispatch_source_set_event_handler(v6, &__block_literal_global);
  dispatch_resume(sVTParavirtualizationHostToGuestNotificationDispatchSource);
  result = MEMORY[0x2743B7110](_MergedGlobals, 0, dword_280B134BC, 0);
  if (result)
  {
    goto LABEL_10;
  }

  result = vtParavirtualizationGuestSupportUpdateBuffersForSize(0x4000uLL);
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

_DWORD *OUTLINED_FUNCTION_1(_DWORD *result)
{
  v2 = *(v1 + 1212);
  result[2] = 0;
  result[3] = v2;
  result[5] = 0;
  return result;
}

uint64_t __VTParavirtualizationGuestSupportSetUpWithHandlers_block_invoke_2()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = MEMORY[0x2743B70C0](*MEMORY[0x277CBECE8], 92, 0x1000040504FFAC1, 0);
  *v1 = 0x5C00000000;
  v2 = OUTLINED_FUNCTION_1(v1);
  for (i = 92; mach_msg(v2, v3, v4, i, v5, 0, 0) == 268451844; i = v7)
  {
    v7 = (v1[1] + 71) & 0xFFFFFFFC;
    v1 = MEMORY[0x2743B70E0](v0, v1, v7, 0x1000040504FFAC1, 0);
    *v1 = 0;
    v1[1] = v7;
    v2 = OUTLINED_FUNCTION_1(v1);
  }

  CFAllocatorDeallocate(v0, v1);
  do
  {
    data = 0;
    v12 = 0;
    v8 = !(*(qword_280B134C8 + 16))(qword_280B134C8, 0x4000, &v12, &data) && (dataSize = 0x4000, !IODataQueueDequeue(qword_280B134F0, data, &dataSize)) && (*(qword_280B134D0 + 16))(qword_280B134D0, v12, dataSize) == 0;
    if (v12)
    {
      (*(qword_280B134D8 + 16))();
    }
  }

  while (v8);
  return IOConnectCallScalarMethod(_MergedGlobals, 4u, 0, 0, 0, 0);
}

uint64_t vtParavirtualizationGuestSupportUpdateBuffersForSize(uint64_t a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  output[0] = 0;
  output[1] = 0;
  v5 = 0;
  outputCnt = 3;
  result = IOConnectCallScalarMethod(_MergedGlobals, 0, input, 1u, output, &outputCnt);
  if (!result)
  {
    if (outputCnt == 3)
    {
      result = 0;
      xmmword_280B134E0 = *output;
      qword_280B134F0 = v5;
    }

    else
    {
      result = 4294948206;
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VTParavirtualizationGuestSupportRegisterGuestUUID(const void *a1)
{
  if (_MergedGlobals)
  {
    return OUTLINED_FUNCTION_0(_MergedGlobals, 1u, a1);
  }

  else
  {
    return 4294948206;
  }
}

uint64_t VTParavirtualizationGuestSupportDeregisterGuestUUID(const void *a1)
{
  if (_MergedGlobals)
  {
    return OUTLINED_FUNCTION_0(_MergedGlobals, 2u, a1);
  }

  else
  {
    return 4294948206;
  }
}

uint64_t VTParavirtualizationGuestSupportSendRawMessageToHost(uint64_t a1, uint64_t a2, IOSurfaceRef *a3, unint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  *input = 0u;
  output = 0;
  outputCnt = 1;
  os_unfair_lock_lock(&unk_280B134C0);
  if (_MergedGlobals)
  {
    v8 = 4294954394;
    if (a1 && a2)
    {
      v9 = 0;
      v10 = (a1 + 8);
      v11 = a2;
      do
      {
        if (!*(v10 - 1))
        {
          v8 = 4294954394;
          goto LABEL_20;
        }

        v12 = *v10;
        v10 += 2;
        v9 += v12;
        --v11;
      }

      while (v11);
      v8 = 4294954394;
      if (a4 <= 5 && v9 >= 0x30)
      {
        if (v9 > xmmword_280B134E0)
        {
          updated = vtParavirtualizationGuestSupportUpdateBuffersForSize((v9 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]);
          if (updated)
          {
            goto LABEL_22;
          }
        }

        v13 = *(&xmmword_280B134E0 + 1);
        if (!*(&xmmword_280B134E0 + 1))
        {
          goto LABEL_24;
        }

        v14 = (a1 + 8);
        do
        {
          v15 = *v14;
          memcpy(v13, *(v14 - 1), *v14);
          v13 += v15;
          v14 += 2;
          --a2;
        }

        while (a2);
        input[0] = v9;
        if (a3 && a4)
        {
          v16 = &input[1];
          do
          {
            if (!*a3)
            {
              break;
            }

            *v16++ = IOSurfaceGetID(*a3++);
            --a4;
          }

          while (a4);
        }

        updated = IOConnectCallScalarMethod(_MergedGlobals, 3u, input, 6u, &output, &outputCnt);
        if (updated)
        {
LABEL_22:
          v8 = updated;
        }

        else
        {
          v8 = output;
        }
      }
    }
  }

  else
  {
LABEL_24:
    v8 = 4294948206;
  }

LABEL_20:
  os_unfair_lock_unlock(&unk_280B134C0);
  v18 = *MEMORY[0x277D85DE8];
  return v8;
}