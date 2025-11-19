@interface UIViewBlockBasedCAAction
- (UIViewBlockBasedCAAction)initWithActionBlock:(id)a3;
- (UIViewBlockBasedCAAction)initWithEmptyBlock:(id)a3;
- (void)runActionForKey:(id)a3 object:(id)a4 arguments:(id)a5;
@end

@implementation UIViewBlockBasedCAAction

- (UIViewBlockBasedCAAction)initWithEmptyBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__UIViewBlockBasedCAAction_initWithEmptyBlock___block_invoke;
  v8[3] = &unk_1E712AE48;
  v9 = v4;
  v5 = v4;
  v6 = [(UIViewBlockBasedCAAction *)self initWithActionBlock:v8];

  return v6;
}

- (UIViewBlockBasedCAAction)initWithActionBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIViewBlockBasedCAAction;
  v5 = [(UIViewBlockBasedCAAction *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)runActionForKey:(id)a3 object:(id)a4 arguments:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  block = self->_block;
  if (!block)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:824 description:{@"%@ must be initialized with a non-nil block", v14}];

    block = self->_block;
  }

  block[2](block, v15, v9, v10);
}

@end