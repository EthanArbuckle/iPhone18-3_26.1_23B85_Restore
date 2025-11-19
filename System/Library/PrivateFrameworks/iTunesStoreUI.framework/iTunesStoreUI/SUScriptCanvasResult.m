@interface SUScriptCanvasResult
- (id)_initWithCanvas:(id)a3;
- (void)dealloc;
@end

@implementation SUScriptCanvasResult

- (id)_initWithCanvas:(id)a3
{
  v4 = [(SUScriptCanvasResult *)self init];
  if (v4)
  {
    v4->_image = [a3 copyCanvasImage];
    v4->_path = [a3 copyCanvasPath];
  }

  return v4;
}

- (void)dealloc
{
  path = self->_path;
  if (path)
  {
    CGPathRelease(path);
    self->_path = 0;
  }

  v4.receiver = self;
  v4.super_class = SUScriptCanvasResult;
  [(SUScriptCanvasResult *)&v4 dealloc];
}

@end