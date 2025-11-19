@interface SXWebContentComponentInteractionHandler
- (SXWebContentComponentInteractionHandler)initWithInteraction:(id)a3;
- (void)handleInteractionType:(unint64_t)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
@end

@implementation SXWebContentComponentInteractionHandler

- (SXWebContentComponentInteractionHandler)initWithInteraction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXWebContentComponentInteractionHandler;
  v6 = [(SXWebContentComponentInteractionHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interaction, a3);
  }

  return v7;
}

- (void)handleInteractionType:(unint64_t)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  v5 = [(SXWebContentComponentInteractionHandler *)self interaction:a3];
  [v5 perform];
}

@end