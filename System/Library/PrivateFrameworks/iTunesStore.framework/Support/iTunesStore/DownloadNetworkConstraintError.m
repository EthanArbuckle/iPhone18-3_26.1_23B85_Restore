@interface DownloadNetworkConstraintError
- (BOOL)canCoalesceWithError:(id)a3;
- (id)_genericStringWithLocalizedKeyBase:(id)a3;
- (id)_specificStringWithLocalizedKeyBase:(id)a3;
- (id)copyUserNotification;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DownloadNetworkConstraintError

- (BOOL)canCoalesceWithError:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  v6 = [(DownloadNetworkConstraintError *)self constrainedSizeLimit];
  if (v6 != [a3 constrainedSizeLimit])
  {
    return 0;
  }

  v7 = [(DownloadNetworkConstraintError *)self canDownloadInITunes];
  if (v7 != [a3 canDownloadInITunes])
  {
    return 0;
  }

  v9 = [(DownloadError *)self downloadKind];
  v10 = [a3 downloadKind];
  if ((SSDownloadKindIsSoftwareKind() & 1) == 0 && !SSDownloadKindIsSoftwareKind())
  {
    return 1;
  }

  return [(NSString *)v9 isEqualToString:v10];
}

- (id)_genericStringWithLocalizedKeyBase:(id)a3
{
  if ([(NSMutableOrderedSet *)self->super._downloadIdentifiers count]!= 1)
  {
    a3 = [a3 stringByAppendingString:@"_PLURAL"];
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];

  return [(NSBundle *)v4 localizedStringForKey:a3 value:&stru_10033CC30 table:0];
}

- (id)_specificStringWithLocalizedKeyBase:(id)a3
{
  v5 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
  if (v5 == 2)
  {
    v6 = @"_PLUS_ONE_%@";
    return +[NSString stringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "stringWithValidatedFormat:validFormatSpecifiers:error:", -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", [a3 stringByAppendingString:v6], &stru_10033CC30, 0), @"%@", 0, self->super._downloadTitle, v8);
  }

  if (v5 == 1)
  {
    v6 = @"_%@";
    return +[NSString stringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "stringWithValidatedFormat:validFormatSpecifiers:error:", -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", [a3 stringByAppendingString:v6], &stru_10033CC30, 0), @"%@", 0, self->super._downloadTitle, v8);
  }

  return +[NSString stringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "stringWithValidatedFormat:validFormatSpecifiers:error:", -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", [a3 stringByAppendingString:@"_PLURAL_%@_%d"], &stru_10033CC30, 0), @"%@%d", 0, self->super._downloadTitle, (v5 - 1));
}

- (id)copyUserNotification
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v4 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"OK", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v4);
  v5 = [(DownloadNetworkConstraintError *)self canDownloadInITunes];
  v6 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
  [(DownloadError *)self downloadKind];
  IsSoftwareKind = SSDownloadKindIsSoftwareKind();
  v8 = [(NSString *)self->super._downloadTitle length];
  v9 = v6 & v5;
  if (v8)
  {
    if ((v6 | v5))
    {
      if (v9)
      {
        v10 = @"TOO_BIG_FOR_NETWORK_SPECIFIC";
      }

      else
      {
        v10 = @"TOO_BIG_FOR_NETWORK_SPECIFIC_NO_ITUNES";
      }

      if (v6)
      {
        v11 = v10;
      }

      else
      {
        v11 = @"TOO_BIG_FOR_NETWORK_SPECIFIC_NO_WIFI";
      }

      v12 = [(DownloadNetworkConstraintError *)self _specificStringWithLocalizedKeyBase:v11];
    }

    else
    {
      v12 = 0;
    }

    v15 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
    if (!IsSoftwareKind)
    {
LABEL_37:
      v18 = [NSBundle bundleForClass:objc_opt_class()];
      if (v15 == 1)
      {
        v19 = @"ITEM_TOO_BIG_FOR_NETWORK_TITLE";
      }

      else
      {
        v19 = @"ITEM_TOO_BIG_FOR_NETWORK_TITLE_PLURAL";
      }

      goto LABEL_40;
    }
  }

  else
  {
    if (!IsSoftwareKind)
    {
      if ((v6 | v5))
      {
        if (v9)
        {
          v16 = @"ITEM_TOO_BIG_FOR_NETWORK_BODY";
        }

        else
        {
          v16 = @"ITEM_TOO_BIG_FOR_NETWORK_BODY_NO_ITUNES";
        }

        if (v6)
        {
          v17 = v16;
        }

        else
        {
          v17 = @"ITEM_TOO_BIG_FOR_NETWORK_BODY_NO_WIFI";
        }

        v12 = [(DownloadNetworkConstraintError *)self _genericStringWithLocalizedKeyBase:v17];
      }

      else
      {
        v12 = 0;
      }

      v15 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
      goto LABEL_37;
    }

    if ((v6 | v5))
    {
      if (v9)
      {
        v13 = @"TOO_BIG_FOR_NETWORK_BODY";
      }

      else
      {
        v13 = @"TOO_BIG_FOR_NETWORK_BODY_NO_ITUNES";
      }

      if (v6)
      {
        v14 = v13;
      }

      else
      {
        v14 = @"TOO_BIG_FOR_NETWORK_BODY_NO_WIFI";
      }

      v12 = [(DownloadNetworkConstraintError *)self _genericStringWithLocalizedKeyBase:v14];
    }

    else
    {
      v12 = 0;
    }

    v15 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
  }

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  if (v15 == 1)
  {
    v19 = @"TOO_BIG_FOR_NETWORK_TITLE";
  }

  else
  {
    v19 = @"TOO_BIG_FOR_NETWORK_TITLE_PLURAL";
  }

LABEL_40:
  v20 = [(NSBundle *)v18 localizedStringForKey:v19 value:&stru_10033CC30 table:0];
  if ([(DownloadNetworkConstraintError *)self constrainedSizeLimit]< 2)
  {
    v21 = v12;
    v12 = 0;
    if (!v21)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  [(DownloadNetworkConstraintError *)self constrainedSizeLimit];
  v21 = [NSString stringWithValidatedFormat:v20 validFormatSpecifiers:@"%@" error:0, CPFSSizeStringsWithStyle()];
  if (v21)
  {
LABEL_44:
    CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, v21);
  }

LABEL_45:
  if (v12)
  {
    CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, v12);
  }

  v22 = [[ISUserNotification alloc] initWithDictionary:Mutable options:3];
  CFRelease(Mutable);
  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = DownloadNetworkConstraintError;
  result = [(DownloadError *)&v5 copyWithZone:a3];
  *(result + 40) = self->_canDownloadInITunes;
  *(result + 6) = self->_sizeLimit;
  return result;
}

@end