@interface DownloadDiskSpaceError
- (id)copyUserNotification;
- (id)copyWithZone:(_NSZone *)zone;
- (void)performActionForResponseFlags:(unint64_t)flags;
@end

@implementation DownloadDiskSpaceError

- (id)copyUserNotification
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v4 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"NOT_ENOUGH_SPACE_TITLE", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, v4);
  v5 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"OK", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v5);
  v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"NOT_ENOUGH_SPACE_SETTINGS", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v6);
  CFDictionarySetValue(Mutable, SBUserNotificationDefaultButtonTag, [NSNumber numberWithInt:1]);
  v7 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
  if ([(NSString *)self->super._downloadTitle length])
  {
    v8 = [NSString alloc];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    if (v7 == 2)
    {
      v11 = @"NOT_ENOUGH_SPACE_SPECIFIC_PLUS_ONE_%@";
    }

    else
    {
      v10 = v7 - 1;
      if (v10)
      {
        v14 = [(NSBundle *)v9 localizedStringForKey:@"NOT_ENOUGH_SPACE_SPECIFIC_PLURAL_%@_%ld" value:&stru_10033CC30 table:0];
        downloadTitle = self->super._downloadTitle;
        v19 = v10;
        goto LABEL_10;
      }

      v11 = @"NOT_ENOUGH_SPACE_SPECIFIC_%@";
    }

    v14 = [(NSBundle *)v9 localizedStringForKey:v11 value:&stru_10033CC30 table:0];
    downloadTitle = self->super._downloadTitle;
LABEL_10:
    v16 = [v8 initWithFormat:v14, downloadTitle, v19];
    CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, v16);

    goto LABEL_13;
  }

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  if (v7 == 1)
  {
    v13 = @"NOT_ENOUGH_SPACE_SINGULAR";
  }

  else
  {
    v13 = @"NOT_ENOUGH_SPACE_PLURAL";
  }

  CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, [(NSBundle *)v12 localizedStringForKey:v13 value:&stru_10033CC30 table:0]);
LABEL_13:
  v17 = [[ISUserNotification alloc] initWithDictionary:Mutable options:3];
  CFRelease(Mutable);
  return v17;
}

- (void)performActionForResponseFlags:(unint64_t)flags
{
  if (!flags)
  {
    v5 = [[ISOpenURLRequest alloc] initWithURL:{+[NSURL URLWithString:](NSURL, "URLWithString:", @"prefs:root=General&path=USAGE"}];
    [v5 setITunesStoreURL:0];
    v4 = [[ISOpenURLOperation alloc] initWithOpenURLRequest:v5];
    [+[ISOperationQueue mainQueue](ISOperationQueue "mainQueue")];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = DownloadDiskSpaceError;
  return [(DownloadError *)&v4 copyWithZone:zone];
}

@end