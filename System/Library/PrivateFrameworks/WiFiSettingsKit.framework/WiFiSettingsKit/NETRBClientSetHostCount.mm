@interface NETRBClientSetHostCount
@end

@implementation NETRBClientSetHostCount

void ___NETRBClientSetHostCount_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 48)))
  {
    v4 = *(a1 + 48);
LABEL_3:
    NETRBErrorLog();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, netrbXPCKey[0], 0x3F3uLL);
  xpc_dictionary_set_string(v3, netrbXPCClientID[0], (*(a1 + 48) + 32));
  xpc_dictionary_set_uint64(v3, netrbXPCHostType[0], *(a1 + 56));
  xpc_dictionary_set_uint64(v3, netrbXPCHosts[0], *(a1 + 60));
  v5 = *(a1 + 48);
  NETRBInfoLog();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___NETRBClientSetHostCount_block_invoke_2;
  v6[3] = &unk_279ECBB68;
  v7 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = NETRBXPCSetupAndSend(0, v3, v6);
  xpc_release(v3);
}

uint64_t ___NETRBClientSetHostCount_block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *(a1 + 40);
  result = NETRBInfoLog();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, netrbXPCResponse[0]);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

@end