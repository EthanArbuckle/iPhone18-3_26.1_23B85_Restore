@interface SSSimulatedCrash
+ (void)simulateCrashWithFormat:(id)format;
+ (void)simulateCrashWithString:(id)string;
@end

@implementation SSSimulatedCrash

+ (void)simulateCrashWithFormat:(id)format
{
  formatCopy = format;
  if (SSIsInternalBuild())
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:formatCopy arguments:&v6];
    [self simulateCrashWithString:v5];
  }
}

+ (void)simulateCrashWithString:(id)string
{
  stringCopy = string;
  if (SSIsInternalBuild())
  {
    v3 = getpid();
    softLinkSimulateCrash(v3, 195939070, stringCopy);
  }
}

@end