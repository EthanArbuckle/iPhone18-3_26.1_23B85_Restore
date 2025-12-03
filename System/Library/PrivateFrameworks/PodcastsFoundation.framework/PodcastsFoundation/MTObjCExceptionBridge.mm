@interface MTObjCExceptionBridge
+ (void)perform:(id)perform error:(id *)error;
@end

@implementation MTObjCExceptionBridge

+ (void)perform:(id)perform error:(id *)error
{
  performCopy = perform;
  performCopy[2]();
}

@end