@interface BookAssetDaemonUtility
+ (void)checkAutomaticDownloads;
+ (void)sendBookDownloads:(id)a3 withReason:(id)a4;
+ (void)sendBookStoreDownloads:(id)a3 withReason:(id)a4;
+ (void)sendRestoreDownloads:(id)a3 withReason:(id)a4;
@end

@implementation BookAssetDaemonUtility

+ (void)sendBookDownloads:(id)a3 withReason:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 count])
  {
    goto LABEL_28;
  }

  v25 = v6;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = v5;
  v8 = v5;
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
      v14 = [v13 copyStoreDownloadMetadata];
      if (v14)
      {
        v15 = [v13 downloadPolicy];
        if (v15)
        {
          [v14 setDownloadPolicy:v15];
        }

        [v7 addObject:v14];
      }

      else
      {
        v15 = +[SSLogConfig sharedDaemonConfig];
        if (!v15)
        {
          v15 = +[SSLogConfig sharedConfig];
        }

        v16 = [v15 shouldLog];
        if ([v15 shouldLogToDisk])
        {
          v17 = v16 | 2;
        }

        else
        {
          v17 = v16;
        }

        v18 = [v15 OSLogObject];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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

          v18 = [NSString stringWithCString:v22 encoding:4, &v31, v24];
          free(v22);
          v23 = v18;
          SSFileLog();
        }
      }

LABEL_23:
    }

    v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
  }

  while (v10);
LABEL_25:

  v6 = v25;
  if (v7)
  {
    [BookAssetDaemonUtility sendBookStoreDownloads:v7 withReason:v25];
  }

  v5 = v26;
LABEL_28:
}

+ (void)sendBookStoreDownloads:(id)a3 withReason:(id)a4
{
  v5 = a3;
  v6 = ISWeakLinkedClassForString();
  if (!v6)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v41 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v42 = v41 | 2;
    }

    else
    {
      v42 = v41;
    }

    v43 = [v7 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
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

      v43 = [NSString stringWithCString:v46 encoding:4, &v71, v57];
      free(v46);
      SSFileLog();
    }

    goto LABEL_88;
  }

  v7 = [v6 sharedInstance];
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (v7)
  {
    v58 = v5;
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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
        v59 = v7;
        v60 = a1;
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
              v21 = [*(*(&v66 + 1) + 8 * v19) redownloadActionParameters];
              v22 = [v21 copy];

              v23 = [v20 downloadPermalink];
              if (v23)
              {
                v24 = v23;
                goto LABEL_33;
              }

              v56 = 0;
              v24 = [v20 valueForFirstAvailableKey:@"download_permalink"];
              if (v24)
              {
LABEL_33:
                v29 = [NSURL URLWithString:v24, v56];
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
                  v64[4] = a1;
                  [v7 addDownloadWithPurchaseParameters:v22 completion:v64];
                }

                else if (v29)
                {
                  v32 = [v20 title];
                  v33 = [v32 copy];

                  v63[0] = _NSConcreteStackBlock;
                  v63[1] = 3221225472;
                  v63[2] = sub_100201588;
                  v63[3] = &unk_10032C380;
                  v63[4] = a1;
                  [v7 addDownloadWithPermlink:v29 title:v33 completion:v63];

                  v16 = v61;
                }
              }

              else
              {
                v30 = [v20 dictionary];
                v31 = [v30 copy];

                if (v31)
                {
                  v65[0] = _NSConcreteStackBlock;
                  v65[1] = 3221225472;
                  v65[2] = sub_100201218;
                  v65[3] = &unk_10032C380;
                  v65[4] = a1;
                  [v7 addDownloadWithMetadata:v31 completion:v65];
                  goto LABEL_53;
                }

                v34 = +[SSLogConfig sharedDaemonConfig];
                if (!v34)
                {
                  v34 = +[SSLogConfig sharedConfig];
                }

                v35 = [v34 shouldLog];
                if ([v34 shouldLogToDisk])
                {
                  v35 |= 2u;
                }

                v36 = [v34 OSLogObject];
                if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v35 &= 2u;
                }

                if (v35)
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
                    v36 = [NSString stringWithCString:v39 encoding:4, &v71, v57];
                    free(v39);
                    v56 = v36;
                    SSFileLog();
                    goto LABEL_51;
                  }
                }

                else
                {
LABEL_51:
                }

                v7 = v59;
                a1 = v60;
LABEL_53:
              }

              goto LABEL_55;
            }

            v22 = +[SSLogConfig sharedDaemonConfig];
            if (!v22)
            {
              v22 = +[SSLogConfig sharedConfig];
            }

            v25 = [v22 shouldLog];
            if ([v22 shouldLogToDisk])
            {
              v25 |= 2u;
            }

            v24 = [v22 OSLogObject];
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 &= 2u;
            }

            if (!v25)
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
              v24 = [NSString stringWithCString:v28 encoding:4, &v71, v57];
              free(v28);
              v56 = v24;
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
            v5 = v58;
            goto LABEL_87;
          }
        }
      }

      v12 = [NSString stringWithCString:v15 encoding:4, &v71, v57];
      free(v15);
      v56 = v12;
      SSFileLog();
    }

    goto LABEL_15;
  }

  v47 = v8;
  v48 = v5;
  if (!v8)
  {
    v47 = +[SSLogConfig sharedConfig];
  }

  v49 = [v47 shouldLog];
  if ([v47 shouldLogToDisk])
  {
    v50 = v49 | 2;
  }

  else
  {
    v50 = v49;
  }

  v51 = v47;
  v52 = [v47 OSLogObject];
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
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

    v52 = [NSString stringWithCString:v55 encoding:4, &v71, v57];
    free(v55);
    SSFileLog();
  }

LABEL_86:
  v5 = v48;
  v16 = v51;
LABEL_87:

LABEL_88:
}

+ (void)sendRestoreDownloads:(id)a3 withReason:(id)a4
{
  v5 = a3;
  v6 = ISWeakLinkedClassForString();
  if (!v6)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v22 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v7 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
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

      v24 = [NSString stringWithCString:v27 encoding:4, &v69, v60];
      free(v27);
      SSFileLog();
    }

    goto LABEL_76;
  }

  v7 = [v6 sharedInstance];
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    v11 = [v9 shouldLogToDisk] == 0;
    v12 = v9;
    if (v11)
    {
      v13 = v10;
    }

    else
    {
      v13 = v10 | 2;
    }

    v14 = v12;
    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
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
      v17 = v5;
      v18 = v70;
      LODWORD(v60) = 12;
      v59 = &v69;
      v19 = _os_log_send_and_compose_impl();

      v5 = v17;
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
    v38 = v5;
    v39 = [v38 countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v39)
    {
      v40 = v39;
      v61 = v5;
      v41 = *v65;
      v62 = a1;
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
            v44 = [v43 dictionary];
            v45 = [v44 copy];

            if (v45)
            {
              v63[0] = _NSConcreteStackBlock;
              v63[1] = 3221225472;
              v63[2] = sub_100201F00;
              v63[3] = &unk_10032C380;
              v63[4] = a1;
              [v7 addRestoreDownloadWithMetadata:v45 completion:v63];
              goto LABEL_69;
            }

            v52 = v7;
            v53 = +[SSLogConfig sharedDaemonConfig];
            if (!v53)
            {
              v53 = +[SSLogConfig sharedConfig];
            }

            v54 = [v53 shouldLog];
            if ([v53 shouldLogToDisk])
            {
              v54 |= 2u;
            }

            v55 = [v53 OSLogObject];
            if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v54 &= 2u;
            }

            if (v54)
            {
              v56 = objc_opt_class();
              v69 = 138543362;
              v70 = v56;
              v57 = v56;
              LODWORD(v60) = 12;
              v59 = &v69;
              v58 = _os_log_send_and_compose_impl();

              a1 = v62;
              if (v58)
              {
                v55 = [NSString stringWithCString:v58 encoding:4, &v69, v60];
                free(v58);
                v59 = v55;
                SSFileLog();
                goto LABEL_66;
              }
            }

            else
            {
LABEL_66:
            }

            v7 = v52;
            goto LABEL_69;
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
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
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
            v48 = [NSString stringWithCString:v51 encoding:4, &v69, v60];
            free(v51);
            v59 = v48;
            SSFileLog();
            a1 = v62;
LABEL_56:

            goto LABEL_69;
          }

          a1 = v62;
LABEL_69:
        }

        v40 = [v38 countByEnumeratingWithState:&v64 objects:v68 count:16];
        if (!v40)
        {
          v5 = v61;
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

    v28 = [v9 shouldLog];
    v11 = [v9 shouldLogToDisk] == 0;
    v29 = v9;
    if (v11)
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 | 2;
    }

    v31 = v29;
    v32 = [v29 OSLogObject];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v30;
    }

    else
    {
      v33 = v30 & 2;
    }

    if (v33)
    {
      v34 = v5;
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

        v5 = v34;
        goto LABEL_75;
      }

      v5 = v34;
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
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v12 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v6 = [v4 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
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

      v6 = [NSString stringWithCString:v15 encoding:4, &v23, v21];
      free(v15);
      SSFileLog();
    }

    goto LABEL_36;
  }

  v4 = [v3 sharedInstance];
  v5 = +[SSLogConfig sharedDaemonConfig];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v16 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v6 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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
      v18 = [NSString stringWithCString:v20 encoding:4, &v23, v21];
      free(v20);
      SSFileLog();
LABEL_35:
    }

LABEL_36:

    goto LABEL_37;
  }

  if (!v5)
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
    goto LABEL_13;
  }

  v23 = 138543362;
  v24 = objc_opt_class();
  v10 = v24;
  LODWORD(v21) = 12;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [NSString stringWithCString:v11 encoding:4, &v23, v21];
    free(v11);
    SSFileLog();
LABEL_13:
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1002024D8;
  v22[3] = &unk_10032C3A0;
  v22[4] = a1;
  [v4 processAutomaticDownloadsWithReply:v22];
LABEL_37:
}

@end