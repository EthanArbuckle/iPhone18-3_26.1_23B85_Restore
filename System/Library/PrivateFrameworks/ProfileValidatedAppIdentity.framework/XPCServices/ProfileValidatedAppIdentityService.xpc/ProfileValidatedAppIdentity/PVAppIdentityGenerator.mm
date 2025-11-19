@interface PVAppIdentityGenerator
- (BOOL)extractApplicationRecord:(id *)a3;
- (BOOL)validatePPQAppId:(id *)a3;
- (PVAppIdentityGenerator)initWithApplicationURL:(id)a3 ppqAppId:(id)a4;
- (id)generateDigest;
- (void)dealloc;
@end

@implementation PVAppIdentityGenerator

- (PVAppIdentityGenerator)initWithApplicationURL:(id)a3 ppqAppId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PVAppIdentityGenerator;
  v9 = [(PVAppIdentityGenerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->applicationURL, a3);
    objc_storeStrong(&v10->ppqAppId, a4);
    executableName = v10->executableName;
    v10->executableName = 0;

    executableURL = v10->executableURL;
    v10->executableURL = 0;
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PVAppIdentityGenerator;
  [(PVAppIdentityGenerator *)&v2 dealloc];
}

- (BOOL)extractApplicationRecord:(id *)a3
{
  v5 = [LSApplicationRecord alloc];
  applicationURL = self->applicationURL;
  v25 = 0;
  v7 = [v5 initWithURL:applicationURL allowPlaceholder:0 error:&v25];
  v8 = v25;
  if (v7)
  {
    v9 = [v7 infoDictionary];
    v10 = [v9 objectForKey:kCFBundleExecutableKey ofClass:objc_opt_class()];

    v11 = [v7 executableURL];
    v12 = isNSString(v10);

    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      [NSError pvai_errorWithCode:-10200];
      v8 = v14 = v8;
    }

    else
    {
      objc_storeStrong(&self->executableName, v10);
      objc_storeStrong(&self->executableURL, v11);
      v15 = _PVAppIdentityLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194F0(v7);
      }

      v17 = _PVAppIdentityLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10001957C();
      }

      v18 = _PVAppIdentityLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1000195F0(v7);
      }

      v19 = _PVAppIdentityLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_10001968C(v7);
      }

      v20 = _PVAppIdentityLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_100019728(v7);
      }

      v21 = _PVAppIdentityLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_1000197C4(v7);
      }

      v22 = _PVAppIdentityLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_100019850(v7);
      }

      v14 = _PVAppIdentityLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1000198DC();
      }
    }
  }

  else
  {
    [NSError pvai_wrappedError:-10200 error:v8];
    v8 = v10 = v8;
  }

  if (a3 && v8)
  {
    v23 = v8;
    *a3 = v8;
  }

  return v8 == 0;
}

- (BOOL)validatePPQAppId:(id *)a3
{
  v4 = isNSData(self->ppqAppId);

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSError pvai_errorWithCode:-10001];
    if (a3 && v5)
    {
      v5 = v5;
      *a3 = v5;
    }
  }

  v6 = v5 == 0;

  return v6;
}

- (id)generateDigest
{
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v38 = 0;
  cf = 0;
  v36 = 0;
  v37 = 0;
  [(PVAppIdentityGenerator *)self extractApplicationRecord:&v36];
  v3 = v36;
  if (v3 || (v35 = 0, [(PVAppIdentityGenerator *)self validatePPQAppId:&v35], (v3 = v35) != 0))
  {
    v4 = v3;
    v33 = 0;
    v5 = 0;
LABEL_4:
    v6 = [PVAppIdentityDigest alloc];
    v7 = [NSNumber numberWithInt:2002];
    v8 = [(PVAppIdentityDigest *)v6 initWithError:v4 version:v7];
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_5:

    v15 = v33;
    goto LABEL_6;
  }

  v5 = [(NSString *)self->executableName dataUsingEncoding:4];
  applicationURL = self->applicationURL;
  p_applicationURL = &self->applicationURL;
  v15 = [(NSURL *)applicationURL URLByAppendingPathComponent:@"_CodeSignature/CodeResources" isDirectory:0];
  PVAppIdentityCore_GenerateDigests(p_applicationURL[1], v5, *p_applicationURL, p_applicationURL[3], v15, -1, -1);
  if (!v20)
  {
    v33 = v15;
    v21 = v42;
    v22 = v41;
    v29 = v40;
    v23 = v38;
    v14 = cf;
    v13 = v37;
    v24 = [PVAppIdentityDigest alloc];
    v25 = [NSNumber numberWithInt:2002, &v41, &v40, &v38, &cf, &v37];
    v31 = v21;
    v26 = v21;
    v10 = v22;
    v27 = v22;
    v11 = v29;
    v12 = v23;
    v8 = [PVAppIdentityDigest initWithVersion:v24 data0:"initWithVersion:data0:data1:data2:data3:data4:data5:" data1:v25 data2:v26 data3:v27 data4:v13 data5:?];

    v7 = [(PVAppIdentityDigest *)v8 asDictionary];
    v34 = 0;
    v32 = [NSJSONSerialization dataWithJSONObject:v7 options:3 error:&v34];
    v30 = v34;
    v28 = _PVAppIdentityLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_100019950(p_applicationURL, v32);
    }

    v4 = 0;
    v9 = v31;
    goto LABEL_5;
  }

  v4 = [NSError pvai_errorWithCode:v20, &v41, &v40, &v38, &cf, &v37];
  if (v4)
  {
    v33 = v15;
    goto LABEL_4;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = 0;
LABEL_6:
  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  v16 = v8;

  return v8;
}

@end