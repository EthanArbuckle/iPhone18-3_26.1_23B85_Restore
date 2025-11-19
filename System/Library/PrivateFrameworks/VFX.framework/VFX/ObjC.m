@interface ObjC
+ (BOOL)catchException:(id)a3 error:(id *)a4;
@end

@implementation ObjC

+ (BOOL)catchException:(id)a3 error:(id *)a4
{
  v4 = a3;
  v4[2]();

  return 1;
}

@end