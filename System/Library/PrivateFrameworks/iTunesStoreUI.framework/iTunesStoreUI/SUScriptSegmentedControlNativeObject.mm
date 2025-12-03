@interface SUScriptSegmentedControlNativeObject
- (void)_valueChanged:(id)changed;
- (void)destroyNativeObject;
- (void)setupNativeObject;
@end

@implementation SUScriptSegmentedControlNativeObject

- (void)destroyNativeObject
{
  [-[SUScriptNativeObject object](self "object")];
  v3.receiver = self;
  v3.super_class = SUScriptSegmentedControlNativeObject;
  [(SUScriptNativeObject *)&v3 destroyNativeObject];
}

- (void)setupNativeObject
{
  [-[SUScriptNativeObject object](self "object")];
  v3.receiver = self;
  v3.super_class = SUScriptSegmentedControlNativeObject;
  [(SUScriptNativeObject *)&v3 setupNativeObject];
}

- (void)_valueChanged:(id)changed
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"valuechange"];
}

@end