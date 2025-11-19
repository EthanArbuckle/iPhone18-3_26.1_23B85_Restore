@interface NSXPCConnection(TUCallServicesAdditions)
+ (id)callServicesClientXPCInterface;
+ (id)callServicesServerXPCInterface;
- (__CFString)processBundleIdentifier;
- (id)processName;
- (void)performBlockOnQueue:()TUCallServicesAdditions;
@end

@implementation NSXPCConnection(TUCallServicesAdditions)

- (id)processName
{
  v5 = *MEMORY[0x1E69E9840];
  if (proc_name([a1 processIdentifier], &v4, 0x100u) < 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v4];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (__CFString)processBundleIdentifier
{
  memset(&v5[1], 0, sizeof(audit_token_t));
  [a1 auditToken];
  v5[0] = v5[1];
  v1 = SecTaskCreateWithAuditToken(0, v5);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopySigningIdentifier(v1, 0);
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)callServicesServerXPCInterface
{
  if (callServicesServerXPCInterface_onceToken != -1)
  {
    +[NSXPCConnection(TUCallServicesAdditions) callServicesServerXPCInterface];
  }

  v1 = callServicesServerXPCInterface_xpcInterface;

  return v1;
}

+ (id)callServicesClientXPCInterface
{
  if (callServicesClientXPCInterface_onceToken != -1)
  {
    +[NSXPCConnection(TUCallServicesAdditions) callServicesClientXPCInterface];
  }

  v1 = callServicesClientXPCInterface_xpcInterface;

  return v1;
}

- (void)performBlockOnQueue:()TUCallServicesAdditions
{
  v4 = a3;
  v5 = [a1 _queue];
  dispatch_async(v5, v4);
}

@end