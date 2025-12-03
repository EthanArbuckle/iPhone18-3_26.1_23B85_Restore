@interface UIInputViewSetPlacement_FloatingAssistantApplicator
+ (UIEdgeInsets)inputAccessoryPaddingForTraitCollection:(id)collection;
- (CGRect)popoverFrame;
- (UIEdgeInsets)inputAccessoryPadding;
- (void)applyChanges:(id)changes;
- (void)invalidate;
- (void)prepare;
- (void)resetConstantsIfNeeded;
- (void)setupHostViewIfNeeded;
@end

@implementation UIInputViewSetPlacement_FloatingAssistantApplicator

- (void)prepare
{
  v3.receiver = self;
  v3.super_class = UIInputViewSetPlacement_FloatingAssistantApplicator;
  [(UIInputViewSetPlacement_GenericApplicator *)&v3 prepare];
  [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self setupHostViewIfNeeded];
}

- (void)setupHostViewIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
  hostView = [WeakRetained hostView];

  v4 = objc_loadWeakRetained(&self->super.super._owner);
  inputViewSet = [v4 inputViewSet];

  inputAssistantView = [inputViewSet inputAssistantView];
  v7 = inputAssistantView;
  if (inputAssistantView)
  {
    window = [inputAssistantView window];
    window2 = [hostView window];

    if (window == window2)
    {
      v10 = objc_loadWeakRetained(&self->super.super._owner);
      inputAssistantHostView = [v10 inputAssistantHostView];
      [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self setHostView:inputAssistantHostView];

      hostView2 = [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self hostView];
      [hostView2 setSystemInputAssistantView:v7];
    }
  }

  inputAccessoryView = [inputViewSet inputAccessoryView];
  window3 = [inputAccessoryView window];
  if (window3 && ([inputAccessoryView isHidden] & 1) == 0)
  {
    isInputAccessoryViewPlaceholder = [inputViewSet isInputAccessoryViewPlaceholder];

    if (isInputAccessoryViewPlaceholder)
    {
      goto LABEL_9;
    }

    v16 = objc_loadWeakRetained(&self->super.super._owner);
    inputAssistantHostView2 = [v16 inputAssistantHostView];
    [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self setHostView:inputAssistantHostView2];

    window3 = [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self hostView];
    [window3 setInputAccessoryView:inputAccessoryView];
  }

LABEL_9:
}

- (void)applyChanges:(id)changes
{
  changesCopy = changes;
  WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
  v6 = [changesCopy objectForKey:@"Transform"];
  v7 = v6;
  memset(&v50, 0, sizeof(v50));
  if (v6)
  {
    [v6 CGAffineTransformValue];
  }

  else
  {
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&v50.a = *MEMORY[0x1E695EFD0];
    *&v50.c = v8;
    *&v50.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  inputViewSet = [WeakRetained inputViewSet];
  [inputViewSet inputViewBounds];
  v11 = v10;
  v12 = v10 * 0.5;

  memset(&v49, 0, sizeof(v49));
  CGAffineTransformMakeTranslation(&t2, 0.0, -(v11 * 0.5));
  t1 = v50;
  CGAffineTransformConcat(&v48, &t1, &t2);
  CGAffineTransformTranslate(&v49, &v48, 0.0, v12);
  v13 = [changesCopy mutableCopy];
  v48 = v49;
  v14 = [MEMORY[0x1E696B098] valueWithCGAffineTransform:&v48];
  [v13 setValue:v14 forKey:@"Transform"];

  if ([(UIInputViewSetPlacement_FloatingAssistantApplicator *)self shouldApplyOriginChange]&& !self->super.super._isInteractiveStateTransition)
  {
    v15 = [changesCopy objectForKey:@"Origin"];
    v16 = v15;
    if (v15)
    {
      [v15 pointValue];
      [(NSLayoutConstraint *)self->super.super._horizontalConstraint setConstant:?];
    }
  }

  else
  {
    [v13 removeObjectForKey:@"Origin"];
  }

  v45.receiver = self;
  v45.super_class = UIInputViewSetPlacement_FloatingAssistantApplicator;
  [(UIInputViewSetPlacement_GenericApplicator *)&v45 applyChanges:v13];
  v17 = [changesCopy objectForKey:@"AlphaForAssistantBar"];
  if (v17 || ([changesCopy objectForKey:@"Alpha"], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    hostView = [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self hostView];
    layer = [hostView layer];
    [layer setAllowsGroupOpacity:0];

    [v18 doubleValue];
    v22 = v21;
    hostView2 = [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self hostView];
    [hostView2 setAlpha:v22];
  }

  v24 = [changesCopy objectForKey:@"TransformForAssistantBar"];
  if (v24 || ([changesCopy objectForKey:@"Transform"], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v25 = v24;
    [v24 CGAffineTransformValue];
    hostView3 = [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self hostView];
    v48 = v44;
    [hostView3 setTransformForContent:&v48];
  }

  v27 = [changesCopy valueForKey:@"IsCompact"];
  bOOLValue = [v27 BOOLValue];

  hostView4 = [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self hostView];
  [hostView4 setCompact:bOOLValue];

  hostView5 = [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self hostView];
  if (hostView5)
  {

    goto LABEL_18;
  }

  inputViewSet2 = [WeakRetained inputViewSet];
  inputAssistantView = [inputViewSet2 inputAssistantView];
  if (inputAssistantView)
  {

LABEL_26:
    [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self setupHostViewIfNeeded];
    goto LABEL_27;
  }

  inputViewSet3 = [WeakRetained inputViewSet];
  inputAccessoryView = [inputViewSet3 inputAccessoryView];

  if (inputAccessoryView)
  {
    goto LABEL_26;
  }

LABEL_18:
  hostView6 = [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self hostView];
  if (hostView6)
  {
    v32 = hostView6;
    inputViewSet4 = [WeakRetained inputViewSet];
    inputAssistantView2 = [inputViewSet4 inputAssistantView];
    if (inputAssistantView2)
    {
    }

    else
    {
      inputViewSet5 = [WeakRetained inputViewSet];
      inputAccessoryView2 = [inputViewSet5 inputAccessoryView];

      if (!inputAccessoryView2)
      {
        [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self setHostView:0];
      }
    }
  }

LABEL_27:
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __68__UIInputViewSetPlacement_FloatingAssistantApplicator_applyChanges___block_invoke;
  v42[3] = &unk_1E70F3590;
  v43 = WeakRetained;
  v41 = WeakRetained;
  [UIView performWithoutAnimation:v42];
}

- (void)resetConstantsIfNeeded
{
  if (!self->super.super._isInteractiveStateTransition)
  {
    [(NSLayoutConstraint *)self->super.super._verticalConstraint setConstant:0.0];
    widthConstraint = self->super.super._widthConstraint;
    LODWORD(v5) = 1148846080;

    [(NSLayoutConstraint *)widthConstraint setPriority:v5];
  }
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = UIInputViewSetPlacement_FloatingAssistantApplicator;
  [(UIInputViewSetPlacement_GenericApplicator *)&v5 invalidate];
  WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
  [WeakRetained setHideInputViewBackdrops:0];

  v4 = objc_loadWeakRetained(&self->super.super._owner);
  [v4 setHideInputView:0];

  [(UIInputViewSetPlacement_FloatingAssistantApplicator *)self setHostView:0];
}

- (CGRect)popoverFrame
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
  containerView = [WeakRetained containerView];
  [containerView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_loadWeakRetained(&self->super.super._owner);
  hostView = [v13 hostView];
  [hostView frame];
  v37.origin.x = v15;
  v37.origin.y = v16;
  v37.size.width = v17;
  v37.size.height = v18;
  v33.origin.x = v6;
  v33.origin.y = v8;
  v33.size.width = v10;
  v33.size.height = v12;
  v34 = CGRectIntersection(v33, v37);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;

  v23 = objc_loadWeakRetained(&self->super.super._owner);
  containerView2 = [v23 containerView];
  [containerView2 bounds];
  v26 = v25;

  v27 = objc_loadWeakRetained(&self->super.super._owner);
  placement = [v27 placement];
  if (([placement isCompactAssistantView] & 1) != 0 || (v35.origin.x = x, v35.origin.y = y, v35.size.width = width, v35.size.height = height, CGRectIsEmpty(v35)))
  {
    x = 0.0;
    width = 0.0;
    height = 0.0;
  }

  else
  {
    v26 = y;
  }

  v29 = x;
  v30 = v26;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (UIEdgeInsets)inputAccessoryPadding
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v3 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  WeakRetained = objc_loadWeakRetained(&self->super.super._owner);
  placement = [WeakRetained placement];
  isCompactAssistantView = [placement isCompactAssistantView];

  IsHidden = UIInputAssistantViewIsHidden();
  if (windowingModeEnabled && (isCompactAssistantView & 1) == 0 && IsHidden)
  {
    [(UIInputViewSetPlacement_GenericApplicator *)&v31 inputAccessoryPadding:v30.receiver];
LABEL_8:
    v19 = v10;
    v21 = v11;
    v23 = v12;
    v25 = v13;
    goto LABEL_9;
  }

  if (((isCompactAssistantView | IsHidden) & 1) == 0)
  {
    [(UIInputViewSetPlacement_GenericApplicator *)&v30 inputAccessoryPadding:self];
    goto LABEL_8;
  }

  v14 = objc_opt_class();
  v15 = objc_loadWeakRetained(&self->super.super._owner);
  hostView = [v15 hostView];
  traitCollection = [hostView traitCollection];
  [v14 inputAccessoryPaddingForTraitCollection:traitCollection];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

LABEL_9:
  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.right = v29;
  result.bottom = v28;
  result.left = v27;
  result.top = v26;
  return result;
}

+ (UIEdgeInsets)inputAccessoryPaddingForTraitCollection:(id)collection
{
  [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:collection];
  v4 = v3 + UIHomeAffordanceHeight();
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v4;
  result.left = v6;
  result.top = v5;
  return result;
}

@end