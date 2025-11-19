@interface _SEUtil
+ (const)auditTokenForCurrentProcess;
@end

@implementation _SEUtil

+ (const)auditTokenForCurrentProcess
{
  if (auditTokenForCurrentProcess_onceToken != -1)
  {
    +[_SEUtil auditTokenForCurrentProcess];
  }

  return &auditTokenForCurrentProcess_currentAuditToken;
}

@end