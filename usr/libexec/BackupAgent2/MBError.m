@interface MBError
+ (BOOL)isNSFileNotFoundError:(id)a3;
+ (BOOL)isTooManyOpenFilesError:(id)a3;
@end

@implementation MBError

+ (BOOL)isNSFileNotFoundError:(id)a3
{
  v3 = a3;
  if ([v3 code] == 4 || objc_msgSend(v3, "code") == 260)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:NSCocoaErrorDomain];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isTooManyOpenFilesError:(id)a3
{
  v3 = a3;
  if ([v3 code] == 24 && (objc_msgSend(v3, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", NSPOSIXErrorDomain), v4, (v5 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (v8 && [v8 code] == 24)
    {
      v9 = [v8 domain];
      v6 = [v9 isEqualToString:NSPOSIXErrorDomain];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end