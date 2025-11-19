@interface RBSProcessHandle(SpringBoard)
- (uint64_t)sb_canDrawWhileLocked;
- (uint64_t)sb_showsViewsWhileLockedForBundle:()SpringBoard;
@end

@implementation RBSProcessHandle(SpringBoard)

- (uint64_t)sb_canDrawWhileLocked
{
  v2 = [a1 bundle];
  if (v2)
  {
    v3 = MEMORY[0x277CF0B98];
    [a1 auditToken];
    v4 = [v3 tokenFromAuditToken:&v8];
    v5 = [v4 hasEntitlement:@"com.apple.QuartzCore.secure-mode"];
    v6 = v5 & [a1 sb_showsViewsWhileLockedForBundle:v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)sb_showsViewsWhileLockedForBundle:()SpringBoard
{
  v4 = a3;
  v5 = objc_getAssociatedObject(a1, "com.apple.SpringBoardFramework.RBSProcess.showsViewsWhileLocked");
  if (!v5)
  {
    v6 = [v4 bundleInfoValueForKey:@"UIApplicationShowsViewsWhileLocked"];
    v7 = objc_opt_class();
    v8 = v6;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v5 = v9;

    if (!v5)
    {
      v10 = 0;
      goto LABEL_10;
    }

    objc_setAssociatedObject(a1, "com.apple.SpringBoardFramework.RBSProcess.showsViewsWhileLocked", v5, 1);
  }

  v10 = [v5 BOOLValue];

LABEL_10:
  return v10;
}

@end