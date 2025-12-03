@interface SXContainerComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)isTransitionable;
- (BOOL)userInteractable;
- (BOOL)usesThumbnailWithImageIdentifier:(id)identifier;
- (CGRect)transitionContentFrame;
- (NSString)description;
- (SXContainerComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory mediaSharingPolicyProvider:(id)policyProvider;
- (id)componentViewsForRole:(int)role recursive:(BOOL)recursive;
- (id)contentViewForBehavior:(id)behavior;
- (id)dragManager:(id)manager dragableAtLocation:(CGPoint)location;
- (void)addComponentView:(id)view;
- (void)animationDidFinish:(id)finish;
- (void)animationDidStart:(id)start;
- (void)didApplyBehavior:(id)behavior;
- (void)prepareForTransitionType:(unint64_t)type;
- (void)presentComponentWithChanges:(id)changes;
@end

@implementation SXContainerComponentView

- (SXContainerComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory mediaSharingPolicyProvider:(id)policyProvider
{
  policyProviderCopy = policyProvider;
  v17.receiver = self;
  v17.super_class = SXContainerComponentView;
  v14 = [(SXComponentView *)&v17 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mediaSharingPolicyProvider, policyProvider);
  }

  return v15;
}

- (void)presentComponentWithChanges:(id)changes
{
  v12.receiver = self;
  v12.super_class = SXContainerComponentView;
  [(SXComponentView *)&v12 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  dragManager = [(SXContainerComponentView *)self dragManager];
  if (!dragManager)
  {
    dragManager = [(SXContainerComponentView *)self componentViews];
    if (![dragManager count])
    {
      fillView = [(SXComponentView *)self fillView];
      dragable = [fillView dragable];

      if (!dragable)
      {
        return;
      }

      v7 = [SXDragManager alloc];
      mediaSharingPolicyProvider = [(SXContainerComponentView *)self mediaSharingPolicyProvider];
      v9 = -[SXDragManager initWithSharingPolicy:dataSource:](v7, "initWithSharingPolicy:dataSource:", [mediaSharingPolicyProvider mediaSharingPolicy], self);
      [(SXContainerComponentView *)self setDragManager:v9];

      dragManager = [(SXContainerComponentView *)self dragManager];
      fillView2 = [(SXComponentView *)self fillView];
      dragable2 = [fillView2 dragable];
      [dragManager updateAccessibilityDragSourceDescriptorsForDraggableElement:dragable2];
    }
  }
}

- (id)contentViewForBehavior:(id)behavior
{
  behaviorCopy = behavior;
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(SXComponentView *)selfCopy fillView];
    selfCopy = fillView = selfCopy;
LABEL_4:

    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fillView = [(SXComponentView *)selfCopy fillView];
    if (fillView)
    {
      fillView2 = [(SXComponentView *)selfCopy fillView];

      selfCopy = fillView2;
    }

    goto LABEL_4;
  }

LABEL_5:

  return selfCopy;
}

- (id)componentViewsForRole:(int)role recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  v5 = *&role;
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  componentViews = [(SXContainerComponentView *)self componentViews];
  v9 = [componentViews countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(componentViews);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        component = [v13 component];
        if ([component role] == v5)
        {
          [array addObject:v13];
        }

        if (recursiveCopy)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v13 componentViewsForRole:v5 recursive:1];
            [array addObjectsFromArray:v15];
          }
        }
      }

      v10 = [componentViews countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return array;
}

- (void)addComponentView:(id)view
{
  viewCopy = view;
  [(SXComponentView *)self fillView];

  contentView = [(SXComponentView *)self contentView];
  subviews = [contentView subviews];
  v6 = [subviews count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      contentView2 = [(SXComponentView *)self contentView];
      subviews2 = [contentView2 subviews];
      v10 = [subviews2 objectAtIndex:v7];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        componentIndex = [v10 componentIndex];
        if (componentIndex > [viewCopy componentIndex])
        {
          break;
        }
      }

      ++v7;
      contentView3 = [(SXComponentView *)self contentView];
      subviews3 = [contentView3 subviews];
      v14 = [subviews3 count];

      if (v7 >= v14)
      {
        goto LABEL_6;
      }
    }

    contentView4 = [(SXComponentView *)self contentView];
    [contentView4 insertSubview:viewCopy atIndex:v7];
  }

  else
  {
LABEL_6:
    contentView4 = [(SXComponentView *)self contentView];
    [contentView4 addSubview:viewCopy];
  }
}

- (CGRect)transitionContentFrame
{
  [(SXComponentView *)self contentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  fillView = [(SXComponentView *)self fillView];

  if (fillView)
  {
    fillView2 = [(SXComponentView *)self fillView];
    fillView3 = [(SXComponentView *)self fillView];
    [fillView3 contentFrame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    fillView4 = [(SXComponentView *)self fillView];
    superview = [fillView4 superview];
    [fillView2 convertRect:superview toView:{v15, v17, v19, v21}];
    v4 = v24;
    v6 = v25;
    v8 = v26;
    v10 = v27;
  }

  v28 = v4;
  v29 = v6;
  v30 = v8;
  v31 = v10;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (BOOL)usesThumbnailWithImageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fillView = [(SXComponentView *)self fillView];
  fill = [fillView fill];
  if (fill)
  {
    v7 = fill;
    fillView2 = [(SXComponentView *)self fillView];
    fill2 = [fillView2 fill];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      fillView3 = [(SXComponentView *)self fillView];
      fill3 = [fillView3 fill];

      imageIdentifier = [fill3 imageIdentifier];
      goto LABEL_8;
    }
  }

  else
  {
  }

  fill3 = [(SXComponentView *)self fillView];
  v12Fill = [fill3 fill];
  if (!v12Fill)
  {
    v20 = 0;
    goto LABEL_10;
  }

  v15 = v12Fill;
  fillView4 = [(SXComponentView *)self fillView];
  fill4 = [fillView4 fill];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if ((v18 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_12;
  }

  fillView5 = [(SXComponentView *)self fillView];
  fill3 = [fillView5 fill];

  imageIdentifier = [fill3 stillImageIdentifier];
LABEL_8:
  v20 = imageIdentifier;
LABEL_10:

LABEL_12:
  v21 = [identifierCopy isEqualToString:v20];

  return v21;
}

- (BOOL)isTransitionable
{
  fillView = [(SXComponentView *)self fillView];
  fill = [fillView fill];
  v4 = [fill fillMode] != 0;

  return v4;
}

- (void)prepareForTransitionType:(unint64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SXContainerComponentView;
  [(SXComponentView *)&v14 prepareForTransitionType:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  componentViews = [(SXContainerComponentView *)self componentViews];
  v6 = [componentViews countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(componentViews);
        }

        [*(*(&v10 + 1) + 8 * v9++) prepareForTransitionType:type];
      }

      while (v7 != v9);
      v7 = [componentViews countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)animationDidStart:(id)start
{
  v16 = *MEMORY[0x1E69E9840];
  startCopy = start;
  v14.receiver = self;
  v14.super_class = SXContainerComponentView;
  [(SXComponentView *)&v14 animationDidStart:startCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  componentViews = [(SXContainerComponentView *)self componentViews];
  v6 = [componentViews countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(componentViews);
        }

        [*(*(&v10 + 1) + 8 * v9++) animationDidStart:startCopy];
      }

      while (v7 != v9);
      v7 = [componentViews countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)animationDidFinish:(id)finish
{
  v16 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  v14.receiver = self;
  v14.super_class = SXContainerComponentView;
  [(SXComponentView *)&v14 animationDidFinish:finishCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  componentViews = [(SXContainerComponentView *)self componentViews];
  v6 = [componentViews countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(componentViews);
        }

        [*(*(&v10 + 1) + 8 * v9++) animationDidFinish:finishCopy];
      }

      while (v7 != v9);
      v7 = [componentViews countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)didApplyBehavior:(id)behavior
{
  v16 = *MEMORY[0x1E69E9840];
  behaviorCopy = behavior;
  v14.receiver = self;
  v14.super_class = SXContainerComponentView;
  [(SXComponentView *)&v14 didApplyBehavior:behaviorCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  componentViews = [(SXContainerComponentView *)self componentViews];
  v6 = [componentViews countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(componentViews);
        }

        [*(*(&v10 + 1) + 8 * v9++) didApplyBehavior:behaviorCopy];
      }

      while (v7 != v9);
      v7 = [componentViews countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)dragManager:(id)manager dragableAtLocation:(CGPoint)location
{
  v4 = [(SXComponentView *)self fillView:manager];
  dragable = [v4 dragable];

  return dragable;
}

- (BOOL)userInteractable
{
  dragManager = [(SXContainerComponentView *)self dragManager];
  v3 = dragManager != 0;

  return v3;
}

- (BOOL)allowHierarchyRemoval
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SXContainerComponentView;
  if (![(SXComponentView *)&v14 allowHierarchyRemoval])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  componentViews = [(SXContainerComponentView *)self componentViews];
  v4 = [componentViews countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(componentViews);
        }

        if (![*(*(&v10 + 1) + 8 * i) allowHierarchyRemoval])
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v5 = [componentViews countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  component = [(SXComponentView *)self component];
  identifier = [component identifier];
  component2 = [(SXComponentView *)self component];
  components = [component2 components];
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: '%@'; numberOfChilds: %lu>", v4, self, identifier, objc_msgSend(components, "count")];;

  return v9;
}

@end