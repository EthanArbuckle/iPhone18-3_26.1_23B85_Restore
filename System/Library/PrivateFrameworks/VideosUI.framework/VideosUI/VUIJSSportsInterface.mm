@interface VUIJSSportsInterface
- (VUIJSSportsInterface)initWithAppContext:(id)context;
@end

@implementation VUIJSSportsInterface

- (VUIJSSportsInterface)initWithAppContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = VUIJSSportsInterface;
  v5 = [(VUIJSObject *)&v11 initWithAppContext:contextCopy];
  if (v5)
  {
    v6 = [VUIJSSportsJavascriptInterface alloc];
    jsContext = [contextCopy jsContext];
    v8 = [(VUIJSSportsJavascriptInterface *)v6 initWithContext:jsContext];
    implementation = v5->_implementation;
    v5->_implementation = v8;
  }

  return v5;
}

@end