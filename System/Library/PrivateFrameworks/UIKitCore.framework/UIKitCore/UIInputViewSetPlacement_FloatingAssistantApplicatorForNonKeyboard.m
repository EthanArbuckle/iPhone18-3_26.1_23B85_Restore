@interface UIInputViewSetPlacement_FloatingAssistantApplicatorForNonKeyboard
- (UIEdgeInsets)inputAssistantPadding;
- (id)initForOwner:(id)a3 withPlacement:(id)a4;
- (void)invalidate;
@end

@implementation UIInputViewSetPlacement_FloatingAssistantApplicatorForNonKeyboard

- (id)initForOwner:(id)a3 withPlacement:(id)a4
{
  v6 = a3;
  v7 = [(UIInputViewSetPlacementWrapper *)UIInputViewSetPlacementAssistantOnScreenForNonKeyboard placementWithPlacement:a4];
  v10.receiver = self;
  v10.super_class = UIInputViewSetPlacement_FloatingAssistantApplicatorForNonKeyboard;
  v8 = [(UIInputViewSetPlacement_GenericApplicator *)&v10 initForOwner:v6 withPlacement:v7];

  return v8;
}

- (void)invalidate
{
  v3 = [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self hostView];
  [v3 setCompact:0];

  v4.receiver = self;
  v4.super_class = UIInputViewSetPlacement_FloatingAssistantApplicatorForNonKeyboard;
  [(UIInputViewSetPlacement_FloatingAssistantApplicator *)&v4 invalidate];
}

- (UIEdgeInsets)inputAssistantPadding
{
  WeakRetained = objc_loadWeakRetained(&self->super.super.super._owner);
  v4 = [WeakRetained placement];
  v5 = [v4 isCompactAssistantView];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->super.super.super._owner);
    v7 = [v6 containerView];
    [v7 frame];
    v9 = v8;

    v10 = objc_loadWeakRetained(&self->super.super.super._owner);
    v11 = [v10 placement];
    objc_opt_class();
    LOBYTE(v7) = objc_opt_isKindOfClass();

    if (v7)
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