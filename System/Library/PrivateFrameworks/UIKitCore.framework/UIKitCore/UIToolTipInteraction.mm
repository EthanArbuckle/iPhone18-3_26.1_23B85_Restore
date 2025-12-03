@interface UIToolTipInteraction
+ (id)_defaultToolTipInteractionFromInteractions:(id)interactions;
+ (id)_newDefaultToolTipInteraction;
- (UIToolTipInteraction)init;
- (UIToolTipInteraction)initWithDefaultToolTip:(NSString *)defaultToolTip;
- (UIView)view;
- (id)delegate;
- (id)toolTipAtPoint:(CGPoint)point boundingRect:(CGRect *)rect;
- (void)_refreshStyle;
- (void)didMoveToView:(id)view;
- (void)setDefaultToolTip:(NSString *)defaultToolTip;
- (void)setDelegate:(id)delegate;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation UIToolTipInteraction

- (UIToolTipInteraction)init
{
  v5.receiver = self;
  v5.super_class = UIToolTipInteraction;
  v2 = [(UIToolTipInteraction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 1;
    if (init_onceToken != -1)
    {
      dispatch_once(&init_onceToken, &__block_literal_global_570);
    }
  }

  return v3;
}

void __28__UIToolTipInteraction_init__block_invoke()
{
  v1 = +[_UIVisualStyleRegistry defaultRegistry];
  v0 = objc_opt_class();
  [v1 registerVisualStyleClass:v0 forStylableClass:objc_opt_class()];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_refreshStyle
{
  style = self->_style;
  self->_style = 0;

  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_view);
    traitCollection = [v5 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    v8 = [_UIVisualStyleRegistry registryForIdiom:userInterfaceIdiom];
    v9 = [v8 visualStyleClassForStylableClass:objc_opt_class()];

    v10 = [v9 alloc];
    v11 = objc_loadWeakRetained(&self->_view);
    v12 = [v10 initWithView:v11 provider:self];

    v13 = self->_style;
    self->_style = v12;

    [(UIToolTipInteraction *)self _updateStyleForInteractionProperties];
  }
}

- (void)setDefaultToolTip:(NSString *)defaultToolTip
{
  v5 = defaultToolTip;
  v6 = self->_defaultToolTip;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_defaultToolTip, defaultToolTip);
    [(UIToolTipInteraction *)self _updateStyleForInteractionProperties];
  }

LABEL_9:
}

+ (id)_defaultToolTipInteractionFromInteractions:(id)interactions
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  interactionsCopy = interactions;
  v4 = [interactionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(interactionsCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = v9;
          if (v9[9])
          {
            goto LABEL_12;
          }
        }
      }

      v5 = [interactionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = 0;
LABEL_12:

  return v10;
}

+ (id)_newDefaultToolTipInteraction
{
  result = objc_opt_new();
  *(result + 9) = 1;
  return result;
}

- (UIToolTipInteraction)initWithDefaultToolTip:(NSString *)defaultToolTip
{
  v5 = defaultToolTip;
  v6 = [(UIToolTipInteraction *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultToolTip, defaultToolTip);
  }

  return v7;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    self->_delegateImplementsToolTipAtPoint = objc_opt_respondsToSelector() & 1;

    [(UIToolTipInteraction *)self _updateStyleForInteractionProperties];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(UIToolTipInteraction *)self _updateStyleForInteractionProperties];
  }
}

- (id)toolTipAtPoint:(CGPoint)point boundingRect:(CGRect *)rect
{
  y = point.y;
  x = point.x;
  if (!rect)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIToolTipInteraction.m" lineNumber:99 description:@"boundingRect must not be nil"];
  }

  if (self->_enabled)
  {
    if (self->_delegateImplementsToolTipAtPoint)
    {
      delegate = [(UIToolTipInteraction *)self delegate];
      v9 = [delegate toolTipInteraction:self configurationAtPoint:{x, y}];

      if (v9)
      {
        [v9 sourceRect];
        if (CGRectIsNull(v29))
        {
          view = [(UIToolTipInteraction *)self view];
          [view bounds];
          rect->origin.x = v11;
          rect->origin.y = v12;
          rect->size.width = v13;
          rect->size.height = v14;
        }

        else
        {
          [v9 sourceRect];
          rect->origin.x = v21;
          rect->origin.y = v22;
          rect->size.width = v23;
          rect->size.height = v24;
        }

        toolTip = [v9 toolTip];
      }

      else
      {
        toolTip = 0;
      }
    }

    else
    {
      view2 = [(UIToolTipInteraction *)self view];
      [view2 bounds];
      rect->origin.x = v17;
      rect->origin.y = v18;
      rect->size.width = v19;
      rect->size.height = v20;

      toolTip = [(UIToolTipInteraction *)self defaultToolTip];
    }
  }

  else
  {
    toolTip = 0;
  }

  return toolTip;
}

- (void)didMoveToView:(id)view
{
  objc_storeWeak(&self->_view, view);

  [(UIToolTipInteraction *)self _refreshStyle];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end