@interface SUScriptStorePageNativeObject
- (id)_eventNameForNote:(id)a3;
- (void)_webViewControllerNote:(id)a3;
- (void)destroyNativeObject;
- (void)setupNativeObject;
@end

@implementation SUScriptStorePageNativeObject

- (void)setupNativeObject
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__webViewControllerNote_ name:@"SUWebViewControllerDidStartLoad" object:0];
  [v3 addObserver:self selector:sel__webViewControllerNote_ name:@"SUWebViewControllerDidFinishLoad" object:0];
  [v3 addObserver:self selector:sel__webViewControllerNote_ name:@"SUWebViewControllerDidFailLoad" object:0];
  v4.receiver = self;
  v4.super_class = SUScriptStorePageNativeObject;
  [(SUScriptViewControllerNativeObject *)&v4 setupNativeObject];
}

- (void)destroyNativeObject
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SUScriptStorePageNativeObject;
  [(SUScriptViewControllerNativeObject *)&v4 destroyNativeObject];
}

- (void)_webViewControllerNote:(id)a3
{
  v10 = a3;
  v4 = [v10 object];
  v5 = [(SUScriptNativeObject *)self object];
  v6 = [v4 isDescendantOfViewController:v5];

  if (v6)
  {
    v7 = [(SUScriptNativeObject *)self scriptObject];
    v8 = [v10 name];
    v9 = [(SUScriptStorePageNativeObject *)self _eventNameForNote:v8];
    [v7 dispatchEvent:0 forName:v9];
  }
}

- (id)_eventNameForNote:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"SUWebViewControllerDidStartLoad"])
  {
    v4 = @"didstartload";
  }

  else if ([v3 isEqual:@"SUWebViewControllerDidFinishLoad"])
  {
    v4 = @"didfinishload";
  }

  else if ([v3 isEqual:@"SUWebViewControllerDidFailLoad"])
  {
    v4 = @"didfailload";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end