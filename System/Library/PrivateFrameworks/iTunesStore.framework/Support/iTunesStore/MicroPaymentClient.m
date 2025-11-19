@interface MicroPaymentClient
+ (id)entityForContext:(id)a3;
- (id)mergeResponse:(id)a3 withOptions:(int64_t)a4;
- (id)replacePayment:(id)a3 withPurchaseResponse:(id)a4;
- (void)setValuesWithClientIdentity:(id)a3;
@end

@implementation MicroPaymentClient

+ (id)entityForContext:(id)a3
{
  v3 = [objc_msgSend(objc_msgSend(a3 "persistentStoreCoordinator")];

  return [v3 objectForKey:@"MicroPaymentClient"];
}

- (id)mergeResponse:(id)a3 withOptions:(int64_t)a4
{
  v4 = a4;
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v51 = objc_alloc_init(NSMutableArray);
  if (v4)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v7 = objc_alloc_init(NSMutableArray);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v59 = v7;
  if ((v4 & 2) != 0)
  {
    v62 = objc_alloc_init(NSMutableSet);
  }

  else
  {
    v62 = 0;
  }

  v54 = v8;
  v9 = [(MicroPaymentClient *)self payments];
  v10 = objc_alloc_init(NSMutableArray);
  v58 = objc_alloc_init(NSMutableDictionary);
  v61 = objc_alloc_init(NSMutableDictionary);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v80;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v80 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v79 + 1) + 8 * i);
        v16 = [v15 transactionIdentifier];
        if (v16)
        {
          [v61 setObject:v15 forKey:v16];
        }

        else
        {
          [v10 addObject:v15];
        }

        if ([objc_msgSend(v15 "supportsDeferredPayment")])
        {
          v17 = [v15 productIdentifier];
          if (v17)
          {
            [v58 setObject:v15 forKey:v17];
          }
        }

        [v62 addObject:v15];
      }

      v12 = [v9 countByEnumeratingWithState:&v79 objects:v87 count:16];
    }

    while (v12);
  }

  v56 = [(MicroPaymentClient *)self managedObjectContext];
  v53 = [MicroPayment paymentEntityFromContext:?];
  v52 = [a3 requestType];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [a3 payments];
  v18 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
  v19 = v59;
  if (v18)
  {
    v20 = v18;
    v60 = *v76;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v76 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v75 + 1) + 8 * j);
        v23 = [v22 objectForKey:@"transaction-id"];
        if (v23)
        {
          v24 = [v61 objectForKey:v23];
          if (v24)
          {
            v25 = v24;
LABEL_40:
            [v25 mergeValuesFromResponse:v22];
            [v62 removeObject:v25];
            [v19 addObject:v25];
            continue;
          }
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v26 = [v10 countByEnumeratingWithState:&v71 objects:v85 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v72;
LABEL_30:
          v29 = 0;
          while (1)
          {
            if (*v72 != v28)
            {
              objc_enumerationMutation(v10);
            }

            v25 = *(*(&v71 + 1) + 8 * v29);
            if ([v25 isEqualToResponse:v22 compareAllFields:1])
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v10 countByEnumeratingWithState:&v71 objects:v85 count:16];
              v19 = v59;
              if (v27)
              {
                goto LABEL_30;
              }

              goto LABEL_38;
            }
          }

          v19 = v59;
          if (v25)
          {
            goto LABEL_40;
          }
        }

LABEL_38:
        v30 = [v22 objectForKey:@"item-id"];
        if (v30)
        {
          v25 = [v58 objectForKey:v30];
          [v25 setState:&off_10034BD00];
          if (v25)
          {
            goto LABEL_40;
          }
        }

        v31 = [[MicroPayment alloc] initWithEntity:v53 insertIntoManagedObjectContext:v56];
        [(MicroPayment *)v31 mergeValuesFromResponse:v22];
        [(MicroPayment *)v31 setClient:self];
        if (v52 == 1)
        {
          v32 = 6;
        }

        else if ([(MicroPayment *)v31 originalTransactionIdentifier])
        {
          v32 = 7;
        }

        else
        {
          v32 = 2;
        }

        [(MicroPayment *)v31 setState:[NSNumber numberWithInteger:v32]];
        v33 = [(MicroPayment *)v31 transactionIdentifier];
        if (v33)
        {
          [v61 setObject:v31 forKey:v33];
        }

        else
        {
          [v10 addObject:v31];
        }

        [v54 addObject:v31];
        [v19 addObject:v31];
      }

      v20 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
    }

    while (v20);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v34 = [v62 countByEnumeratingWithState:&v67 objects:v84 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v68;
    do
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v68 != v36)
        {
          objc_enumerationMutation(v62);
        }

        v38 = *(*(&v67 + 1) + 8 * k);
        v39 = [objc_msgSend(v38 "state")];
        v40 = v39 == 5 || v39 == 8;
        if (!v40 && [v38 transactionIdentifier])
        {
          v41 = [v38 downloads];
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v42 = [v41 countByEnumeratingWithState:&v63 objects:v83 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v64;
            do
            {
              for (m = 0; m != v43; m = m + 1)
              {
                if (*v64 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = [*(*(&v63 + 1) + 8 * m) downloadID];
                if (v46)
                {
                  [v6 addObject:v46];
                }
              }

              v43 = [v41 countByEnumeratingWithState:&v63 objects:v83 count:16];
            }

            while (v43);
          }

          [v51 addObject:v38];
          [v56 deleteObject:v38];
          v19 = v59;
        }
      }

      v35 = [v62 countByEnumeratingWithState:&v67 objects:v84 count:16];
    }

    while (v35);
  }

  if (sub_1000CE00C(v56))
  {
    v47 = objc_alloc_init(MicroPaymentClientMergeResults);
    v48 = v54;
    [(MicroPaymentClientMergeResults *)v47 setAddedPayments:v54];
    [(MicroPaymentClientMergeResults *)v47 setChangedPayments:v19];
    [(MicroPaymentClientMergeResults *)v47 setRemovedDownloadIDs:v6];
    v49 = v51;
    [(MicroPaymentClientMergeResults *)v47 setRemovedPayments:v51];
  }

  else
  {
    [v56 rollback];
    v47 = 0;
    v49 = v51;
    v48 = v54;
  }

  return v47;
}

- (id)replacePayment:(id)a3 withPurchaseResponse:(id)a4
{
  v37 = objc_alloc_init(NSMutableArray);
  v36 = objc_alloc_init(NSMutableArray);
  v35 = [(MicroPaymentClient *)self managedObjectContext];
  v34 = [MicroPayment paymentEntityFromContext:?];
  v7 = [a4 payments];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        if ([a3 isEqualToResponse:v12 compareAllFields:{0, v32, v33}])
        {
          [a3 mergeValuesFromResponse:v12];
          [a3 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 2)}];
          [v36 addObject:a3];
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

          if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v15 &= 2u;
          }

          if (v15)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v16 = [[MicroPayment alloc] initWithEntity:v34 insertIntoManagedObjectContext:v35];
          [(MicroPayment *)v16 mergeValuesFromResponse:v12];
          [(MicroPayment *)v16 setClient:self];
          [(MicroPayment *)v16 setState:[NSNumber numberWithInteger:2]];
          [v37 addObject:v16];

          v17 = +[SSLogConfig sharedDaemonConfig];
          if (!v17)
          {
            v17 = +[SSLogConfig sharedConfig];
          }

          v18 = [v17 shouldLog];
          if ([v17 shouldLogToDisk])
          {
            v19 = v18 | 2;
          }

          else
          {
            v19 = v18;
          }

          if (!os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v19 &= 2u;
          }

          if (v19)
          {
LABEL_24:
            v20 = objc_opt_class();
            v42 = 138412290;
            v43 = v20;
            LODWORD(v33) = 12;
            v32 = &v42;
            v21 = _os_log_send_and_compose_impl();
            if (v21)
            {
              v22 = v21;
              v23 = [NSString stringWithCString:v21 encoding:4];
              free(v22);
              v32 = v23;
              SSFileLog();
            }

            continue;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v9);
  }

  if (a3 && ![v36 count])
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v25 |= 2u;
    }

    if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v26 = objc_opt_class();
      v42 = 138412290;
      v43 = v26;
      LODWORD(v33) = 12;
      v27 = _os_log_send_and_compose_impl();
      if (v27)
      {
        v28 = v27;
        [NSString stringWithCString:v27 encoding:4, &v42, v33];
        free(v28);
        SSFileLog();
      }
    }

    sub_1001FA1F0();
    [a3 setFailedWithError:ISErrorWithDomain()];
    [v36 addObject:a3];
  }

  if (sub_1000CE00C(v35))
  {
    v29 = objc_alloc_init(MicroPaymentClientMergeResults);
    v30 = v37;
    [(MicroPaymentClientMergeResults *)v29 setAddedPayments:v37];
    [(MicroPaymentClientMergeResults *)v29 setChangedPayments:v36];
  }

  else
  {
    [v35 rollback];
    v29 = 0;
    v30 = v37;
  }

  return v29;
}

- (void)setValuesWithClientIdentity:(id)a3
{
  -[MicroPaymentClient setBundleVersion:](self, "setBundleVersion:", [a3 bundleVersion]);
  -[MicroPaymentClient setIdentifier:](self, "setIdentifier:", [a3 bundleIdentifier]);
  -[MicroPaymentClient setStoreIdentifier:](self, "setStoreIdentifier:", [a3 storeIdentifier]);
  -[MicroPaymentClient setStoreVersion:](self, "setStoreVersion:", [a3 storeVersion]);
  -[MicroPaymentClient setVendorIdentifier:](self, "setVendorIdentifier:", [a3 vendorIdentifier]);
  -[MicroPaymentClient setSandboxed:](self, "setSandboxed:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a3 isSandboxed]));
  -[MicroPaymentClient setUsesIdentityAttributes:](self, "setUsesIdentityAttributes:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a3 usesIdentityAttributes]));
  -[MicroPaymentClient setAllowsBootstrapCellularData:](self, "setAllowsBootstrapCellularData:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a3 allowsBootstrapCellularData]));
  -[MicroPaymentClient setHidesConfirmationDialogs:](self, "setHidesConfirmationDialogs:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a3 hidesConfirmationDialogs]));
  -[MicroPaymentClient setIgnoresInAppPurchaseRestriction:](self, "setIgnoresInAppPurchaseRestriction:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a3 ignoresInAppPurchaseRestriction]));
  -[MicroPaymentClient setReceiptDirectoryPath:](self, "setReceiptDirectoryPath:", [a3 receiptDirectoryPath]);
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a3 requiresAuthenticationForPayment]);

  [(MicroPaymentClient *)self setRequiresAuthenticationForPayment:v5];
}

@end