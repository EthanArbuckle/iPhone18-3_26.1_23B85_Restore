@interface BYSUManagerClientTestingSurrogate
+ (BOOL)enabled;
- (BOOL)isAutomaticDownloadEnabled;
- (BOOL)isAutomaticUpdateV2Enabled;
- (BYSUManagerClientTestingSurrogate)initWithQueue:(id)a3 clientType:(int)a4;
- (void)cancelDownload:(id)a3;
- (void)getMandatorySoftwareUpdateDictionary:(id)a3;
- (void)scanForUpdates:(id)a3 withScanResults:(id)a4;
- (void)setMandatorySoftwareUpdateDictionary:(id)a3;
@end

@implementation BYSUManagerClientTestingSurrogate

+ (BOOL)enabled
{
  v2 = +[BYTestingSurrogateBehaviorManager sharedInstance];
  v3 = [v2 domainSoftwareUpdate];
  v4 = [v2 enabledForDomain:v3];

  return v4;
}

- (BYSUManagerClientTestingSurrogate)initWithQueue:(id)a3 clientType:(int)a4
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BYSUManagerClientTestingSurrogate;
  v6 = [(BYSUManagerClientTestingSurrogate *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x1E69E96A0];
    }

    [(BYSUManagerClientTestingSurrogate *)v6 setQueue:v8];
    v9 = +[BYTestingSurrogateBehaviorManager sharedInstance];
    [(BYSUManagerClientTestingSurrogate *)v7 setBehaviorManager:v9];
  }

  return v7;
}

- (void)scanForUpdates:(id)a3 withScanResults:(id)a4
{
  v5 = a4;
  v6 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v7 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v8 = [v7 domainSoftwareUpdate];
  v9 = [v6 acquireNextBehaviorWithName:@"scanForUpdates" domain:v8];

  [v9 duration];
  v11 = dispatch_time(0, (v10 * 1000000000.0));
  v12 = [(BYSUManagerClientTestingSurrogate *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__BYSUManagerClientTestingSurrogate_scanForUpdates_withScanResults___block_invoke;
  v15[3] = &unk_1E7D02F28;
  v16 = v9;
  v17 = v5;
  v13 = v5;
  v14 = v9;
  dispatch_after(v11, v12, v15);
}

void __68__BYSUManagerClientTestingSurrogate_scanForUpdates_withScanResults___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) scanResults];
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) error];
  (*(v3 + 16))(v3, v5, v4);
}

- (void)cancelDownload:(id)a3
{
  v4 = a3;
  v5 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v6 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v7 = [v6 domainSoftwareUpdate];
  v8 = [v5 acquireNextBehaviorWithName:@"cancelDownload" domain:v7];

  [v8 duration];
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  v11 = [(BYSUManagerClientTestingSurrogate *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__BYSUManagerClientTestingSurrogate_cancelDownload___block_invoke;
  v14[3] = &unk_1E7D03CA0;
  v15 = v8;
  v16 = v4;
  v12 = v8;
  v13 = v4;
  dispatch_after(v10, v11, v14);
}

void __52__BYSUManagerClientTestingSurrogate_cancelDownload___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) error];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4 == 0, v3);
}

- (void)getMandatorySoftwareUpdateDictionary:(id)a3
{
  v4 = a3;
  v5 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v6 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v7 = [v6 domainSoftwareUpdate];
  v8 = [v5 acquireNextBehaviorWithName:@"mandatorySoftwareUpdateInfo" domain:v7];

  [v8 duration];
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  v11 = [(BYSUManagerClientTestingSurrogate *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__BYSUManagerClientTestingSurrogate_getMandatorySoftwareUpdateDictionary___block_invoke;
  v14[3] = &unk_1E7D02F28;
  v15 = v8;
  v16 = v4;
  v12 = v4;
  v13 = v8;
  dispatch_after(v10, v11, v14);
}

void __74__BYSUManagerClientTestingSurrogate_getMandatorySoftwareUpdateDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) results];
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) error];
  (*(v3 + 16))(v3, v5, v4);
}

- (void)setMandatorySoftwareUpdateDictionary:(id)a3
{
  v4 = a3;
  v8 = objc_alloc_init(BYTestingSurrogateBehavior);
  [(BYTestingSurrogateBehavior *)v8 setResults:v4];

  v5 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v6 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v7 = [v6 domainSoftwareUpdate];
  [v5 addBehavior:v8 withName:@"mandatorySoftwareUpdateInfo" domain:v7 count:0 replacingAllOthers:1];
}

- (BOOL)isAutomaticDownloadEnabled
{
  v3 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v4 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v5 = [v4 domainSoftwareUpdate];
  v6 = [v3 acquireNextBehaviorWithName:@"automaticDownloadEnabled" domain:v5];

  LOBYTE(v4) = [v6 resultsAsBasicBoolean];
  return v4;
}

- (BOOL)isAutomaticUpdateV2Enabled
{
  v3 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v4 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  v5 = [v4 domainSoftwareUpdate];
  v6 = [v3 acquireNextBehaviorWithName:@"automaticUpdateV2Enabled" domain:v5];

  LOBYTE(v4) = [v6 resultsAsBasicBoolean];
  return v4;
}

@end