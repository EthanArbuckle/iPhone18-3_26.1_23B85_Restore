@interface UIInterfaceAction
+ (BOOL)changedProperties:(id)a3 containsAny:(id)a4;
+ (UIInterfaceAction)actionWithCustomContentView:(id)a3 handler:(id)a4;
+ (UIInterfaceAction)actionWithCustomContentViewController:(id)a3;
+ (UIInterfaceAction)actionWithTitle:(id)a3 type:(int64_t)a4 handler:(id)a5;
- (CGSize)_layoutSizeForImageProperty:(id)a3;
- (CGSize)leadingImageLayoutSize;
- (CGSize)trailingImageLayoutSize;
- (UIInterfaceAction)initWithTitle:(id)a3 type:(int64_t)a4 customContentViewController:(id)a5 customContentView:(id)a6 handler:(id)a7;
- (UIInterfaceActionRepresentationView)_visualRepresentation;
- (UIView)customContentView;
- (_UIInterfaceActionPresenting)_presentingController;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_addActionDisplayPropertyObserver:(id)a3;
- (void)_invokeHandlerWithCompletionBlock:(id)a3;
- (void)_notifyObserversDidChangeActionProperty:(id)a3;
- (void)_notifyObserversVisualStyleDidChange;
- (void)_removeActionDisplayPropertyObserver:(id)a3;
- (void)_setImageTintColor:(id)a3;
- (void)_setIsFocused:(BOOL)a3;
- (void)_setIsPreferred:(BOOL)a3;
- (void)_setTitleTextColor:(id)a3;
- (void)_setVisualStyle:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setLeadingImage:(id)a3;
- (void)setLeadingImageLayoutSize:(CGSize)a3;
- (void)setTitle:(id)a3;
- (void)setTitleAlignment:(int64_t)a3;
- (void)setTrailingImage:(id)a3;
- (void)setTrailingImageLayoutSize:(CGSize)a3;
@end

@implementation UIInterfaceAction

+ (BOOL)changedProperties:(id)a3 containsAny:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if ([v5 containsObject:{*(*(&v12 + 1) + 8 * i), v12}])
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

+ (UIInterfaceAction)actionWithTitle:(id)a3 type:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithTitle:v9 type:a4 customContentViewController:0 customContentView:0 handler:v8];

  return v10;
}

+ (UIInterfaceAction)actionWithCustomContentViewController:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTitle:&stru_1EFB14550 type:100 customContentViewController:v4 customContentView:0 handler:0];

  return v5;
}

+ (UIInterfaceAction)actionWithCustomContentView:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:&stru_1EFB14550 type:100 customContentViewController:0 customContentView:v7 handler:v6];

  return v8;
}

- (UIInterfaceAction)initWithTitle:(id)a3 type:(int64_t)a4 customContentViewController:(id)a5 customContentView:(id)a6 handler:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = UIInterfaceAction;
  v17 = [(UIInterfaceAction *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, a3);
    v18->_titleAlignment = 1;
    v18->_type = a4;
    v19 = _Block_copy(v16);
    handler = v18->_handler;
    v18->_handler = v19;

    objc_storeStrong(&v18->_customContentViewController, a5);
    objc_storeStrong(&v18->_customContentView, a6);
    v21 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    weakDisplayPropertyObservers = v18->_weakDisplayPropertyObservers;
    v18->_weakDisplayPropertyObservers = v21;

    v18->_enabled = 1;
  }

  return v18;
}

- (void)_setVisualStyle:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_visualStyle] & 1) == 0)
  {
    objc_storeStrong(&self->_visualStyle, a3);
    [(UIInterfaceAction *)self _notifyObserversVisualStyleDidChange];
  }
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = UIInterfaceAction;
  v3 = [(UIInterfaceAction *)&v10 description];
  v4 = [MEMORY[0x1E695DF70] array];
  if ([(NSString *)self->_title length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" title = %@", self->_title];
    [v4 addObject:v5];
  }

  if (self->_customContentView)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" customContentView = %@", self->_customContentView];
    [v4 addObject:v6];
  }

  if ([v4 count])
  {
    v7 = [v4 componentsJoinedByString:{@", "}];
    v8 = [v3 stringByAppendingFormat:@" %@", v7];

    v3 = v8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithTitle:self->_title type:self->_type customContentViewController:self->_customContentViewController customContentView:self->_customContentView handler:self->_handler];
  *(v4 + 48) = self->_titleAlignment;
  objc_storeStrong((v4 + 56), self->_classificationTitle);
  *(v4 + 8) = self->_enabled;
  objc_storeStrong((v4 + 64), self->_leadingImage);
  *(v4 + 136) = self->_leadingImageLayoutSize;
  objc_storeStrong((v4 + 72), self->_trailingImage);
  *(v4 + 152) = self->_trailingImageLayoutSize;
  return v4;
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_title] & 1) == 0)
  {
    objc_storeStrong(&self->_title, a3);
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"title"];
  }
}

- (void)setTitleAlignment:(int64_t)a3
{
  if (self->_titleAlignment != a3)
  {
    self->_titleAlignment = a3;
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"titleAlignment"];
  }
}

- (void)setLeadingImage:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_leadingImage] & 1) == 0)
  {
    objc_storeStrong(&self->_leadingImage, a3);
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"leadingImage"];
  }
}

- (void)setTrailingImage:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_trailingImage] & 1) == 0)
  {
    objc_storeStrong(&self->_trailingImage, a3);
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"trailingImage"];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"enabled"];
  }
}

- (UIView)customContentView
{
  customContentView = self->_customContentView;
  if (customContentView)
  {
    v3 = customContentView;
  }

  else
  {
    v4 = [(UIInterfaceAction *)self customContentViewController];
    v3 = [v4 view];
  }

  return v3;
}

- (void)_setIsPreferred:(BOOL)a3
{
  if (self->_preferred != a3)
  {
    self->_preferred = a3;
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"preferred"];
  }
}

- (void)_setIsFocused:(BOOL)a3
{
  if (self->_focused != a3)
  {
    self->_focused = a3;
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"focused"];
  }
}

- (void)_setTitleTextColor:(id)a3
{
  v5 = a3;
  if (![(UIColor *)self->_titleTextColor isEqual:?])
  {
    objc_storeStrong(&self->_titleTextColor, a3);
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"titleTextColor"];
  }
}

- (void)_setImageTintColor:(id)a3
{
  v5 = a3;
  if (![(UIColor *)self->_imageTintColor isEqual:?])
  {
    objc_storeStrong(&self->_imageTintColor, a3);
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"imageTintColor"];
  }
}

- (CGSize)_layoutSizeForImageProperty:(id)a3
{
  v4 = [a3 stringByAppendingString:@"LayoutSize"];
  v5 = [(UIInterfaceAction *)self valueForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 CGSizeValue];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
  }

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setLeadingImageLayoutSize:(CGSize)a3
{
  if (self->_leadingImageLayoutSize.width != a3.width || self->_leadingImageLayoutSize.height != a3.height)
  {
    self->_leadingImageLayoutSize = a3;
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"leadingImageLayoutSize"];
  }
}

- (CGSize)leadingImageLayoutSize
{
  width = self->_leadingImageLayoutSize.width;
  height = self->_leadingImageLayoutSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [(UIImage *)self->_leadingImage size:v2];
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)setTrailingImageLayoutSize:(CGSize)a3
{
  if (self->_trailingImageLayoutSize.width != a3.width || self->_trailingImageLayoutSize.height != a3.height)
  {
    self->_trailingImageLayoutSize = a3;
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"trailingImageLayoutSize"];
  }
}

- (CGSize)trailingImageLayoutSize
{
  width = self->_trailingImageLayoutSize.width;
  height = self->_trailingImageLayoutSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [(UIImage *)self->_trailingImage size:v2];
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)_invokeHandlerWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceAction *)self _presentingController];
  if (v5)
  {
    handler = self->_handler;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__UIInterfaceAction__invokeHandlerWithCompletionBlock___block_invoke;
    v9[3] = &unk_1E70F0F78;
    v10 = v4;
    [v5 interfaceAction:self invokeActionHandler:handler completion:v9];
  }

  else if (__interfaceActionCanInvokeActionsWithoutPresentingController == 1)
  {
    v7 = self->_handler;
    if (v7)
    {
      v8 = 0;
      v7[2](v7, self, &v8);
    }
  }
}

- (void)_addActionDisplayPropertyObserver:(id)a3
{
  weakDisplayPropertyObservers = self->_weakDisplayPropertyObservers;
  v5 = a3;
  [(NSPointerArray *)weakDisplayPropertyObservers compact];
  [(NSPointerArray *)self->_weakDisplayPropertyObservers addPointer:v5];
}

- (void)_removeActionDisplayPropertyObserver:(id)a3
{
  weakDisplayPropertyObservers = self->_weakDisplayPropertyObservers;
  v5 = a3;
  [(NSPointerArray *)weakDisplayPropertyObservers compact];
  v6 = [(NSPointerArray *)self->_weakDisplayPropertyObservers allObjects];
  v7 = [v6 indexOfObject:v5];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = self->_weakDisplayPropertyObservers;

    [(NSPointerArray *)v8 removePointerAtIndex:v7];
  }
}

- (void)_notifyObserversVisualStyleDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSPointerArray *)self->_weakDisplayPropertyObservers compact];
  WeakRetained = objc_loadWeakRetained(&self->__visualRepresentation);
  [WeakRetained interfaceAction:self reloadDisplayedContentVisualStyle:self->_visualStyle];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(NSPointerArray *)self->_weakDisplayPropertyObservers copy];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) interfaceAction:self reloadDisplayedContentVisualStyle:self->_visualStyle];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_notifyObserversDidChangeActionProperty:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSPointerArray *)self->_weakDisplayPropertyObservers compact];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:v4];
  WeakRetained = objc_loadWeakRetained(&self->__visualRepresentation);
  [WeakRetained interfaceAction:self reloadDisplayedContentActionProperties:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(NSPointerArray *)self->_weakDisplayPropertyObservers copy];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) interfaceAction:self reloadDisplayedContentActionProperties:v5];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (UIInterfaceActionRepresentationView)_visualRepresentation
{
  WeakRetained = objc_loadWeakRetained(&self->__visualRepresentation);

  return WeakRetained;
}

- (_UIInterfaceActionPresenting)_presentingController
{
  WeakRetained = objc_loadWeakRetained(&self->__presentingController);

  return WeakRetained;
}

@end