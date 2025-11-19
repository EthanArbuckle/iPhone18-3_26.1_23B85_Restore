@interface NSException(TSUAdditions)
+ (uint64_t)tsu_raiseWithError:()TSUAdditions;
- (uint64_t)tsu_error;
@end

@implementation NSException(TSUAdditions)

+ (uint64_t)tsu_raiseWithError:()TSUAdditions
{
  if (!a3)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSException(TSUAdditions) tsu_raiseWithError:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSException_TSUAdditions.m"), 17, @"Invalid parameter not satisfying: %s", "error != nil"}];
  }

  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{a3, @"TSUErrorExceptionUserInfoKey", 0}];
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:@"TSUErrorException" reason:@"NSError exception" userInfo:v6];

  return [v7 raise];
}

- (uint64_t)tsu_error
{
  v1 = [objc_msgSend(a1 "userInfo")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v1)
  {
    v2 = +[TSUAssertionHandler currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSException(TSUAdditions) tsu_error]"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSException_TSUAdditions.m"), 38, @"Unexpected NSException value for TSUErrorExceptionUserInfoKey: %@", v1}];
    return 0;
  }

  return v1;
}

@end