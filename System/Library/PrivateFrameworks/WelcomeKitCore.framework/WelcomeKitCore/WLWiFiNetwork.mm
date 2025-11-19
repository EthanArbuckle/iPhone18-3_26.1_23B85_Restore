@interface WLWiFiNetwork
- (NSString)ssid;
- (WLWiFiNetwork)initWithWiFiNetworkRef:(__WiFiNetwork *)a3;
- (void)dealloc;
@end

@implementation WLWiFiNetwork

- (WLWiFiNetwork)initWithWiFiNetworkRef:(__WiFiNetwork *)a3
{
  v7.receiver = self;
  v7.super_class = WLWiFiNetwork;
  v4 = [(WLWiFiNetwork *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(WLWiFiNetwork *)v4 setRef:a3];
    CFRetain([(WLWiFiNetwork *)v5 ref]);
    -[WLWiFiNetwork setChannel:](v5, "setChannel:", [WiFiNetworkGetChannel() integerValue]);
  }

  return v5;
}

- (void)dealloc
{
  CFRelease([(WLWiFiNetwork *)self ref]);
  v3.receiver = self;
  v3.super_class = WLWiFiNetwork;
  [(WLWiFiNetwork *)&v3 dealloc];
}

- (NSString)ssid
{
  v2 = [(WLWiFiNetwork *)self ref];

  return MEMORY[0x2821879D8](v2);
}

@end