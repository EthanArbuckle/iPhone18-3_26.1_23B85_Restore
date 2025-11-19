@interface NETRBNetworkStartVirtualMachineInterface
@end

@implementation NETRBNetworkStartVirtualMachineInterface

void ___NETRBNetworkStartVirtualMachineInterface_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (__NETRBClientValidateClient(_NETRBNetworkClient))
  {
    NETRBErrorLog();
    *(*(*(a1 + 32) + 8) + 24) = 6002;
  }

  else
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v3, netrbXPCKey, 0x3F6uLL);
    xpc_dictionary_set_string(v3, netrbXPCClientID, (_NETRBNetworkClient + 32));
    xpc_dictionary_set_BOOL(v3, netrbXPCAllocateMACAddress, *(a1 + 80));
    xpc_dictionary_set_value(v3, netrbXPCNetworkObject, *(a1 + 56));
    if (*(a1 + 81) == 1)
    {
      xpc_dictionary_set_BOOL(v3, netrbXPCEnableTSO, 1);
    }

    if (*(a1 + 82) == 1)
    {
      xpc_dictionary_set_BOOL(v3, netrbXPCEnableVirtIOHeader, 1);
    }

    if (*(a1 + 83) == 1)
    {
      xpc_dictionary_set_BOOL(v3, netrbXPCEnableMACNAT, 1);
    }

    if (*(a1 + 84) == 1)
    {
      xpc_dictionary_set_BOOL(v3, netrbXPCEnableIsolation, 1);
    }

    v4 = v2 + 16;
    if (*(a1 + 85) == 1)
    {
      xpc_dictionary_set_BOOL(v3, netrbXPCEnableChecksumOffload, 1);
    }

    if (xpc_dictionary_get_value(*(a1 + 64), netrbClientRelayAuditToken))
    {
      v5 = netrbXPCRelayAuditToken;
      data = xpc_dictionary_get_data(*(a1 + 64), netrbClientRelayAuditToken, 0);
      xpc_dictionary_set_data(v3, v5, data, 0x20uLL);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = ___NETRBNetworkStartVirtualMachineInterface_block_invoke_2;
    v8[3] = &unk_279EBEE98;
    v9 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v7 = *(a1 + 72);
    v10 = v4;
    v11 = v7;
    v12 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = NETRBXPCSetupAndSend(0, v3, v8);
    if (v3)
    {
      xpc_release(v3);
    }
  }
}

uint64_t ___NETRBNetworkStartVirtualMachineInterface_block_invoke_2(void *a1, xpc_object_t xdict)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!xdict)
  {
    result = NETRBErrorLog();
    *(*(a1[4] + 8) + 24) = 0;
    goto LABEL_16;
  }

  if (xpc_dictionary_get_uint64(xdict, netrbXPCResponse) != 2001)
  {
    *(*(a1[5] + 8) + 24) = 1;
    goto LABEL_8;
  }

  uuid = xpc_dictionary_get_uuid(xdict, netrbXPCNetworkAuthorizationToken);
  if (!uuid)
  {
LABEL_8:
    result = NETRBErrorLog();
    goto LABEL_16;
  }

  *src = *uuid;
  is_null = uuid_is_null((a1[6] + 4));
  v6 = a1[6];
  if (is_null)
  {
    uuid_copy((v6 + 4), src);
  }

  else if (uuid_compare(src, (v6 + 4)))
  {
    NETRBErrorLog();
    *(*(a1[4] + 8) + 24) = 0;
  }

  string = xpc_dictionary_get_string(xdict, netrbXPCMACAddress);
  if (string)
  {
    v9 = a1[7];
    v16 = 0;
    v15 = 0;
    sscanf(string, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &v15, &v15 + 1, &v15 + 2, &v15 + 3, &v16, &v16 + 1);
    v10 = v15;
    *(v9 + 24) = v16;
    *(v9 + 20) = v10;
  }

  v11 = xpc_dictionary_get_uuid(xdict, netrbXPCMACUUID);
  if (v11)
  {
    *(a1[7] + 27) = *v11;
    *(a1[7] + 26) = 1;
  }

  *(a1[7] + 16) = xpc_dictionary_dup_fd(xdict, netrbXPCInterfaceSocket);
  result = xpc_dictionary_get_uint64(xdict, netrbXPCInterfaceId);
  v12 = a1[7];
  v13 = a1[8];
  *(v12 + 48) = result;
  *(v12 + 56) = v13;
LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

@end