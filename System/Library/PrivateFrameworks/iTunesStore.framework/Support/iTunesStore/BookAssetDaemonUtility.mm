@interface BookAssetDaemonUtility
+ (void)checkAutomaticDownloads;
+ (void)sendBookDownloads:(id)downloads withReason:(id)reason;
+ (void)sendBookStoreDownloads:(id)downloads withReason:(id)reason;
+ (void)sendRestoreDownloads:(id)downloads withReason:(id)reason;
@end

@implementation BookAssetDaemonUtility

+ (void)sendBookDownloads:(id)downloads withReason:(id)reason
{
  downloadsCopy = downloads;
  reasonCopy = reason;
  if (![downloadsCopy count])
  {
    goto LABEL_28;
  }

  v25 = reasonCopy;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [downloadsCopy count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = downloadsCopy;
  v8 = downloadsCopy;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = v9;
  v11 = *v28;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      copyStoreDownloadMetadata = [v13 copyStoreDownloadMetadata];
      if (copyStoreDownloadMetadata)
      {
        downloadPolicy = [v13 downloadPolicy];
        if (downloadPolicy)
        {
          [copyStoreDownloadMetadata setDownloadPolicy:downloadPolicy];
        }

        [v7 addObject:copyStoreDownloadMetadata];
      }

      else
      {
        downloadPolicy = +[SSLogConfig sharedDaemonConfig];
        if (!downloadPolicy)
        {
          downloadPolicy = +[SSLogConfig sharedConfig];
        }

        shouldLog = [downloadPolicy shouldLog];
        if ([downloadPolicy shouldLogToDisk])
        {
          v17 = shouldLog | 2;
        }

        else
        {
          v17 = shouldLog;
        }

        oSLogObject = [downloadPolicy OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 & 2;
        }

        if (v19)
        {
          v20 = objc_opt_class();
          v31 = 138543362;
          v32 = v20;
          v21 = v20;
          LODWORD(v24) = 12;
          v23 = &v31;
          v22 = _os_log_send_and_compose_impl();

          if (!v22)
          {
            goto LABEL_23;
          }

          oSLogObject = [NSString stringWithCString:v22 encoding:4, &v31, v24];
          free(v22);
          v23 = oSLogObject;
          SSFileLog();
        }
      }

LABEL_23:
    }

    v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
  }

  while (v10);
LABEL_25:

  reasonCopy = v25;
  if (v7)
  {
    [BookAssetDaemonUtility sendBookStoreDownloads:v7 withReason:v25];
  }

  downloadsCopy = v26;
LABEL_28:
}

+ (void)sendBookStoreDownloads:(id)downloads withReason:(id)reason
{
  downloadsCopy = downloads;
  v6 = ISWeakLinkedClassForString();
  if (!v6)
  {
    sharedInstance = +[SSLogConfig sharedDaemonConfig];
    if (!sharedInstance)
    {
      sharedInstance = +[SSLogConfig sharedConfig];
    }

    shouldLog = [sharedInstance shouldLog];
    if ([sharedInstance shouldLogToDisk])
    {
      v42 = shouldLog | 2;
    }

    else
    {
      v42 = shouldLog;
    }

    oSLogObject = [sharedInstance OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 2;
    }

    if (v44)
    {
      v71 = 138543362;
      v72 = objc_opt_class();
      v45 = v72;
      LODWORD(v57) = 12;
      v46 = _os_log_send_and_compose_impl();

      if (!v46)
      {
        goto LABEL_88;
      }

      oSLogObject = [NSString stringWithCString:v46 encoding:4, &v71, v57];
      free(v46);
      SSFileLog();
    }

    goto LABEL_88;
  }

  sharedInstance = [v6 sharedInstance];
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (sharedInstance)
  {
    v58 = downloadsCopy;
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog2 | 2;
    }

    else
    {
      v11 = shouldLog2;
    }

    oSLogObject2 = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v71 = 138543362;
      v72 = objc_opt_class();
      v14 = v72;
      LODWORD(v57) = 12;
      v56 = &v71;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_15:

        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v66 = 0u;
        v16 = v58;
        v17 = [v16 countByEnumeratingWithState:&v66 objects:v70 count:16];
        if (!v17)
        {
          goto LABEL_61;
        }

        v18 = v17;
        v62 = *v67;
        v61 = v16;
        v59 = sharedInstance;
        selfCopy = self;
        while (1)
        {
          v19 = 0;
          do
          {
            if (*v67 != v62)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v66 + 1) + 8 * v19);
            if (v20)
            {
              redownloadActionParameters = [*(*(&v66 + 1) + 8 * v19) redownloadActionParameters];
              v22 = [redownloadActionParameters copy];

              downloadPermalink = [v20 downloadPermalink];
              if (downloadPermalink)
              {
                oSLogObject4 = downloadPermalink;
                goto LABEL_33;
              }

              v56 = 0;
              oSLogObject4 = [v20 valueForFirstAvailableKey:@"download_permalink"];
              if (oSLogObject4)
              {
LABEL_33:
                v29 = [NSURL URLWithString:oSLogObject4, v56];
              }

              else
              {
                v29 = 0;
              }

              if (([v20 isRedownloadDownload] & 1) != 0 || v29)
              {
                if (v22)
                {
                  v64[0] = _NSConcreteStackBlock;
                  v64[1] = 3221225472;
                  v64[2] = sub_1002013D0;
                  v64[3] = &unk_10032C380;
                  v64[4] = self;
                  [sharedInstance addDownloadWithPurchaseParameters:v22 completion:v64];
                }

                else if (v29)
                {
                  title = [v20 title];
                  v33 = [title copy];

                  v63[0] = _NSConcreteStackBlock;
                  v63[1] = 3221225472;
                  v63[2] = sub_100201588;
                  v63[3] = &unk_10032C380;
                  v63[4] = self;
                  [sharedInstance addDownloadWithPermlink:v29 title:v33 completion:v63];

                  v16 = v61;
                }
              }

              else
              {
                dictionary = [v20 dictionary];
                v31 = [dictionary copy];

                if (v31)
                {
                  v65[0] = _NSConcreteStackBlock;
                  v65[1] = 3221225472;
                  v65[2] = sub_100201218;
                  v65[3] = &unk_10032C380;
                  v65[4] = self;
                  [sharedInstance addDownloadWithMetadata:v31 completion:v65];
                  goto LABEL_53;
                }

                v34 = +[SSLogConfig sharedDaemonConfig];
                if (!v34)
                {
                  v34 = +[SSLogConfig sharedConfig];
                }

                shouldLog3 = [v34 shouldLog];
                if ([v34 shouldLogToDisk])
                {
                  shouldLog3 |= 2u;
                }

                oSLogObject3 = [v34 OSLogObject];
                if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
                {
                  shouldLog3 &= 2u;
                }

                if (shouldLog3)
                {
                  v37 = objc_opt_class();
                  v71 = 138543362;
                  v72 = v37;
                  v38 = v37;
                  LODWORD(v57) = 12;
                  v56 = &v71;
                  v39 = _os_log_send_and_compose_impl();

                  v16 = v61;
                  if (v39)
                  {
                    oSLogObject3 = [NSString stringWithCString:v39 encoding:4, &v71, v57];
                    free(v39);
                    v56 = oSLogObject3;
                    SSFileLog();
                    goto LABEL_51;
                  }
                }

                else
                {
LABEL_51:
                }

                sharedInstance = v59;
                self = selfCopy;
LABEL_53:
              }

              goto LABEL_55;
            }

            v22 = +[SSLogConfig sharedDaemonConfig];
            if (!v22)
            {
              v22 = +[SSLogConfig sharedConfig];
            }

            shouldLog4 = [v22 shouldLog];
            if ([v22 shouldLogToDisk])
            {
              shouldLog4 |= 2u;
            }

            oSLogObject4 = [v22 OSLogObject];
            if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
            {
              shouldLog4 &= 2u;
            }

            if (!shouldLog4)
            {
              goto LABEL_55;
            }

            v26 = objc_opt_class();
            v71 = 138543362;
            v72 = v26;
            v27 = v26;
            LODWORD(v57) = 12;
            v56 = &v71;
            v28 = _os_log_send_and_compose_impl();

            if (v28)
            {
              oSLogObject4 = [NSString stringWithCString:v28 encoding:4, &v71, v57];
              free(v28);
              v56 = oSLogObject4;
              SSFileLog();
              v16 = v61;
LABEL_55:

              goto LABEL_56;
            }

            v16 = v61;
LABEL_56:

            v19 = v19 + 1;
          }

          while (v18 != v19);
          v40 = [v16 countByEnumeratingWithState:&v66 objects:v70 count:16];
          v18 = v40;
          if (!v40)
          {
LABEL_61:
            downloadsCopy = v58;
            goto LABEL_87;
          }
        }
      }

      oSLogObject2 = [NSString stringWithCString:v15 encoding:4, &v71, v57];
      free(v15);
      v56 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_15;
  }

  v47 = v8;
  v48 = downloadsCopy;
  if (!v8)
  {
    v47 = +[SSLogConfig sharedConfig];
  }

  shouldLog5 = [v47 shouldLog];
  if ([v47 shouldLogToDisk])
  {
    v50 = shouldLog5 | 2;
  }

  else
  {
    v50 = shouldLog5;
  }

  v51 = v47;
  oSLogObject5 = [v47 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v53 = v50;
  }

  else
  {
    v53 = v50 & 2;
  }

  if (v53)
  {
    v71 = 138543362;
    v72 = objc_opt_class();
    v54 = v72;
    LODWORD(v57) = 12;
    v55 = _os_log_send_and_compose_impl();

    if (!v55)
    {
      goto LABEL_86;
    }

    oSLogObject5 = [NSString stringWithCString:v55 encoding:4, &v71, v57];
    free(v55);
    SSFileLog();
  }

LABEL_86:
  downloadsCopy = v48;
  v16 = v51;
LABEL_87:

LABEL_88:
}

+ (void)sendRestoreDownloads:(id)downloads withReason:(id)reason
{
  downloadsCopy = downloads;
  v6 = ISWeakLinkedClassForString();
  if (!v6)
  {
    sharedInstance = +[SSLogConfig sharedDaemonConfig];
    if (!sharedInstance)
    {
      sharedInstance = +[SSLogConfig sharedConfig];
    }

    shouldLog = [sharedInstance shouldLog];
    if ([sharedInstance shouldLogToDisk])
    {
      v23 = shouldLog | 2;
    }

    else
    {
      v23 = shouldLog;
    }

    oSLogObject = [sharedInstance OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 2;
    }

    if (v25)
    {
      v69 = 138543362;
      v70 = objc_opt_class();
      v26 = v70;
      LODWORD(v60) = 12;
      v27 = _os_log_send_and_compose_impl();

      if (!v27)
      {
        goto LABEL_76;
      }

      oSLogObject = [NSString stringWithCString:v27 encoding:4, &v69, v60];
      free(v27);
      SSFileLog();
    }

    goto LABEL_76;
  }

  sharedInstance = [v6 sharedInstance];
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (sharedInstance)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v9 shouldLog];
    v11 = [v9 shouldLogToDisk] == 0;
    v12 = v9;
    if (v11)
    {
      v13 = shouldLog2;
    }

    else
    {
      v13 = shouldLog2 | 2;
    }

    v14 = v12;
    oSLogObject2 = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v13;
    }

    else
    {
      v16 = v13 & 2;
    }

    if (v16)
    {
      v69 = 138543362;
      v70 = objc_opt_class();
      v17 = downloadsCopy;
      v18 = v70;
      LODWORD(v60) = 12;
      v59 = &v69;
      v19 = _os_log_send_and_compose_impl();

      downloadsCopy = v17;
      v20 = v14;
      if (v19)
      {
        v21 = [NSString stringWithCString:v19 encoding:4, &v69, v60];
        free(v19);
        v59 = v21;
        SSFileLog();
      }
    }

    else
    {

      v20 = v14;
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v38 = downloadsCopy;
    v39 = [v38 countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v39)
    {
      v40 = v39;
      v61 = downloadsCopy;
      v41 = *v65;
      selfCopy = self;
      while (1)
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v65 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v64 + 1) + 8 * i);
          if (v43)
          {
            dictionary = [v43 dictionary];
            v45 = [dictionary copy];

            if (v45)
            {
              v63[0] = _NSConcreteStackBlock;
              v63[1] = 3221225472;
              v63[2] = sub_100201F00;
              v63[3] = &unk_10032C380;
              v63[4] = self;
              [sharedInstance addRestoreDownloadWithMetadata:v45 completion:v63];
              goto LABEL_69;
            }

            v52 = sharedInstance;
            v53 = +[SSLogConfig sharedDaemonConfig];
            if (!v53)
            {
              v53 = +[SSLogConfig sharedConfig];
            }

            shouldLog3 = [v53 shouldLog];
            if ([v53 shouldLogToDisk])
            {
              shouldLog3 |= 2u;
            }

            oSLogObject3 = [v53 OSLogObject];
            if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
            {
              shouldLog3 &= 2u;
            }

            if (shouldLog3)
            {
              v56 = objc_opt_class();
              v69 = 138543362;
              v70 = v56;
              v57 = v56;
              LODWORD(v60) = 12;
              v59 = &v69;
              v58 = _os_log_send_and_compose_impl();

              self = selfCopy;
              if (v58)
              {
                oSLogObject3 = [NSString stringWithCString:v58 encoding:4, &v69, v60];
                free(v58);
                v59 = oSLogObject3;
                SSFileLog();
                goto LABEL_66;
              }
            }

            else
            {
LABEL_66:
            }

            sharedInstance = v52;
            goto LABEL_69;
          }

          v45 = +[SSLogConfig sharedDaemonConfig];
          if (!v45)
          {
            v45 = +[SSLogConfig sharedConfig];
          }

          shouldLog4 = [v45 shouldLog];
          if ([v45 shouldLogToDisk])
          {
            v47 = shouldLog4 | 2;
          }

          else
          {
            v47 = shouldLog4;
          }

          oSLogObject4 = [v45 OSLogObject];
          if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
          {
            v47 &= 2u;
          }

          if (!v47)
          {
            goto LABEL_56;
          }

          v49 = objc_opt_class();
          v69 = 138543362;
          v70 = v49;
          v50 = v49;
          LODWORD(v60) = 12;
          v59 = &v69;
          v51 = _os_log_send_and_compose_impl();

          if (v51)
          {
            oSLogObject4 = [NSString stringWithCString:v51 encoding:4, &v69, v60];
            free(v51);
            v59 = oSLogObject4;
            SSFileLog();
            self = selfCopy;
LABEL_56:

            goto LABEL_69;
          }

          self = selfCopy;
LABEL_69:
        }

        v40 = [v38 countByEnumeratingWithState:&v64 objects:v68 count:16];
        if (!v40)
        {
          downloadsCopy = v61;
          break;
        }
      }
    }
  }

  else
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v9 shouldLog];
    v11 = [v9 shouldLogToDisk] == 0;
    v29 = v9;
    if (v11)
    {
      v30 = shouldLog5;
    }

    else
    {
      v30 = shouldLog5 | 2;
    }

    v31 = v29;
    oSLogObject5 = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v30;
    }

    else
    {
      v33 = v30 & 2;
    }

    if (v33)
    {
      v34 = downloadsCopy;
      v69 = 138543362;
      v70 = objc_opt_class();
      v35 = v70;
      LODWORD(v60) = 12;
      v36 = _os_log_send_and_compose_impl();

      if (v36)
      {
        v37 = [NSString stringWithCString:v36 encoding:4, &v69, v60];
        free(v36);
        v38 = v31;
        SSFileLog();

        downloadsCopy = v34;
        goto LABEL_75;
      }

      downloadsCopy = v34;
    }

    else
    {
    }

    v38 = v31;
  }

LABEL_75:

LABEL_76:
}

+ (void)checkAutomaticDownloads
{
  v3 = ISWeakLinkedClassForString();
  if (!v3)
  {
    sharedInstance = +[SSLogConfig sharedDaemonConfig];
    if (!sharedInstance)
    {
      sharedInstance = +[SSLogConfig sharedConfig];
    }

    shouldLog = [sharedInstance shouldLog];
    if ([sharedInstance shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [sharedInstance OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v23 = 138543362;
      v24 = objc_opt_class();
      v14 = v24;
      LODWORD(v21) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
        goto LABEL_37;
      }

      oSLogObject = [NSString stringWithCString:v15 encoding:4, &v23, v21];
      free(v15);
      SSFileLog();
    }

    goto LABEL_36;
  }

  sharedInstance = [v3 sharedInstance];
  v5 = +[SSLogConfig sharedDaemonConfig];
  oSLogObject = v5;
  if (!sharedInstance)
  {
    if (!v5)
    {
      oSLogObject = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [oSLogObject shouldLog];
    if ([oSLogObject shouldLogToDisk])
    {
      v17 = shouldLog2 | 2;
    }

    else
    {
      v17 = shouldLog2;
    }

    v6OSLogObject = [oSLogObject OSLogObject];
    if (!os_log_type_enabled(v6OSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_35;
    }

    v23 = 138543362;
    v24 = objc_opt_class();
    v19 = v24;
    LODWORD(v21) = 12;
    v20 = _os_log_send_and_compose_impl();

    if (v20)
    {
      v6OSLogObject = [NSString stringWithCString:v20 encoding:4, &v23, v21];
      free(v20);
      SSFileLog();
LABEL_35:
    }

LABEL_36:

    goto LABEL_37;
  }

  if (!v5)
  {
    oSLogObject = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [oSLogObject shouldLog];
  if ([oSLogObject shouldLogToDisk])
  {
    v8 = shouldLog3 | 2;
  }

  else
  {
    v8 = shouldLog3;
  }

  v6OSLogObject2 = [oSLogObject OSLogObject];
  if (!os_log_type_enabled(v6OSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v23 = 138543362;
  v24 = objc_opt_class();
  v10 = v24;
  LODWORD(v21) = 12;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v6OSLogObject2 = [NSString stringWithCString:v11 encoding:4, &v23, v21];
    free(v11);
    SSFileLog();
LABEL_13:
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1002024D8;
  v22[3] = &unk_10032C3A0;
  v22[4] = self;
  [sharedInstance processAutomaticDownloadsWithReply:v22];
LABEL_37:
}

@end