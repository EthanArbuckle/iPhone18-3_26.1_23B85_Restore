@interface TTSExceptionCatcher
+ (BOOL)catchException:(id)exception error:(id *)error;
@end

@implementation TTSExceptionCatcher

+ (BOOL)catchException:(id)exception error:(id *)error
{
  exceptionCopy = exception;
  exceptionCopy[2]();

  return 1;
}

@end