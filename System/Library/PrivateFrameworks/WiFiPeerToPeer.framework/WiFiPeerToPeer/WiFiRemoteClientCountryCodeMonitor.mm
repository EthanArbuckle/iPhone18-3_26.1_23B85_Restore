@interface WiFiRemoteClientCountryCodeMonitor
- (WiFiRemoteClientCountryCodeMonitor)init;
- (id)exportedInterface;
- (void)setCountryCode:(id)a3;
@end

@implementation WiFiRemoteClientCountryCodeMonitor

- (WiFiRemoteClientCountryCodeMonitor)init
{
  v9.receiver = self;
  v9.super_class = WiFiRemoteClientCountryCodeMonitor;
  v2 = [(WiFiRemoteClientCountryCodeMonitor *)&v9 init];
  if (v2)
  {
    v3 = [WiFiP2PXPCConnection alloc];
    v4 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    v5 = dispatch_queue_create_with_target_V2("com.apple.wifip2p.WiFiRemoteClientCountryMonitor", 0, v4);
    v6 = [(WiFiP2PXPCConnection *)v3 initWithEndpointType:1 queue:v5 retryTimeout:-1];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v6;

    [(WiFiP2PXPCConnection *)v2->_xpcConnection setDelegate:v2];
  }

  return v2;
}

- (id)exportedInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841AF568];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_setCountryCode_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)setCountryCode:(id)a3
{
  v6 = a3;
  v4 = [(WiFiRemoteClientCountryCodeMonitor *)self setCountryCodeHandler];

  if (v4)
  {
    v5 = [(WiFiRemoteClientCountryCodeMonitor *)self setCountryCodeHandler];
    (v5)[2](v5, v6);
  }
}

@end