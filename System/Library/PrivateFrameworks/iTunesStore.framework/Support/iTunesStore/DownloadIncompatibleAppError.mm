@interface DownloadIncompatibleAppError
- (id)copyUserNotification;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DownloadIncompatibleAppError

- (id)copyUserNotification
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"OK", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v3);
  localizedFailureReason = [ISDeviceIncompatibleAppErrorWithAppTitle() localizedFailureReason];
  if (localizedFailureReason)
  {
    CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, localizedFailureReason);
  }

  v5 = [[ISUserNotification alloc] initWithDictionary:Mutable options:3];
  CFRelease(Mutable);
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = DownloadIncompatibleAppError;
  return [(DownloadError *)&v4 copyWithZone:zone];
}

@end