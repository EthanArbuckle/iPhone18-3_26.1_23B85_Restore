@interface UIContextualAction
+ (UIContextualAction)contextualActionWithStyle:(UIContextualActionStyle)style title:(NSString *)title handler:(UIContextualActionHandler)handler;
- (id)description;
- (void)_completeWithResult:(BOOL)result;
- (void)cancel;
- (void)executeHandlerWithView:(id)view completionHandler:(id)handler;
- (void)executePreHandlerWithView:(id)view;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
@end

@implementation UIContextualAction

+ (UIContextualAction)contextualActionWithStyle:(UIContextualActionStyle)style title:(NSString *)title handler:(UIContextualActionHandler)handler
{
  v8 = handler;
  v9 = title;
  v10 = objc_alloc_init(self);
  v10[2] = style;
  [v10 setTitle:v9];

  if (style)
  {
    if (style == UIContextualActionStyleDestructive)
    {
      v11 = +[UIColor systemRedColor];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (dyld_program_sdk_at_least())
    {
      +[UIColor systemGray3Color];
    }

    else
    {
      [UIColor colorWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
    }
    v11 = ;
  }

  v12 = v10[5];
  v10[5] = v11;

  [v10 setHandler:v8];

  return v10;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
  v4 = backgroundColor;
  v8 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    style = self->_style;
    if (style)
    {
      if (style == 1)
      {
        v5 = +[UIColor systemRedColor];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      if (dyld_program_sdk_at_least())
      {
        +[UIColor systemGray3Color];
      }

      else
      {
        [UIColor colorWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
      }
      v5 = ;
    }
  }

  v6 = self->_backgroundColor;
  self->_backgroundColor = v5;
}

- (void)executePreHandlerWithView:(id)view
{
  viewCopy = view;
  preHandler = [(UIContextualAction *)self preHandler];

  if (preHandler)
  {
    preHandler2 = [(UIContextualAction *)self preHandler];
    (preHandler2)[2](preHandler2, self, viewCopy);
  }
}

- (void)executeHandlerWithView:(id)view completionHandler:(id)handler
{
  viewCopy = view;
  v7 = _Block_copy(handler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v7;

  handler = [(UIContextualAction *)self handler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__UIContextualAction_executeHandlerWithView_completionHandler___block_invoke;
  v10[3] = &unk_1E70F5AC0;
  v10[4] = self;
  (handler)[2](handler, self, viewCopy, v10);
}

- (void)cancel
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)_completeWithResult:(BOOL)result
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    resultCopy = result;
    v7 = _Block_copy(completionHandler);
    v6 = self->_completionHandler;
    self->_completionHandler = 0;

    v7[2](v7, resultCopy);
  }
}

- (id)description
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_style);
  v10[0] = v3;
  v4 = NSStringFromSelector(sel_title);
  v10[1] = v4;
  v5 = NSStringFromSelector(sel_backgroundColor);
  v10[2] = v5;
  v6 = NSStringFromSelector(sel_image);
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [UIDescriptionBuilder descriptionForObject:self keys:v7];

  return v8;
}

@end