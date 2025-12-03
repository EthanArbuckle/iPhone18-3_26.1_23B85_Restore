@interface SUScriptActivityNativeObject
- (void)activity:(id)activity prepareWithActivityItems:(id)items;
- (void)destroyNativeObject;
- (void)setupNativeObject;
@end

@implementation SUScriptActivityNativeObject

- (void)destroyNativeObject
{
  [-[SUScriptNativeObject object](self "object")];
  v3.receiver = self;
  v3.super_class = SUScriptActivityNativeObject;
  [(SUScriptNativeObject *)&v3 destroyNativeObject];
}

- (void)setupNativeObject
{
  [-[SUScriptNativeObject object](self "object")];
  v3.receiver = self;
  v3.super_class = SUScriptActivityNativeObject;
  [(SUScriptNativeObject *)&v3 setupNativeObject];
}

- (void)activity:(id)activity prepareWithActivityItems:(id)items
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject _performActionFunctionWithItems:items];
}

@end