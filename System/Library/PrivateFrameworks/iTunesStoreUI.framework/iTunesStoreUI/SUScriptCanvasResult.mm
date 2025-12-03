@interface SUScriptCanvasResult
- (id)_initWithCanvas:(id)canvas;
- (void)dealloc;
@end

@implementation SUScriptCanvasResult

- (id)_initWithCanvas:(id)canvas
{
  v4 = [(SUScriptCanvasResult *)self init];
  if (v4)
  {
    v4->_image = [canvas copyCanvasImage];
    v4->_path = [canvas copyCanvasPath];
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