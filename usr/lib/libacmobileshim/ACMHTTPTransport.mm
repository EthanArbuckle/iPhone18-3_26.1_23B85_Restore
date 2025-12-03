@interface ACMHTTPTransport
- (void)didEnd;
- (void)didStart;
- (void)updateBackgroundTask;
@end

@implementation ACMHTTPTransport

- (void)updateBackgroundTask
{
  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  hasFinishedServerInvocations = [(ACFHTTPTransport *)self hasFinishedServerInvocations];
  identifier = [(ACMHTTPTransport *)self identifier];
  v6 = identifier;
  if (hasFinishedServerInvocations)
  {
    if (identifier)
    {
      if (qword_2A1EB8EC8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "[ACMHTTPTransport updateBackgroundTask]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPTransport.m", 43, 0, "Finishing background task");
      }

      [mEMORY[0x29EDC7938] endBackgroundTask:{-[ACMHTTPTransport identifier](self, "identifier")}];

      [(ACMHTTPTransport *)self setIdentifier:0];
    }
  }

  else
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __40__ACMHTTPTransport_updateBackgroundTask__block_invoke;
    v7[3] = &unk_29EE91778;
    v7[4] = self;
    -[ACMHTTPTransport setIdentifier:](self, "setIdentifier:", [mEMORY[0x29EDC7938] beginBackgroundTaskWithExpirationHandler:v7]);
    if (v6)
    {
      if (qword_2A1EB8EC8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "[ACMHTTPTransport updateBackgroundTask]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPTransport.m", 33, 0, "Relaunched background task");
      }

      [mEMORY[0x29EDC7938] endBackgroundTask:v6];
    }

    else if (qword_2A1EB8EC8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACMHTTPTransport updateBackgroundTask]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPTransport.m", 38, 0, "Launched background task");
    }
  }
}

uint64_t __40__ACMHTTPTransport_updateBackgroundTask__block_invoke(uint64_t a1)
{
  if (qword_2A1EB8EC8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACMHTTPTransport updateBackgroundTask]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPTransport.m", 27, 0, "Handling background task expiration");
  }

  v2 = *(a1 + 32);

  return [v2 updateBackgroundTask];
}

- (void)didStart
{
  v3.receiver = self;
  v3.super_class = ACMHTTPTransport;
  [(ACFHTTPTransport *)&v3 didStart];
  [(ACMHTTPTransport *)self updateBackgroundTask];
}

- (void)didEnd
{
  [(ACMHTTPTransport *)self updateBackgroundTask];
  v3.receiver = self;
  v3.super_class = ACMHTTPTransport;
  [(ACFHTTPTransport *)&v3 didEnd];
}

@end