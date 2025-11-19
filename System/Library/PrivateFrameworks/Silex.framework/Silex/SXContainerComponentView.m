@interface SXContainerComponentView
- (BOOL)allowHierarchyRemoval;
- (BOOL)isTransitionable;
- (BOOL)userInteractable;
- (BOOL)usesThumbnailWithImageIdentifier:(id)a3;
- (CGRect)transitionContentFrame;
- (NSString)description;
- (SXContainerComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 mediaSharingPolicyProvider:(id)a7;
- (id)componentViewsForRole:(int)a3 recursive:(BOOL)a4;
- (id)contentViewForBehavior:(id)a3;
- (id)dragManager:(id)a3 dragableAtLocation:(CGPoint)a4;
- (void)addComponentView:(id)a3;
- (void)animationDidFinish:(id)a3;
- (void)animationDidStart:(id)a3;
- (void)didApplyBehavior:(id)a3;
- (void)prepareForTransitionType:(unint64_t)a3;
- (void)presentComponentWithChanges:(id)a3;
@end

@implementation SXContainerComponentView

- (SXContainerComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 mediaSharingPolicyProvider:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = SXContainerComponentView;
  v14 = [(SXComponentView *)&v17 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mediaSharingPolicyProvider, a7);
  }

  return v15;
}

- (void)presentComponentWithChanges:(id)a3
{
  v12.receiver = self;
  v12.super_class = SXContainerComponentView;
  [(SXComponentView *)&v12 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  v4 = [(SXContainerComponentView *)self dragManager];
  if (!v4)
  {
    v4 = [(SXContainerComponentView *)self componentViews];
    if (![v4 count])
    {
      v5 = [(SXComponentView *)self fillView];
      v6 = [v5 dragable];

      if (!v6)
      {
        return;
      }

      v7 = [SXDragManager alloc];
      v8 = [(SXContainerComponentView *)self mediaSharingPolicyProvider];
      v9 = -[SXDragManager initWithSharingPolicy:dataSource:](v7, "initWithSharingPolicy:dataSource:", [v8 mediaSharingPolicy], self);
      [(SXContainerComponentView *)self setDragManager:v9];

      v4 = [(SXContainerComponentView *)self dragManager];
      v10 = [(SXComponentView *)self fillView];
      v11 = [v10 dragable];
      [v4 updateAccessibilityDragSourceDescriptorsForDraggableElement:v11];
    }
  }
}

- (id)contentViewForBehavior:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(SXComponentView *)v5 fillView];
    v5 = v6 = v5;
LABEL_4:

    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SXComponentView *)v5 fillView];
    if (v6)
    {
      v8 = [(SXComponentView *)v5 fillView];

      v5 = v8;
    }

    goto LABEL_4;
  }

LABEL_5:

  return v5;
}

- (id)componentViewsForRole:(int)a3 recursive:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v22 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(SXContainerComponentView *)self componentViews];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 component];
        if ([v14 role] == v5)
        {
          [v7 addObject:v13];
        }

        if (v4)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v13 componentViewsForRole:v5 recursive:1];
            [v7 addObjectsFromArray:v15];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)addComponentView:(id)a3
{
  v16 = a3;
  [(SXComponentView *)self fillView];

  v4 = [(SXComponentView *)self contentView];
  v5 = [v4 subviews];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(SXComponentView *)self contentView];
      v9 = [v8 subviews];
      v10 = [v9 objectAtIndex:v7];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 componentIndex];
        if (v11 > [v16 componentIndex])
        {
          break;
        }
      }

      ++v7;
      v12 = [(SXComponentView *)self contentView];
      v13 = [v12 subviews];
      v14 = [v13 count];

      if (v7 >= v14)
      {
        goto LABEL_6;
      }
    }

    v15 = [(SXComponentView *)self contentView];
    [v15 insertSubview:v16 atIndex:v7];
  }

  else
  {
LABEL_6:
    v15 = [(SXComponentView *)self contentView];
    [v15 addSubview:v16];
  }
}

- (CGRect)transitionContentFrame
{
  [(SXComponentView *)self contentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SXComponentView *)self fillView];

  if (v11)
  {
    v12 = [(SXComponentView *)self fillView];
    v13 = [(SXComponentView *)self fillView];
    [v13 contentFrame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(SXComponentView *)self fillView];
    v23 = [v22 superview];
    [v12 convertRect:v23 toView:{v15, v17, v19, v21}];
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

- (BOOL)usesThumbnailWithImageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentView *)self fillView];
  v6 = [v5 fill];
  if (v6)
  {
    v7 = v6;
    v8 = [(SXComponentView *)self fillView];
    v9 = [v8 fill];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [(SXComponentView *)self fillView];
      v12 = [v11 fill];

      v13 = [v12 imageIdentifier];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = [(SXComponentView *)self fillView];
  v14 = [v12 fill];
  if (!v14)
  {
    v20 = 0;
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [(SXComponentView *)self fillView];
  v17 = [v16 fill];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if ((v18 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_12;
  }

  v19 = [(SXComponentView *)self fillView];
  v12 = [v19 fill];

  v13 = [v12 stillImageIdentifier];
LABEL_8:
  v20 = v13;
LABEL_10:

LABEL_12:
  v21 = [v4 isEqualToString:v20];

  return v21;
}

- (BOOL)isTransitionable
{
  v2 = [(SXComponentView *)self fillView];
  v3 = [v2 fill];
  v4 = [v3 fillMode] != 0;

  return v4;
}

- (void)prepareForTransitionType:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SXContainerComponentView;
  [(SXComponentView *)&v14 prepareForTransitionType:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(SXContainerComponentView *)self componentViews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) prepareForTransitionType:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)animationDidStart:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SXContainerComponentView;
  [(SXComponentView *)&v14 animationDidStart:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(SXContainerComponentView *)self componentViews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) animationDidStart:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)animationDidFinish:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SXContainerComponentView;
  [(SXComponentView *)&v14 animationDidFinish:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(SXContainerComponentView *)self componentViews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) animationDidFinish:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)didApplyBehavior:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SXContainerComponentView;
  [(SXComponentView *)&v14 didApplyBehavior:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(SXContainerComponentView *)self componentViews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) didApplyBehavior:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)dragManager:(id)a3 dragableAtLocation:(CGPoint)a4
{
  v4 = [(SXComponentView *)self fillView:a3];
  v5 = [v4 dragable];

  return v5;
}

- (BOOL)userInteractable
{
  v2 = [(SXContainerComponentView *)self dragManager];
  v3 = v2 != 0;

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
  v3 = [(SXContainerComponentView *)self componentViews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) allowHierarchyRemoval])
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
  v5 = [(SXComponentView *)self component];
  v6 = [v5 identifier];
  v7 = [(SXComponentView *)self component];
  v8 = [v7 components];
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: '%@'; numberOfChilds: %lu>", v4, self, v6, objc_msgSend(v8, "count")];;

  return v9;
}

@end