@interface QwDGuEabMS2vnWkj
+ (id)errorFromUnderlyingError:(id)a3;
+ (id)wrongXPCParameterError;
- (QwDGuEabMS2vnWkj)initWithsk6s81V5EsZL9icr:(unsigned __int8)a3;
- (void)Me7YKKqFAKjegMFz:(id)a3 hostChallenge:(id)a4 challengeResponse:(id)a5 seid:(id)a6 nonce:(id)a7 HY6FXG20397zwmVg:(id)a8;
- (void)cacheDataXPC:(id)a3 forKey:(id)a4 andCategory:(int64_t)a5 completion:(id)a6;
- (void)djoNSwl5j57W5mfl:(id)a3 eqF2XJh3hHBJQf2K:(id)a4;
- (void)f9MGfLOgnHPuKTrU:(id)a3 HY6FXG20397zwmVg:(id)a4;
- (void)fetchConfigWithCompletionXPC:(id)a3;
- (void)fetchDataForKeyXPC:(id)a3 andCategory:(int64_t)a4 completion:(id)a5;
- (void)fetchGeoCodingsForAddressesXPC:(id)a3 completion:(id)a4;
- (void)k0p7Rchr49btq6wB:(id)a3 HY6FXG20397zwmVg:(id)a4;
- (void)k4eQYhyzyebbQqys:(id)a3;
- (void)lJIqliFcwusu4FxD:(id)a3 be2xk53Wn161LTDz:(id)a4 completion:(id)a5;
- (void)llNEghuIdfPH7O8I:(BOOL)a3 all:(BOOL)a4 pregeneration:(BOOL)a5 workflowID:(id)a6 completion:(id)a7;
- (void)pRo6qBDnfEL0sBNs:(id)a3 i7D0Lridvo8oYoNd:(id)a4 completion:(id)a5;
- (void)rGvculjlqIwBJaoX:(id)a3 completion:(id)a4;
- (void)registerICloudLoginWithCompletionXPC:(id)a3;
- (void)sPLljm0ZB9z7TiKd:(id)a3 nSLeS2inTAbpsUeZ:(id)a4 noUfOiGjp1iQmKZX:(id)a5 pPGyXmlDbN3mzzHm:(id)a6 iSOZt67ioKsVcqQZ:(id)a7 hjCrdFOLMJN0Cc5Q:(id)a8 lE40aye8U2u533Ka:(id)a9 JRuZv6Feh9qwrGmN:(unint64_t)a10 Wn0aIR2B54NCtGQc:(unint64_t)a11 B3l3lS18BITy5E4L:(id)a12 UywAszL6AB8Y6LTJ:(id)a13 uNao9X8A82jVmQkK:(id)a14 completion:(id)a15;
- (void)unregisterICloudLoginWithCompletionXPC:(id)a3;
- (void)updateGeoCodingsXPC:(id)a3 completion:(id)a4;
- (void)xs00laTiKIpDUzDP:(id)a3;
@end

@implementation QwDGuEabMS2vnWkj

- (QwDGuEabMS2vnWkj)initWithsk6s81V5EsZL9icr:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = QwDGuEabMS2vnWkj;
  result = [(QwDGuEabMS2vnWkj *)&v5 init];
  if (result)
  {
    result->yUeYlMhe6tbatNIz = a3;
  }

  return result;
}

- (void)k0p7Rchr49btq6wB:(id)a3 HY6FXG20397zwmVg:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[git3vZFAfTws6rT8 alloc] initWithDictionary:v6];

  if (v7)
  {
    if (+[YeQHj6zXMU2P8KDh sensitiveLoggingEnabled])
    {
      v8 = qword_1006DF770;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "with %@", buf, 0xCu);
      }
    }

    v9 = [(git3vZFAfTws6rT8 *)v7 endpointIdentifier];
    [v9 UTF8String];

    buf[0] = 0;
    v13 = 0;
    sub_1002C9B10();
    v10 = [NSString stringWithUTF8String:off_1006C9430, &v13];
    v14 = NSLocalizedDescriptionKey;
    v15 = @"Unknown endpoint identifier";
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [NSError errorWithDomain:v10 code:-801 userInfo:v11];
  }

  else
  {
    v12 = +[QwDGuEabMS2vnWkj wrongXPCParameterError];
  }

  (*(v5 + 2))(v5, 0, 0, v12);
}

- (void)Me7YKKqFAKjegMFz:(id)a3 hostChallenge:(id)a4 challengeResponse:(id)a5 seid:(id)a6 nonce:(id)a7 HY6FXG20397zwmVg:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = +[pNjRsniwrVEhiG7R sharedInstance];
  [v19 QeMnG23X94qgz7jT:v18 hostChallenge:v17 challengeResponse:v16 seid:v15 nonce:v14 completion:v13];
}

- (void)f9MGfLOgnHPuKTrU:(id)a3 HY6FXG20397zwmVg:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[pNjRsniwrVEhiG7R sharedInstance];
  [v7 ZfE6lVphNUVrZcKx:v6 completion:v5];
}

- (void)xs00laTiKIpDUzDP:(id)a3
{
  v3 = a3;
  v4 = +[pNjRsniwrVEhiG7R sharedInstance];
  [v4 vffg4lwI2HftPvpO:v3];
}

- (void)sPLljm0ZB9z7TiKd:(id)a3 nSLeS2inTAbpsUeZ:(id)a4 noUfOiGjp1iQmKZX:(id)a5 pPGyXmlDbN3mzzHm:(id)a6 iSOZt67ioKsVcqQZ:(id)a7 hjCrdFOLMJN0Cc5Q:(id)a8 lE40aye8U2u533Ka:(id)a9 JRuZv6Feh9qwrGmN:(unint64_t)a10 Wn0aIR2B54NCtGQc:(unint64_t)a11 B3l3lS18BITy5E4L:(id)a12 UywAszL6AB8Y6LTJ:(id)a13 uNao9X8A82jVmQkK:(id)a14 completion:(id)a15
{
  v20 = a3;
  v21 = a4;
  v42 = a5;
  v22 = a6;
  v23 = a7;
  v41 = a8;
  v24 = v21;
  v25 = a9;
  v26 = a12;
  v45 = a13;
  v44 = a14;
  v27 = a15;
  v28 = v23;
  v43 = v22;
  if (a10 <= 4 && v20 | v24 && v22 && v23 && v25)
  {
    v29 = +[pNjRsniwrVEhiG7R sharedInstance];
    if (v20)
    {
      v30 = [[ASReleasableBuffer alloc] initWithData:v20];
      v40 = v30;
      if (v30)
      {
        v31 = v42;
        v32 = v23;
        v33 = v41;
        [v29 zGi22DPZsVGfawap:v30 xz5EHXEN4FjlhJbi:v42 uhVTXyAfCFn7u0Ue:v43 EQUjQp7JcQbqcPcD:v32 A5wDLa5TFdFZlz3A:v41 TJKMyOe6zn5PdGIr:v25 eCqgGM0WcnHOslnr:a10 eCszfxdv3kUXvhgV:a11 uWp4aZpP2vLhc04Q:v26 QZYtNpvp0hKd248p:v45 oCwPYmtRv8s31KUH:v44 completion:v27];
      }

      else
      {
        v35 = [NSString stringWithUTF8String:off_1006C9430];
        v59 = NSLocalizedDescriptionKey;
        v60 = @"Error creating buffer";
        [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v37 = v36 = v24;
        [NSError errorWithDomain:v35 code:-27002 userInfo:v37];
        v38 = v39 = v26;

        v24 = v36;
        (*(v27 + 2))(v27, 0, 0, 0, 0xFFFFFFFFLL, v38);

        v26 = v39;
        v33 = v41;
        v31 = v42;
      }
    }

    else
    {
      v40 = +[ASFileCacheManager sharedInstance];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000052D4;
      v46[3] = &unk_10068ED38;
      v56 = v27;
      v47 = v29;
      v31 = v42;
      v48 = v42;
      v49 = v43;
      v50 = v23;
      v33 = v41;
      v51 = v41;
      v52 = v25;
      v57 = a10;
      v58 = a11 | 0x20;
      v53 = v26;
      v54 = v45;
      v55 = v44;
      [v40 quVb0ErcaaAyQJnG:v24 completion:v46];
    }
  }

  else
  {
    v34 = +[QwDGuEabMS2vnWkj wrongXPCParameterError];
    (*(v27 + 2))(v27, 0, 0, 0, 0xFFFFFFFFLL, v34);

    v33 = v41;
    v31 = v42;
  }
}

- (void)k4eQYhyzyebbQqys:(id)a3
{
  v3 = a3;
  v6 = +[_TtC3asd18RavioliManagerObjC shared];
  v4 = +[_TtC3asd16RavioliConstants ravioliUUID];
  v5 = +[_TtC3asd29DefinedRavioliNotificationIds xpc];
  [v6 triggerImmediateRavioliFetchWithBagID:v4 notificationId:v5 completion:v3];
}

- (void)updateGeoCodingsXPC:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_self();
  v43 = 0;
  v8 = [ASDGeoCodingKeyedUnarchiver unarchivedObjectOfClass:v7 fromData:v5 error:&v43];
  v9 = v43;

  v10 = [v8 objectForKeyedSubscript:@"addresses"];
  v11 = [v8 objectForKeyedSubscript:@"locations"];
  v12 = v11;
  if (v9)
  {
    goto LABEL_2;
  }

  if (!v10)
  {
    v9 = +[QwDGuEabMS2vnWkj wrongXPCParameterError];
LABEL_2:
    v6[2](v6, v9);
    goto LABEL_28;
  }

  v32 = v10;
  v33 = v11;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v39 + 1) + 8 * v17);
        v19 = objc_opt_self();
        LOBYTE(v18) = objc_opt_isKindOfClass();

        if ((v18 & 1) == 0)
        {
          v9 = +[QwDGuEabMS2vnWkj wrongXPCParameterError];
          v6[2](v6, v9);

          goto LABEL_27;
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v30 = v6;
  v31 = v5;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v33;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    while (2)
    {
      v24 = 0;
      do
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v35 + 1) + 8 * v24);
        v26 = objc_opt_self();
        if (objc_opt_isKindOfClass())
        {
        }

        else
        {
          v27 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v9 = +[QwDGuEabMS2vnWkj wrongXPCParameterError];
            v6 = v30;
            v30[2](v30, v9);

            goto LABEL_26;
          }
        }

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v29 = +[PJXBDBF1h0EU80dy sharedInstance];
  v34 = 0;
  [v29 updateGeoCodeForAddresses:v13 locations:v20 error:&v34];
  v9 = v34;

  v6 = v30;
  v30[2](v30, v9);
LABEL_26:
  v5 = v31;
LABEL_27:
  v10 = v32;
  v12 = v33;
LABEL_28:
}

- (void)fetchGeoCodingsForAddressesXPC:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_self();
  v25 = 0;
  v8 = [ASDGeoCodingKeyedUnarchiver unarchivedObjectOfClass:v7 fromData:v5 error:&v25];
  v9 = v25;

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          v17 = objc_opt_self();
          LOBYTE(v16) = objc_opt_isKindOfClass();

          if ((v16 & 1) == 0)
          {
            v9 = +[QwDGuEabMS2vnWkj wrongXPCParameterError];
            v6[2](v6, 0, v9);
            goto LABEL_16;
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = +[PJXBDBF1h0EU80dy sharedInstance];
    v11 = [v18 fetchGeoCodingsForAddresses:v11];

    v20 = 0;
    v19 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v20];
    v9 = v20;
    (v6)[2](v6, v19, v9);

LABEL_16:
  }

  else
  {
    v6[2](v6, 0, v9);
  }
}

- (void)fetchConfigWithCompletionXPC:(id)a3
{
  v4 = a3;
  v6 = +[_TtC3asd23ASDConfigurationManager shared];
  v5 = [v6 configDictionaryForCoreODI];
  (*(a3 + 2))(v4, v5);
}

- (void)llNEghuIdfPH7O8I:(BOOL)a3 all:(BOOL)a4 pregeneration:(BOOL)a5 workflowID:(id)a6 completion:(id)a7
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = a6;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100005E9C;
  v25[3] = &unk_10068EDA0;
  v13 = a7;
  v25[4] = self;
  v26 = v13;
  v14 = objc_retainBlock(v25);
  if (v10)
  {
    v15 = +[_TtC3asd21PrecomputationManager shared];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100005EFC;
    v23[3] = &unk_10068EE08;
    v16 = &v24;
    v24 = v14;
    [v15 triggerDuePrecomputationsWithDataProtectionClass:4 shouldDefer:&stru_10068EDE0 completionHandler:v23];
LABEL_11:

    goto LABEL_12;
  }

  if (v9)
  {
    v15 = +[_TtC3asd21PrecomputationManager shared];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100005F10;
    v21[3] = &unk_10068EE30;
    v16 = &v22;
    v22 = v14;
    [v15 triggerAllPrecomputationsWithCompletionHandler:v21];
    goto LABEL_11;
  }

  if (v12 && !v8)
  {
    v15 = +[_TtC3asd21PrecomputationManager shared];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100005F24;
    v19[3] = &unk_10068EE58;
    v16 = &v20;
    v20 = v14;
    [v15 triggerPrecomputationWithWorkflowID:v12 completionHandler:v19];
    goto LABEL_11;
  }

  if (v12 && v8)
  {
    v15 = +[_TtC3asd21PrecomputationManager shared];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005F38;
    v17[3] = &unk_10068EE58;
    v16 = &v18;
    v18 = v14;
    [v15 triggerPregenerationWithWorkflowID:v12 completionHandler:v17];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)djoNSwl5j57W5mfl:(id)a3 eqF2XJh3hHBJQf2K:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PJXBDBF1h0EU80dy sharedInstance];
  [v7 dKsJLlNX54lzKt5n:v6 eqF2XJh3hHBJQf2K:v5];
}

- (void)lJIqliFcwusu4FxD:(id)a3 be2xk53Wn161LTDz:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[PJXBDBF1h0EU80dy sharedInstance];
  [v10 lJIqliFcwusu4FxD:v9 workflowID:v8 completionHandler:v7];
}

- (void)cacheDataXPC:(id)a3 forKey:(id)a4 andCategory:(int64_t)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = +[ASFileCacheManager sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100006150;
  v14[3] = &unk_10068EE58;
  v15 = v9;
  v13 = v9;
  [v12 cacheData:v11 forKey:v10 andCategory:a5 completion:v14];
}

- (void)fetchDataForKeyXPC:(id)a3 andCategory:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[ASFileCacheManager sharedInstance];
  [v9 fetchDataForKey:v8 andCategory:a4 completion:v7];
}

- (void)rGvculjlqIwBJaoX:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PJXBDBF1h0EU80dy sharedInstance];
  v10 = 0;
  v8 = [v7 evrtH713YbFfEOzk:v6 error:&v10];

  v9 = v10;
  if (v9)
  {
    v5[2](v5, 0, v9);
  }

  (v5)[2](v5, v8, 0);
}

- (void)registerICloudLoginWithCompletionXPC:(id)a3
{
  v4 = a3;
  v3 = +[_TtC3asd15PushCoordinator shared];
  [v3 registerICloud];

  v4[2](v4, 0);
}

- (void)unregisterICloudLoginWithCompletionXPC:(id)a3
{
  v5 = a3;
  v3 = +[_TtC3asd15PushCoordinator shared];
  [v3 unregister];

  v4 = objc_alloc_init(Vr3QrKl7Yn9l4CTz);
  [(Vr3QrKl7Yn9l4CTz *)v4 sFFfMcUAtN14Bjc5];

  v5[2](v5, 0);
}

- (void)pRo6qBDnfEL0sBNs:(id)a3 i7D0Lridvo8oYoNd:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[_TtC3asd22AssessmentPayloadStore shared];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006494;
  v12[3] = &unk_10068EE80;
  v13 = v7;
  v11 = v7;
  [v10 fetchFor:v9 withBindings:v8 completionHandler:v12];
}

+ (id)errorFromUnderlyingError:(id)a3
{
  v3 = off_1006C9430;
  v4 = a3;
  v5 = [NSString stringWithUTF8String:v3];
  v6 = [v4 code];

  v7 = [NSError errorWithDomain:v5 code:v6 userInfo:0];

  return v7;
}

+ (id)wrongXPCParameterError
{
  v2 = [NSString stringWithUTF8String:off_1006C9430];
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Error decoding XPC args";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:v2 code:-802 userInfo:v3];

  return v4;
}

@end