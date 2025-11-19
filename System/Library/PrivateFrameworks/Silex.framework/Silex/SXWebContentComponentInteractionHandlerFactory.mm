@interface SXWebContentComponentInteractionHandlerFactory
- (id)componentInteractionHandlerForInteraction:(id)a3;
@end

@implementation SXWebContentComponentInteractionHandlerFactory

- (id)componentInteractionHandlerForInteraction:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[SXWebContentComponentInteractionHandler alloc] initWithInteraction:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end