@interface SUScriptMediaPickerNativeObject
- (void)destroyNativeObject;
- (void)mediaPicker:(id)picker didPickMediaItems:(id)items;
- (void)mediaPickerDidCancel:(id)cancel;
- (void)setupNativeObject;
@end

@implementation SUScriptMediaPickerNativeObject

- (void)destroyNativeObject
{
  [-[SUScriptNativeObject object](self "object")];
  v3.receiver = self;
  v3.super_class = SUScriptMediaPickerNativeObject;
  [(SUScriptViewControllerNativeObject *)&v3 destroyNativeObject];
}

- (void)setupNativeObject
{
  [-[SUScriptNativeObject object](self "object")];
  v3.receiver = self;
  v3.super_class = SUScriptMediaPickerNativeObject;
  [(SUScriptViewControllerNativeObject *)&v3 setupNativeObject];
}

- (void)mediaPicker:(id)picker didPickMediaItems:(id)items
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];
  v7 = objc_alloc_init(SUScriptMediaItemCollection);
  [(SUScriptObject *)v7 setNativeObject:[SUScriptNativeObject objectWithNativeObject:items]];
  v6 = [[SUScriptMediaPickerEvent alloc] initWithCollection:v7];
  [(SUScriptObject *)scriptObject checkInScriptObject:v6];
  [(SUScriptObject *)scriptObject dispatchEvent:v6 forName:@"pick"];
}

- (void)mediaPickerDidCancel:(id)cancel
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];
  v4 = objc_alloc_init(SUScriptMediaPickerEvent);
  [(SUScriptObject *)scriptObject checkInScriptObject:v4];
  [(SUScriptObject *)scriptObject dispatchEvent:v4 forName:@"pick"];
}

@end