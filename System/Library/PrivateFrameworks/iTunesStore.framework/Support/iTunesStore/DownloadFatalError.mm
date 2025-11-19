@interface DownloadFatalError
- (id)copyUserNotification;
@end

@implementation DownloadFatalError

- (id)copyUserNotification
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v4 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  if (v4 <= 1)
  {
    v6 = @"DOWNLOAD_FAILED_TITLE_GENERIC";
  }

  else
  {
    v6 = @"DOWNLOAD_FAILED_TITLE_GENERIC_PLURAL";
  }

  CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10033CC30 table:0]);
  if (self->super._downloadTitle)
  {
    v7 = [NSString alloc];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    if (v4 == 2)
    {
      v10 = @"DOWNLOAD_FATAL_MESSAGE_ONE_%@";
    }

    else
    {
      v9 = v4 - 1;
      if (v9)
      {
        v11 = [(NSBundle *)v8 localizedStringForKey:@"DOWNLOAD_FATAL_MESSAGE_PLURAL_%@_%ld" value:&stru_10033CC30 table:0];
        downloadTitle = self->super._downloadTitle;
        v17 = v9;
        goto LABEL_11;
      }

      v10 = @"DOWNLOAD_FATAL_MESSAGE_%@";
    }

    v11 = [(NSBundle *)v8 localizedStringForKey:v10 value:&stru_10033CC30 table:0];
    downloadTitle = self->super._downloadTitle;
LABEL_11:
    v13 = [v7 initWithFormat:v11, downloadTitle, v17];
    CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, v13);
  }

  v14 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DOWNLOAD_FAILED_DONE", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v14);
  CFDictionarySetValue(Mutable, SBUserNotificationDefaultButtonTag, [NSNumber numberWithInt:1]);
  v15 = [[ISUserNotification alloc] initWithDictionary:Mutable options:3];
  CFRelease(Mutable);
  return v15;
}

@end