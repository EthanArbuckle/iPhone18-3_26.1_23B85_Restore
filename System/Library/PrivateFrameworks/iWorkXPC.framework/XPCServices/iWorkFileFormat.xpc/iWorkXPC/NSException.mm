@interface NSException
+ (void)tsu_raiseWithError:(id)error;
- (id)tsu_error;
@end

@implementation NSException

+ (void)tsu_raiseWithError:(id)error
{
  if (!error)
  {
    v4 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160D10();
    }

    v5 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100160D24(v4, v5);
    }

    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSException(TSUAdditions) tsu_raiseWithError:]"), [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSException_TSUAdditions.m"], 15, 0, "Invalid parameter not satisfying: %{public}s", "error != nil");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  localizedFailureReason = [error localizedFailureReason];
  if (!localizedFailureReason)
  {
    localizedDescription = [error localizedDescription];
    if (localizedDescription)
    {
      localizedFailureReason = localizedDescription;
    }

    else
    {
      localizedFailureReason = @"NSError exception";
    }
  }

  v8 = @"TSUErrorExceptionUserInfoKey";
  errorCopy = error;
  [+[NSException exceptionWithName:reason:userInfo:](NSException raise:@"TSUErrorException"];
}

- (id)tsu_error
{
  v2 = [(NSDictionary *)[(NSException *)self userInfo] objectForKey:@"TSUErrorExceptionUserInfoKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v2)
  {
    v3 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160DE0();
    }

    v4 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100160DF4(v2, v3, v4);
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[NSException(TSUAdditions) tsu_error]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSException_TSUAdditions.m"] lineNumber:29 isFatal:0 description:"Unexpected NSException value for TSUErrorExceptionUserInfoKey: %@", v2];
    +[TSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  return v2;
}

@end