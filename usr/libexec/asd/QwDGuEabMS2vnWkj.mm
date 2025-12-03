@interface QwDGuEabMS2vnWkj
+ (id)errorFromUnderlyingError:(id)error;
+ (id)wrongXPCParameterError;
- (QwDGuEabMS2vnWkj)initWithsk6s81V5EsZL9icr:(unsigned __int8)l9icr;
- (void)Me7YKKqFAKjegMFz:(id)fz hostChallenge:(id)challenge challengeResponse:(id)response seid:(id)seid nonce:(id)nonce HY6FXG20397zwmVg:(id)vg;
- (void)cacheDataXPC:(id)c forKey:(id)key andCategory:(int64_t)category completion:(id)completion;
- (void)djoNSwl5j57W5mfl:(id)w5mfl eqF2XJh3hHBJQf2K:(id)k;
- (void)f9MGfLOgnHPuKTrU:(id)u HY6FXG20397zwmVg:(id)vg;
- (void)fetchConfigWithCompletionXPC:(id)c;
- (void)fetchDataForKeyXPC:(id)c andCategory:(int64_t)category completion:(id)completion;
- (void)fetchGeoCodingsForAddressesXPC:(id)c completion:(id)completion;
- (void)k0p7Rchr49btq6wB:(id)b HY6FXG20397zwmVg:(id)vg;
- (void)k4eQYhyzyebbQqys:(id)qqys;
- (void)lJIqliFcwusu4FxD:(id)d be2xk53Wn161LTDz:(id)dz completion:(id)completion;
- (void)llNEghuIdfPH7O8I:(BOOL)i all:(BOOL)all pregeneration:(BOOL)pregeneration workflowID:(id)d completion:(id)completion;
- (void)pRo6qBDnfEL0sBNs:(id)ns i7D0Lridvo8oYoNd:(id)nd completion:(id)completion;
- (void)rGvculjlqIwBJaoX:(id)x completion:(id)completion;
- (void)registerICloudLoginWithCompletionXPC:(id)c;
- (void)sPLljm0ZB9z7TiKd:(id)kd nSLeS2inTAbpsUeZ:(id)z noUfOiGjp1iQmKZX:(id)x pPGyXmlDbN3mzzHm:(id)hm iSOZt67ioKsVcqQZ:(id)qZ hjCrdFOLMJN0Cc5Q:(id)q lE40aye8U2u533Ka:(id)ka JRuZv6Feh9qwrGmN:(unint64_t)self0 Wn0aIR2B54NCtGQc:(unint64_t)self1 B3l3lS18BITy5E4L:(id)self2 UywAszL6AB8Y6LTJ:(id)self3 uNao9X8A82jVmQkK:(id)self4 completion:(id)self5;
- (void)unregisterICloudLoginWithCompletionXPC:(id)c;
- (void)updateGeoCodingsXPC:(id)c completion:(id)completion;
- (void)xs00laTiKIpDUzDP:(id)p;
@end

@implementation QwDGuEabMS2vnWkj

- (QwDGuEabMS2vnWkj)initWithsk6s81V5EsZL9icr:(unsigned __int8)l9icr
{
  v5.receiver = self;
  v5.super_class = QwDGuEabMS2vnWkj;
  result = [(QwDGuEabMS2vnWkj *)&v5 init];
  if (result)
  {
    result->yUeYlMhe6tbatNIz = l9icr;
  }

  return result;
}

- (void)k0p7Rchr49btq6wB:(id)b HY6FXG20397zwmVg:(id)vg
{
  vgCopy = vg;
  bCopy = b;
  v7 = [[git3vZFAfTws6rT8 alloc] initWithDictionary:bCopy];

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

    endpointIdentifier = [(git3vZFAfTws6rT8 *)v7 endpointIdentifier];
    [endpointIdentifier UTF8String];

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

  (*(vgCopy + 2))(vgCopy, 0, 0, v12);
}

- (void)Me7YKKqFAKjegMFz:(id)fz hostChallenge:(id)challenge challengeResponse:(id)response seid:(id)seid nonce:(id)nonce HY6FXG20397zwmVg:(id)vg
{
  vgCopy = vg;
  nonceCopy = nonce;
  seidCopy = seid;
  responseCopy = response;
  challengeCopy = challenge;
  fzCopy = fz;
  v19 = +[pNjRsniwrVEhiG7R sharedInstance];
  [v19 QeMnG23X94qgz7jT:fzCopy hostChallenge:challengeCopy challengeResponse:responseCopy seid:seidCopy nonce:nonceCopy completion:vgCopy];
}

- (void)f9MGfLOgnHPuKTrU:(id)u HY6FXG20397zwmVg:(id)vg
{
  vgCopy = vg;
  uCopy = u;
  v7 = +[pNjRsniwrVEhiG7R sharedInstance];
  [v7 ZfE6lVphNUVrZcKx:uCopy completion:vgCopy];
}

- (void)xs00laTiKIpDUzDP:(id)p
{
  pCopy = p;
  v4 = +[pNjRsniwrVEhiG7R sharedInstance];
  [v4 vffg4lwI2HftPvpO:pCopy];
}

- (void)sPLljm0ZB9z7TiKd:(id)kd nSLeS2inTAbpsUeZ:(id)z noUfOiGjp1iQmKZX:(id)x pPGyXmlDbN3mzzHm:(id)hm iSOZt67ioKsVcqQZ:(id)qZ hjCrdFOLMJN0Cc5Q:(id)q lE40aye8U2u533Ka:(id)ka JRuZv6Feh9qwrGmN:(unint64_t)self0 Wn0aIR2B54NCtGQc:(unint64_t)self1 B3l3lS18BITy5E4L:(id)self2 UywAszL6AB8Y6LTJ:(id)self3 uNao9X8A82jVmQkK:(id)self4 completion:(id)self5
{
  kdCopy = kd;
  zCopy = z;
  xCopy = x;
  hmCopy = hm;
  qZCopy = qZ;
  qCopy = q;
  v24 = zCopy;
  kaCopy = ka;
  lCopy = l;
  jCopy = j;
  kCopy = k;
  completionCopy = completion;
  v28 = qZCopy;
  v43 = hmCopy;
  if (n <= 4 && kdCopy | v24 && hmCopy && qZCopy && kaCopy)
  {
    v29 = +[pNjRsniwrVEhiG7R sharedInstance];
    if (kdCopy)
    {
      v30 = [[ASReleasableBuffer alloc] initWithData:kdCopy];
      v40 = v30;
      if (v30)
      {
        v31 = xCopy;
        v32 = qZCopy;
        v33 = qCopy;
        [v29 zGi22DPZsVGfawap:v30 xz5EHXEN4FjlhJbi:xCopy uhVTXyAfCFn7u0Ue:v43 EQUjQp7JcQbqcPcD:v32 A5wDLa5TFdFZlz3A:qCopy TJKMyOe6zn5PdGIr:kaCopy eCqgGM0WcnHOslnr:n eCszfxdv3kUXvhgV:qc uWp4aZpP2vLhc04Q:lCopy QZYtNpvp0hKd248p:jCopy oCwPYmtRv8s31KUH:kCopy completion:completionCopy];
      }

      else
      {
        v35 = [NSString stringWithUTF8String:off_1006C9430];
        v59 = NSLocalizedDescriptionKey;
        v60 = @"Error creating buffer";
        [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v37 = v36 = v24;
        [NSError errorWithDomain:v35 code:-27002 userInfo:v37];
        v38 = v39 = lCopy;

        v24 = v36;
        (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0xFFFFFFFFLL, v38);

        lCopy = v39;
        v33 = qCopy;
        v31 = xCopy;
      }
    }

    else
    {
      v40 = +[ASFileCacheManager sharedInstance];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000052D4;
      v46[3] = &unk_10068ED38;
      v56 = completionCopy;
      v47 = v29;
      v31 = xCopy;
      v48 = xCopy;
      v49 = v43;
      v50 = qZCopy;
      v33 = qCopy;
      v51 = qCopy;
      v52 = kaCopy;
      nCopy = n;
      v58 = qc | 0x20;
      v53 = lCopy;
      v54 = jCopy;
      v55 = kCopy;
      [v40 quVb0ErcaaAyQJnG:v24 completion:v46];
    }
  }

  else
  {
    v34 = +[QwDGuEabMS2vnWkj wrongXPCParameterError];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0xFFFFFFFFLL, v34);

    v33 = qCopy;
    v31 = xCopy;
  }
}

- (void)k4eQYhyzyebbQqys:(id)qqys
{
  qqysCopy = qqys;
  v6 = +[_TtC3asd18RavioliManagerObjC shared];
  v4 = +[_TtC3asd16RavioliConstants ravioliUUID];
  v5 = +[_TtC3asd29DefinedRavioliNotificationIds xpc];
  [v6 triggerImmediateRavioliFetchWithBagID:v4 notificationId:v5 completion:qqysCopy];
}

- (void)updateGeoCodingsXPC:(id)c completion:(id)completion
{
  cCopy = c;
  completionCopy = completion;
  v7 = objc_opt_self();
  v43 = 0;
  v8 = [ASDGeoCodingKeyedUnarchiver unarchivedObjectOfClass:v7 fromData:cCopy error:&v43];
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
    completionCopy[2](completionCopy, v9);
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
          completionCopy[2](completionCopy, v9);

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

  v30 = completionCopy;
  v31 = cCopy;

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
            completionCopy = v30;
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

  completionCopy = v30;
  v30[2](v30, v9);
LABEL_26:
  cCopy = v31;
LABEL_27:
  v10 = v32;
  v12 = v33;
LABEL_28:
}

- (void)fetchGeoCodingsForAddressesXPC:(id)c completion:(id)completion
{
  cCopy = c;
  completionCopy = completion;
  v7 = objc_opt_self();
  v25 = 0;
  v8 = [ASDGeoCodingKeyedUnarchiver unarchivedObjectOfClass:v7 fromData:cCopy error:&v25];
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
            completionCopy[2](completionCopy, 0, v9);
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
    (completionCopy)[2](completionCopy, v19, v9);

LABEL_16:
  }

  else
  {
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)fetchConfigWithCompletionXPC:(id)c
{
  cCopy = c;
  v6 = +[_TtC3asd23ASDConfigurationManager shared];
  configDictionaryForCoreODI = [v6 configDictionaryForCoreODI];
  (*(c + 2))(cCopy, configDictionaryForCoreODI);
}

- (void)llNEghuIdfPH7O8I:(BOOL)i all:(BOOL)all pregeneration:(BOOL)pregeneration workflowID:(id)d completion:(id)completion
{
  pregenerationCopy = pregeneration;
  allCopy = all;
  iCopy = i;
  dCopy = d;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100005E9C;
  v25[3] = &unk_10068EDA0;
  completionCopy = completion;
  v25[4] = self;
  v26 = completionCopy;
  v14 = objc_retainBlock(v25);
  if (iCopy)
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

  if (allCopy)
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

  if (dCopy && !pregenerationCopy)
  {
    v15 = +[_TtC3asd21PrecomputationManager shared];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100005F24;
    v19[3] = &unk_10068EE58;
    v16 = &v20;
    v20 = v14;
    [v15 triggerPrecomputationWithWorkflowID:dCopy completionHandler:v19];
    goto LABEL_11;
  }

  if (dCopy && pregenerationCopy)
  {
    v15 = +[_TtC3asd21PrecomputationManager shared];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005F38;
    v17[3] = &unk_10068EE58;
    v16 = &v18;
    v18 = v14;
    [v15 triggerPregenerationWithWorkflowID:dCopy completionHandler:v17];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)djoNSwl5j57W5mfl:(id)w5mfl eqF2XJh3hHBJQf2K:(id)k
{
  kCopy = k;
  w5mflCopy = w5mfl;
  v7 = +[PJXBDBF1h0EU80dy sharedInstance];
  [v7 dKsJLlNX54lzKt5n:w5mflCopy eqF2XJh3hHBJQf2K:kCopy];
}

- (void)lJIqliFcwusu4FxD:(id)d be2xk53Wn161LTDz:(id)dz completion:(id)completion
{
  completionCopy = completion;
  dzCopy = dz;
  dCopy = d;
  v10 = +[PJXBDBF1h0EU80dy sharedInstance];
  [v10 lJIqliFcwusu4FxD:dCopy workflowID:dzCopy completionHandler:completionCopy];
}

- (void)cacheDataXPC:(id)c forKey:(id)key andCategory:(int64_t)category completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  cCopy = c;
  v12 = +[ASFileCacheManager sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100006150;
  v14[3] = &unk_10068EE58;
  v15 = completionCopy;
  v13 = completionCopy;
  [v12 cacheData:cCopy forKey:keyCopy andCategory:category completion:v14];
}

- (void)fetchDataForKeyXPC:(id)c andCategory:(int64_t)category completion:(id)completion
{
  completionCopy = completion;
  cCopy = c;
  v9 = +[ASFileCacheManager sharedInstance];
  [v9 fetchDataForKey:cCopy andCategory:category completion:completionCopy];
}

- (void)rGvculjlqIwBJaoX:(id)x completion:(id)completion
{
  completionCopy = completion;
  xCopy = x;
  v7 = +[PJXBDBF1h0EU80dy sharedInstance];
  v10 = 0;
  v8 = [v7 evrtH713YbFfEOzk:xCopy error:&v10];

  v9 = v10;
  if (v9)
  {
    completionCopy[2](completionCopy, 0, v9);
  }

  (completionCopy)[2](completionCopy, v8, 0);
}

- (void)registerICloudLoginWithCompletionXPC:(id)c
{
  cCopy = c;
  v3 = +[_TtC3asd15PushCoordinator shared];
  [v3 registerICloud];

  cCopy[2](cCopy, 0);
}

- (void)unregisterICloudLoginWithCompletionXPC:(id)c
{
  cCopy = c;
  v3 = +[_TtC3asd15PushCoordinator shared];
  [v3 unregister];

  v4 = objc_alloc_init(Vr3QrKl7Yn9l4CTz);
  [(Vr3QrKl7Yn9l4CTz *)v4 sFFfMcUAtN14Bjc5];

  cCopy[2](cCopy, 0);
}

- (void)pRo6qBDnfEL0sBNs:(id)ns i7D0Lridvo8oYoNd:(id)nd completion:(id)completion
{
  completionCopy = completion;
  ndCopy = nd;
  nsCopy = ns;
  v10 = +[_TtC3asd22AssessmentPayloadStore shared];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006494;
  v12[3] = &unk_10068EE80;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 fetchFor:nsCopy withBindings:ndCopy completionHandler:v12];
}

+ (id)errorFromUnderlyingError:(id)error
{
  v3 = off_1006C9430;
  errorCopy = error;
  v5 = [NSString stringWithUTF8String:v3];
  code = [errorCopy code];

  v7 = [NSError errorWithDomain:v5 code:code userInfo:0];

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