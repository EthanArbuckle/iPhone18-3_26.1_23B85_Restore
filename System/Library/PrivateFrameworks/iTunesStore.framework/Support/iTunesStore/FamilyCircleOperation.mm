@interface FamilyCircleOperation
- (id)_cachePath;
- (id)_cachedFamilyCircleWithAccountIdentifier:(id)a3;
- (id)_familyCircleForDictionary:(id)a3;
- (void)_writeCacheWithFamilyCircle:(id)a3 accountIdentifier:(id)a4;
- (void)dealloc;
- (void)run;
@end

@implementation FamilyCircleOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FamilyCircleOperation;
  [(FamilyCircleOperation *)&v3 dealloc];
}

- (void)run
{
  v31 = 0;
  v3 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  if (!v3)
  {
    v14 = 0;
    goto LABEL_34;
  }

  v4 = v3;
  v5 = [SSURLBagContext contextWithBagType:0];
  v6 = SSHTTPHeaderUserAgent;
  [(SSURLBagContext *)v5 setValue:self->_userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  v7 = [(FamilyCircleOperation *)self loadedURLBagWithContext:v5 returningError:&v31];
  if (!v7)
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

    if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v18 = objc_opt_class();
      v32 = 138412290;
      v33 = v18;
      LODWORD(v30) = 12;
      v29 = &v32;
      v19 = _os_log_send_and_compose_impl();
      if (v19)
      {
        v20 = v19;
        v21 = [NSString stringWithCString:v19 encoding:4, &v32, v30];
        free(v20);
        v29 = v21;
        SSFileLog();
      }
    }

    goto LABEL_22;
  }

  v8 = +[NSURL URLWithString:](NSURL, "URLWithString:", [v7 valueForKey:@"family-info"]);
  v9 = v8;
  if (self->_fetchITunesAccountNames)
  {
    v9 = [(NSURL *)v8 URLByAppendingQueryParameter:@"fetchAccountNames" value:@"true"];
  }

  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = objc_alloc_init(SSMutableURLRequestProperties);
  [v10 setClientAuditTokenData:{-[FamilyCircleOperation clientAuditTokenData](self, "clientAuditTokenData")}];
  [v10 setURL:v9];
  [v10 setCachePolicy:1];
  [v10 setValue:-[FamilyCircleOperation userAgent](self forHTTPHeaderField:{"userAgent"), v6}];
  v11 = [[SSMutableAuthenticationContext alloc] initWithAccount:v4];
  [v11 setPromptStyle:{-[FamilyCircleOperation authenticationPromptStyle](self, "authenticationPromptStyle")}];
  v12 = objc_alloc_init(ISStoreURLOperation);
  [v12 setAuthenticationContext:v11];
  [v12 setRequestProperties:v10];
  [v12 setDataProvider:{+[ISProtocolDataProvider provider](ISProtocolDataProvider, "provider")}];
  if (-[FamilyCircleOperation runSubOperation:returningError:](self, "runSubOperation:returningError:", v12, &v31) && (v13 = [objc_msgSend(v12 "dataProvider")]) != 0)
  {
    v14 = [(FamilyCircleOperation *)self _familyCircleForDictionary:v13];
    -[FamilyCircleOperation _writeCacheWithFamilyCircle:accountIdentifier:](self, "_writeCacheWithFamilyCircle:accountIdentifier:", v14, [v4 uniqueIdentifier]);
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_22:
    v14 = -[FamilyCircleOperation _cachedFamilyCircleWithAccountIdentifier:](self, "_cachedFamilyCircleWithAccountIdentifier:", [v4 uniqueIdentifier]);
    if (v14)
    {
      v22 = +[SSLogConfig sharedDaemonConfig];
      if (!v22)
      {
        v22 = +[SSLogConfig sharedConfig];
      }

      v23 = [v22 shouldLog];
      if ([v22 shouldLogToDisk])
      {
        v24 = v23 | 2;
      }

      else
      {
        v24 = v23;
      }

      if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v24 &= 2u;
      }

      if (v24)
      {
        v25 = objc_opt_class();
        v32 = 138412546;
        v33 = v25;
        v34 = 2112;
        v35 = v31;
        LODWORD(v30) = 22;
        v29 = &v32;
        v26 = _os_log_send_and_compose_impl();
        if (v26)
        {
          v27 = v26;
          v28 = [NSString stringWithCString:v26 encoding:4, &v32, v30];
          free(v27);
          v29 = v28;
          SSFileLog();
        }
      }

      v31 = 0;
    }
  }

LABEL_34:
  [(FamilyCircleOperation *)self setError:v31, v29];
  [(FamilyCircleOperation *)self setSuccess:v14 != 0];
  self->_familyCircle = v14;
}

- (id)_cachedFamilyCircleWithAccountIdentifier:(id)a3
{
  v4 = [(FamilyCircleOperation *)self _cachePath];
  if (v4 && (v5 = [[NSData alloc] initWithContentsOfFile:v4]) != 0)
  {
    v6 = v5;
    v7 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (v8 = [v7 objectForKey:@"account"], v9 = objc_msgSend(v7, "objectForKey:", @"circle"), v10 = objc_msgSend(v7, "objectForKey:", @"timestamp"), objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", v10];
      v12 = v11;
      v13 = [v8 isEqualToNumber:a3];
      v14 = 0;
      if (v13 && v12 > 2.22044605e-16 && v12 < 604800.0)
      {
        v14 = [[SSFamilyCircle alloc] initWithCacheRepresentation:v9];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_cachePath
{
  v2 = [[NSArray alloc] initWithObjects:{-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1), "lastObject"), @"com.apple.itunesstored", @"JFamilyCircle.plist", 0}];
  v3 = [NSString pathWithComponents:v2];

  return v3;
}

- (id)_familyCircleForDictionary:(id)a3
{
  v36 = +[NSMutableArray array];
  v33 = a3;
  v4 = [a3 objectForKey:@"family"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"members"];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      v34 = *v44;
      v35 = v5;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 objectForKey:@"ITunesPreferredDsid"];
            if (objc_opt_respondsToSelector())
            {
              v12 = [v10 objectForKey:@"ICloudDsid"];
              if (objc_opt_respondsToSelector())
              {
                v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 longLongValue]);
              }

              else
              {
                v13 = 0;
              }

              v14 = [v10 objectForKey:@"firstName"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v14 = 0;
              }

              v15 = [v10 objectForKey:@"lastName"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v15 = 0;
              }

              v16 = [v10 objectForKey:@"accountName"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v16 = 0;
              }

              v17 = [v10 objectForKey:@"sharingPurchases"];
              v18 = objc_alloc_init(SSFamilyMember);
              [v18 setITunesIdentifier:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", objc_msgSend(v11, "longLongValue"))}];
              [v18 setFirstName:v14];
              [v18 setLastName:v15];
              [v18 setICloudAccountName:v16];
              [v18 setICloudIdentifier:v13];
              [v18 setSharingPurchases:{objc_msgSend(v17, "BOOLValue")}];
              [v36 addObject:v18];

              v8 = v34;
              v5 = v35;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v7);
    }
  }

  v19 = +[NSMutableArray array];
  v20 = [v33 objectForKey:@"iTunesAccountNames"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v40;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v39 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v22);
    }
  }

  if (![v36 count])
  {
    return 0;
  }

  v26 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  ISWeakLinkerLoadLibrary();
  v27 = objc_alloc_init(ACAccountStore);
  v28 = [objc_msgSend(v27 "aa_primaryAppleAccount")];

  v29 = 0;
  if (v26 && v28)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10009B0FC;
    v38[3] = &unk_100327430;
    v38[4] = v28;
    v38[5] = v26;
    v29 = [objc_msgSend(v36 filteredArrayUsingPredicate:{+[NSPredicate predicateWithBlock:](NSPredicate, "predicateWithBlock:", v38)), "firstObject"}];
  }

  if (v26 && !v29)
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10009B160;
    v37[3] = &unk_100327458;
    v37[4] = v26;
    v30 = [v36 filteredArrayUsingPredicate:{+[NSPredicate predicateWithBlock:](NSPredicate, "predicateWithBlock:", v37)}];
    if ([v30 count] == 1)
    {
      v29 = [v30 firstObject];
    }

    else
    {
      v29 = 0;
    }
  }

  [v29 setMe:1];
  [v36 sortUsingComparator:&stru_100327498];
  v31 = objc_alloc_init(SSFamilyCircle);
  [v31 setITunesAccountNames:v19];
  [v31 setFamilyMembers:v36];
  return v31;
}

- (void)_writeCacheWithFamilyCircle:(id)a3 accountIdentifier:(id)a4
{
  v10 = [a3 newCacheRepresentation];
  if (v10)
  {
    v6 = [(FamilyCircleOperation *)self _cachePath];
    if (v6)
    {
      v7 = v6;
      v8 = objc_alloc_init(NSMutableDictionary);
      [v8 setObject:a4 forKey:@"account"];
      [v8 setObject:v10 forKey:@"circle"];
      [v8 setObject:+[NSDate date](NSDate forKey:{"date"), @"timestamp"}];
      v9 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:0];
      if (v9)
      {
        [(NSData *)v9 writeToFile:v7 options:1 error:0];
      }
    }
  }
}

@end