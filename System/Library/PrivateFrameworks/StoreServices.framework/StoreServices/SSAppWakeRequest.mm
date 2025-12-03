@interface SSAppWakeRequest
+ (id)familyContentRemovalRequestWithAppIdentifier:(id)identifier accountPairs:(id)pairs;
+ (id)newsstandFinishRequestWithAppIdentifier:(id)identifier issueIdentifiers:(id)identifiers;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SSAppWakeRequest

+ (id)familyContentRemovalRequestWithAppIdentifier:(id)identifier accountPairs:(id)pairs
{
  identifierCopy = identifier;
  v6 = [SSVFamilyContentDeletionEvent notificationPayloadWithAccountPairs:pairs];
  if (v6)
  {
    v7 = objc_alloc_init(SSAppWakeRequest);
    [(SSAppWakeRequest *)v7 setAppIdentifier:identifierCopy];
    [(SSAppWakeRequest *)v7 setShouldLaunchApp:1];
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"UIApplicationLaunchOptionsDeletedFamilyContentKey", 0}];
    [(SSAppWakeRequest *)v7 setLaunchOptions:v8];
    [(SSAppWakeRequest *)v7 setProcessAssertionIdentifier:@"com.apple.itunesstored.deletefamilycontent"];
    [(SSAppWakeRequest *)v7 setProcessAssertionInterval:10.0];
    [(SSAppWakeRequest *)v7 setProcessAssertionReason:@"ProcessAssertionReasonTaskCompletion"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newsstandFinishRequestWithAppIdentifier:(id)identifier issueIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v7 = objc_alloc_init(SSAppWakeRequest);
  [(SSAppWakeRequest *)v7 setAppIdentifier:identifierCopy];

  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{identifiersCopy, @"UIApplicationLaunchOptionsNewsstandDownloadsKey", 0}];
  [(SSAppWakeRequest *)v7 setLaunchOptions:v8];
  [(SSAppWakeRequest *)v7 setShouldLaunchApp:1];
  [(SSAppWakeRequest *)v7 setProcessAssertionIdentifier:@"com.apple.itunesstored.finishdownload"];
  [(SSAppWakeRequest *)v7 setProcessAssertionInterval:10.0];
  [(SSAppWakeRequest *)v7 setProcessAssertionReason:@"ProcessAssertionReasonBackgroundDownload"];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_appIdentifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSDictionary *)self->_launchOptions copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_processAssertionIdentifier copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 32) = self->_processAssertionInterval;
  v12 = [(NSString *)self->_processAssertionReason copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  *(v5 + 48) = self->_shouldLaunchApp;
  return v5;
}

@end