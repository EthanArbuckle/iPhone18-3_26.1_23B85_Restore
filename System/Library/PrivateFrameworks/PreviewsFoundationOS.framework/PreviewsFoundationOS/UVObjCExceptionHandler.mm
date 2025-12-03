@interface UVObjCExceptionHandler
+ (BOOL)perform:(id)perform error:(id *)error;
@end

@implementation UVObjCExceptionHandler

+ (BOOL)perform:(id)perform error:(id *)error
{
  performCopy = perform;
  performCopy[2]();

  return 1;
}

@end