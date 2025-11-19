@interface NETRBClientStartService
@end

@implementation NETRBClientStartService

double ___NETRBClientStartService_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 40)))
  {
    v10 = *(a1 + 40);
LABEL_4:
    NETRBErrorLog();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return result;
  }

  if (*(*(a1 + 40) + 289))
  {
    goto LABEL_4;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  xpc_dictionary_set_uint64(v3, netrbXPCKey, 0x3E9uLL);
  xpc_dictionary_set_string(v4, netrbXPCClientID, (*(a1 + 40) + 32));
  xpc_dictionary_set_uint64(v4, netrbXPCOpMode, *(a1 + 72));
  xpc_dictionary_set_uint64(v4, netrbXPCBridgeType, *(a1 + 76));
  xpc_dictionary_set_value(v4, netrbXPCInterfaceParam, *(a1 + 48));
  v5 = *(a1 + 56);
  if (v5 && *v5)
  {
    if (!strncmp(*(a1 + 56), netrbClientAnyExternal, 0x10uLL))
    {
      v7 = netrbXPCAnyExternal;
      v6 = v4;
    }

    else
    {
      v6 = v4;
      v7 = v5;
    }

    xpc_dictionary_set_string(v6, netrbXPCExtName, v7);
  }

  v11 = *(a1 + 40);
  NETRBInfoLog();
  snprintf((*(a1 + 40) + 289), 0x100uLL, "%s-%p-%u", "com.apple.netrb", *(a1 + 40), __netrbStartId);
  ++__netrbStartId;
  v8 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = ___NETRBClientStartService_block_invoke_2;
  v12[3] = &__block_descriptor_tmp_88;
  v12[4] = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = NETRBXPCSetupAndSend(v8, v4, v12);
  xpc_release(v4);
  v9 = *(a1 + 40);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    CFRetain(v9);
  }

  else
  {
    result = 0.0;
    *(v9 + 513) = 0u;
    *(v9 + 529) = 0u;
    *(v9 + 481) = 0u;
    *(v9 + 497) = 0u;
    *(v9 + 449) = 0u;
    *(v9 + 465) = 0u;
    *(v9 + 417) = 0u;
    *(v9 + 433) = 0u;
    *(v9 + 385) = 0u;
    *(v9 + 401) = 0u;
    *(v9 + 353) = 0u;
    *(v9 + 369) = 0u;
    *(v9 + 321) = 0u;
    *(v9 + 337) = 0u;
    *(v9 + 289) = 0u;
    *(v9 + 305) = 0u;
  }

  return result;
}

@end