@interface PushNotificationDisplayOperation
+ (BOOL)_shouldUseBulletinBoardForNotification:(id)a3;
- (BOOL)_URLHandlerExists;
- (BOOL)_clientExistsWithIdentifier:(id)a3;
- (PushNotificationDisplayOperation)initWithNotificationUserInfo:(id)a3;
- (id)_clientIdentifierForDownloadKinds:(id)a3;
- (int64_t)_notificationClass;
- (void)_displayAlert;
- (void)_displayBadge;
- (void)_loadNotificationDownloadManifest;
- (void)_openNotificationURL;
- (void)_performNotificationAction:(BOOL)a3;
- (void)run;
@end

@implementation PushNotificationDisplayOperation

- (PushNotificationDisplayOperation)initWithNotificationUserInfo:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_1002722A4(a2, self);
  }

  v10.receiver = self;
  v10.super_class = PushNotificationDisplayOperation;
  v6 = [(PushNotificationDisplayOperation *)&v10 init];
  if (v6)
  {
    v7 = [[SSRemoteNotification alloc] initWithNotificationUserInfo:v5];
    notification = v6->_notification;
    v6->_notification = v7;
  }

  return v6;
}

- (void)run
{
  v3 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyClientIdentifier];
  if (v3)
  {
    v4 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyAlertType];
    v5 = [v4 integerValue] == 1;

    if (![(PushNotificationDisplayOperation *)self _clientExistsWithIdentifier:v3])
    {
      v6 = +[SSLogConfig sharedDaemonConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      v9 = [v6 OSLogObject];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v8 &= 2u;
      }

      if (!v8)
      {
        goto LABEL_45;
      }

      *v29 = 138412546;
      *&v29[4] = objc_opt_class();
      *&v29[12] = 2112;
      *&v29[14] = v3;
      v10 = *&v29[4];
      LODWORD(v28) = 22;
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
  }

  if ([(PushNotificationDisplayOperation *)self _URLHandlerExists])
  {
    if (![(PushNotificationDisplayOperation *)self requiresClientIdentifier]|| [(PushNotificationDisplayOperation *)self _notificationClass]!= 1)
    {
      [(PushNotificationDisplayOperation *)self _displayBadge];
LABEL_47:
      v6 = [(SSRemoteNotification *)self->_notification alertBodyString];
      if (-[SSRemoteNotification actionType](self->_notification, "actionType") == 12 || ![v6 length])
      {
        [(PushNotificationDisplayOperation *)self _performNotificationAction:0];
      }

      else
      {
        [(PushNotificationDisplayOperation *)self _displayAlert];
      }

      goto LABEL_51;
    }

    if (!v3)
    {
      v6 = +[SSLogConfig sharedDaemonConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v25 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v26 = v25 | 2;
      }

      else
      {
        v26 = v25;
      }

      v9 = [v6 OSLogObject];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v26 &= 2u;
      }

      if (!v26)
      {
        goto LABEL_45;
      }

      *v29 = 138412290;
      *&v29[4] = objc_opt_class();
      v10 = *&v29[4];
      LODWORD(v28) = 12;
LABEL_12:
      v11 = _os_log_send_and_compose_impl();

      goto LABEL_43;
    }

    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      *v29 = 138412802;
      *&v29[4] = objc_opt_class();
      *&v29[12] = 2112;
      *&v29[14] = v3;
      *&v29[22] = 2048;
      v30 = v12;
      v17 = *&v29[4];
      LODWORD(v28) = 32;
      v27 = v29;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
        goto LABEL_32;
      }

      v16 = [NSString stringWithCString:v18 encoding:4, v29, v28, *v29, *&v29[16], v30];
      free(v18);
      v27 = v16;
      SSFileLog();
    }

LABEL_32:
    if (!v5)
    {
      goto LABEL_52;
    }

    goto LABEL_47;
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v19 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v20 = v19 | 2;
  }

  else
  {
    v20 = v19;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 &= 2u;
  }

  if (!v20)
  {
    goto LABEL_45;
  }

  v21 = objc_opt_class();
  notification = self->_notification;
  v23 = SSRemoteNotificationKeyURLString;
  v24 = v21;
  [(SSRemoteNotification *)notification valueForKey:v23];
  *v29 = 138412546;
  *&v29[4] = v21;
  *&v29[14] = *&v29[12] = 2112;
  LODWORD(v28) = 22;
  v11 = _os_log_send_and_compose_impl();

LABEL_43:
  if (v11)
  {
    v9 = [NSString stringWithCString:v11 encoding:4, v29, v28];
    free(v11);
    SSFileLog();
LABEL_45:
  }

LABEL_51:

LABEL_52:
}

- (BOOL)_clientExistsWithIdentifier:(id)a3
{
  v3 = [LSApplicationProxy applicationProxyForIdentifier:a3 placeholder:0];
  v4 = [v3 foundBackingBundle];

  return v4;
}

- (id)_clientIdentifierForDownloadKinds:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:SSDownloadKindSoftwareApplication])
  {
    v4 = @"com.apple.AppStore";
  }

  else if ([v3 containsObject:SSDownloadKindEBook])
  {
    v4 = @"com.apple.iBooks";
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (SSDownloadKindIsMediaKind() & 1) != 0 || (SSDownloadKindIsToneKind())
          {
            v4 = @"com.apple.MobileStore";
            goto LABEL_17;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v4 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_17:
  }

  return v4;
}

- (void)_displayAlert
{
  v3 = [(SSRemoteNotification *)self->_notification alertBodyString];
  if ([v3 length])
  {
    v4 = [(SSRemoteNotification *)self->_notification alertTitleString];
    v5 = [objc_opt_class() _shouldUseBulletinBoardForNotification:self->_notification];
    notification = self->_notification;
    if (v5)
    {
      v7 = [(SSRemoteNotification *)notification valueForKey:SSRemoteNotificationKeyURLString];
      if ([v7 length])
      {
        v8 = [NSURL URLWithString:v7];
      }

      else
      {
        v8 = 0;
      }

      v9 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyClientIdentifier];
      v16 = [(SSRemoteNotification *)self->_notification alertOKString];
      v20 = [v9 lowercaseString];
      v21 = [v20 isEqualToString:@"com.apple.appstore"];

      if (v21)
      {
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100119C48;
        v26[3] = &unk_100327538;
        v26[4] = self;
        [AppStoreUtility postBulletinWithTitle:v4 message:v3 destinations:12 actionButtonTitle:v16 actionButtonURL:v8 launchURL:v8 completionBlock:v26];
      }
    }

    else
    {
      v24 = v4;
      v7 = [(SSRemoteNotification *)notification alertCancelString];
      v8 = [(SSRemoteNotification *)self->_notification alertOKString];
      v9 = objc_alloc_init(ISDialog);
      v10 = [NSArray alloc];
      v11 = ISDialogButton;
      v12 = v7;
      if (!v7)
      {
        v23 = [NSBundle bundleForClass:objc_opt_class()];
        v12 = [v23 localizedStringForKey:@"CANCEL" value:&stru_10033CC30 table:0];
      }

      v22 = v12;
      v13 = [ISDialogButton buttonWithTitle:v12];
      v14 = v8;
      if (!v8)
      {
        v11 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = [v11 localizedStringForKey:@"OK" value:&stru_10033CC30 table:0];
      }

      v15 = [ISDialogButton buttonWithTitle:v14];
      v16 = [v10 initWithObjects:{v13, v15, 0}];

      if (!v8)
      {
      }

      if (!v7)
      {
      }

      [v9 setButtons:v16];
      [v9 setDismissOnLock:1];
      [v9 setMessage:v3];
      [v9 setShouldDismissAfterUnlock:1];
      [v9 setShouldDisplayAsTopMost:1];
      v4 = v24;
      [v9 setTitle:v24];
      [v9 setUnlockActionButtonIndex:1];
      v17 = [v9 copyUserNotification];
      v18 = +[UserNotificationCenter defaultCenter];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100119DF0;
      v25[3] = &unk_100328FC0;
      v25[4] = self;
      v19 = [v18 showUserNotification:v17 withCompletionBlock:v25];
    }
  }
}

- (void)_displayBadge
{
  v3 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyClientIdentifier];
  if (v3)
  {
    v6 = v3;
    v4 = +[SpringBoardUtility sharedInstance];
    v5 = [(SSRemoteNotification *)self->_notification badgeValue];
    [v4 setBadgeValue:v5 forIdentifier:v6];

    v3 = v6;
  }
}

- (void)_loadNotificationDownloadManifest
{
  v9 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyURLString];
  if (v9)
  {
    v2 = [[NSURL alloc] initWithString:v9];
    if (v2)
    {
      v3 = v2;
      v4 = [SSDownloadManifestRequest alloc];
      v5 = [NSURLRequest requestWithURL:v3];
      v6 = [v4 initWithURLRequest:v5];

      [v6 setManifestFormat:1];
      v7 = [[LoadExternalDownloadManifestOperation alloc] initWithRequest:v6];
      v8 = +[ISOperationQueue mainQueue];
      [v8 addOperation:v7];
    }
  }
}

- (int64_t)_notificationClass
{
  v2 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyNotificationClass];
  v3 = [v2 integerValue];

  return v3;
}

- (void)_openNotificationURL
{
  v7 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyURLString];
  if (v7)
  {
    v2 = [[NSURL alloc] initWithString:v7];
    if (v2)
    {
      v3 = v2;
      v4 = [[ISOpenURLRequest alloc] initWithURL:v2];
      [v4 setITunesStoreURL:0];
      v5 = [[ISOpenURLOperation alloc] initWithOpenURLRequest:v4];
      v6 = +[ISOperationQueue mainQueue];
      [v6 addOperation:v5];
    }
  }
}

- (void)_performNotificationAction:(BOOL)a3
{
  v3 = a3;
  switch([(SSRemoteNotification *)self->_notification actionType])
  {
    case 1uLL:
    case 4uLL:
      if (v3)
      {

        [(PushNotificationDisplayOperation *)self _openNotificationURL];
      }

      return;
    case 2uLL:
      v71 = +[StoreDownloadQueue sharedDownloadQueue];
      [v71 checkAutomaticDownloadQueue];
      goto LABEL_123;
    case 3uLL:
      if (!v3)
      {
        return;
      }

      v71 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyDownloadKinds];
      v27 = [SetAutomaticDownloadKindsOperation alloc];
      v28 = v27;
      if (v71)
      {
        v29 = [NSSet setWithArray:?];
        v30 = [v28 initWithDownloadKinds:v29];

        v28 = v29;
      }

      else
      {
        v30 = [(SetAutomaticDownloadKindsOperation *)v27 initWithDownloadKinds:?];
      }

      v67 = +[ISOperationQueue mainQueue];
      [v67 addOperation:v30];

      goto LABEL_123;
    case 5uLL:

      [(PushNotificationDisplayOperation *)self _loadNotificationDownloadManifest];
      return;
    case 6uLL:
      v8 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyAccountIdentifier];
      v17 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyAccountCredit];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_48;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_48;
      }

      v18 = +[SSAccountStore defaultStore];
      v19 = [v18 accountWithUniqueIdentifier:v8];
      if (!v19)
      {
        goto LABEL_47;
      }

      v20 = +[SSLogConfig sharedAccountsConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      v21 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v22 = v21 | 2;
      }

      else
      {
        v22 = v21;
      }

      v23 = [v20 OSLogObject];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v22 &= 2u;
      }

      if (!v22)
      {
        goto LABEL_45;
      }

      v24 = objc_opt_class();
      v72 = v24;
      v25 = [v19 accountName];
      SSHashIfNeeded();
      v74 = 138543618;
      v75 = v24;
      v77 = v76 = 2114;
      LODWORD(v70) = 22;
      v26 = _os_log_send_and_compose_impl();

      if (v26)
      {
        v23 = [NSString stringWithCString:v26 encoding:4, &v74, v70];
        free(v26);
        SSFileLog();
LABEL_45:
      }

      [v19 setCreditsString:v17];
      [v18 saveAccount:v19 verifyCredentials:0 completion:0];
LABEL_47:

LABEL_48:
      goto LABEL_119;
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
      v5 = ISWeakLinkedClassForString();
      v71 = [(SSRemoteNotification *)self->_notification notificationUserInfo];
      [v5 didReceiveStorePushNotificationWithPayload:?];
      goto LABEL_123;
    case 0xBuLL:
      v33 = +[SSAccountStore defaultStore];
      v34 = [v33 activeAccount];
      v71 = [v34 uniqueIdentifier];

      v35 = +[StoreDownloadQueue sharedDownloadQueue];
      [v35 checkQueuesWithReason:@"trigger-download" accountID:v71];
      goto LABEL_60;
    case 0xCuLL:
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v7 = @"com.apple.itunesstored.PlaybackLeaseDidEnd";
      goto LABEL_9;
    case 0xDuLL:
      v8 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyDelayedGotoIdentifier];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_119;
      }

      v11 = +[SSLogConfig sharedDaemonConfig];
      if (!v11)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v13 = v12 | 2;
      }

      else
      {
        v13 = v12;
      }

      v14 = [v11 OSLogObject];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v13 &= 2u;
      }

      if (!v13)
      {
        goto LABEL_30;
      }

      v74 = 138412546;
      v75 = objc_opt_class();
      v76 = 2112;
      v77 = v8;
      v15 = v75;
      LODWORD(v70) = 22;
      v16 = _os_log_send_and_compose_impl();

      if (v16)
      {
        v14 = [NSString stringWithCString:v16 encoding:4, &v74, v70];
        free(v16);
        SSFileLog();
LABEL_30:
      }

      [DelayedGotoSemaphore signalSemaphoreForPushToken:v8];
      goto LABEL_119;
    case 0xEuLL:
      v8 = objc_alloc_init(SubscriptionStatusOperation);
      [(SubscriptionStatusOperation *)v8 setCarrierBundleProvisioningStyle:1];
      v9 = [(SSRemoteNotification *)self->_notification notificationUserInfo];

      if (v9)
      {
        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_10011AF20;
        v73[3] = &unk_100328FE8;
        v73[4] = self;
        [(SubscriptionStatusOperation *)v8 setStatusBlock:v73];
      }

      v10 = +[ISOperationQueue mainQueue];
      [v10 addOperation:v8];

      goto LABEL_119;
    case 0xFuLL:
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v7 = @"com.apple.itunesstored.mediacontenttastechangednotification";
LABEL_9:

      CFNotificationCenterPostNotification(DarwinNotifyCenter, v7, 0, 0, 1u);
      return;
    case 0x11uLL:

      +[SSVSubscriptionEntitlementsCoordinator markCachedSubscriptionEntitlementsAsExpired];
      return;
    case 0x1DuLL:
      v31 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyAccountIdentifier];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
LABEL_63:
        v8 = v32;
        goto LABEL_76;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v31 longLongValue]);
        goto LABEL_63;
      }

      v36 = +[SSLogConfig sharedDaemonConfig];
      if (!v36)
      {
        v36 = +[SSLogConfig sharedConfig];
      }

      v37 = [v36 shouldLog];
      if ([v36 shouldLogToDisk])
      {
        v38 = v37 | 2;
      }

      else
      {
        v38 = v37;
      }

      v39 = [v36 OSLogObject];
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v38 &= 2u;
      }

      if (!v38)
      {
        goto LABEL_74;
      }

      v74 = 138543362;
      v75 = objc_opt_class();
      v40 = v75;
      LODWORD(v70) = 12;
      v68 = &v74;
      v41 = _os_log_send_and_compose_impl();

      if (v41)
      {
        v39 = [NSString stringWithCString:v41 encoding:4, &v74, v70];
        free(v41);
        v68 = v39;
        SSFileLog();
LABEL_74:
      }

      v8 = 0;
LABEL_76:
      v42 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyBuyParams, v68];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = [NSURL queryStringForDictionary:v42 escapedValues:1];
LABEL_80:
        v44 = v43;
        goto LABEL_93;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = v42;
        goto LABEL_80;
      }

      v45 = +[SSLogConfig sharedDaemonConfig];
      if (!v45)
      {
        v45 = +[SSLogConfig sharedConfig];
      }

      v46 = [v45 shouldLog];
      if ([v45 shouldLogToDisk])
      {
        v47 = v46 | 2;
      }

      else
      {
        v47 = v46;
      }

      v48 = [v45 OSLogObject];
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v47 &= 2u;
      }

      if (!v47)
      {
        goto LABEL_91;
      }

      v49 = objc_opt_class();
      v74 = 138543362;
      v75 = v49;
      v50 = v49;
      LODWORD(v70) = 12;
      v69 = &v74;
      v51 = _os_log_send_and_compose_impl();

      if (v51)
      {
        v48 = [NSString stringWithCString:v51 encoding:4, &v74, v70];
        free(v51);
        v69 = v48;
        SSFileLog();
LABEL_91:
      }

      v44 = 0;
LABEL_93:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v52 = objc_alloc_init(SSPurchase);
          [v52 setAccountIdentifier:v8];
          [v52 setBuyParameters:v44];
          v53 = +[SSLogConfig sharedDaemonConfig];
          if (!v53)
          {
            v53 = +[SSLogConfig sharedConfig];
          }

          v54 = [v53 shouldLog];
          if ([v53 shouldLogToDisk])
          {
            v55 = v54 | 2;
          }

          else
          {
            v55 = v54;
          }

          v56 = [v53 OSLogObject];
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v55 &= 2u;
          }

          if (v55)
          {
            v57 = objc_opt_class();
            v74 = 138543362;
            v75 = v57;
            v58 = v57;
            LODWORD(v70) = 12;
            v59 = _os_log_send_and_compose_impl();

            if (!v59)
            {
LABEL_106:

              v60 = [[PurchaseOperation alloc] initWithPurchase:v52];
              v61 = +[ISOperationQueue mainQueue];
              [v61 addOperation:v60];

              goto LABEL_117;
            }

            v56 = [NSString stringWithCString:v59 encoding:4, &v74, v70];
            free(v59);
            SSFileLog();
          }

          goto LABEL_106;
        }
      }

      v52 = +[SSLogConfig sharedDaemonConfig];
      if (!v52)
      {
        v52 = +[SSLogConfig sharedConfig];
      }

      v62 = [v52 shouldLog];
      if ([v52 shouldLogToDisk])
      {
        v63 = v62 | 2;
      }

      else
      {
        v63 = v62;
      }

      v60 = [v52 OSLogObject];
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v63 &= 2u;
      }

      if (v63)
      {
        v64 = objc_opt_class();
        v74 = 138543362;
        v75 = v64;
        v65 = v64;
        LODWORD(v70) = 12;
        v66 = _os_log_send_and_compose_impl();

        if (!v66)
        {
          goto LABEL_118;
        }

        v60 = [NSString stringWithCString:v66 encoding:4, &v74, v70];
        free(v66);
        SSFileLog();
      }

LABEL_117:

LABEL_118:
LABEL_119:

      return;
    default:
      if (!v3)
      {
        return;
      }

      v71 = +[PushNotificationController sharedInstance];
      v35 = [(SSRemoteNotification *)self->_notification notificationUserInfo];
      [v71 postClientNotificationWithUserInfo:v35];
LABEL_60:

LABEL_123:

      return;
  }
}

+ (BOOL)_shouldUseBulletinBoardForNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForKey:SSRemoteNotificationKeyClientIdentifier];
  if ([v4 length])
  {
    v5 = [v3 valueForKey:SSRemoteNotificationKeyAlertType];
    v6 = [v5 integerValue];

    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v8 = [v3 actionType];
      if (v8 <= 0x16)
      {
        v7 = 0x440002u >> v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_URLHandlerExists
{
  v2 = [(SSRemoteNotification *)self->_notification tapUrl];
  if (v2)
  {
    v3 = [[NSURL alloc] initWithString:v2];
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v5 = [v4 applicationsAvailableForOpeningURL:v3];

    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end