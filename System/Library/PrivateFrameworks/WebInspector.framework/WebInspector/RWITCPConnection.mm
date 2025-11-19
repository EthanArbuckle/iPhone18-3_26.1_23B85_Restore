@interface RWITCPConnection
@end

@implementation RWITCPConnection

_BYTE *__33___RWITCPConnection_sendMessage___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [_RWITCPRelayMessage TCPRelayMessageWithPayload:*(a1 + 40)];
  [v2 addObject:v3];

  result = *(a1 + 32);
  if (result[41] == 1)
  {

    return [result _setOutputSourceSuspended:0];
  }

  return result;
}

void __39___RWITCPConnection__closeOutputStream__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 88));
    [v4 tcpConnectionDidClose:*(a1 + 32)];
  }
}

void __50___RWITCPConnection__processIncomingBytes_length___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 88));
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) payload];
    [v6 tcpConnection:v3 didReceiveMessage:v4];
  }
}

@end