@interface UIVisualEffectView(Bridge)
- (void)ts_setGroupName:()Bridge;
@end

@implementation UIVisualEffectView(Bridge)

- (void)ts_setGroupName:()Bridge
{
  v11 = a3;
  v4 = [a1 _groupName];

  if (!v11 || v4)
  {
    v7 = [a1 _groupName];
    if (!v11 || !v7)
    {

      goto LABEL_10;
    }

    v8 = [a1 _groupName];
    v9 = [v8 isEqualToString:v11];

    v10 = v11;
    if (v9)
    {
      goto LABEL_11;
    }

    v5 = a1;
    v6 = v11;
  }

  else
  {
    v5 = a1;
    v6 = v11;
  }

  [v5 _setGroupName:v6];
LABEL_10:
  v10 = v11;
LABEL_11:
}

@end