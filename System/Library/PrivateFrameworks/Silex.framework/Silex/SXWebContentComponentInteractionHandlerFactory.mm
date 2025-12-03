@interface SXWebContentComponentInteractionHandlerFactory
- (id)componentInteractionHandlerForInteraction:(id)interaction;
@end

@implementation SXWebContentComponentInteractionHandlerFactory

- (id)componentInteractionHandlerForInteraction:(id)interaction
{
  if (interaction)
  {
    interactionCopy = interaction;
    v4 = [[SXWebContentComponentInteractionHandler alloc] initWithInteraction:interactionCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end