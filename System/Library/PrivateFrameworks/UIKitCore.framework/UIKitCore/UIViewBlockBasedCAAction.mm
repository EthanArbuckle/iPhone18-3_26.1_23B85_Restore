@interface UIViewBlockBasedCAAction
- (UIViewBlockBasedCAAction)initWithActionBlock:(id)block;
- (UIViewBlockBasedCAAction)initWithEmptyBlock:(id)block;
- (void)runActionForKey:(id)key object:(id)object arguments:(id)arguments;
@end

@implementation UIViewBlockBasedCAAction

- (UIViewBlockBasedCAAction)initWithEmptyBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__UIViewBlockBasedCAAction_initWithEmptyBlock___block_invoke;
  v8[3] = &unk_1E712AE48;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [(UIViewBlockBasedCAAction *)self initWithActionBlock:v8];

  return v6;
}

- (UIViewBlockBasedCAAction)initWithActionBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = UIViewBlockBasedCAAction;
  v5 = [(UIViewBlockBasedCAAction *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)runActionForKey:(id)key object:(id)object arguments:(id)arguments
{
  keyCopy = key;
  objectCopy = object;
  argumentsCopy = arguments;
  block = self->_block;
  if (!block)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIView.m" lineNumber:824 description:{@"%@ must be initialized with a non-nil block", v14}];

    block = self->_block;
  }

  block[2](block, keyCopy, objectCopy, argumentsCopy);
}

@end