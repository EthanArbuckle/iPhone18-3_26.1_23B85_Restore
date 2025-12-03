@interface VUIJSSportsKitInterface
- (VUIJSSportsKitInterface)initWithAppContext:(id)context;
@end

@implementation VUIJSSportsKitInterface

- (VUIJSSportsKitInterface)initWithAppContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = VUIJSSportsKitInterface;
  v5 = [(VUIJSObject *)&v11 initWithAppContext:contextCopy];
  if (v5)
  {
    v6 = [VUIJSSportsKitJavascriptInterface alloc];
    jsContext = [contextCopy jsContext];
    v8 = [(VUIJSSportsKitJavascriptInterface *)v6 initWithContext:jsContext];
    implementation = v5->_implementation;
    v5->_implementation = v8;
  }

  return v5;
}

@end