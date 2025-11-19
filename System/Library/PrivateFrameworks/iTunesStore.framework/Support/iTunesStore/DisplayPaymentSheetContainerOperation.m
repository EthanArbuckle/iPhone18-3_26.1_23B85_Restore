@interface DisplayPaymentSheetContainerOperation
- (DisplayPaymentSheetContainerOperation)initWithDisplayPaymentSheetOperation:(id)a3;
- (void)_loadURLBag;
- (void)_postMetricsEventForError:(id)a3;
- (void)dealloc;
- (void)run;
@end

@implementation DisplayPaymentSheetContainerOperation

- (DisplayPaymentSheetContainerOperation)initWithDisplayPaymentSheetOperation:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DisplayPaymentSheetContainerOperation;
  v6 = [(DisplayPaymentSheetContainerOperation *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.itunesstored.DisplayPaymentSheetContainerOperation", 0);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    objc_storeStrong(&v6->_displayPaymentSheetOperation, a3);
    v9 = dispatch_semaphore_create(0);
    semaphore = v6->_semaphore;
    v6->_semaphore = v9;
  }

  return v6;
}

- (void)dealloc
{
  [(DisplayPaymentSheetOperation *)self->_displayPaymentSheetOperation setCompletionHandler:0];
  [(DisplayPaymentSheetOperation *)self->_displayPaymentSheetOperation setContainerCompletionHandler:0];
  v3.receiver = self;
  v3.super_class = DisplayPaymentSheetContainerOperation;
  [(DisplayPaymentSheetContainerOperation *)&v3 dealloc];
}

- (void)run
{
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  if (!self->_displayPaymentSheetOperation)
  {
    v67 = SSError();
    v61 = +[SSLogConfig sharedDaemonConfig];
    if (!v61)
    {
      v61 = +[SSLogConfig sharedConfig];
    }

    v75 = [v61 shouldLog];
    v76 = [v61 shouldLogToDisk];
    v77 = [v61 OSLogObject];
    v78 = v77;
    if (v76)
    {
      v75 |= 2u;
    }

    if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v75 &= 2u;
    }

    if (v75)
    {
      v79 = objc_opt_class();
      v111 = 138543362;
      v112 = v79;
      v80 = v79;
      LODWORD(v99) = 12;
      v81 = _os_log_send_and_compose_impl();

      if (!v81)
      {
        goto LABEL_98;
      }

      v78 = [NSString stringWithCString:v81 encoding:4, &v111, v99];
      free(v81);
      SSFileLog();
    }

    goto LABEL_98;
  }

  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  v5 = [v3 shouldLogToDisk];
  v6 = [v3 OSLogObject];
  v7 = v6;
  if (v5)
  {
    v4 |= 2u;
  }

  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v8 = objc_opt_class();
    v111 = 138543362;
    v112 = v8;
    v9 = v8;
    LODWORD(v99) = 12;
    v94 = &v111;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    v7 = [NSString stringWithCString:v10 encoding:4, &v111, v99];
    free(v10);
    v94 = v7;
    SSFileLog();
  }

LABEL_12:
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  v13 = [v11 shouldLogToDisk];
  v14 = [v11 OSLogObject];
  v15 = v14;
  if (v13)
  {
    v12 |= 2u;
  }

  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_23;
  }

  v16 = objc_opt_class();
  v17 = [(DisplayPaymentSheetOperation *)self->_displayPaymentSheetOperation localAuthAccessControlRef];
  v18 = @"YES";
  if (!v17)
  {
    v18 = @"NO";
  }

  v111 = 138543618;
  v112 = v16;
  v113 = 2114;
  v114 = v18;
  LODWORD(v99) = 22;
  v95 = &v111;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    v15 = [NSString stringWithCString:v19 encoding:4, &v111, v99];
    free(v19);
    v95 = v15;
    SSFileLog();
LABEL_23:
  }

  v20 = +[SSLogConfig sharedDaemonConfig];
  if (!v20)
  {
    v20 = +[SSLogConfig sharedConfig];
  }

  v21 = [v20 shouldLog];
  v22 = [v20 shouldLogToDisk];
  v23 = [v20 OSLogObject];
  v24 = v23;
  if (v22)
  {
    v21 |= 2u;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v21;
  }

  else
  {
    v25 = v21 & 2;
  }

  if (!v25)
  {
    goto LABEL_36;
  }

  v26 = objc_opt_class();
  v27 = [(DisplayPaymentSheetOperation *)self->_displayPaymentSheetOperation localAuthContext];
  v28 = @"YES";
  if (!v27)
  {
    v28 = @"NO";
  }

  v111 = 138543618;
  v112 = v26;
  v113 = 2114;
  v114 = v28;
  LODWORD(v99) = 22;
  v96 = &v111;
  v29 = _os_log_send_and_compose_impl();

  if (v29)
  {
    v24 = [NSString stringWithCString:v29 encoding:4, &v111, v99];
    free(v29);
    v96 = v24;
    SSFileLog();
LABEL_36:
  }

  v30 = +[SSLogConfig sharedDaemonConfig];
  if (!v30)
  {
    v30 = +[SSLogConfig sharedConfig];
  }

  v31 = [v30 shouldLog];
  v32 = [v30 shouldLogToDisk];
  v33 = [v30 OSLogObject];
  v34 = v33;
  if (v32)
  {
    v31 |= 2u;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v35 = v31;
  }

  else
  {
    v35 = v31 & 2;
  }

  if (!v35)
  {
    goto LABEL_49;
  }

  v36 = objc_opt_class();
  v37 = [(DisplayPaymentSheetOperation *)self->_displayPaymentSheetOperation localAuthOptions];
  v38 = @"YES";
  if (!v37)
  {
    v38 = @"NO";
  }

  v111 = 138543618;
  v112 = v36;
  v113 = 2114;
  v114 = v38;
  LODWORD(v99) = 22;
  v97 = &v111;
  v39 = _os_log_send_and_compose_impl();

  if (v39)
  {
    v34 = [NSString stringWithCString:v39 encoding:4, &v111, v99];
    free(v39);
    v97 = v34;
    SSFileLog();
LABEL_49:
  }

  v40 = +[SSLogConfig sharedDaemonConfig];
  if (!v40)
  {
    v40 = +[SSLogConfig sharedConfig];
  }

  v41 = [v40 shouldLog];
  v42 = [v40 shouldLogToDisk];
  v43 = [v40 OSLogObject];
  v44 = v43;
  if (v42)
  {
    v41 |= 2u;
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v41;
  }

  else
  {
    v45 = v41 & 2;
  }

  if (!v45)
  {
    goto LABEL_62;
  }

  v46 = objc_opt_class();
  v47 = [(DisplayPaymentSheetOperation *)self->_displayPaymentSheetOperation authenticationContext];
  v48 = @"YES";
  if (!v47)
  {
    v48 = @"NO";
  }

  v111 = 138543618;
  v112 = v46;
  v113 = 2114;
  v114 = v48;
  LODWORD(v99) = 22;
  v98 = &v111;
  v49 = _os_log_send_and_compose_impl();

  if (v49)
  {
    v44 = [NSString stringWithCString:v49 encoding:4, &v111, v99];
    free(v49);
    v98 = v44;
    SSFileLog();
LABEL_62:
  }

  v50 = +[SSLogConfig sharedDaemonConfig];
  if (!v50)
  {
    v50 = +[SSLogConfig sharedConfig];
  }

  v51 = [v50 shouldLog];
  v52 = [v50 shouldLogToDisk];
  v53 = [v50 OSLogObject];
  v54 = v53;
  if (v52)
  {
    v51 |= 2u;
  }

  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v55 = v51;
  }

  else
  {
    v55 = v51 & 2;
  }

  if (v55)
  {
    v56 = objc_opt_class();
    v57 = [(DisplayPaymentSheetOperation *)self->_displayPaymentSheetOperation accountIdentifier];
    v111 = 138543618;
    v112 = v56;
    v113 = 2112;
    v114 = v57;
    LODWORD(v99) = 22;
    v58 = _os_log_send_and_compose_impl();

    if (!v58)
    {
      goto LABEL_74;
    }

    v54 = [NSString stringWithCString:v58 encoding:4, &v111, v99];
    free(v58);
    SSFileLog();
  }

LABEL_74:
  v59 = [NSString stringWithFormat:@"%@", objc_opt_class()];
  objc_initWeak(&location, self->_semaphore);
  displayPaymentSheetOperation = self->_displayPaymentSheetOperation;
  v102[0] = _NSConcreteStackBlock;
  v102[1] = 3221225472;
  v102[2] = sub_100226204;
  v102[3] = &unk_10032CBE8;
  objc_copyWeak(&v105, &location);
  v61 = v59;
  v103 = v61;
  v104 = &v107;
  [(DisplayPaymentSheetOperation *)displayPaymentSheetOperation setContainerCompletionHandler:v102];
  v62 = +[ISOperationQueue mainQueue];
  [v62 addOperation:self->_displayPaymentSheetOperation];

  semaphore = self->_semaphore;
  v64 = dispatch_time(0, 180000000000);
  v65 = dispatch_semaphore_wait(semaphore, v64);
  v66 = self->_displayPaymentSheetOperation;
  if (v65)
  {
    [(DisplayPaymentSheetOperation *)v66 dismiss];
    v67 = SSError();
    v68 = +[SSLogConfig sharedDaemonConfig];
    if (!v68)
    {
      v68 = +[SSLogConfig sharedConfig];
    }

    v69 = [v68 shouldLog];
    v70 = [v68 shouldLogToDisk];
    v71 = [v68 OSLogObject];
    v72 = v71;
    if (v70)
    {
      v69 |= 2u;
    }

    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v73 = v69;
    }

    else
    {
      v73 = v69 & 2;
    }

    if (v73)
    {
      v111 = 138543362;
      v112 = v61;
      LODWORD(v99) = 12;
      v74 = _os_log_send_and_compose_impl();

      if (!v74)
      {
LABEL_86:

        dispatch_semaphore_signal(self->_semaphore);
        goto LABEL_87;
      }

      v72 = [NSString stringWithCString:v74 encoding:4, &v111, v99];
      free(v74);
      SSFileLog();
    }

    goto LABEL_86;
  }

  if ([(DisplayPaymentSheetOperation *)v66 success])
  {
    v82 = [(DisplayPaymentSheetOperation *)self->_displayPaymentSheetOperation error];
    v83 = v82 == 0;

    if (v83)
    {
      v67 = 0;
      goto LABEL_87;
    }
  }

  v67 = [(DisplayPaymentSheetOperation *)self->_displayPaymentSheetOperation error];
  v84 = +[SSLogConfig sharedDaemonConfig];
  if (!v84)
  {
    v84 = +[SSLogConfig sharedConfig];
  }

  v85 = [v84 shouldLog];
  v86 = [v84 shouldLogToDisk];
  v87 = [v84 OSLogObject];
  v88 = v87;
  if (v86)
  {
    v85 |= 2u;
  }

  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
  {
    v89 = v85;
  }

  else
  {
    v89 = v85 & 2;
  }

  if (!v89)
  {
    goto LABEL_111;
  }

  v111 = 138543618;
  v112 = v61;
  v113 = 2114;
  v114 = v67;
  LODWORD(v99) = 22;
  v90 = _os_log_send_and_compose_impl();

  if (v90)
  {
    v88 = [NSString stringWithCString:v90 encoding:4, &v111, v99];
    free(v90);
    SSFileLog();
LABEL_111:
  }

  v91 = [(__CFString *)v67 domain];
  if ([v91 isEqualToString:SSErrorDomain])
  {
    if ([(__CFString *)v67 code]== 151)
    {
    }

    else
    {
      v92 = [(__CFString *)v67 code]== 152;

      if (!v92)
      {
        goto LABEL_87;
      }
    }

    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100226398;
    block[3] = &unk_100327238;
    block[4] = self;
    v67 = v67;
    v101 = v67;
    dispatch_async(dispatchQueue, block);

    goto LABEL_87;
  }

LABEL_87:
  objc_destroyWeak(&v105);
  objc_destroyWeak(&location);
LABEL_98:

  [(DisplayPaymentSheetContainerOperation *)self setSuccess:*(v108 + 24)];
  [(DisplayPaymentSheetContainerOperation *)self setError:v67];

  _Block_object_dispose(&v107, 8);
}

- (void)_loadURLBag
{
  v3 = objc_alloc_init(ISLoadURLBagOperation);
  v17 = 0;
  v4 = [(DisplayPaymentSheetContainerOperation *)self runSubOperation:v3 returningError:&v17];
  v5 = v17;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v15 = [v3 URLBag];
    urlBag = self->_urlBag;
    self->_urlBag = v15;
    goto LABEL_17;
  }

  urlBag = +[SSLogConfig sharedDaemonConfig];
  if (!urlBag)
  {
    urlBag = +[SSLogConfig sharedConfig];
  }

  v9 = [urlBag shouldLog];
  if ([urlBag shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [urlBag OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v12 = objc_opt_class();
  v18 = 138543618;
  v19 = v12;
  v20 = 2114;
  v21 = v6;
  v13 = v12;
  LODWORD(v16) = 22;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v11 = [NSString stringWithCString:v14 encoding:4, &v18, v16];
    free(v14);
    SSFileLog();
LABEL_15:
  }

LABEL_17:
}

- (void)_postMetricsEventForError:(id)a3
{
  v4 = a3;
  urlBag = self->_urlBag;
  if (urlBag || ([(DisplayPaymentSheetContainerOperation *)self _loadURLBag], (urlBag = self->_urlBag) != 0))
  {
    v6 = [(ISURLBag *)urlBag valueForKey:SSMetricsURLBagKey];
    if ([v6 count])
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      [v7 setObject:SSMetricsDialogEventIdPaymentSheet forKey:SSAuthorizationMetricsKeyDialogID];
      [v7 setObject:&off_10034C228 forKey:SSAuthorizationMetricsKeyEventType];
      if (v4)
      {
        [v7 setObject:v4 forKey:SSAuthorizationMetricsKeyError];
      }

      v8 = [(DisplayPaymentSheetOperation *)self->_displayPaymentSheetOperation paymentSheet];
      v9 = [v8 buyParams];

      if (v9)
      {
        [v7 setObject:v9 forKey:SSAuthorizationMetricsKeyBuyParams];
      }

      v10 = [SSAuthorizationMetricsController authorizationDialogEventForParameters:v7];
      v11 = [[SSMetricsConfiguration alloc] initWithGlobalConfiguration:v6];
      v12 = objc_alloc_init(SSMetricsController);
      [v12 setGlobalConfiguration:v11];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100226A3C;
      v23[3] = &unk_1003276D0;
      v23[4] = self;
      [v12 insertEvent:v10 withCompletionHandler:v23];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100226BD8;
      v22[3] = &unk_1003276D0;
      v22[4] = self;
      [v12 flushUnreportedEventsWithCompletionHandler:v22];
    }

    else
    {
      v7 = +[SSLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v13 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      v9 = [v7 OSLogObject];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v24 = 138543362;
        v25 = objc_opt_class();
        v15 = v25;
        LODWORD(v21) = 12;
        v16 = _os_log_send_and_compose_impl();

        if (!v16)
        {
          goto LABEL_10;
        }

        v9 = [NSString stringWithCString:v16 encoding:4, &v24, v21];
        free(v16);
        SSFileLog();
      }
    }
  }

  else
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v17 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v7 = [v6 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v24 = 138543362;
      v25 = objc_opt_class();
      v19 = v25;
      LODWORD(v21) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
        goto LABEL_11;
      }

      v7 = [NSString stringWithCString:v20 encoding:4, &v24, v21];
      free(v20);
      SSFileLog();
    }
  }

LABEL_10:

LABEL_11:
}

@end