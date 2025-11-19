@interface BilateralGridShared
+ (id)getSharedInstanceOrRelease:(BOOL)a3;
@end

@implementation BilateralGridShared

+ (id)getSharedInstanceOrRelease:(BOOL)a3
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2260;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C2260)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(BilateralGridShared);
    v5 = qword_2A18C2260;
  }

  qword_2A18C2260 = v6;

LABEL_6:
  v7 = qword_2A18C2260;
  objc_sync_exit(v4);

  return v7;
}

@end