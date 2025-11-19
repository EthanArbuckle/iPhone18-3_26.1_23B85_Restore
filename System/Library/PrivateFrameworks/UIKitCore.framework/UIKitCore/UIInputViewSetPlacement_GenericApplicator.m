@interface UIInputViewSetPlacement_GenericApplicator
+ (id)applicatorForOwner:(id)a3 withPlacement:(id)a4;
- (BOOL)allConstraintsActive;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGesture:(id)a3 inDraggableView:(CGPoint)a4;
- (BOOL)preBeginGesture:(id)a3 shouldBegin:(BOOL *)a4;
- (CGPoint)origin;
- (CGRect)popoverFrame;
- (CGRect)targetRect;
- (NSArray)constraints;
- (NSString)description;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)inputAccessoryPadding;
- (UIEdgeInsets)inputAssistantPadding;
- (UIView)draggableView;
- (id)initForOwner:(id)a3 withPlacement:(id)a4;
- (void)applyChanges:(id)a3;
- (void)checkVerticalConstraint;
- (void)resetConstantsIfNeeded;
- (void)updateForInteractiveTransitionStart:(BOOL)a3;
- (void)updateForOffset:(UIOffset)a3;
@end

@implementation UIInputViewSetPlacement_GenericApplicator

- (void)checkVerticalConstraint
{
  if (!self->_isInteractiveStateTransition)
  {
    [(NSLayoutConstraint *)self->_verticalConstraint setConstant:0.0];
  }
}

- (BOOL)allConstraintsActive
{
  if (![(NSLayoutConstraint *)self->_horizontalConstraint isActive]|| ![(NSLayoutConstraint *)self->_verticalConstraint isActive])
  {
    return 0;
  }

  widthConstraint = self->_widthConstraint;

  return [(NSLayoutConstraint *)widthConstraint isActive];
}

- (UIEdgeInsets)inputAssistantPadding
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  [WeakRetained inputViewPadding];
  v4 = v3;
  v6 = v5;

  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  v10 = v6;
  result.right = v10;
  result.bottom = v8;
  result.left = v9;
  result.top = v7;
  return result;
}

- (UIView)draggableView
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v3 = [WeakRetained hostView];

  return v3;
}

- (NSArray)constraints
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_horizontalConstraint)
  {
    [v3 addObject:?];
  }

  if (self->_verticalConstraint)
  {
    [v4 addObject:?];
  }

  if (self->_widthConstraint)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (void)resetConstantsIfNeeded
{
  if (!self->_isInteractiveStateTransition)
  {
    [(NSLayoutConstraint *)self->_horizontalConstraint setConstant:0.0];
    [(NSLayoutConstraint *)self->_verticalConstraint setConstant:0.0];
    widthConstraint = self->_widthConstraint;
    LODWORD(v5) = 1148846080;

    [(NSLayoutConstraint *)widthConstraint setPriority:v5];
  }
}

- (UIEdgeInsets)inputAccessoryPadding
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v4 = [WeakRetained hostView];
  v5 = [v4 _rootInputWindowController];
  v6 = [v5 placement];

  v7 = [v6 subPlacements];
  v8 = [v7 firstObject];
  v9 = objc_loadWeakRetained(&self->_owner);
  v10 = [v9 placement];

  v11 = 0.0;
  if (v8 == v10 && [v6 isFloatingAssistantView] && (objc_msgSend(v6, "isCompactAssistantView") & 1) == 0)
  {
    v12 = objc_loadWeakRetained(&self->_owner);
    v13 = [v12 hostView];
    v14 = [v13 _rootInputWindowController];
    v15 = [v14 inputViewSet];
    v16 = [v15 inputAssistantView];
    [v16 frame];
    v11 = v17;
  }

  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = v11;
  result.right = v20;
  result.bottom = v21;
  result.left = v19;
  result.top = v18;
  return result;
}

- (id)initForOwner:(id)a3 withPlacement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v44.receiver = self;
  v44.super_class = UIInputViewSetPlacement_GenericApplicator;
  v8 = [(UIInputViewSetPlacement_GenericApplicator *)&v44 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_owner, v6);
    v9->_isInteractiveStateTransition = 0;
    if (!v7)
    {
      v7 = [v6 placement];
    }

    v10 = [v6 inputViewSet];
    v11 = [v6 hostView];
    v12 = [v6 containerView];
    v13 = [v7 horizontalConstraintForInputViewSet:v10 hostView:v11 containerView:v12];
    horizontalConstraint = v9->_horizontalConstraint;
    v9->_horizontalConstraint = v13;

    v15 = [v6 inputViewSet];
    v16 = [v6 hostView];
    v17 = [v6 containerView];
    v18 = [v7 verticalConstraintForInputViewSet:v15 hostView:v16 containerView:v17];
    verticalConstraint = v9->_verticalConstraint;
    v9->_verticalConstraint = v18;

    v20 = [v6 inputViewSet];
    v21 = [v6 hostView];
    v22 = [v6 containerView];
    v23 = [v7 widthConstraintForInputViewSet:v20 hostView:v21 containerView:v22];
    widthConstraint = v9->_widthConstraint;
    v9->_widthConstraint = v23;

    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v25 stringWithFormat:@"%@<%@>.horizontal", v27, v29];
    [(NSLayoutConstraint *)v9->_horizontalConstraint setIdentifier:v30];

    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [v31 stringWithFormat:@"%@<%@>.vertical", v33, v35];
    [(NSLayoutConstraint *)v9->_verticalConstraint setIdentifier:v36];

    v37 = MEMORY[0x1E696AEC0];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = [v37 stringWithFormat:@"%@<%@>.width", v39, v41];
    [(NSLayoutConstraint *)v9->_widthConstraint setIdentifier:v42];
  }

  return v9;
}

+ (id)applicatorForOwner:(id)a3 withPlacement:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initForOwner:v7 withPlacement:v6];

  return v8;
}

- (CGPoint)origin
{
  [(NSLayoutConstraint *)self->_horizontalConstraint constant];
  v4 = v3;
  [(NSLayoutConstraint *)self->_verticalConstraint constant];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGRect)targetRect
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 _window];

  if (v4)
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [(UIInputViewSetPlacement_GenericApplicator *)self draggableView];
    [v5 dragGestureRectInView:v6];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v5 = [(UIInputViewSetPlacement_GenericApplicator *)self draggableView];
    [v5 bounds];
    v8 = v15 + -80.0;
    v6 = [(UIInputViewSetPlacement_GenericApplicator *)self draggableView];
    [v6 bounds];
    v10 = v16 + -80.0;
    *&v12 = 80.0;
    *&v14 = 80.0;
  }

  v17 = v8;
  v18 = v10;
  v19 = *&v12;
  v20 = *&v14;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)preBeginGesture:(id)a3 shouldBegin:(BOOL *)a4
{
  v6 = a3;
  [(UIInputViewSetPlacement_GenericApplicator *)self targetRect];
  if (CGRectIsEmpty(v10))
  {
    v7 = 0;
  }

  else
  {
    if ([v6 numberOfTouches] != 2)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = 1;
  }

  *a4 = v7;
  v8 = 1;
LABEL_7:

  return v8;
}

- (BOOL)isGesture:(id)a3 inDraggableView:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(UIInputViewSetPlacement_GenericApplicator *)self targetRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (UIEdgeInsets)contentInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)popoverFrame
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)applyChanges:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v6 = [v4 objectForKey:@"Alpha"];
  if (v6)
  {
    v7 = [WeakRetained hostView];
    v8 = [v7 layer];
    [v8 setAllowsGroupOpacity:0];

    [v6 doubleValue];
    v10 = v9;
    v11 = [WeakRetained hostView];
    [v11 setAlpha:v10];
  }

  [WeakRetained setHideInputViewBackdrops:0];
  v12 = [v4 objectForKey:@"Transform"];
  v13 = v12;
  if (v12)
  {
    [v12 CGAffineTransformValue];
  }

  else
  {
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    v31 = *MEMORY[0x1E695EFD0];
    v32 = v14;
    v33 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v15 = [WeakRetained hostView];
  v30[0] = v31;
  v30[1] = v32;
  v30[2] = v33;
  [v15 setTransform:v30];

  v16 = [v4 objectForKey:@"TouchInsets"];
  v17 = v16;
  if (v16)
  {
    [v16 UIEdgeInsetsValue];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    v19 = 0.0;
    v21 = 0.0;
    v23 = 0.0;
    v25 = 0.0;
  }

  v26 = [WeakRetained hostView];
  [v26 _setTouchInsets:{v19, v21, v23, v25}];

  v27 = [v4 objectForKey:@"Origin"];
  v28 = v27;
  if (v27 && !self->_isInteractiveStateTransition)
  {
    [v27 pointValue];
    [(NSLayoutConstraint *)self->_verticalConstraint setConstant:v29];
  }

  else
  {
    [(UIInputViewSetPlacement_GenericApplicator *)self checkVerticalConstraint];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = UIInputViewSetAreConstraintsEqualEnough(self->_horizontalConstraint, v5[1]) && UIInputViewSetAreConstraintsEqualEnough(self->_verticalConstraint, v5[2]) && UIInputViewSetAreConstraintsEqualEnough(self->_widthConstraint, v5[3]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = UIInputViewSetPlacement_GenericApplicator;
  v4 = [(UIInputViewSetPlacement_GenericApplicator *)&v8 description];
  v5 = [(UIInputViewSetPlacement_GenericApplicator *)self constraints];
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, v5];;

  return v6;
}

- (void)updateForOffset:(UIOffset)a3
{
  vertical = a3.vertical;
  [(NSLayoutConstraint *)self->_horizontalConstraint setConstant:a3.horizontal];
  verticalConstraint = self->_verticalConstraint;

  [(NSLayoutConstraint *)verticalConstraint setConstant:vertical];
}

- (void)updateForInteractiveTransitionStart:(BOOL)a3
{
  self->_isInteractiveStateTransition = a3;
  if (a3)
  {
    LODWORD(v3) = 1144750080;
    [(NSLayoutConstraint *)self->_widthConstraint setPriority:v3];
  }

  else
  {
    [(UIInputViewSetPlacement_GenericApplicator *)self resetConstantsIfNeeded];
  }
}

@end