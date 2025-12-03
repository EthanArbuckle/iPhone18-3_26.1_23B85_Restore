@interface BYSUManagerClient
- (BOOL)isAutomaticDownloadEnabled;
- (BOOL)isAutomaticUpdateV2Enabled;
- (void)cancelDownload:(id)download;
- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary;
- (void)scanForUpdates:(id)updates withScanResults:(id)results;
- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary;
@end

@implementation BYSUManagerClient

- (void)scanForUpdates:(id)updates withScanResults:(id)results
{
  resultsCopy = results;
  updatesCopy = updates;
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  [underlyingManagerClient scanForUpdates:updatesCopy withScanResults:resultsCopy];
}

- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  [underlyingManagerClient setMandatorySoftwareUpdateDictionary:dictionaryCopy];
}

- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  [underlyingManagerClient getMandatorySoftwareUpdateDictionary:dictionaryCopy];
}

- (void)cancelDownload:(id)download
{
  downloadCopy = download;
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  [underlyingManagerClient cancelDownload:downloadCopy];
}

- (BOOL)isAutomaticDownloadEnabled
{
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  isAutomaticDownloadEnabled = [underlyingManagerClient isAutomaticDownloadEnabled];

  return isAutomaticDownloadEnabled;
}

- (BOOL)isAutomaticUpdateV2Enabled
{
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  isAutomaticUpdateV2Enabled = [underlyingManagerClient isAutomaticUpdateV2Enabled];

  return isAutomaticUpdateV2Enabled;
}

@end