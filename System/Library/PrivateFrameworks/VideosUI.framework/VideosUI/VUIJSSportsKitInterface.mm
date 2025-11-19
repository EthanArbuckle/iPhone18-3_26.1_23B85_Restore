@interface VUIJSSportsKitInterface
- (VUIJSSportsKitInterface)initWithAppContext:(id)a3;
@end

@implementation VUIJSSportsKitInterface

- (VUIJSSportsKitInterface)initWithAppContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VUIJSSportsKitInterface;
  v5 = [(VUIJSObject *)&v11 initWithAppContext:v4];
  if (v5)
  {
    v6 = [VUIJSSportsKitJavascriptInterface alloc];
    v7 = [v4 jsContext];
    v8 = [(VUIJSSportsKitJavascriptInterface *)v6 initWithContext:v7];
    implementation = v5->_implementation;
    v5->_implementation = v8;
  }

  return v5;
}

@end