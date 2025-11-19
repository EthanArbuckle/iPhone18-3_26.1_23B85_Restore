@interface pNjRsniwrVEhiG7R
+ (int)_ex9HyFJUdpLOOtaX:(id)a3 inS0qtOusqaPbbgj:(id *)a4;
+ (pNjRsniwrVEhiG7R)sharedInstance;
- (id)QRKmlh1jb9SsY8of:(id)a3;
- (id)Z0E7K4HXPkrVY9dm:(int)a3;
- (id)bfeta0KhydoCRvAc;
- (id)ygKhjfpV8v6SMJkN:(id)a3;
- (id)zdkFgT82CObMtwJn:(char *)a3 D2AyhLGEbXMCneo6:(unsigned int)a4;
- (int64_t)getEnvironmentValue;
- (pNjRsniwrVEhiG7R)init;
- (void)JI0A3nkqsab9cUj8:(id)a3 completion:(id)a4;
- (void)QeMnG23X94qgz7jT:(id)a3 hostChallenge:(id)a4 challengeResponse:(id)a5 seid:(id)a6 nonce:(id)a7 completion:(id)a8;
- (void)Z1kFQGOJhlZQpyD1:(id)a3 xz5EHXEN4FjlhJbi:(id)a4 uhVTXyAfCFn7u0Ue:(id)a5 EQUjQp7JcQbqcPcD:(id)a6 A5wDLa5TFdFZlz3A:(id)a7 TJKMyOe6zn5PdGIr:(id)a8 eCqgGM0WcnHOslnr:(unint64_t)a9 eCszfxdv3kUXvhgV:(unint64_t)a10 uWp4aZpP2vLhc04Q:(id)a11 QZYtNpvp0hKd248p:(id)a12 oCwPYmtRv8s31KUH:(id)a13 completion:(id)a14;
- (void)Z8aAH7stm0EYhyxg:(id)a3 dhAnc7b9U376IHnX:(id)a4 xz5EHXEN4FjlhJbi:(id)a5 uhVTXyAfCFn7u0Ue:(id)a6 EQUjQp7JcQbqcPcD:(id)a7 A5wDLa5TFdFZlz3A:(id)a8 TJKMyOe6zn5PdGIr:(id)a9 eCqgGM0WcnHOslnr:(unint64_t)a10 eCszfxdv3kUXvhgV:(unint64_t)a11 uWp4aZpP2vLhc04Q:(id)a12 QZYtNpvp0hKd248p:(id)a13 oCwPYmtRv8s31KUH:(id)a14 completion:(id)a15;
- (void)ZfE6lVphNUVrZcKx:(id)a3 completion:(id)a4;
- (void)cacheData:(id)a3 forKey:(id)a4 andCategory:(int64_t)a5 completion:(id)a6;
- (void)dKsJLlNX54lzKt5n:(id)a3 eqF2XJh3hHBJQf2K:(id)a4;
- (void)evrtH713YbFfEOzk:(id)a3 completion:(id)a4;
- (void)fetchConfigThrowingWithCompletion:(id)a3;
- (void)fetchConfigWithCompletion:(id)a3;
- (void)fetchDataForKey:(id)a3 andCategory:(int64_t)a4 completion:(id)a5;
- (void)fetchGeoCodingsForAddresses:(id)a3 completion:(id)a4;
- (void)lJIqliFcwusu4FxD:(id)a3 be2xk53Wn161LTDz:(id)a4 completion:(id)a5;
- (void)llNEghuIdfPH7O8I:(BOOL)a3 all:(BOOL)a4 pregeneration:(BOOL)a5 workflowID:(id)a6 completion:(id)a7;
- (void)ofLBc0SV56ddaijH:(id)a3 i7D0Lridvo8oYoNd:(id)a4 completion:(id)a5;
- (void)pRo6qBDnfEL0sBNs:(id)a3 i7D0Lridvo8oYoNd:(id)a4 completion:(id)a5;
- (void)registerICloudLoginWithCompletion:(id)a3;
- (void)unregisterICloudLoginWithCompletion:(id)a3;
- (void)updateGeoCodingsForAddresses:(id)a3 locations:(id)a4;
- (void)updateRavioliWithCompletion:(id)a3;
- (void)vffg4lwI2HftPvpO:(id)a3;
- (void)zGi22DPZsVGfawap:(id)a3 xz5EHXEN4FjlhJbi:(id)a4 uhVTXyAfCFn7u0Ue:(id)a5 EQUjQp7JcQbqcPcD:(id)a6 A5wDLa5TFdFZlz3A:(id)a7 TJKMyOe6zn5PdGIr:(id)a8 eCqgGM0WcnHOslnr:(unint64_t)a9 eCszfxdv3kUXvhgV:(unint64_t)a10 uWp4aZpP2vLhc04Q:(id)a11 QZYtNpvp0hKd248p:(id)a12 oCwPYmtRv8s31KUH:(id)a13 completion:(id)a14;
@end

@implementation pNjRsniwrVEhiG7R

- (int64_t)getEnvironmentValue
{
  if (!self->TvHUenoY6Ma3xE12)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 objectForKey:@"environment"];
    TvHUenoY6Ma3xE12 = self->TvHUenoY6Ma3xE12;
    self->TvHUenoY6Ma3xE12 = v4;

    v6 = self->TvHUenoY6Ma3xE12;
  }

  NSSelectorFromString(@"integerValue");
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v7 = self->TvHUenoY6Ma3xE12;

  return [(NSNumber *)v7 integerValue];
}

+ (pNjRsniwrVEhiG7R)sharedInstance
{
  if (qword_1006D7CF8 != -1)
  {
    sub_100593B2C();
  }

  v3 = qword_1006D7CF0;

  return v3;
}

+ (int)_ex9HyFJUdpLOOtaX:(id)a3 inS0qtOusqaPbbgj:(id *)a4
{
  v5 = a3;
  if (!a4)
  {
    v9 = -27002;
    goto LABEL_16;
  }

  ApplePayModelSigning = SecPolicyCreateApplePayModelSigning();
  v7 = v5;
  v8 = SecCMSVerify();
  if (v8 > -51)
  {
    if (v8 == -50)
    {
      v9 = -27652;
      goto LABEL_13;
    }

    if (!v8)
    {

      v9 = 0;
      *a4 = 0;
      goto LABEL_14;
    }

LABEL_10:
    v9 = -27660;
    goto LABEL_13;
  }

  if (v8 == -26275)
  {
    v9 = -27650;
    goto LABEL_13;
  }

  if (v8 != -25293)
  {
    goto LABEL_10;
  }

  v9 = -27651;
LABEL_13:

LABEL_14:
  if (ApplePayModelSigning)
  {
    CFRelease(ApplePayModelSigning);
  }

LABEL_16:

  return v9;
}

- (pNjRsniwrVEhiG7R)init
{
  v6.receiver = self;
  v6.super_class = pNjRsniwrVEhiG7R;
  v2 = [(pNjRsniwrVEhiG7R *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.asd.rse", 0);
    dPb4ucaLxk7hgr3U = v2->dPb4ucaLxk7hgr3U;
    v2->dPb4ucaLxk7hgr3U = v3;
  }

  return v2;
}

- (id)bfeta0KhydoCRvAc
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  if ([(pNjRsniwrVEhiG7R *)self getEnvironmentValue])
  {
    v2 = -3;
  }

  else
  {
    v2 = -2;
  }

  sub_10058F100(v2, &v8, &v7, &v9, &v7 + 4);
  if (v3)
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100593B40();
    }

    v4 = 0;
  }

  else
  {
    v5 = [NSData alloc];
    v4 = [v5 initWithBytes:v9 length:16];
    sub_1005930B8(v8);
    sub_1005930B8(v9);
  }

  return v4;
}

- (id)Z0E7K4HXPkrVY9dm:(int)a3
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_100690570[a3];
    v5 = objc_opt_new();
  }

  return v5;
}

- (id)zdkFgT82CObMtwJn:(char *)a3 D2AyhLGEbXMCneo6:(unsigned int)a4
{
  v6 = [(pNjRsniwrVEhiG7R *)self getEnvironmentValue];
  if (v6 == 2)
  {
    LOBYTE(v19) = -13;
    v7 = &xmmword_1005CA2D1;
    goto LABEL_5;
  }

  if (v6 == 1)
  {
    LOBYTE(v19) = 58;
    v7 = &xmmword_1005CA290;
LABEL_5:
    v8 = v7[1];
    v15 = *v7;
    v16 = v8;
    v9 = v7[3];
    v17 = v7[2];
    v18 = v9;
    v10 = [NSData alloc];
    v11 = &v15;
    v12 = 65;
    goto LABEL_7;
  }

  v10 = [NSData alloc];
  v12 = a4;
  v11 = a3;
LABEL_7:
  v13 = [v10 initWithBytes:v11 length:{v12, v15, v16, v17, v18, v19}];

  return v13;
}

- (id)QRKmlh1jb9SsY8of:(id)a3
{
  v3 = a3;
  v4 = [v3 endpointID];
  v5 = objc_opt_new();
  [v5 setEngineType:0];
  v6 = [v3 phone];
  [v5 setValue:v6];

  v7 = objc_opt_new();
  [v7 setEngineType:2];
  v8 = [v3 email];
  [v7 setValue:v8];

  if (v4)
  {
    if (v4 == 2)
    {
      v14[0] = v5;
      v14[1] = v7;
      v9 = [NSArray arrayWithObjects:v14 count:2];
    }

    else
    {
      v9 = &__NSArray0__struct;
    }
  }

  else
  {
    v10 = objc_opt_new();
    [v10 setEngineType:1];
    v11 = [v3 name];
    [v10 setValue:v11];

    v13[0] = v5;
    v13[1] = v10;
    v13[2] = v7;
    v9 = [NSArray arrayWithObjects:v13 count:3];
  }

  return v9;
}

- (id)ygKhjfpV8v6SMJkN:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10002D7F8;
  v20 = sub_10002D808;
  v21 = 0;
  v5 = v4;
  CC_SHA256([v4 bytes], objc_msgSend(v4, "length"), md);
  v6 = [[NSData alloc] initWithBytes:md length:32];
  v7 = dispatch_semaphore_create(0);
  v8 = [[IDSPhoneCertificateVendor alloc] initWithQueue:self->dPb4ucaLxk7hgr3U];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002D810;
  v13[3] = &unk_100690450;
  v15 = &v16;
  v9 = v7;
  v14 = v9;
  [v8 generatePhoneAuthenticationSignatureOverData:v6 withCompletion:v13];
  v10 = dispatch_time(0, 400000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    sub_1000313F4(-32007);
  }

  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)JI0A3nkqsab9cUj8:(id)a3 completion:(id)a4
{
  v6 = a3;
  v42 = a4;
  v43 = v6;
  v7 = [(pNjRsniwrVEhiG7R *)self QRKmlh1jb9SsY8of:v6];
  v8 = +[NSMutableDictionary dictionary];
  v9 = os_signpost_id_generate(qword_1006DF778);
  v10 = qword_1006DF778;
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "pub_1", "enableTelemetry=YES", buf, 2u);
  }

  spid = v9;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v61 objects:v79 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v62;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v62 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v61 + 1) + 8 * i);
        v19 = -[pNjRsniwrVEhiG7R Z0E7K4HXPkrVY9dm:](self, "Z0E7K4HXPkrVY9dm:", [v18 engineType]);
        v20 = [v19 WnJ3gJFPRgsreXQi:v18];
        [v8 addEntriesFromDictionary:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v61 objects:v79 count:16];
    }

    while (v15);
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  *buf = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v21 = v8;
  v22 = [v21 countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v58;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v58 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v57 + 1) + 8 * j);
        v27 = [v21 objectForKeyedSubscript:v26];
        [v27 floatValue];
        *&buf[4 * [v26 intValue]] = v28;
      }

      v23 = [v21 countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v23);
  }

  v55 = 0uLL;
  v56 = 0;
  *v44 = 0;
  sub_1002C9B10();
  v54 = 0;
  v53 = 0;
  v52 = [v43 settingsType] == 1;
  v51 = [v43 endpointID];
  *v44 = 0;
  sub_1002C9B10();
  v29 = *v44;
  if (*v44)
  {
    v30 = [NSString stringWithUTF8String:off_1006C9430, v44, spid];
    v65 = NSLocalizedDescriptionKey;
    v66 = @"Error during computation";
    v31 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v32 = [NSError errorWithDomain:v30 code:v29 userInfo:v31];
    v33 = v42;
    (*(v42 + 2))(v42, 0, 0, v32);

    if (v54)
    {
      free(v54);
    }

    *v44 = 0;
    sub_1002C9B10();
    v46 = _NSConcreteStackBlock;
    v47 = 3221225472;
    v48 = sub_10002E0DC;
    v49 = &unk_100690470;
    v50 = v29;
    AnalyticsSendEventLazy();
  }

  else
  {
    v34 = objc_opt_new();
    *v44 = v55;
    v45 = v56;
    [v34 YdwGDxa5y8ubHXip:{v44, v44}];
    v33 = v42;
    if (v51)
    {
      v35 = [(pNjRsniwrVEhiG7R *)self zdkFgT82CObMtwJn:v54 D2AyhLGEbXMCneo6:v53];
      [v34 setPpszCwt7GD641hHj:v35];
    }

    free(v54);
    [v34 setRUC18JCl8oMcmXim:v51];
    v36 = qword_1006DF778;
    v37 = v36;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *v44 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, spid, "pub_1", "", v44, 2u);
    }

    v38 = +[RXs9KixbxmL4RM2Z sharedInstance];
    v39 = [v38 KvXBZ2Y159GbeEgH:v34];

    v40 = [[NSData alloc] initWithBytes:v67 length:16];
    (*(v42 + 2))(v42, v39, v40, 0);
  }
}

- (void)QeMnG23X94qgz7jT:(id)a3 hostChallenge:(id)a4 challengeResponse:(id)a5 seid:(id)a6 nonce:(id)a7 completion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  v84 = 0u;
  memset(v85, 0, sizeof(v85));
  v83 = 0u;
  v77 = 0;
  v76 = 0;
  v19 = +[RXs9KixbxmL4RM2Z sharedInstance];
  v20 = [v19 xkNh5bfoCwq3gGYr:v13];

  if (v20)
  {
    if (v17)
    {
      if ([v17 length] == 8 && !objc_msgSend(v20, "rUC18JCl8oMcmXim"))
      {
        v21 = [NSMutableData dataWithData:v17];
        [v21 appendData:v17];

        v17 = v21;
      }
    }

    else
    {
      v17 = [(pNjRsniwrVEhiG7R *)self bfeta0KhydoCRvAc];
    }

    v24 = os_signpost_id_generate(qword_1006DF778);
    v25 = qword_1006DF778;
    v26 = v25;
    spid = v24;
    v59 = v24 - 1;
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "pub_2", "enableTelemetry=YES", buf, 2u);
    }

    if (!v14 || !v15 || !v16)
    {
      v27 = objc_opt_new();
      *buf = 0;
      v71 = buf;
      v72 = 0x3032000000;
      v73 = sub_10002D7F8;
      v74 = sub_10002D808;
      v75 = 0;
      *v78 = 0;
      *&v79 = v78;
      *(&v79 + 1) = 0x3032000000;
      v80 = sub_10002D7F8;
      v81 = sub_10002D808;
      v82 = 0;
      v64 = 0;
      v65 = &v64;
      v66 = 0x3032000000;
      v67 = sub_10002D7F8;
      v68 = sub_10002D808;
      v69 = 0;
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_10002EA48;
      v63[3] = &unk_100690498;
      v63[4] = buf;
      v63[5] = v78;
      v63[6] = &v64;
      [v27 traHoYtdjqKLUZYc:v63];
      v28 = *(v79 + 40);

      v29 = v65[5];
      v30 = *(v71 + 5);

      _Block_object_dispose(&v64, 8);
      _Block_object_dispose(v78, 8);

      _Block_object_dispose(buf, 8);
      v16 = v30;
      v15 = v29;
      v14 = v28;
    }

    v62 = [v15 subdataWithRange:{0, 8}];
    v61 = [v15 subdataWithRange:{8, 8}];
    *buf = 0;
    v71 = 0;
    v72 = 0;
    [v20 Xj38ZYkbLwtCgBTH];
    v83 = buf;
    *&v84 = 1;
    v31 = v17;
    *(&v84 + 1) = [v17 bytes];
    LODWORD(v85[0]) = [v17 length];
    [v62 getBytes:&v86 + 4 length:8];
    [v61 getBytes:&v86 + 12 length:8];
    [v14 getBytes:&v85[1] + 12 length:8];
    v32 = [v20 PpszCwt7GD641hHj];
    v33 = v32;
    *(&v87 + 1) = [v32 bytes];

    v34 = [v20 PpszCwt7GD641hHj];
    LODWORD(v88) = [v34 length];

    *(&v90 + 1) = 0;
    DWORD1(v88) = 1;
    LOBYTE(v91) = [v20 rUC18JCl8oMcmXim];
    LODWORD(v97) = 0;
    if (v16)
    {
      BYTE4(v87) = 0;
      v35 = [v16 dataUsingEncoding:4];
      v36 = v35;
      v37 = [v35 bytes];

      for (i = 0; i != 24; ++i)
      {
        v39 = *v37;
        v40 = v39 - 48;
        v41 = v39 - 97;
        if ((v39 - 65) >= 6)
        {
          v42 = -1;
        }

        else
        {
          v42 = v39 - 55;
        }

        v43 = v39 - 87;
        if (v41 > 5)
        {
          v43 = v42;
        }

        if (v40 < 0xA)
        {
          v43 = v40;
        }

        v44 = v37[1];
        v45 = v44 - 48;
        v46 = v44 - 97;
        if ((v44 - 65) >= 6)
        {
          v47 = -1;
        }

        else
        {
          v47 = v44 - 55;
        }

        v48 = v44 - 87;
        if (v46 > 5)
        {
          v48 = v47;
        }

        if (v45 < 0xA)
        {
          v48 = v45;
        }

        *(v85 + i + 4) = v48 | (16 * v43);
        v37 += 2;
      }
    }

    else
    {
      BYTE4(v87) = 1;
      *(v85 + 4) = xmmword_1005CA312;
      *(&v85[1] + 4) = 0x605040302010605;
    }

    v49 = [v20 rUC18JCl8oMcmXim];
    if (v49 == 10 || v49 == 2)
    {
      LODWORD(v97) = v97 | 3;
    }

    else if (!v49)
    {
      *(&v90 + 1) = [(pNjRsniwrVEhiG7R *)self ygKhjfpV8v6SMJkN:v17];
    }

    *v78 = 0;
    sub_1002C9B10();
    v50 = *v78;
    if (*v78)
    {
      v51 = qword_1006DF770;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
      {
        *v78 = 67109376;
        *&v78[4] = v50;
        LOWORD(v79) = 2048;
        *(&v79 + 2) = v50;
        _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Error %d, (0x%lx)", v78, 0x12u);
      }

      AnalyticsSendEventLazy();
      v52 = [NSString stringWithUTF8String:off_1006C9430, v78];
      v53 = [NSError errorWithDomain:v52 code:v50 userInfo:0];

      v18[2](v18, 0, v53);
    }

    else
    {
      v54 = [NSData alloc];
      v53 = [v54 initWithBytes:v77 length:{v76, v78}];
      (v18)[2](v18, v53, 0);
    }

    v55 = qword_1006DF778;
    v56 = v55;
    if (v59 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v55))
    {
      *v78 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_END, spid, "pub_2", "", v78, 2u);
    }

    v57 = +[RXs9KixbxmL4RM2Z sharedInstance];
    [v57 f5FVXJrOBjzaLi8u:v13];

    free(v77);
    if (*(&v90 + 1))
    {
    }
  }

  else
  {
    v22 = [NSString stringWithUTF8String:off_1006C9430];
    v23 = [NSError errorWithDomain:v22 code:-17 userInfo:0];

    v18[2](v18, 0, v23);
  }
}

- (void)Z8aAH7stm0EYhyxg:(id)a3 dhAnc7b9U376IHnX:(id)a4 xz5EHXEN4FjlhJbi:(id)a5 uhVTXyAfCFn7u0Ue:(id)a6 EQUjQp7JcQbqcPcD:(id)a7 A5wDLa5TFdFZlz3A:(id)a8 TJKMyOe6zn5PdGIr:(id)a9 eCqgGM0WcnHOslnr:(unint64_t)a10 eCszfxdv3kUXvhgV:(unint64_t)a11 uWp4aZpP2vLhc04Q:(id)a12 QZYtNpvp0hKd248p:(id)a13 oCwPYmtRv8s31KUH:(id)a14 completion:(id)a15
{
  v35 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  if (a3)
  {
    v33 = v24;
    v27 = v23;
    v28 = v22;
    v29 = v21;
    v30 = v20;
    v31 = v19;
    v32 = a3;
    a3 = [[ASReleasableBuffer alloc] initWithData:v32];

    v19 = v31;
    v20 = v30;
    v21 = v29;
    v22 = v28;
    v23 = v27;
    v24 = v33;
  }

  [(pNjRsniwrVEhiG7R *)self zGi22DPZsVGfawap:a3 xz5EHXEN4FjlhJbi:v35 uhVTXyAfCFn7u0Ue:v19 EQUjQp7JcQbqcPcD:v20 A5wDLa5TFdFZlz3A:v21 TJKMyOe6zn5PdGIr:v22 eCqgGM0WcnHOslnr:a10 eCszfxdv3kUXvhgV:a11 uWp4aZpP2vLhc04Q:v23 QZYtNpvp0hKd248p:v24 oCwPYmtRv8s31KUH:v25 completion:v26];
}

- (void)zGi22DPZsVGfawap:(id)a3 xz5EHXEN4FjlhJbi:(id)a4 uhVTXyAfCFn7u0Ue:(id)a5 EQUjQp7JcQbqcPcD:(id)a6 A5wDLa5TFdFZlz3A:(id)a7 TJKMyOe6zn5PdGIr:(id)a8 eCqgGM0WcnHOslnr:(unint64_t)a9 eCszfxdv3kUXvhgV:(unint64_t)a10 uWp4aZpP2vLhc04Q:(id)a11 QZYtNpvp0hKd248p:(id)a12 oCwPYmtRv8s31KUH:(id)a13 completion:(id)a14
{
  v36 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v35 = a8;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  if (a3)
  {
    v37 = a3;
    v34 = v24;
    v27 = v23;
    v28 = self;
    v29 = v22;
    v30 = v21;
    v31 = v20;
    v32 = a3;
    v33 = [NSArray arrayWithObjects:&v37 count:1];

    v20 = v31;
    v21 = v30;
    v22 = v29;
    self = v28;
    v23 = v27;
    v24 = v34;
  }

  else
  {
    v33 = &__NSArray0__struct;
  }

  [(pNjRsniwrVEhiG7R *)self Z1kFQGOJhlZQpyD1:v33 xz5EHXEN4FjlhJbi:v36 uhVTXyAfCFn7u0Ue:v20 EQUjQp7JcQbqcPcD:v21 A5wDLa5TFdFZlz3A:v22 TJKMyOe6zn5PdGIr:v35 eCqgGM0WcnHOslnr:a9 eCszfxdv3kUXvhgV:a10 uWp4aZpP2vLhc04Q:v23 QZYtNpvp0hKd248p:v24 oCwPYmtRv8s31KUH:v25 completion:v26];
}

- (void)Z1kFQGOJhlZQpyD1:(id)a3 xz5EHXEN4FjlhJbi:(id)a4 uhVTXyAfCFn7u0Ue:(id)a5 EQUjQp7JcQbqcPcD:(id)a6 A5wDLa5TFdFZlz3A:(id)a7 TJKMyOe6zn5PdGIr:(id)a8 eCqgGM0WcnHOslnr:(unint64_t)a9 eCszfxdv3kUXvhgV:(unint64_t)a10 uWp4aZpP2vLhc04Q:(id)a11 QZYtNpvp0hKd248p:(id)a12 oCwPYmtRv8s31KUH:(id)a13 completion:(id)a14
{
  v107 = a3;
  v97 = a4;
  v19 = a5;
  v20 = a6;
  v101 = a7;
  v103 = a8;
  v105 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v171 = 0;
  v172 = &v171;
  v173 = 0x2020000000;
  v174 = malloc_type_malloc(0xF8uLL, 0x10F00405233A3F1uLL);
  v159 = 0;
  v160 = &v159;
  v161 = 0x9810000000;
  v162 = &unk_1005A5D0D;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0;
  v155 = 0;
  v156 = &v155;
  v157 = 0x2020000000;
  v158 = 0;
  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = 0;
  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  v150 = 0;
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = 0;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v142 = 0;
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 0;
  memset(v182, 0, sizeof(v182));
  *v172[3] = 0;
  *(v172[3] + 8) = 0;
  v24 = v172;
  *(v172[3] + 24) = 0;
  *(v24[3] + 88) = 0;
  *(v24[3] + 136) = 0;
  *(v24[3] + 152) = 0;
  *(v24[3] + 160) = 0;
  *(v24[3] + 192) = 0;
  [qword_1006DF768 pausePrecomputationsWithCompletionHandler:&stru_1006904B8];
  v25 = qword_1006DF770;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [v107 count];
    *buf = 134218496;
    v176 = v26;
    v177 = 2048;
    v178 = a9;
    v179 = 2048;
    v180 = a10;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "n = %lu, o = %ld, c = %ld", buf, 0x20u);
  }

  v27 = os_signpost_id_generate(qword_1006DF778);
  v28 = qword_1006DF778;
  v29 = v28;
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "pub_3", "enableTelemetry=YES", buf, 2u);
  }

  v30 = os_transaction_create();
  v125[0] = _NSConcreteStackBlock;
  v125[1] = 3221225472;
  v125[2] = sub_10002FC70;
  v125[3] = &unk_100690528;
  v127 = &v159;
  v128 = &v155;
  v129 = &v151;
  v130 = &v147;
  v131 = &v139;
  v132 = &v171;
  v133 = v27;
  v134 = a10;
  v100 = v19;
  v126 = v100;
  v31 = objc_retainBlock(v125);
  v109[0] = _NSConcreteStackBlock;
  v109[1] = 3221225472;
  v109[2] = sub_10002FF5C;
  v109[3] = &unk_100690550;
  v121 = &v147;
  v122 = &v143;
  v123 = &v139;
  v124 = &v135;
  v32 = v23;
  v119 = v32;
  v33 = v31;
  v120 = v33;
  v34 = v20;
  v110 = v34;
  v96 = v101;
  v111 = v96;
  v104 = v103;
  v112 = v104;
  v106 = v105;
  v113 = v106;
  v35 = v21;
  v114 = v35;
  v115 = 0;
  v36 = v22;
  v116 = v36;
  v94 = v30;
  v117 = v94;
  v118 = 0;
  v95 = objc_retainBlock(v109);
  v37 = +[YeQHj6zXMU2P8KDh sharedInstance];
  [v37 cGauGmZFPJJkT1d3:v100];

  if (v106 && v35 && v36)
  {
    v102 = 0;
  }

  else
  {
    v38 = objc_opt_new();
    v102 = [v38 createSeidFuture];

    if (!v35)
    {
      goto LABEL_13;
    }
  }

  if ([v35 length] == 16)
  {
    v99 = [v35 subdataWithRange:{0, 8}];
    v98 = [v35 subdataWithRange:{8, 8}];
    goto LABEL_14;
  }

LABEL_13:
  v98 = 0;
  v99 = 0;
LABEL_14:
  if (!(v36 | v102))
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100593C98();
    }

    v39 = 0;
    v40 = -702;
    goto LABEL_63;
  }

  *(v172[3] + 100) = 3;
  v41 = v104;
  v42 = [v104 bytes];
  *(v172[3] + 24) = v42;
  v43 = [v104 length];
  v44 = v172[3];
  *(v44 + 32) = v43;
  [v99 getBytes:v44 + 68 length:8];
  [v98 getBytes:v172[3] + 76 length:8];
  [v106 getBytes:v172[3] + 60 length:8];
  v45 = v172;
  *(v172[3] + 136) = 0;
  *(v45[3] + 84) = v36 == 0;
  v46 = v102;
  *(v172[3] + 192) = v46;
  v47 = [v36 dataUsingEncoding:4];
  v48 = v47;
  v49 = [v47 bytes];
  v156[3] = v49;

  v50 = v156[3];
  v152[3] = v50;
  if (!v36)
  {
    v62 = v172;
    v63 = v172[3];
    *(v63 + 84) = 1;
    *(v63 + 36) = xmmword_1005CA312;
    *(v63 + 52) = 0x605040302010605;
    *(v62[3] + 68) = 0x201060504030201;
    *(v62[3] + 76) = 0x201060504030201;
    *(v62[3] + 60) = 0x201060504030201;
    if (!v34)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  for (i = 36; i != 60; ++i)
  {
    v52 = *v50;
    v53 = v52 - 48;
    v54 = v52 - 97;
    if ((v52 - 65) >= 6)
    {
      v55 = -1;
    }

    else
    {
      v55 = v52 - 55;
    }

    v56 = v52 - 87;
    if (v54 > 5)
    {
      v56 = v55;
    }

    if (v53 < 0xA)
    {
      v56 = v53;
    }

    v57 = v50[1];
    v58 = v57 - 48;
    v59 = v57 - 97;
    if ((v57 - 65) >= 6)
    {
      v60 = -1;
    }

    else
    {
      v60 = v57 - 55;
    }

    v61 = v57 - 87;
    if (v59 > 5)
    {
      v61 = v60;
    }

    if (v58 < 0xA)
    {
      v61 = v58;
    }

    *(v172[3] + i) = v61 | (16 * v56);
    v50 = (v152[3] + 2);
    v152[3] = v50;
  }

  if (v34)
  {
LABEL_38:
    if ([v34 count])
    {
      for (j = 0; j != 3; ++j)
      {
        *(v172[3] + 8 * j + 200) = v182[j];
        *(v172[3] + 4 * j + 224) = v181[j];
      }

      v65 = [v34 count];
      v66 = 3;
      if (v65 < 3)
      {
        v66 = v65;
      }

      *(v172[3] + 236) = v66;
      if (v65)
      {
        v67 = 0;
        do
        {
          v68 = [v34 objectAtIndexedSubscript:v67];
          v69 = v68;
          v70 = [v68 bytes];
          *(v172[3] + 8 * v67 + 200) = v70;

          v71 = [v34 objectAtIndexedSubscript:v67];
          v72 = [v71 length];
          *(v172[3] + 4 * v67 + 224) = v72;

          ++v67;
        }

        while (v67 < *(v172[3] + 236));
      }
    }
  }

LABEL_46:
  *(v172[3] + 240) = 1;
  if (v97)
  {
    v108 = 0;
    v40 = [pNjRsniwrVEhiG7R _ex9HyFJUdpLOOtaX:v97 inS0qtOusqaPbbgj:&v108];
    v73 = v108;
    v39 = v73;
    if (v40)
    {
LABEL_63:
      v33[2](v33);
      AnalyticsSendEventLazy();
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
      {
        sub_100593CCC();
      }

      v91 = [NSString stringWithUTF8String:off_1006C9430];
      v92 = [NSError errorWithDomain:v91 code:v40 userInfo:0];

      (*(v32 + 2))(v32, 0, 0, 0, 0xFFFFFFFFLL, v92);
      goto LABEL_66;
    }

    v93 = [v73 length];
    if (!v93)
    {
      v40 = -27600;
      goto LABEL_63;
    }
  }

  else
  {
    v93 = 0;
    v39 = 0;
  }

  v74 = [v107 count];
  *(v160 + 14) = v74;
  v75 = malloc_type_malloc(8 * v74, 0x10040436913F5uLL);
  v160[5] = v75;
  v76 = malloc_type_malloc(4 * [v107 count], 0x100004052888210uLL);
  v77 = v160;
  v160[6] = v76;
  if (*(v77 + 14))
  {
    v78 = 0;
    while (1)
    {
      v79 = [v107 objectAtIndexedSubscript:v78];
      v80 = [v79 originalDataLength];

      if (!v80)
      {
        v40 = -27823;
        goto LABEL_63;
      }

      v81 = [v107 objectAtIndexedSubscript:v78];
      v82 = [v81 takeDataAndOwnership];

      if (!v82)
      {
        break;
      }

      *(v160[5] + 8 * v78) = v82;
      *(v160[6] + 4 * v78++) = v80;
      if (v78 >= *(v160 + 14))
      {
        goto LABEL_56;
      }
    }

    v40 = -27829;
    goto LABEL_63;
  }

LABEL_56:
  v83 = v39;
  v84 = [v39 bytes];
  v85 = v160;
  v160[8] = v84;
  *(v85 + 18) = v93;
  v85[4] = v172[3];
  v86 = v144 + 3;
  v85[10] = (v148 + 3);
  v85[11] = v86;
  v87 = v136 + 3;
  v85[12] = (v140 + 3);
  v85[13] = v87;
  v85[14] = v100;
  *(v85 + 30) = a9;
  if (v96 && (a9 & 2) != 0)
  {
    *(v85 + 32) = 2;
    v88 = v96;
    v89 = [v96 bytes];
    v160[17] = v89;
    v90 = [v96 length];
    v85 = v160;
    *(v160 + 36) = v90;
  }

  else
  {
    *(v85 + 32) = 1;
  }

  *(v85 + 31) = a10;
  objc_retainBlock(v95);
  sub_1002C9B10();
LABEL_66:

  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(&v139, 8);
  _Block_object_dispose(&v143, 8);
  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(&v151, 8);
  _Block_object_dispose(&v155, 8);
  _Block_object_dispose(&v159, 8);
  _Block_object_dispose(&v171, 8);
}

- (void)ZfE6lVphNUVrZcKx:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PJXBDBF1h0EU80dy sharedInstance];
  v12 = 0;
  v8 = [v7 nYOW3DfIUVSEf2Hm:v6 rTZQrPNUbDSIifrh:&v12];

  v9 = v12;
  v10 = [[Vr3QrKl7Yn9l4CTz alloc] initWithfOZWnqN9bY6jwOMf:v7];
  [(Vr3QrKl7Yn9l4CTz *)v10 ppirDXSrO0poQaQJ];
  [(Vr3QrKl7Yn9l4CTz *)v10 dYBT28sn68SB69rn];
  v11 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Maintenance triggered, purged %ld records", buf, 0xCu);
  }

  v5[2](v5, v8, 0, v9);
}

- (void)vffg4lwI2HftPvpO:(id)a3
{
  v5 = 0;
  v6 = 0;
  v3 = a3;
  sub_1002C9B10();
  v4 = [NSData dataWithBytes:0 length:0, &v5];
  v3[2](v3, v4, 0);

  if (v6)
  {
    free(v6);
  }
}

- (void)fetchGeoCodingsForAddresses:(id)a3 completion:(id)a4
{
  v4 = a4;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100593D50();
  }

  v4[2](v4, 0);
}

- (void)updateGeoCodingsForAddresses:(id)a3 locations:(id)a4
{
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100593D8C();
  }
}

- (void)updateRavioliWithCompletion:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100593DC8();
  }

  v4 = [NSString stringWithUTF8String:off_1006C9430];
  v5 = [NSError errorWithDomain:v4 code:141 userInfo:0];
  v3[2](v3, v5);
}

- (void)fetchConfigWithCompletion:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100593E04();
  }

  v3[2](v3, 0);
}

- (void)fetchConfigThrowingWithCompletion:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100593E40();
  }

  (*(v3 + 2))(v3, 0, 0);
}

- (void)llNEghuIdfPH7O8I:(BOOL)a3 all:(BOOL)a4 pregeneration:(BOOL)a5 workflowID:(id)a6 completion:(id)a7
{
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100593E7C();
  }
}

- (void)evrtH713YbFfEOzk:(id)a3 completion:(id)a4
{
  v4 = a4;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100593EFC();
  }

  (*(v4 + 2))(v4, 0, 0);
}

- (void)dKsJLlNX54lzKt5n:(id)a3 eqF2XJh3hHBJQf2K:(id)a4
{
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
  {
    sub_100593F7C();
  }
}

- (void)lJIqliFcwusu4FxD:(id)a3 be2xk53Wn161LTDz:(id)a4 completion:(id)a5
{
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
  {
    sub_100593F7C();
  }
}

- (void)ofLBc0SV56ddaijH:(id)a3 i7D0Lridvo8oYoNd:(id)a4 completion:(id)a5
{
  v5 = a5;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
  {
    sub_100593F7C();
  }

  v6 = [NSString stringWithUTF8String:off_1006C9430];
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Not implemented";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:-27006 userInfo:v7];
  v5[2](v5, 0, v8);
}

- (void)registerICloudLoginWithCompletion:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
  {
    sub_100593F7C();
  }

  v4 = [NSString stringWithUTF8String:off_1006C9430];
  v7 = NSLocalizedDescriptionKey;
  v8 = @"Not implemented";
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [NSError errorWithDomain:v4 code:-27006 userInfo:v5];
  v3[2](v3, v6);
}

- (void)unregisterICloudLoginWithCompletion:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
  {
    sub_100593F7C();
  }

  v4 = [NSString stringWithUTF8String:off_1006C9430];
  v7 = NSLocalizedDescriptionKey;
  v8 = @"Not implemented";
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [NSError errorWithDomain:v4 code:-27006 userInfo:v5];
  v3[2](v3, v6);
}

- (void)cacheData:(id)a3 forKey:(id)a4 andCategory:(int64_t)a5 completion:(id)a6
{
  v6 = a6;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
  {
    sub_100593F7C();
  }

  v7 = [NSString stringWithUTF8String:off_1006C9430];
  v10 = NSLocalizedDescriptionKey;
  v11 = @"Not implemented";
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [NSError errorWithDomain:v7 code:-27006 userInfo:v8];
  v6[2](v6, v9);
}

- (void)fetchDataForKey:(id)a3 andCategory:(int64_t)a4 completion:(id)a5
{
  v5 = a5;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
  {
    sub_100593F7C();
  }

  v6 = [NSString stringWithUTF8String:off_1006C9430];
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Not implemented";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:-27006 userInfo:v7];
  v5[2](v5, 0, v8);
}

- (void)pRo6qBDnfEL0sBNs:(id)a3 i7D0Lridvo8oYoNd:(id)a4 completion:(id)a5
{
  v5 = a5;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100593FB0();
  }

  (*(v5 + 2))(v5, 0, 0);
}

@end