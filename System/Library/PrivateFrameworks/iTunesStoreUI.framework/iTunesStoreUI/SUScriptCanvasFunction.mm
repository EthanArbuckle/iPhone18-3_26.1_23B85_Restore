@interface SUScriptCanvasFunction
- (id)copyResultForSize:(CGSize)size;
- (void)dealloc;
@end

@implementation SUScriptCanvasFunction

- (void)dealloc
{
  self->_lastResult = 0;
  v3.receiver = self;
  v3.super_class = SUScriptCanvasFunction;
  [(SUScriptFunction *)&v3 dealloc];
}

- (id)copyResultForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(SUScriptFunction *)self lock];
  lastResult = self->_lastResult;
  if (lastResult && (v7 = [(SUScriptCanvasResult *)lastResult canvasImage]) != 0 && (([(UIImage *)v7 size], width == v9) ? (v10 = height == v8) : (v10 = 0), v10))
  {
    v19 = self->_lastResult;
    [(SUScriptFunction *)self unlock];
    if (v19)
    {
      return v19;
    }
  }

  else
  {
    [(SUScriptFunction *)self unlock];
  }

  v11 = objc_alloc(MEMORY[0x1E695DEC8]);
  null = [MEMORY[0x1E695DFB0] null];
  *&v13 = width;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  *&v15 = height;
  v16 = [v11 initWithObjects:{null, v14, objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v15), 0}];
  v17 = [(SUScriptFunction *)self callSynchronouslyWithArguments:v16];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptFunction *)self lock];

    v18 = [[SUScriptCanvasResult alloc] _initWithCanvas:v17];
    self->_lastResult = v18;
    v19 = v18;
    [(SUScriptFunction *)self unlock];
  }

  else
  {
    v19 = self->_lastResult;
  }

  return v19;
}

@end