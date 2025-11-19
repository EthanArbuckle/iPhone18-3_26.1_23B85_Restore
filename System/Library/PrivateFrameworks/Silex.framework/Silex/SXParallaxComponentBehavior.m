@interface SXParallaxComponentBehavior
- (int)directionWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXParallaxComponentBehavior

- (int)directionWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  if (![(SXParallaxComponentBehavior *)self cachedDirection])
  {
    self->_cachedDirection = 1;
    if ([v5 isEqualToString:@"down"])
    {
      v7 = 3;
    }

    else
    {
      if (![v5 isEqualToString:@"up"])
      {
LABEL_8:
        v6 = 1;
        goto LABEL_9;
      }

      v7 = 2;
    }

    self->_cachedDirection = v7;
    goto LABEL_8;
  }

  v6 = [(SXParallaxComponentBehavior *)self cachedDirection];
LABEL_9:

  return v6;
}

@end