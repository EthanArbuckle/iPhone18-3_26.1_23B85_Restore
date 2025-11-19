@interface SUScriptSegmentedControlNativeObject
- (void)_valueChanged:(id)a3;
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

- (void)_valueChanged:(id)a3
{
  v3 = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)v3 dispatchEvent:0 forName:@"valuechange"];
}

@end