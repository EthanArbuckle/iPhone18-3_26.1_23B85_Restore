@interface SBWindowHideState
- (id)description;
@end

@implementation SBWindowHideState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(SBWindowHideState *)self isHidden])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(SBWindowHideState *)self desiredAlpha];
  return [v3 stringWithFormat:@"<SBWindowHideState: hidden = %@; desiredAlpha = %.f>", v4, v5];
}

@end