@interface ObjC
+ (BOOL)catchException:(id)exception error:(id *)error;
@end

@implementation ObjC

+ (BOOL)catchException:(id)exception error:(id *)error
{
  exceptionCopy = exception;
  exceptionCopy[2]();

  return 1;
}

@end