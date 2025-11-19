@interface ACTUserAction
- (id)shortDescription;
- (id)twoKeyTapShortDescription;
@end

@implementation ACTUserAction

- (id)shortDescription
{
  v3 = [(ACTUserAction *)self description];
  v4 = [(ACTUserAction *)self description];
  v5 = [v4 length] - 1;

  if (v5 >= 0x20)
  {
    v6 = 32;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v3 substringToIndex:v6];

  return v7;
}

- (id)twoKeyTapShortDescription
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v3 = [(ACTUserAction *)self performSelector:sel_firstTap];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 abbreviatedDescription];
    }

    else
    {
      [v3 shortDescription];
    }
    v5 = ;
    v6 = [(ACTUserAction *)self performSelector:sel_secondTap];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 abbreviatedDescription];
    }

    else
    {
      [v6 shortDescription];
    }
    v7 = ;
    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 stringByPaddingToLength:7 withString:@" " startingAtIndex:0];
    v10 = [v7 stringByPaddingToLength:7 withString:@" " startingAtIndex:0];
    v4 = [v8 stringWithFormat:@"%@ %@", v9, v10];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end