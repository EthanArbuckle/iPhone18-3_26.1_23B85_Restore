@interface NETRBXPCSendMessage
@end

@implementation NETRBXPCSendMessage

uint64_t ____NETRBXPCSendMessage_block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    NETRBXPCCleanup();
    NETRBErrorLog();
    goto LABEL_10;
  }

  v4 = MEMORY[0x2743E2B10](a2);
  if (v4 == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_uint64(a2, netrbXPCResponse) != 2002)
    {
      goto LABEL_10;
    }
  }

  else if (v4 == MEMORY[0x277D86480])
  {
    xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
  }

  NETRBErrorLog();
  NETRBXPCCleanup();
LABEL_10:
  v5 = *(*(a1 + 32) + 16);

  return v5();
}

@end