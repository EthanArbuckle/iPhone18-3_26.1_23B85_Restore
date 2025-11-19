@interface TTSExceptionCatcher
+ (BOOL)catchException:(id)a3 error:(id *)a4;
@end

@implementation TTSExceptionCatcher

+ (BOOL)catchException:(id)a3 error:(id *)a4
{
  v4 = a3;
  v4[2]();

  return 1;
}

@end