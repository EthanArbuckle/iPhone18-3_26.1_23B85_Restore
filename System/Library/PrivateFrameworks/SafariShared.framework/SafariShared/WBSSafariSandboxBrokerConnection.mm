@interface WBSSafariSandboxBrokerConnection
- (void)ensureConnected:(id)connected;
@end

@implementation WBSSafariSandboxBrokerConnection

- (void)ensureConnected:(id)connected
{
  connectedCopy = connected;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__WBSSafariSandboxBrokerConnection_ensureConnected___block_invoke;
  v6[3] = &unk_1E7FCA240;
  v7 = connectedCopy;
  v5 = connectedCopy;
  [(WBSSafariSandboxBrokerConnection *)self _connectionWithCompletionHandler:v6];
}

@end