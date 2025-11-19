@interface NETRBClientGetIPPortForwardingRules
@end

@implementation NETRBClientGetIPPortForwardingRules

void ___NETRBClientGetIPPortForwardingRules_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 48)))
  {
    v7 = *(a1 + 48);
    NETRBErrorLog();
  }

  else
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, netrbXPCClientID[0], (*(a1 + 48) + 32));
    xpc_dictionary_set_uint64(v2, netrbXPCKey[0], 0x3F9uLL);
    v3 = *(a1 + 64);
    if (v3 == 30 || v3 == 2)
    {
      v5 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v5, netrbXPCPortForwardingRuleAddressFamily[0], v3);
    }

    else
    {
      v5 = 0;
    }

    xpc_dictionary_set_value(v2, netrbXPCPortForwardingRule[0], v5);
    xpc_release(v5);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = ___NETRBClientGetIPPortForwardingRules_block_invoke_2;
    v8[3] = &unk_279ECBD18;
    v6 = *(a1 + 48);
    v8[4] = *(a1 + 32);
    v8[5] = v6;
    NETRBInfoLog();
    *(*(*(a1 + 40) + 8) + 24) = NETRBXPCSetupAndSend(*(a1 + 56), v2, v8);
    xpc_release(v2);
  }
}

void ___NETRBClientGetIPPortForwardingRules_block_invoke_2(uint64_t a1, void *a2)
{
  CFRelease(*(a1 + 40));
  if (a2)
  {
    value = xpc_dictionary_get_value(a2, netrbXPCPortForwardingRules[0]);
    a2 = value;
    if (value)
    {
      xpc_retain(value);
    }
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___NETRBClientGetIPPortForwardingRules_block_invoke_3;
  v6[3] = &unk_279ECBCF0;
  v6[4] = *(a1 + 32);
  v6[5] = a2;
  dispatch_async(global_queue, v6);
}

void ___NETRBClientGetIPPortForwardingRules_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {

    xpc_release(v3);
  }
}

@end