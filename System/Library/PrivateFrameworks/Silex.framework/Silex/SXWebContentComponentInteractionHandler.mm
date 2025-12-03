@interface SXWebContentComponentInteractionHandler
- (SXWebContentComponentInteractionHandler)initWithInteraction:(id)interaction;
- (void)handleInteractionType:(unint64_t)type sourceView:(id)view sourceRect:(CGRect)rect;
@end

@implementation SXWebContentComponentInteractionHandler

- (SXWebContentComponentInteractionHandler)initWithInteraction:(id)interaction
{
  interactionCopy = interaction;
  v9.receiver = self;
  v9.super_class = SXWebContentComponentInteractionHandler;
  v6 = [(SXWebContentComponentInteractionHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interaction, interaction);
  }

  return v7;
}

- (void)handleInteractionType:(unint64_t)type sourceView:(id)view sourceRect:(CGRect)rect
{
  v5 = [(SXWebContentComponentInteractionHandler *)self interaction:type];
  [v5 perform];
}

@end