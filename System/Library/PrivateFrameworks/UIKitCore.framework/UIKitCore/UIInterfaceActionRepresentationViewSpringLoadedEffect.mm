@interface UIInterfaceActionRepresentationViewSpringLoadedEffect
- (UIInterfaceActionRepresentationViewSpringLoadedEffect)init;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation UIInterfaceActionRepresentationViewSpringLoadedEffect

- (UIInterfaceActionRepresentationViewSpringLoadedEffect)init
{
  v6.receiver = self;
  v6.super_class = UIInterfaceActionRepresentationViewSpringLoadedEffect;
  v2 = [(UIInterfaceActionRepresentationViewSpringLoadedEffect *)&v6 init];
  if (v2)
  {
    v3 = +[UISpringLoadedInteraction _blinkEffect];
    blinkEffect = v2->_blinkEffect;
    v2->_blinkEffect = v3;
  }

  return v2;
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  contextCopy = context;
  interactionCopy = interaction;
  view = [interactionCopy view];
  state = [contextCopy state];
  [(UISpringLoadedInteractionEffect *)self->_blinkEffect interaction:interactionCopy didChangeWithContext:contextCopy];

  if (state)
  {
    if (state != 1)
    {
      goto LABEL_6;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  [view setHighlighted:v9];
LABEL_6:
}

@end