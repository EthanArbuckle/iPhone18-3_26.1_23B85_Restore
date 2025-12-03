@interface BYSUManagerClientTestingSurrogate
+ (BOOL)enabled;
- (BOOL)isAutomaticDownloadEnabled;
- (BOOL)isAutomaticUpdateV2Enabled;
- (BYSUManagerClientTestingSurrogate)initWithQueue:(id)queue clientType:(int)type;
- (void)cancelDownload:(id)download;
- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary;
- (void)scanForUpdates:(id)updates withScanResults:(id)results;
- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary;
@end

@implementation BYSUManagerClientTestingSurrogate

+ (BOOL)enabled
{
  v2 = +[BYTestingSurrogateBehaviorManager sharedInstance];
  domainSoftwareUpdate = [v2 domainSoftwareUpdate];
  v4 = [v2 enabledForDomain:domainSoftwareUpdate];

  return v4;
}

- (BYSUManagerClientTestingSurrogate)initWithQueue:(id)queue clientType:(int)type
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = BYSUManagerClientTestingSurrogate;
  v6 = [(BYSUManagerClientTestingSurrogate *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (queueCopy)
    {
      v8 = queueCopy;
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

- (void)scanForUpdates:(id)updates withScanResults:(id)results
{
  resultsCopy = results;
  behaviorManager = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  behaviorManager2 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  domainSoftwareUpdate = [behaviorManager2 domainSoftwareUpdate];
  v9 = [behaviorManager acquireNextBehaviorWithName:@"scanForUpdates" domain:domainSoftwareUpdate];

  [v9 duration];
  v11 = dispatch_time(0, (v10 * 1000000000.0));
  queue = [(BYSUManagerClientTestingSurrogate *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__BYSUManagerClientTestingSurrogate_scanForUpdates_withScanResults___block_invoke;
  v15[3] = &unk_1E7D02F28;
  v16 = v9;
  v17 = resultsCopy;
  v13 = resultsCopy;
  v14 = v9;
  dispatch_after(v11, queue, v15);
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

- (void)cancelDownload:(id)download
{
  downloadCopy = download;
  behaviorManager = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  behaviorManager2 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  domainSoftwareUpdate = [behaviorManager2 domainSoftwareUpdate];
  v8 = [behaviorManager acquireNextBehaviorWithName:@"cancelDownload" domain:domainSoftwareUpdate];

  [v8 duration];
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  queue = [(BYSUManagerClientTestingSurrogate *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__BYSUManagerClientTestingSurrogate_cancelDownload___block_invoke;
  v14[3] = &unk_1E7D03CA0;
  v15 = v8;
  v16 = downloadCopy;
  v12 = v8;
  v13 = downloadCopy;
  dispatch_after(v10, queue, v14);
}

void __52__BYSUManagerClientTestingSurrogate_cancelDownload___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) error];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4 == 0, v3);
}

- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  behaviorManager = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  behaviorManager2 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  domainSoftwareUpdate = [behaviorManager2 domainSoftwareUpdate];
  v8 = [behaviorManager acquireNextBehaviorWithName:@"mandatorySoftwareUpdateInfo" domain:domainSoftwareUpdate];

  [v8 duration];
  v10 = dispatch_time(0, (v9 * 1000000000.0));
  queue = [(BYSUManagerClientTestingSurrogate *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__BYSUManagerClientTestingSurrogate_getMandatorySoftwareUpdateDictionary___block_invoke;
  v14[3] = &unk_1E7D02F28;
  v15 = v8;
  v16 = dictionaryCopy;
  v12 = dictionaryCopy;
  v13 = v8;
  dispatch_after(v10, queue, v14);
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

- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = objc_alloc_init(BYTestingSurrogateBehavior);
  [(BYTestingSurrogateBehavior *)v8 setResults:dictionaryCopy];

  behaviorManager = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  behaviorManager2 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  domainSoftwareUpdate = [behaviorManager2 domainSoftwareUpdate];
  [behaviorManager addBehavior:v8 withName:@"mandatorySoftwareUpdateInfo" domain:domainSoftwareUpdate count:0 replacingAllOthers:1];
}

- (BOOL)isAutomaticDownloadEnabled
{
  behaviorManager = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  behaviorManager2 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  domainSoftwareUpdate = [behaviorManager2 domainSoftwareUpdate];
  v6 = [behaviorManager acquireNextBehaviorWithName:@"automaticDownloadEnabled" domain:domainSoftwareUpdate];

  LOBYTE(behaviorManager2) = [v6 resultsAsBasicBoolean];
  return behaviorManager2;
}

- (BOOL)isAutomaticUpdateV2Enabled
{
  behaviorManager = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  behaviorManager2 = [(BYSUManagerClientTestingSurrogate *)self behaviorManager];
  domainSoftwareUpdate = [behaviorManager2 domainSoftwareUpdate];
  v6 = [behaviorManager acquireNextBehaviorWithName:@"automaticUpdateV2Enabled" domain:domainSoftwareUpdate];

  LOBYTE(behaviorManager2) = [v6 resultsAsBasicBoolean];
  return behaviorManager2;
}

@end