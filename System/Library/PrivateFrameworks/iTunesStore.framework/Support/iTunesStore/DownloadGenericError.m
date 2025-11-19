@interface DownloadGenericError
- (BOOL)_isInstallError:(id)a3;
- (BOOL)canCoalesceWithError:(id)a3;
- (DownloadGenericError)initWithError:(id)a3;
- (id)_notificationBody;
- (id)_notificationTitle;
- (id)copyUserNotification;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)performActionForResponseFlags:(unint64_t)a3;
@end

@implementation DownloadGenericError

- (DownloadGenericError)initWithError:(id)a3
{
  v6.receiver = self;
  v6.super_class = DownloadGenericError;
  v4 = [(DownloadGenericError *)&v6 init];
  if (v4)
  {
    v4->_error = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadGenericError;
  [(DownloadError *)&v3 dealloc];
}

- (BOOL)canCoalesceWithError:(id)a3
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(DownloadError *)self downloadKind];
    if (v7 == [a3 downloadKind] || (v6 = -[NSString isEqual:](-[DownloadError downloadKind](self, "downloadKind"), "isEqual:", objc_msgSend(a3, "downloadKind"))) != 0)
    {
      v8 = [(DownloadGenericError *)self _isInstallError:[(DownloadGenericError *)self error]];
      LOBYTE(v6) = v8 ^ -[DownloadGenericError _isInstallError:](self, "_isInstallError:", [a3 error]) ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)copyUserNotification
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v4 = [(DownloadGenericError *)self _notificationTitle];
  if ([v4 length])
  {
    CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, v4);
  }

  v5 = [(DownloadGenericError *)self _notificationBody];
  if ([v5 length])
  {
    CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, v5);
  }

  v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DOWNLOAD_FAILED_DONE", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v6);
  v7 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DOWNLOAD_FAILED_RETRY", &stru_10033CC30, 0];
  CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v7);
  CFDictionarySetValue(Mutable, SBUserNotificationDefaultButtonTag, [NSNumber numberWithInt:1]);
  v8 = [[ISUserNotification alloc] initWithDictionary:Mutable options:3];
  CFRelease(Mutable);
  return v8;
}

- (void)performActionForResponseFlags:(unint64_t)a3
{
  if (a3 == 1)
  {
    if (MGGetSInt32Answer() != 4)
    {
      return;
    }

    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v22 = 138412290;
      v23 = objc_opt_class();
      LODWORD(v19) = 12;
      v18 = &v22;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        v17 = [NSString stringWithCString:v15 encoding:4, &v22, v19];
        free(v16);
        v18 = v17;
        SSFileLog();
      }
    }

    v10 = +[DownloadsDatabase downloadsDatabase];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100186E54;
    v20[3] = &unk_100329E90;
    v20[4] = self;
    v11 = v20;
  }

  else
  {
    if (a3)
    {
      return;
    }

    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v22 = 138412290;
      v23 = objc_opt_class();
      LODWORD(v19) = 12;
      v18 = &v22;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [NSString stringWithCString:v7 encoding:4, &v22, v19];
        free(v8);
        v18 = v9;
        SSFileLog();
      }
    }

    v10 = +[DownloadsDatabase downloadsDatabase];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100186E44;
    v21[3] = &unk_100329E90;
    v21[4] = self;
    v11 = v21;
  }

  [v10 modifyUsingTransactionBlock:v11];
}

- (BOOL)_isInstallError:(id)a3
{
  v3 = [a3 domain];
  if ([v3 isEqualToString:MIInstallerErrorDomain])
  {
    return 1;
  }

  return ISErrorIsEqual();
}

- (id)_notificationBody
{
  if (self->super._downloadTitle)
  {
    v3 = [(DownloadGenericError *)self _isInstallError:self->_error];
    v4 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
    v5 = [NSString alloc];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    if (v3)
    {
      if (v4 == 2)
      {
        v8 = @"INSTALL_FAILED_BODY_FORMAT_ONE_%@";
        goto LABEL_14;
      }

      v7 = v4 - 1;
      if (!v7)
      {
        v8 = @"INSTALL_FAILED_BODY_FORMAT_%@";
LABEL_14:
        v14 = [(NSBundle *)v6 localizedStringForKey:v8 value:&stru_10033CC30 table:0];
        downloadTitle = self->super._downloadTitle;
LABEL_18:
        v10 = [v5 initWithFormat:v14, downloadTitle, v18];
        goto LABEL_19;
      }

      v16 = @"INSTALL_FAILED_BODY_FORMAT_PLURAL_%@_%ld";
    }

    else
    {
      if (v4 == 2)
      {
        v8 = @"DOWNLOAD_FAILED_BODY_FORMAT_ONE_%@";
        goto LABEL_14;
      }

      v7 = v4 - 1;
      if (!v7)
      {
        v8 = @"DOWNLOAD_FAILED_BODY_FORMAT_%@";
        goto LABEL_14;
      }

      v16 = @"DOWNLOAD_FAILED_BODY_FORMAT_PLURAL_%@_%ld";
    }

    v14 = [(NSBundle *)v6 localizedStringForKey:v16 value:&stru_10033CC30 table:0];
    downloadTitle = self->super._downloadTitle;
    v18 = v7;
    goto LABEL_18;
  }

  v9 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
  if (v9 != 1)
  {
    v11 = v9;
    v12 = objc_alloc_init(NSNumberFormatter);
    [v12 setNumberStyle:1];
    v13 = [[NSString alloc] initWithFormat:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DOWNLOAD_FAILED_BODY_GENERIC_PLURAL_%@", &stru_10033CC30, 0), objc_msgSend(v12, "stringFromNumber:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v11))];

    goto LABEL_20;
  }

  v10 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DOWNLOAD_FAILED_BODY_GENERIC", &stru_10033CC30, 0];
LABEL_19:
  v13 = v10;
LABEL_20:

  return v13;
}

- (id)_notificationTitle
{
  v3 = [(NSMutableOrderedSet *)self->super._downloadIdentifiers count];
  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindAudiobook])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_AUDIOBOOK";
    v5 = @"DOWNLOAD_FAILED_TITLE_AUDIOBOOK_PLURAL";
    goto LABEL_8;
  }

  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindMovie])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_MOVIE";
    v5 = @"DOWNLOAD_FAILED_TITLE_MOVIE_PLURAL";
    goto LABEL_8;
  }

  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindMusic]|| [(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindCoachedAudio])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_SONG";
    v5 = @"DOWNLOAD_FAILED_TITLE_SONG_PLURAL";
    goto LABEL_8;
  }

  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindMusicVideo])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_MUSIC_VIDEO";
    v5 = @"DOWNLOAD_FAILED_TITLE_MUSIC_VIDEO_PLURAL";
    goto LABEL_8;
  }

  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindPodcast])
  {
    goto LABEL_17;
  }

  if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindRingtone])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_RINGTONE";
    v5 = @"DOWNLOAD_FAILED_TITLE_RINGTONE_PLURAL";
  }

  else if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindSoftwareApplication])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_APPLICATION";
    v5 = @"DOWNLOAD_FAILED_TITLE_APPLICATION_PLURAL";
  }

  else if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindTelevisionEpisode])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_TV";
    v5 = @"DOWNLOAD_FAILED_TITLE_TV_PLURAL";
  }

  else if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindTone])
  {
    v4 = @"DOWNLOAD_FAILED_TITLE_TONE";
    v5 = @"DOWNLOAD_FAILED_TITLE_TONE_PLURAL";
  }

  else
  {
    if ([(NSString *)self->super._downloadKind isEqualToString:SSDownloadKindVideoPodcast])
    {
LABEL_17:
      v4 = @"DOWNLOAD_FAILED_TITLE_PODCAST";
      v5 = @"DOWNLOAD_FAILED_TITLE_PODCAST_PLURAL";
      goto LABEL_8;
    }

    v4 = @"DOWNLOAD_FAILED_TITLE_GENERIC";
    v5 = @"DOWNLOAD_FAILED_TITLE_GENERIC_PLURAL";
  }

LABEL_8:
  if (v3 <= 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = [NSBundle bundleForClass:objc_opt_class()];

  return [(NSBundle *)v7 localizedStringForKey:v6 value:&stru_10033CC30 table:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = DownloadGenericError;
  v5 = [(DownloadError *)&v7 copyWithZone:?];
  v5[5] = [(NSError *)self->_error copyWithZone:a3];
  return v5;
}

@end