@interface SUScriptActivityNativeObject
- (void)activity:(id)a3 prepareWithActivityItems:(id)a4;
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

- (void)activity:(id)a3 prepareWithActivityItems:(id)a4
{
  v5 = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)v5 _performActionFunctionWithItems:a4];
}

@end