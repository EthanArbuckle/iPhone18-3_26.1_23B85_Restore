@interface BYSUManagerClient
- (BOOL)isAutomaticDownloadEnabled;
- (BOOL)isAutomaticUpdateV2Enabled;
- (void)cancelDownload:(id)a3;
- (void)getMandatorySoftwareUpdateDictionary:(id)a3;
- (void)scanForUpdates:(id)a3 withScanResults:(id)a4;
- (void)setMandatorySoftwareUpdateDictionary:(id)a3;
@end

@implementation BYSUManagerClient

- (void)scanForUpdates:(id)a3 withScanResults:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BYSUManagerClient *)self underlyingManagerClient];
  [v8 scanForUpdates:v7 withScanResults:v6];
}

- (void)setMandatorySoftwareUpdateDictionary:(id)a3
{
  v4 = a3;
  v5 = [(BYSUManagerClient *)self underlyingManagerClient];
  [v5 setMandatorySoftwareUpdateDictionary:v4];
}

- (void)getMandatorySoftwareUpdateDictionary:(id)a3
{
  v4 = a3;
  v5 = [(BYSUManagerClient *)self underlyingManagerClient];
  [v5 getMandatorySoftwareUpdateDictionary:v4];
}

- (void)cancelDownload:(id)a3
{
  v4 = a3;
  v5 = [(BYSUManagerClient *)self underlyingManagerClient];
  [v5 cancelDownload:v4];
}

- (BOOL)isAutomaticDownloadEnabled
{
  v2 = [(BYSUManagerClient *)self underlyingManagerClient];
  v3 = [v2 isAutomaticDownloadEnabled];

  return v3;
}

- (BOOL)isAutomaticUpdateV2Enabled
{
  v2 = [(BYSUManagerClient *)self underlyingManagerClient];
  v3 = [v2 isAutomaticUpdateV2Enabled];

  return v3;
}

@end