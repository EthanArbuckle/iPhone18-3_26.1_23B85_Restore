@interface NETRBClientRemoveIPPortForwardingRule
@end

@implementation NETRBClientRemoveIPPortForwardingRule

void ___NETRBClientRemoveIPPortForwardingRule_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 48)))
  {
    v10 = *(a1 + 48);
    NETRBErrorLog();
  }

  else
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, netrbXPCClientID[0], (*(a1 + 48) + 32));
    xpc_dictionary_set_uint64(v2, netrbXPCKey[0], 0x3F8uLL);
    v3 = *(a1 + 67);
    if (v3 == 30 || v3 == 2)
    {
      v5 = *(a1 + 66);
      v6 = *(a1 + 64);
      v7 = xpc_dictionary_create(0, 0, 0);
      v8 = v7;
      if (v5)
      {
        xpc_dictionary_set_uint64(v7, netrbXPCPortForwardingRuleProtocol[0], v5);
      }

      if (v6)
      {
        xpc_dictionary_set_uint64(v8, netrbXPCPortForwardingRuleExternalPort[0], v6);
      }

      xpc_dictionary_set_uint64(v8, netrbXPCPortForwardingRuleAddressFamily[0], v3);
    }

    else
    {
      v8 = 0;
    }

    xpc_dictionary_set_value(v2, netrbXPCPortForwardingRule[0], v8);
    xpc_release(v8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = ___NETRBClientRemoveIPPortForwardingRule_block_invoke_2;
    v11[3] = &unk_279ECBCA0;
    v9 = *(a1 + 48);
    v11[4] = *(a1 + 32);
    v11[5] = v9;
    NETRBInfoLog();
    *(*(*(a1 + 40) + 8) + 24) = NETRBXPCSetupAndSend(*(a1 + 56), v2, v11);
    xpc_release(v2);
  }
}

void ___NETRBClientRemoveIPPortForwardingRule_block_invoke_2(uint64_t a1, void *a2)
{
  CFRelease(*(a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    if (a2)
    {
      LOBYTE(a2) = xpc_dictionary_get_uint64(a2, netrbXPCResponse[0]) == 2001;
      v4 = *(a1 + 32);
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___NETRBClientRemoveIPPortForwardingRule_block_invoke_3;
    v6[3] = &unk_279ECBC78;
    v6[4] = v4;
    v7 = a2;
    dispatch_async(global_queue, v6);
  }
}

@end