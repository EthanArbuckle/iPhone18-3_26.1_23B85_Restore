@interface PLSandboxHelper
+ (BOOL)fileURLHasSecurityScope:(id)scope;
+ (BOOL)processCanReadSandboxForPath:(id)path;
+ (BOOL)processCanWriteSandboxForPath:(id)path;
@end

@implementation PLSandboxHelper

+ (BOOL)fileURLHasSecurityScope:(id)scope
{
  v3 = MEMORY[0x1AC591CA0](scope, a2);
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4 != 0;
}

+ (BOOL)processCanWriteSandboxForPath:(id)path
{
  pathCopy = path;
  LOBYTE(self) = [self processWithID:getpid() canWriteSandboxForPath:pathCopy];

  return self;
}

+ (BOOL)processCanReadSandboxForPath:(id)path
{
  pathCopy = path;
  LOBYTE(self) = [self processWithID:getpid() canReadSandboxForPath:pathCopy];

  return self;
}

@end