@interface _PASXPCUtilities
+ (void)runWithExceptionBarrier:(id)barrier;
@end

@implementation _PASXPCUtilities

+ (void)runWithExceptionBarrier:(id)barrier
{
  barrierCopy = barrier;
  [MEMORY[0x1E696B0B8] currentConnection];

  barrierCopy[2](barrierCopy);
}

@end