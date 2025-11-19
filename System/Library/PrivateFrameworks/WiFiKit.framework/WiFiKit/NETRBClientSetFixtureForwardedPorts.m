@interface NETRBClientSetFixtureForwardedPorts
@end

@implementation NETRBClientSetFixtureForwardedPorts

void ___NETRBClientSetFixtureForwardedPorts_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 48)))
  {
    v8 = *(a1 + 48);
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
  xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x3EEuLL);
  xpc_dictionary_set_string(v3, netrbXPCClientID, (*(a1 + 48) + 32));
  v4 = netrbXPCForwardedLowPort;
  uint64 = xpc_dictionary_get_uint64(*(a1 + 56), netrbClientForwardedLowPort);
  xpc_dictionary_set_uint64(v3, v4, uint64);
  v6 = netrbXPCForwardedHighPort;
  v7 = xpc_dictionary_get_uint64(*(a1 + 56), netrbClientForwardedHighPort);
  xpc_dictionary_set_uint64(v3, v6, v7);
  v9 = *(a1 + 48);
  NETRBInfoLog();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = ___NETRBClientSetFixtureForwardedPorts_block_invoke_2;
  v10[3] = &unk_279EBEA70;
  v11 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = NETRBXPCSetupAndSend(0, v3, v10);
  xpc_release(v3);
}

uint64_t ___NETRBClientSetFixtureForwardedPorts_block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *(a1 + 40);
  result = NETRBInfoLog();
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, netrbXPCResponse);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

@end