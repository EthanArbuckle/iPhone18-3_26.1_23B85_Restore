@interface VUIJSSportsInterface
- (VUIJSSportsInterface)initWithAppContext:(id)a3;
@end

@implementation VUIJSSportsInterface

- (VUIJSSportsInterface)initWithAppContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VUIJSSportsInterface;
  v5 = [(VUIJSObject *)&v11 initWithAppContext:v4];
  if (v5)
  {
    v6 = [VUIJSSportsJavascriptInterface alloc];
    v7 = [v4 jsContext];
    v8 = [(VUIJSSportsJavascriptInterface *)v6 initWithContext:v7];
    implementation = v5->_implementation;
    v5->_implementation = v8;
  }

  return v5;
}

@end