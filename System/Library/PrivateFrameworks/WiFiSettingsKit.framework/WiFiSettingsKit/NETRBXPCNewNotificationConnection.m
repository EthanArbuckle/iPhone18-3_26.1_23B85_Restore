@interface NETRBXPCNewNotificationConnection
@end

@implementation NETRBXPCNewNotificationConnection

void ____NETRBXPCNewNotificationConnection_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2743E7A80](a2);
  v5 = MEMORY[0x2743E7980](a2);
  if (v5)
  {
    v6 = v5;
    NETRBInfoLog();
    free(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v7 == __netrbNotificationConnection;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && v4 == MEMORY[0x277D86480])
  {
    v11 = *(a1 + 32);
    xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    NETRBInfoLog();
    xpc_connection_cancel(*(a1 + 32));
    xpc_release(*(a1 + 32));
    __netrbNotificationConnection = 0;
  }

  else
  {
    if (__netrbNotificationConnection)
    {
      v10 = v4 == MEMORY[0x277D86468];
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {

      NETRBClientSendNotification(a2);
    }

    else
    {

      NETRBErrorLog();
    }
  }
}

@end