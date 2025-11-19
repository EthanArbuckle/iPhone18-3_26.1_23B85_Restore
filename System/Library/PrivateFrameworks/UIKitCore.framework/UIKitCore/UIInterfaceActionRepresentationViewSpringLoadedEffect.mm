@interface UIInterfaceActionRepresentationViewSpringLoadedEffect
- (UIInterfaceActionRepresentationViewSpringLoadedEffect)init;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
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

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [v7 view];
  v8 = [v6 state];
  [(UISpringLoadedInteractionEffect *)self->_blinkEffect interaction:v7 didChangeWithContext:v6];

  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_6;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  [v10 setHighlighted:v9];
LABEL_6:
}

@end