@interface CACVoiceControlServer
+ (id)server;
- (BOOL)_connectIfNecessary;
- (id)currentlyDisplayedCorrections;
- (id)currentlyDisplayedOverlayLabels;
@end

@implementation CACVoiceControlServer

+ (id)server
{
  if (server_onceToken != -1)
  {
    +[CACVoiceControlServer server];
  }

  v3 = server___sharedInstance;

  return v3;
}

uint64_t __31__CACVoiceControlServer_server__block_invoke()
{
  server___sharedInstance = objc_alloc_init(CACVoiceControlServer);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_connectIfNecessary
{
  if (_AXSCommandAndControlEnabled() || (v3 = _AXSCommandAndControlCarPlayEnabled()) != 0)
  {
    v5.receiver = self;
    v5.super_class = CACVoiceControlServer;
    LOBYTE(v3) = [(AXServer *)&v5 _connectIfNecessary];
  }

  return v3;
}

- (id)currentlyDisplayedCorrections
{
  if ([(CACVoiceControlServer *)self _connectIfNecessary])
  {
    v3 = [objc_alloc(MEMORY[0x277CE7D90]) initWithKey:+[CACVoiceControlServer _currentDisplayedCorrectionsCommand](CACVoiceControlServer payload:{"_currentDisplayedCorrectionsCommand"), 0}];
    client = [(AXServer *)self client];
    v5 = [client sendMessage:v3 withError:0];
    payload = [v5 payload];
    v7 = [payload objectForKeyedSubscript:@"result"];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)currentlyDisplayedOverlayLabels
{
  if ([(CACVoiceControlServer *)self _connectIfNecessary])
  {
    v3 = [objc_alloc(MEMORY[0x277CE7D90]) initWithKey:+[CACVoiceControlServer _currentlyDisplayedOverlayLabelsCommand](CACVoiceControlServer payload:{"_currentlyDisplayedOverlayLabelsCommand"), 0}];
    client = [(AXServer *)self client];
    v5 = [client sendMessage:v3 withError:0];
    payload = [v5 payload];
    v7 = [payload objectForKeyedSubscript:@"result"];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

@end