@interface SSAppWakeRequest
+ (id)familyContentRemovalRequestWithAppIdentifier:(id)a3 accountPairs:(id)a4;
+ (id)newsstandFinishRequestWithAppIdentifier:(id)a3 issueIdentifiers:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SSAppWakeRequest

+ (id)familyContentRemovalRequestWithAppIdentifier:(id)a3 accountPairs:(id)a4
{
  v5 = a3;
  v6 = [SSVFamilyContentDeletionEvent notificationPayloadWithAccountPairs:a4];
  if (v6)
  {
    v7 = objc_alloc_init(SSAppWakeRequest);
    [(SSAppWakeRequest *)v7 setAppIdentifier:v5];
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

+ (id)newsstandFinishRequestWithAppIdentifier:(id)a3 issueIdentifiers:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SSAppWakeRequest);
  [(SSAppWakeRequest *)v7 setAppIdentifier:v6];

  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"UIApplicationLaunchOptionsNewsstandDownloadsKey", 0}];
  [(SSAppWakeRequest *)v7 setLaunchOptions:v8];
  [(SSAppWakeRequest *)v7 setShouldLaunchApp:1];
  [(SSAppWakeRequest *)v7 setProcessAssertionIdentifier:@"com.apple.itunesstored.finishdownload"];
  [(SSAppWakeRequest *)v7 setProcessAssertionInterval:10.0];
  [(SSAppWakeRequest *)v7 setProcessAssertionReason:@"ProcessAssertionReasonBackgroundDownload"];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_appIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSDictionary *)self->_launchOptions copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_processAssertionIdentifier copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 32) = self->_processAssertionInterval;
  v12 = [(NSString *)self->_processAssertionReason copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  *(v5 + 48) = self->_shouldLaunchApp;
  return v5;
}

@end