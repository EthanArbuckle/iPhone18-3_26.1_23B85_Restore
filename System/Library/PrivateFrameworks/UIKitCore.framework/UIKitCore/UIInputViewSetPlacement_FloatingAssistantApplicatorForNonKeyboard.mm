@interface UIInputViewSetPlacement_FloatingAssistantApplicatorForNonKeyboard
- (UIEdgeInsets)inputAssistantPadding;
- (id)initForOwner:(id)owner withPlacement:(id)placement;
- (void)invalidate;
@end

@implementation UIInputViewSetPlacement_FloatingAssistantApplicatorForNonKeyboard

- (id)initForOwner:(id)owner withPlacement:(id)placement
{
  ownerCopy = owner;
  v7 = [(UIInputViewSetPlacementWrapper *)UIInputViewSetPlacementAssistantOnScreenForNonKeyboard placementWithPlacement:placement];
  v10.receiver = self;
  v10.super_class = UIInputViewSetPlacement_FloatingAssistantApplicatorForNonKeyboard;
  v8 = [(UIInputViewSetPlacement_GenericApplicator *)&v10 initForOwner:ownerCopy withPlacement:v7];

  return v8;
}

- (void)invalidate
{
  hostView = [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self hostView];
  [hostView setCompact:0];

  v4.receiver = self;
  v4.super_class = UIInputViewSetPlacement_FloatingAssistantApplicatorForNonKeyboard;
  [(UIInputViewSetPlacement_FloatingAssistantApplicator *)&v4 invalidate];
}

- (UIEdgeInsets)inputAssistantPadding
{
  WeakRetained = objc_loadWeakRetained(&self->super.super.super._owner);
  placement = [WeakRetained placement];
  isCompactAssistantView = [placement isCompactAssistantView];

  if (isCompactAssistantView)
  {
    v6 = objc_loadWeakRetained(&self->super.super.super._owner);
    containerView = [v6 containerView];
    [containerView frame];
    v9 = v8;

    v10 = objc_loadWeakRetained(&self->super.super.super._owner);
    placement2 = [v10 placement];
    objc_opt_class();
    LOBYTE(containerView) = objc_opt_isKindOfClass();

    if (containerView)
    {
      v12 = -16.0;
      v13 = v9 + -75.0 + -16.0;
    }

    else
    {
      v12 = 91.0 - v9;
      v13 = 16.0;
    }

    v15 = 0.0;
    v14 = 0.0;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = UIInputViewSetPlacement_FloatingAssistantApplicatorForNonKeyboard;
    [(UIInputViewSetPlacement_GenericApplicator *)&v16 inputAssistantPadding];
  }

  result.right = v12;
  result.bottom = v15;
  result.left = v13;
  result.top = v14;
  return result;
}

@end