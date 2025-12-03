@interface UIInterfaceAction
+ (BOOL)changedProperties:(id)properties containsAny:(id)any;
+ (UIInterfaceAction)actionWithCustomContentView:(id)view handler:(id)handler;
+ (UIInterfaceAction)actionWithCustomContentViewController:(id)controller;
+ (UIInterfaceAction)actionWithTitle:(id)title type:(int64_t)type handler:(id)handler;
- (CGSize)_layoutSizeForImageProperty:(id)property;
- (CGSize)leadingImageLayoutSize;
- (CGSize)trailingImageLayoutSize;
- (UIInterfaceAction)initWithTitle:(id)title type:(int64_t)type customContentViewController:(id)controller customContentView:(id)view handler:(id)handler;
- (UIInterfaceActionRepresentationView)_visualRepresentation;
- (UIView)customContentView;
- (_UIInterfaceActionPresenting)_presentingController;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_addActionDisplayPropertyObserver:(id)observer;
- (void)_invokeHandlerWithCompletionBlock:(id)block;
- (void)_notifyObserversDidChangeActionProperty:(id)property;
- (void)_notifyObserversVisualStyleDidChange;
- (void)_removeActionDisplayPropertyObserver:(id)observer;
- (void)_setImageTintColor:(id)color;
- (void)_setIsFocused:(BOOL)focused;
- (void)_setIsPreferred:(BOOL)preferred;
- (void)_setTitleTextColor:(id)color;
- (void)_setVisualStyle:(id)style;
- (void)setEnabled:(BOOL)enabled;
- (void)setLeadingImage:(id)image;
- (void)setLeadingImageLayoutSize:(CGSize)size;
- (void)setTitle:(id)title;
- (void)setTitleAlignment:(int64_t)alignment;
- (void)setTrailingImage:(id)image;
- (void)setTrailingImageLayoutSize:(CGSize)size;
@end

@implementation UIInterfaceAction

+ (BOOL)changedProperties:(id)properties containsAny:(id)any
{
  v17 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  anyCopy = any;
  if ([propertiesCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = anyCopy;
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

          if ([propertiesCopy containsObject:{*(*(&v12 + 1) + 8 * i), v12}])
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

+ (UIInterfaceAction)actionWithTitle:(id)title type:(int64_t)type handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v10 = [[self alloc] initWithTitle:titleCopy type:type customContentViewController:0 customContentView:0 handler:handlerCopy];

  return v10;
}

+ (UIInterfaceAction)actionWithCustomContentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [[self alloc] initWithTitle:&stru_1EFB14550 type:100 customContentViewController:controllerCopy customContentView:0 handler:0];

  return v5;
}

+ (UIInterfaceAction)actionWithCustomContentView:(id)view handler:(id)handler
{
  handlerCopy = handler;
  viewCopy = view;
  v8 = [[self alloc] initWithTitle:&stru_1EFB14550 type:100 customContentViewController:0 customContentView:viewCopy handler:handlerCopy];

  return v8;
}

- (UIInterfaceAction)initWithTitle:(id)title type:(int64_t)type customContentViewController:(id)controller customContentView:(id)view handler:(id)handler
{
  titleCopy = title;
  controllerCopy = controller;
  viewCopy = view;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = UIInterfaceAction;
  v17 = [(UIInterfaceAction *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, title);
    v18->_titleAlignment = 1;
    v18->_type = type;
    v19 = _Block_copy(handlerCopy);
    handler = v18->_handler;
    v18->_handler = v19;

    objc_storeStrong(&v18->_customContentViewController, controller);
    objc_storeStrong(&v18->_customContentView, view);
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    weakDisplayPropertyObservers = v18->_weakDisplayPropertyObservers;
    v18->_weakDisplayPropertyObservers = weakObjectsPointerArray;

    v18->_enabled = 1;
  }

  return v18;
}

- (void)_setVisualStyle:(id)style
{
  styleCopy = style;
  if (([styleCopy isEqual:self->_visualStyle] & 1) == 0)
  {
    objc_storeStrong(&self->_visualStyle, style);
    [(UIInterfaceAction *)self _notifyObserversVisualStyleDidChange];
  }
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = UIInterfaceAction;
  v3 = [(UIInterfaceAction *)&v10 description];
  array = [MEMORY[0x1E695DF70] array];
  if ([(NSString *)self->_title length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" title = %@", self->_title];
    [array addObject:v5];
  }

  if (self->_customContentView)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" customContentView = %@", self->_customContentView];
    [array addObject:v6];
  }

  if ([array count])
  {
    v7 = [array componentsJoinedByString:{@", "}];
    v8 = [v3 stringByAppendingFormat:@" %@", v7];

    v3 = v8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (([titleCopy isEqual:self->_title] & 1) == 0)
  {
    objc_storeStrong(&self->_title, title);
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"title"];
  }
}

- (void)setTitleAlignment:(int64_t)alignment
{
  if (self->_titleAlignment != alignment)
  {
    self->_titleAlignment = alignment;
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"titleAlignment"];
  }
}

- (void)setLeadingImage:(id)image
{
  imageCopy = image;
  if (([imageCopy isEqual:self->_leadingImage] & 1) == 0)
  {
    objc_storeStrong(&self->_leadingImage, image);
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"leadingImage"];
  }
}

- (void)setTrailingImage:(id)image
{
  imageCopy = image;
  if (([imageCopy isEqual:self->_trailingImage] & 1) == 0)
  {
    objc_storeStrong(&self->_trailingImage, image);
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"trailingImage"];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"enabled"];
  }
}

- (UIView)customContentView
{
  customContentView = self->_customContentView;
  if (customContentView)
  {
    view = customContentView;
  }

  else
  {
    customContentViewController = [(UIInterfaceAction *)self customContentViewController];
    view = [customContentViewController view];
  }

  return view;
}

- (void)_setIsPreferred:(BOOL)preferred
{
  if (self->_preferred != preferred)
  {
    self->_preferred = preferred;
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"preferred"];
  }
}

- (void)_setIsFocused:(BOOL)focused
{
  if (self->_focused != focused)
  {
    self->_focused = focused;
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"focused"];
  }
}

- (void)_setTitleTextColor:(id)color
{
  colorCopy = color;
  if (![(UIColor *)self->_titleTextColor isEqual:?])
  {
    objc_storeStrong(&self->_titleTextColor, color);
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"titleTextColor"];
  }
}

- (void)_setImageTintColor:(id)color
{
  colorCopy = color;
  if (![(UIColor *)self->_imageTintColor isEqual:?])
  {
    objc_storeStrong(&self->_imageTintColor, color);
    [(UIInterfaceAction *)self _notifyObserversDidChangeActionProperty:@"imageTintColor"];
  }
}

- (CGSize)_layoutSizeForImageProperty:(id)property
{
  v4 = [property stringByAppendingString:@"LayoutSize"];
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

- (void)setLeadingImageLayoutSize:(CGSize)size
{
  if (self->_leadingImageLayoutSize.width != size.width || self->_leadingImageLayoutSize.height != size.height)
  {
    self->_leadingImageLayoutSize = size;
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

- (void)setTrailingImageLayoutSize:(CGSize)size
{
  if (self->_trailingImageLayoutSize.width != size.width || self->_trailingImageLayoutSize.height != size.height)
  {
    self->_trailingImageLayoutSize = size;
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

- (void)_invokeHandlerWithCompletionBlock:(id)block
{
  blockCopy = block;
  _presentingController = [(UIInterfaceAction *)self _presentingController];
  if (_presentingController)
  {
    handler = self->_handler;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__UIInterfaceAction__invokeHandlerWithCompletionBlock___block_invoke;
    v9[3] = &unk_1E70F0F78;
    v10 = blockCopy;
    [_presentingController interfaceAction:self invokeActionHandler:handler completion:v9];
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

- (void)_addActionDisplayPropertyObserver:(id)observer
{
  weakDisplayPropertyObservers = self->_weakDisplayPropertyObservers;
  observerCopy = observer;
  [(NSPointerArray *)weakDisplayPropertyObservers compact];
  [(NSPointerArray *)self->_weakDisplayPropertyObservers addPointer:observerCopy];
}

- (void)_removeActionDisplayPropertyObserver:(id)observer
{
  weakDisplayPropertyObservers = self->_weakDisplayPropertyObservers;
  observerCopy = observer;
  [(NSPointerArray *)weakDisplayPropertyObservers compact];
  allObjects = [(NSPointerArray *)self->_weakDisplayPropertyObservers allObjects];
  v7 = [allObjects indexOfObject:observerCopy];

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

- (void)_notifyObserversDidChangeActionProperty:(id)property
{
  v17 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  [(NSPointerArray *)self->_weakDisplayPropertyObservers compact];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:propertyCopy];
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