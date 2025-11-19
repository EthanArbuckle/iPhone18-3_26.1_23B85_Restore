@interface SKError
+ (BOOL)failWithError:(id)a3 error:(id *)a4;
+ (BOOL)failWithSKErrorCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5;
+ (BOOL)failWithSKErrorCode:(int64_t)a3 error:(id *)a4;
+ (NSBundle)frameworkBundle;
+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4;
+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5;
+ (id)errorWithCode:(int64_t)a3 disks:(id)a4 userInfo:(id)a5;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)errorWithOSStatus:(int)a3 debugDescription:(id)a4 error:(id *)a5;
+ (id)errorWithPOSIXCode:(int)a3 debugDescription:(id)a4 error:(id *)a5;
+ (id)localizedDescriptionForCode:(int64_t)a3;
+ (id)nilWithError:(id)a3 error:(id *)a4;
+ (id)nilWithSKErrorCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5;
+ (id)nilWithSKErrorCode:(int64_t)a3 error:(id *)a4;
@end

@implementation SKError

+ (NSBundle)frameworkBundle
{
  if (qword_10000DA00 != -1)
  {
    sub_100004874();
  }

  v3 = qword_10000D9F8;

  return v3;
}

+ (id)localizedDescriptionForCode:(int64_t)a3
{
  v4 = [NSString stringWithFormat:@"%ld", a3];
  v5 = [NSBundle bundleForClass:a1];
  v6 = [v5 localizedStringForKey:v4 value:0 table:@"SKError"];

  v7 = 0;
  if (([v6 isEqualToString:v4] & 1) == 0)
  {
    v7 = v6;
  }

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4
{
  v9 = NSDebugDescriptionErrorKey;
  v10 = a4;
  v5 = a4;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [SKError errorWithCode:a3 disks:0 userInfo:v6];

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5
{
  v12 = NSDebugDescriptionErrorKey;
  v13 = a4;
  v7 = a4;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [SKError errorWithCode:a3 disks:0 userInfo:v8];

  if (a5)
  {
    v10 = v9;
    *a5 = v9;
  }

  return v9;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v9 = NSUnderlyingErrorKey;
  v10 = a4;
  v5 = a4;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [SKError errorWithCode:a3 userInfo:v6];

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 disks:(id)a4 userInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = v9;
    v11 = [v9 mutableCopy];
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  v12 = [v11 objectForKey:NSLocalizedDescriptionKey];

  if (!v12)
  {
    if (v8)
    {
      v13 = SKGetOSLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [a1 localizedDescriptionForCode:a3];
        *buf = 136315650;
        v24 = "+[SKError errorWithCode:disks:userInfo:]";
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: %@ : %@", buf, 0x20u);
      }

      v15 = [a1 localizedDescriptionForCode:a3];
      v16 = commaSeparatedDiskListFromArray(v8);
      v17 = [NSString stringWithFormat:@"%@ : %@", v15, v16];
    }

    else
    {
      v17 = [a1 localizedDescriptionForCode:a3];
      v20 = [v11 objectForKeyedSubscript:NSDebugDescriptionErrorKey];

      v15 = SKGetOSLog();
      v21 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (v20)
      {
        if (v21)
        {
          v22 = [v11 objectForKeyedSubscript:NSDebugDescriptionErrorKey];
          *buf = 136315650;
          v24 = "+[SKError errorWithCode:disks:userInfo:]";
          v25 = 2112;
          v26 = v17;
          v27 = 2112;
          v28 = v22;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: %@ [%@]", buf, 0x20u);
        }
      }

      else if (v21)
      {
        *buf = 136315394;
        v24 = "+[SKError errorWithCode:disks:userInfo:]";
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: %@", buf, 0x16u);
      }
    }

    if (v17)
    {
      [v11 setObject:v17 forKey:NSLocalizedDescriptionKey];
    }
  }

  v18 = [NSError errorWithDomain:@"com.apple.StorageKit" code:a3 userInfo:v11];

  return v18;
}

+ (id)nilWithError:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = SKGetOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
  }

  if (a4)
  {
    v7 = v5;
    *a4 = v5;
  }

  return 0;
}

+ (BOOL)failWithError:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = SKGetOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
  }

  if (a4)
  {
    v7 = v5;
    *a4 = v5;
  }

  return 0;
}

+ (id)errorWithPOSIXCode:(int)a3 debugDescription:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = sub_100002590(a4);
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:v7];

  v9 = SKGetOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
  }

  if (a5)
  {
    v10 = v8;
    *a5 = v8;
  }

  return v8;
}

+ (id)errorWithOSStatus:(int)a3 debugDescription:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = v7;
  if ((a3 - 49152) > 0x6B)
  {
    v9 = NSOSStatusErrorDomain;
    v10 = a3;
  }

  else
  {
    v9 = NSPOSIXErrorDomain;
    v10 = a3 & 0x7F;
  }

  v11 = sub_100002590(v7);
  v12 = [NSError errorWithDomain:v9 code:v10 userInfo:v11];

  v13 = SKGetOSLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
  }

  if (a5)
  {
    v14 = v12;
    *a5 = v12;
  }

  return v12;
}

+ (id)nilWithSKErrorCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5
{
  v7 = sub_100002590(a4);
  v8 = [SKError errorWithCode:a3 userInfo:v7];
  v9 = [SKError nilWithError:v8 error:a5];

  return v9;
}

+ (id)nilWithSKErrorCode:(int64_t)a3 error:(id *)a4
{
  v5 = [SKError errorWithCode:a3 userInfo:0];
  v6 = [SKError nilWithError:v5 error:a4];

  return v6;
}

+ (BOOL)failWithSKErrorCode:(int64_t)a3 debugDescription:(id)a4 error:(id *)a5
{
  v7 = sub_100002590(a4);
  v8 = [SKError errorWithCode:a3 userInfo:v7];
  LOBYTE(a5) = [SKError failWithError:v8 error:a5];

  return a5;
}

+ (BOOL)failWithSKErrorCode:(int64_t)a3 error:(id *)a4
{
  v5 = [SKError errorWithCode:a3 userInfo:0];
  LOBYTE(a4) = [SKError failWithError:v5 error:a4];

  return a4;
}

@end