@interface _PASXPCUtilities
+ (void)runWithExceptionBarrier:(id)a3;
@end

@implementation _PASXPCUtilities

+ (void)runWithExceptionBarrier:(id)a3
{
  v3 = a3;
  [MEMORY[0x1E696B0B8] currentConnection];

  v3[2](v3);
}

@end