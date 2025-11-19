void SS_SendStatusBarTapToScreenSharingServer()
{
  v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ScreenSharingViewServiceHelper" options:0];
  v1 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2884B6798];
  [v0 setRemoteObjectInterface:v1];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SS_SendStatusBarTapToScreenSharingServer_block_invoke;
  v6[3] = &unk_27A66F660;
  v7 = v0;
  v2 = v0;
  [v2 setInvalidationHandler:v6];
  [v2 resume];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global];
  [v3 handleStatusBarTap];
  v4 = [MEMORY[0x277CBEB88] currentRunLoop];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.1];
  [v4 runUntilDate:v5];

  [v2 invalidate];
}