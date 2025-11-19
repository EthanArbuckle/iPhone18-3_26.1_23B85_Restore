@interface PLSandboxHelper
+ (BOOL)fileURLHasSecurityScope:(id)a3;
+ (BOOL)processCanReadSandboxForPath:(id)a3;
+ (BOOL)processCanWriteSandboxForPath:(id)a3;
@end

@implementation PLSandboxHelper

+ (BOOL)fileURLHasSecurityScope:(id)a3
{
  v3 = MEMORY[0x1AC591CA0](a3, a2);
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4 != 0;
}

+ (BOOL)processCanWriteSandboxForPath:(id)a3
{
  v4 = a3;
  LOBYTE(a1) = [a1 processWithID:getpid() canWriteSandboxForPath:v4];

  return a1;
}

+ (BOOL)processCanReadSandboxForPath:(id)a3
{
  v4 = a3;
  LOBYTE(a1) = [a1 processWithID:getpid() canReadSandboxForPath:v4];

  return a1;
}

@end