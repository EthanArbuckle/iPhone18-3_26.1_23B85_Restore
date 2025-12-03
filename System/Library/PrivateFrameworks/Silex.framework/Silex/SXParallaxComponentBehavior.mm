@interface SXParallaxComponentBehavior
- (int)directionWithValue:(id)value withType:(int)type;
@end

@implementation SXParallaxComponentBehavior

- (int)directionWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  if (![(SXParallaxComponentBehavior *)self cachedDirection])
  {
    self->_cachedDirection = 1;
    if ([valueCopy isEqualToString:@"down"])
    {
      v7 = 3;
    }

    else
    {
      if (![valueCopy isEqualToString:@"up"])
      {
LABEL_8:
        cachedDirection = 1;
        goto LABEL_9;
      }

      v7 = 2;
    }

    self->_cachedDirection = v7;
    goto LABEL_8;
  }

  cachedDirection = [(SXParallaxComponentBehavior *)self cachedDirection];
LABEL_9:

  return cachedDirection;
}

@end