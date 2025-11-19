@interface MTObjCExceptionBridge
+ (void)perform:(id)a3 error:(id *)a4;
@end

@implementation MTObjCExceptionBridge

+ (void)perform:(id)a3 error:(id *)a4
{
  v4 = a3;
  v4[2]();
}

@end