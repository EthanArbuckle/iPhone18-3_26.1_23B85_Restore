@interface UIVisualEffectView(Bridge)
- (void)ts_setGroupName:()Bridge;
@end

@implementation UIVisualEffectView(Bridge)

- (void)ts_setGroupName:()Bridge
{
  v11 = a3;
  _groupName = [self _groupName];

  if (!v11 || _groupName)
  {
    _groupName2 = [self _groupName];
    if (!v11 || !_groupName2)
    {

      goto LABEL_10;
    }

    _groupName3 = [self _groupName];
    v9 = [_groupName3 isEqualToString:v11];

    v10 = v11;
    if (v9)
    {
      goto LABEL_11;
    }

    selfCopy2 = self;
    v6 = v11;
  }

  else
  {
    selfCopy2 = self;
    v6 = v11;
  }

  [selfCopy2 _setGroupName:v6];
LABEL_10:
  v10 = v11;
LABEL_11:
}

@end