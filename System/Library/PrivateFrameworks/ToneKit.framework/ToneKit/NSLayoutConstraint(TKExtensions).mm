@interface NSLayoutConstraint(TKExtensions)
- (void)tk_removeFromContainer;
@end

@implementation NSLayoutConstraint(TKExtensions)

- (void)tk_removeFromContainer
{
  firstItem = [self firstItem];
  secondItem = [self secondItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = firstItem;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = secondItem;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v10 = [v4 tk_firstCommonAncestorWithView:v6];
  }

  v11 = v10;
  if (v10)
  {
    while (1)
    {
      constraints = [v11 constraints];
      v13 = [constraints containsObject:self];

      if (v13)
      {
        break;
      }

      superview = [v11 superview];

      v11 = superview;
      if (!superview)
      {
        goto LABEL_21;
      }
    }

    [v11 removeConstraint:self];
  }

LABEL_21:
}

@end