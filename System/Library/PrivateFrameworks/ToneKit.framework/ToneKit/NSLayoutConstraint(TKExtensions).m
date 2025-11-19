@interface NSLayoutConstraint(TKExtensions)
- (void)tk_removeFromContainer;
@end

@implementation NSLayoutConstraint(TKExtensions)

- (void)tk_removeFromContainer
{
  v15 = [a1 firstItem];
  v2 = [a1 secondItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v15;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v2;
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
      v12 = [v11 constraints];
      v13 = [v12 containsObject:a1];

      if (v13)
      {
        break;
      }

      v14 = [v11 superview];

      v11 = v14;
      if (!v14)
      {
        goto LABEL_21;
      }
    }

    [v11 removeConstraint:a1];
  }

LABEL_21:
}

@end