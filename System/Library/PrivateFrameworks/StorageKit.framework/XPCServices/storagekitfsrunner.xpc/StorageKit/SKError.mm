@interface SKError
+ (BOOL)failWithError:(id)error error:(id *)a4;
+ (BOOL)failWithSKErrorCode:(int64_t)code debugDescription:(id)description error:(id *)error;
+ (BOOL)failWithSKErrorCode:(int64_t)code error:(id *)error;
+ (NSBundle)frameworkBundle;
+ (id)errorWithCode:(int64_t)code debugDescription:(id)description;
+ (id)errorWithCode:(int64_t)code debugDescription:(id)description error:(id *)error;
+ (id)errorWithCode:(int64_t)code disks:(id)disks userInfo:(id)info;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)errorWithOSStatus:(int)status debugDescription:(id)description error:(id *)error;
+ (id)errorWithPOSIXCode:(int)code debugDescription:(id)description error:(id *)error;
+ (id)localizedDescriptionForCode:(int64_t)code;
+ (id)nilWithError:(id)error error:(id *)a4;
+ (id)nilWithSKErrorCode:(int64_t)code debugDescription:(id)description error:(id *)error;
+ (id)nilWithSKErrorCode:(int64_t)code error:(id *)error;
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

+ (id)localizedDescriptionForCode:(int64_t)code
{
  code = [NSString stringWithFormat:@"%ld", code];
  v5 = [NSBundle bundleForClass:self];
  v6 = [v5 localizedStringForKey:code value:0 table:@"SKError"];

  v7 = 0;
  if (([v6 isEqualToString:code] & 1) == 0)
  {
    v7 = v6;
  }

  return v7;
}

+ (id)errorWithCode:(int64_t)code debugDescription:(id)description
{
  v9 = NSDebugDescriptionErrorKey;
  descriptionCopy = description;
  descriptionCopy2 = description;
  v6 = [NSDictionary dictionaryWithObjects:&descriptionCopy forKeys:&v9 count:1];
  v7 = [SKError errorWithCode:code disks:0 userInfo:v6];

  return v7;
}

+ (id)errorWithCode:(int64_t)code debugDescription:(id)description error:(id *)error
{
  v12 = NSDebugDescriptionErrorKey;
  descriptionCopy = description;
  descriptionCopy2 = description;
  v8 = [NSDictionary dictionaryWithObjects:&descriptionCopy forKeys:&v12 count:1];
  v9 = [SKError errorWithCode:code disks:0 userInfo:v8];

  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return v9;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error
{
  v9 = NSUnderlyingErrorKey;
  errorCopy = error;
  errorCopy2 = error;
  v6 = [NSDictionary dictionaryWithObjects:&errorCopy forKeys:&v9 count:1];
  v7 = [SKError errorWithCode:code userInfo:v6];

  return v7;
}

+ (id)errorWithCode:(int64_t)code disks:(id)disks userInfo:(id)info
{
  disksCopy = disks;
  infoCopy = info;
  if (infoCopy)
  {
    v10 = infoCopy;
    v11 = [infoCopy mutableCopy];
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  v12 = [v11 objectForKey:NSLocalizedDescriptionKey];

  if (!v12)
  {
    if (disksCopy)
    {
      v13 = SKGetOSLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [self localizedDescriptionForCode:code];
        *buf = 136315650;
        v24 = "+[SKError errorWithCode:disks:userInfo:]";
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = disksCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: %@ : %@", buf, 0x20u);
      }

      v15 = [self localizedDescriptionForCode:code];
      v16 = commaSeparatedDiskListFromArray(disksCopy);
      v17 = [NSString stringWithFormat:@"%@ : %@", v15, v16];
    }

    else
    {
      v17 = [self localizedDescriptionForCode:code];
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

  v18 = [NSError errorWithDomain:@"com.apple.StorageKit" code:code userInfo:v11];

  return v18;
}

+ (id)nilWithError:(id)error error:(id *)a4
{
  errorCopy = error;
  v6 = SKGetOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
  }

  if (a4)
  {
    v7 = errorCopy;
    *a4 = errorCopy;
  }

  return 0;
}

+ (BOOL)failWithError:(id)error error:(id *)a4
{
  errorCopy = error;
  v6 = SKGetOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
  }

  if (a4)
  {
    v7 = errorCopy;
    *a4 = errorCopy;
  }

  return 0;
}

+ (id)errorWithPOSIXCode:(int)code debugDescription:(id)description error:(id *)error
{
  codeCopy = code;
  v7 = sub_100002590(description);
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:codeCopy userInfo:v7];

  v9 = SKGetOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
  }

  if (error)
  {
    v10 = v8;
    *error = v8;
  }

  return v8;
}

+ (id)errorWithOSStatus:(int)status debugDescription:(id)description error:(id *)error
{
  descriptionCopy = description;
  v8 = descriptionCopy;
  if ((status - 49152) > 0x6B)
  {
    v9 = NSOSStatusErrorDomain;
    statusCopy = status;
  }

  else
  {
    v9 = NSPOSIXErrorDomain;
    statusCopy = status & 0x7F;
  }

  v11 = sub_100002590(descriptionCopy);
  v12 = [NSError errorWithDomain:v9 code:statusCopy userInfo:v11];

  v13 = SKGetOSLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
  }

  if (error)
  {
    v14 = v12;
    *error = v12;
  }

  return v12;
}

+ (id)nilWithSKErrorCode:(int64_t)code debugDescription:(id)description error:(id *)error
{
  v7 = sub_100002590(description);
  v8 = [SKError errorWithCode:code userInfo:v7];
  v9 = [SKError nilWithError:v8 error:error];

  return v9;
}

+ (id)nilWithSKErrorCode:(int64_t)code error:(id *)error
{
  v5 = [SKError errorWithCode:code userInfo:0];
  v6 = [SKError nilWithError:v5 error:error];

  return v6;
}

+ (BOOL)failWithSKErrorCode:(int64_t)code debugDescription:(id)description error:(id *)error
{
  v7 = sub_100002590(description);
  v8 = [SKError errorWithCode:code userInfo:v7];
  LOBYTE(error) = [SKError failWithError:v8 error:error];

  return error;
}

+ (BOOL)failWithSKErrorCode:(int64_t)code error:(id *)error
{
  v5 = [SKError errorWithCode:code userInfo:0];
  LOBYTE(error) = [SKError failWithError:v5 error:error];

  return error;
}

@end