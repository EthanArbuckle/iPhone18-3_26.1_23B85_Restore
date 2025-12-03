@interface MBError
+ (BOOL)isNSFileNotFoundError:(id)error;
+ (BOOL)isTooManyOpenFilesError:(id)error;
@end

@implementation MBError

+ (BOOL)isNSFileNotFoundError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == 4 || objc_msgSend(errorCopy, "code") == 260)
  {
    domain = [errorCopy domain];
    v5 = [domain isEqualToString:NSCocoaErrorDomain];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isTooManyOpenFilesError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == 24 && (objc_msgSend(errorCopy, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", NSPOSIXErrorDomain), v4, (v5 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (v8 && [v8 code] == 24)
    {
      domain = [v8 domain];
      v6 = [domain isEqualToString:NSPOSIXErrorDomain];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end