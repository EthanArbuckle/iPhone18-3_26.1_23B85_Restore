@interface SUScriptStorePageNativeObject
- (id)_eventNameForNote:(id)note;
- (void)_webViewControllerNote:(id)note;
- (void)destroyNativeObject;
- (void)setupNativeObject;
@end

@implementation SUScriptStorePageNativeObject

- (void)setupNativeObject
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__webViewControllerNote_ name:@"SUWebViewControllerDidStartLoad" object:0];
  [defaultCenter addObserver:self selector:sel__webViewControllerNote_ name:@"SUWebViewControllerDidFinishLoad" object:0];
  [defaultCenter addObserver:self selector:sel__webViewControllerNote_ name:@"SUWebViewControllerDidFailLoad" object:0];
  v4.receiver = self;
  v4.super_class = SUScriptStorePageNativeObject;
  [(SUScriptViewControllerNativeObject *)&v4 setupNativeObject];
}

- (void)destroyNativeObject
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SUScriptStorePageNativeObject;
  [(SUScriptViewControllerNativeObject *)&v4 destroyNativeObject];
}

- (void)_webViewControllerNote:(id)note
{
  noteCopy = note;
  object = [noteCopy object];
  object2 = [(SUScriptNativeObject *)self object];
  v6 = [object isDescendantOfViewController:object2];

  if (v6)
  {
    scriptObject = [(SUScriptNativeObject *)self scriptObject];
    name = [noteCopy name];
    v9 = [(SUScriptStorePageNativeObject *)self _eventNameForNote:name];
    [scriptObject dispatchEvent:0 forName:v9];
  }
}

- (id)_eventNameForNote:(id)note
{
  noteCopy = note;
  if ([noteCopy isEqual:@"SUWebViewControllerDidStartLoad"])
  {
    v4 = @"didstartload";
  }

  else if ([noteCopy isEqual:@"SUWebViewControllerDidFinishLoad"])
  {
    v4 = @"didfinishload";
  }

  else if ([noteCopy isEqual:@"SUWebViewControllerDidFailLoad"])
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