@interface DeviceScorer
+ (BOOL)_resultForSamplingSession:(id)a3 isActive:(BOOL *)a4;
+ (BOOL)_shouldSampleWithPercentage:(double)a3 sessionDuration:(double)a4 identifier:(id)a5;
+ (double)_randomDouble;
+ (id)_hexEncodingForData:(id)a3;
+ (id)_loadURLBag;
+ (id)_valueForKey:(id)a3;
+ (void)_setValue:(id)a3 forKey:(id)a4;
- (DeviceScorer)initWithServerEndpoint:(int64_t)a3;
- (id)_serverEndpointIdentifierForServerEndpoint:(int64_t)a3;
- (void)_initDeviceScorerWithContext:(id)a3;
- (void)deviceScoreWithNonce:(id)a3 completion:(id)a4;
- (void)didConsumeDeviceScore:(BOOL)a3;
@end

@implementation DeviceScorer

- (DeviceScorer)initWithServerEndpoint:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = DeviceScorer;
  v4 = [(DeviceScorer *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(DeviceScorerContext);
    [(DeviceScorerContext *)v5 setServerEndpoint:a3];
    context = v4->_context;
    v4->_context = v5;
    v7 = v5;

    [(DeviceScorer *)v4 _initDeviceScorerWithContext:v7];
  }

  return v4;
}

- (void)deviceScoreWithNonce:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_1000B9A8C;
  v25[4] = sub_1000B9A9C;
  v26 = 0;
  if (!self->_deviceScorer)
  {
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

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v16 = objc_opt_class();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v16;
      v17 = v16;
      LODWORD(v19) = 12;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_13:

        goto LABEL_14;
      }

      v15 = [NSString stringWithCString:v18 encoding:4, location, v19];
      free(v18);
      SSFileLog();
    }

    goto LABEL_13;
  }

  v8 = objc_alloc_init(RvCyrXrrh7eJhtzx);
  [(RvCyrXrrh7eJhtzx *)v8 setNonce:v6];
  objc_initWeak(location, self);
  v9 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B9AA4;
  block[3] = &unk_100327E58;
  objc_copyWeak(&v24, location);
  v21 = v8;
  v22 = v7;
  v23 = v25;
  v10 = v8;
  dispatch_async(v9, block);

  objc_destroyWeak(&v24);
  objc_destroyWeak(location);
LABEL_14:
  _Block_object_dispose(v25, 8);
}

- (void)didConsumeDeviceScore:(BOOL)a3
{
  v3 = a3;
  deviceScorer = self->_deviceScorer;
  v6 = +[SSLogConfig sharedDaemonConfig];
  v7 = v6;
  if (!deviceScorer)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v12 = [(L1vrniCr6VjgMaLl *)v7 shouldLog];
    if ([(L1vrniCr6VjgMaLl *)v7 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [(L1vrniCr6VjgMaLl *)v7 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      LODWORD(v18) = 138543362;
      *(&v18 + 4) = objc_opt_class();
      v15 = *(&v18 + 4);
      LODWORD(v17) = 12;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
        goto LABEL_25;
      }

      v14 = [NSString stringWithCString:v16 encoding:4, &v18, v17, v18];
      free(v16);
      SSFileLog();
    }

    goto LABEL_25;
  }

  if (!v6)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [(L1vrniCr6VjgMaLl *)v7 shouldLog];
  if ([(L1vrniCr6VjgMaLl *)v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [(L1vrniCr6VjgMaLl *)v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  LODWORD(v18) = 138543362;
  *(&v18 + 4) = objc_opt_class();
  LODWORD(v17) = 12;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v10 = [NSString stringWithCString:v11 encoding:4, &v18, v17];
    free(v11);
    SSFileLog();
LABEL_12:
  }

  v7 = objc_alloc_init(L1vrniCr6VjgMaLl);
  [(L1vrniCr6VjgMaLl *)v7 setConsumed:v3];
  [(CerKRQOmMu7LBUoc *)self->_deviceScorer eVZ8hjC0Tuzwvnqc:v7];
LABEL_25:
}

+ (id)_hexEncodingForData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableString);
  v5 = [v3 length];
  v6 = [v3 bytes];
  if (v5)
  {
    v7 = v6;
    do
    {
      v8 = *v7++;
      [v4 appendFormat:@"%02x", v8];
      --v5;
    }

    while (v5);
  }

  v9 = [NSString stringWithString:v4];

  return v9;
}

- (void)_initDeviceScorerWithContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceScorer)
  {
LABEL_111:
    v84 = +[SSLogConfig sharedDaemonConfig];
    if (!v84)
    {
      v84 = +[SSLogConfig sharedConfig];
    }

    v85 = [v84 shouldLog];
    if ([v84 shouldLogToDisk])
    {
      v85 |= 2u;
    }

    v86 = [v84 OSLogObject];
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v87 = v85;
    }

    else
    {
      v87 = v85 & 2;
    }

    if (v87)
    {
      v88 = objc_opt_class();
      v102 = 138543362;
      v103 = v88;
      v89 = v88;
      LODWORD(v92) = 12;
      v90 = _os_log_send_and_compose_impl();

      if (!v90)
      {
LABEL_122:

        [(CerKRQOmMu7LBUoc *)self->_deviceScorer prepareScoreMessage];
        goto LABEL_123;
      }

      v86 = [NSString stringWithCString:v90 encoding:4, &v102, v92];
      free(v90);
      SSFileLog();
    }

    goto LABEL_122;
  }

  v6 = -[DeviceScorer _serverEndpointIdentifierForServerEndpoint:](self, "_serverEndpointIdentifierForServerEndpoint:", [v4 serverEndpoint]);
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (v11)
  {
    v102 = 138543618;
    v103 = objc_opt_class();
    v104 = 2114;
    v105 = v6;
    v12 = v103;
    LODWORD(v92) = 22;
    v91 = &v102;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = [NSString stringWithCString:v13 encoding:4, &v102, v92];
    free(v13);
    v91 = v10;
    SSFileLog();
  }

LABEL_14:
  v14 = [[wumZ2SSA5KbWdu7E alloc] initWithServerEndpointIdentifier:v6];
  v15 = v14;
  if (v14)
  {
    v99 = v5;
    v100 = v14;
    v98 = v6;
    v101 = objc_alloc_init(NSMutableSet);
    v16 = +[SSAccountStore defaultStore];
    v17 = [v16 activeAccount];

    v18 = [v17 firstName];
    v19 = [v17 lastName];
    v95 = v19;
    v96 = v18;
    if (v18 && v19)
    {
      v20 = [[cBEET4QRedIfcDrp alloc] initWithFirstName:v18 lastName:v19 source:0];
      if (v20)
      {
        [v101 addObject:v20];
        goto LABEL_54;
      }

      v31 = +[SSLogConfig sharedDaemonConfig];
      if (!v31)
      {
        v31 = +[SSLogConfig sharedConfig];
      }

      v36 = [v31 shouldLog];
      if ([v31 shouldLogToDisk])
      {
        v37 = v36 | 2;
      }

      else
      {
        v37 = v36;
      }

      v38 = [v31 OSLogObject];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = v37;
      }

      else
      {
        v39 = v37 & 2;
      }

      if (!v39)
      {
        goto LABEL_52;
      }

      v40 = objc_opt_class();
      v102 = 138543362;
      v103 = v40;
      v41 = v40;
      LODWORD(v92) = 12;
      v91 = &v102;
      v42 = _os_log_send_and_compose_impl();

      if (v42)
      {
        v38 = [NSString stringWithCString:v42 encoding:4, &v102, v92];
        free(v42);
        v91 = v38;
        SSFileLog();
LABEL_52:
      }
    }

    else
    {
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      v29 = [(cBEET4QRedIfcDrp *)v20 shouldLog];
      if ([(cBEET4QRedIfcDrp *)v20 shouldLogToDisk])
      {
        v30 = v29 | 2;
      }

      else
      {
        v30 = v29;
      }

      v31 = [(cBEET4QRedIfcDrp *)v20 OSLogObject];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = v30;
      }

      else
      {
        v32 = v30 & 2;
      }

      if (v32)
      {
        v33 = objc_opt_class();
        v102 = 138543362;
        v103 = v33;
        v34 = v33;
        LODWORD(v92) = 12;
        v91 = &v102;
        v35 = _os_log_send_and_compose_impl();

        if (!v35)
        {
          goto LABEL_54;
        }

        v31 = [NSString stringWithCString:v35 encoding:4, &v102, v92];
        free(v35);
        v91 = v31;
        SSFileLog();
      }
    }

LABEL_54:
    v97 = v17;
    v43 = [v17 accountName];
    v94 = v43;
    if (v43)
    {
      v44 = [[cBEET4QRedIfcDrp alloc] initWithEmailAddress:v43 source:1];
      v45 = v100;
      v46 = v101;
      if (v44)
      {
        [v101 addObject:v44];
        goto LABEL_81;
      }

      v49 = +[SSLogConfig sharedDaemonConfig];
      if (!v49)
      {
        v49 = +[SSLogConfig sharedConfig];
      }

      v54 = [v49 shouldLog];
      if ([v49 shouldLogToDisk])
      {
        v55 = v54 | 2;
      }

      else
      {
        v55 = v54;
      }

      v56 = [v49 OSLogObject];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = v55;
      }

      else
      {
        v57 = v55 & 2;
      }

      if (!v57)
      {
        goto LABEL_79;
      }

      v58 = objc_opt_class();
      v102 = 138543362;
      v103 = v58;
      v59 = v58;
      LODWORD(v92) = 12;
      v91 = &v102;
      v60 = _os_log_send_and_compose_impl();

      if (v60)
      {
        v56 = [NSString stringWithCString:v60 encoding:4, &v102, v92];
        free(v60);
        v91 = v56;
        SSFileLog();
LABEL_79:
      }
    }

    else
    {
      v44 = +[SSLogConfig sharedDaemonConfig];
      v45 = v100;
      v46 = v101;
      if (!v44)
      {
        v44 = +[SSLogConfig sharedConfig];
      }

      v47 = [(cBEET4QRedIfcDrp *)v44 shouldLog];
      if ([(cBEET4QRedIfcDrp *)v44 shouldLogToDisk])
      {
        v48 = v47 | 2;
      }

      else
      {
        v48 = v47;
      }

      v49 = [(cBEET4QRedIfcDrp *)v44 OSLogObject];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = v48;
      }

      else
      {
        v50 = v48 & 2;
      }

      if (v50)
      {
        v51 = objc_opt_class();
        v102 = 138543362;
        v103 = v51;
        v52 = v51;
        LODWORD(v92) = 12;
        v91 = &v102;
        v53 = _os_log_send_and_compose_impl();

        if (!v53)
        {
          goto LABEL_81;
        }

        v49 = [NSString stringWithCString:v53 encoding:4, &v102, v92];
        free(v53);
        v91 = v49;
        SSFileLog();
      }
    }

LABEL_81:
    [(wumZ2SSA5KbWdu7E *)v45 setIdentities:v46];
    v61 = +[SSDevice currentDevice];
    v62 = [v61 phoneNumber];

    v93 = v62;
    if (v62)
    {
      [(wumZ2SSA5KbWdu7E *)v45 setPhoneNumber:v62];
      goto LABEL_96;
    }

    v63 = +[SSLogConfig sharedDaemonConfig];
    if (!v63)
    {
      v63 = +[SSLogConfig sharedConfig];
    }

    v64 = [v63 shouldLog];
    if ([v63 shouldLogToDisk])
    {
      v65 = v64 | 2;
    }

    else
    {
      v65 = v64;
    }

    v66 = [v63 OSLogObject];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = v65;
    }

    else
    {
      v67 = v65 & 2;
    }

    if (v67)
    {
      v68 = objc_opt_class();
      v102 = 138543362;
      v103 = v68;
      v69 = v68;
      LODWORD(v92) = 12;
      v91 = &v102;
      v70 = _os_log_send_and_compose_impl();

      if (!v70)
      {
LABEL_95:

LABEL_96:
        v71 = objc_alloc_init(SSDevice);
        v72 = [v71 clientName];
        v73 = +[SSLogConfig sharedDaemonConfig];
        if (!v73)
        {
          v73 = +[SSLogConfig sharedConfig];
        }

        v74 = [v73 shouldLog];
        if ([v73 shouldLogToDisk])
        {
          v75 = v74 | 2;
        }

        else
        {
          v75 = v74;
        }

        v76 = [v73 OSLogObject];
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          v77 = v75;
        }

        else
        {
          v77 = v75 & 2;
        }

        if (v77)
        {
          v78 = objc_opt_class();
          v79 = v78;
          v80 = SSHashIfNeeded();
          v102 = 138543618;
          v103 = v78;
          v104 = 2112;
          v105 = v80;
          LODWORD(v92) = 22;
          v91 = &v102;
          v81 = _os_log_send_and_compose_impl();

          if (!v81)
          {
LABEL_108:

            v15 = v100;
            [(wumZ2SSA5KbWdu7E *)v100 setCallerID:v72];
            v82 = [CerKRQOmMu7LBUoc scorerWithContext:v100];
            deviceScorer = self->_deviceScorer;
            self->_deviceScorer = v82;

            v6 = v98;
            v5 = v99;
            v21 = v101;
            v24 = v97;
            goto LABEL_109;
          }

          v76 = [NSString stringWithCString:v81 encoding:4, &v102, v92];
          free(v81);
          v91 = v76;
          SSFileLog();
        }

        goto LABEL_108;
      }

      v66 = [NSString stringWithCString:v70 encoding:4, &v102, v92];
      free(v70);
      v91 = v66;
      SSFileLog();
    }

    goto LABEL_95;
  }

  v21 = +[SSLogConfig sharedDaemonConfig];
  if (!v21)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  v22 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = v22 | 2;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v21 OSLogObject];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = v23;
  }

  else
  {
    v25 = v23 & 2;
  }

  if (v25)
  {
    v26 = objc_opt_class();
    v102 = 138543362;
    v103 = v26;
    v27 = v26;
    LODWORD(v92) = 12;
    v91 = &v102;
    v28 = _os_log_send_and_compose_impl();

    if (!v28)
    {
      goto LABEL_110;
    }

    v24 = [NSString stringWithCString:v28 encoding:4, &v102, v92];
    free(v28);
    v91 = v24;
    SSFileLog();
  }

LABEL_109:

LABEL_110:
  if (self->_deviceScorer)
  {
    goto LABEL_111;
  }

LABEL_123:
}

+ (id)_loadURLBag
{
  v2 = [SSURLBagContext contextWithBagType:0];
  v3 = [[ISLoadURLBagOperation alloc] initWithBagContext:v2];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_1000BB404;
  v30 = &unk_1003274C0;
  v32 = &v33;
  v4 = dispatch_semaphore_create(0);
  v31 = v4;
  [v3 setCompletionBlock:&v27];
  v5 = +[ISOperationQueue mainQueue];
  [v5 addOperation:v3];

  v6 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v4, v6);
  if ((v34[3] & 1) == 0)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    v9 = [v7 shouldLogToDisk];
    v10 = [v7 OSLogObject];
    v11 = v10;
    if (v9)
    {
      v8 |= 2u;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v12 = objc_opt_class();
      v37 = 138543362;
      v38 = v12;
      v13 = v12;
      LODWORD(v26) = 12;
      v25 = &v37;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_12:

        goto LABEL_13;
      }

      v11 = [NSString stringWithCString:v14 encoding:4, &v37, v26, v27, v28, v29, v30];
      free(v14);
      v25 = v11;
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_13:
  if ([v3 success])
  {
    v15 = [v3 URLBag];
    goto LABEL_26;
  }

  v16 = +[SSLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  v17 = [v16 shouldLog];
  v18 = [v16 shouldLogToDisk];
  v19 = [v16 OSLogObject];
  v20 = v19;
  if (v18)
  {
    v17 |= 2u;
  }

  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_24;
  }

  v21 = objc_opt_class();
  v37 = 138543362;
  v38 = v21;
  v22 = v21;
  LODWORD(v26) = 12;
  v23 = _os_log_send_and_compose_impl();

  if (v23)
  {
    v20 = [NSString stringWithCString:v23 encoding:4, &v37, v26];
    free(v23);
    SSFileLog();
LABEL_24:
  }

  v15 = 0;
LABEL_26:

  _Block_object_dispose(&v33, 8);

  return v15;
}

- (id)_serverEndpointIdentifierForServerEndpoint:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_100327E98[a3];
  }
}

+ (double)_randomDouble
{
  if (qword_100383E40 == -1)
  {
  }

  else
  {
    sub_100272114();
  }

  return drand48();
}

+ (BOOL)_resultForSamplingSession:(id)a3 isActive:(BOOL *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"date"];
  v7 = [v5 objectForKeyedSubscript:@"result"];
  v8 = [v7 BOOLValue];

  v9 = [v5 objectForKeyedSubscript:@"duration"];

  v10 = [v9 BOOLValue];
  v11 = +[NSDate date];
  if (!v6)
  {
LABEL_4:
    v8 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_9;
  }

  v12 = [v6 dateByAddingTimeInterval:v10];
  if ([v11 compare:v12] != -1)
  {

    goto LABEL_4;
  }

  if (a4)
  {
    *a4 = 1;
  }

LABEL_9:
  return v8;
}

+ (BOOL)_shouldSampleWithPercentage:(double)a3 sessionDuration:(double)a4 identifier:(id)a5
{
  v8 = [NSString stringWithFormat:@"%@-%@", @"SSSampleSession", a5];
  v9 = [a1 _valueForKey:v8];
  v19 = 0;
  v10 = [a1 _resultForSamplingSession:v9 isActive:&v19];
  if (v19)
  {
    LOBYTE(v11) = v10;
  }

  else
  {
    [a1 _randomDouble];
    v13 = v12 <= 1.0;
    if (v12 > a3)
    {
      v13 = 0;
    }

    v11 = v12 >= 0.0 && v13;
    if (a4 > 0.0)
    {
      v20[0] = @"date";
      v14 = +[NSDate date];
      v21[0] = v14;
      v20[1] = @"result";
      v15 = [NSNumber numberWithBool:v11];
      v21[1] = v15;
      v20[2] = @"duration";
      v16 = [NSNumber numberWithDouble:a4];
      v21[2] = v16;
      v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

      [a1 _setValue:v17 forKey:v8];
    }
  }

  return v11;
}

+ (id)_valueForKey:(id)a3
{
  v3 = kSSUserDefaultsIdentifier;
  v4 = a3;
  CFPreferencesAppSynchronize(v3);
  v5 = CFPreferencesCopyAppValue(v4, v3);

  return v5;
}

+ (void)_setValue:(id)a3 forKey:(id)a4
{
  v4 = kSSUserDefaultsIdentifier;
  CFPreferencesSetAppValue(a4, a3, kSSUserDefaultsIdentifier);

  CFPreferencesAppSynchronize(v4);
}

@end