@interface SUScriptMediaLibraryNativeObject
- (void)_libraryChangedNotification:(id)a3;
- (void)destroyNativeObject;
- (void)setupNativeObject;
@end

@implementation SUScriptMediaLibraryNativeObject

- (void)destroyNativeObject
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = SUScriptMediaLibraryNativeObject;
  [(SUScriptNativeObject *)&v3 destroyNativeObject];
}

- (void)setupNativeObject
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [+[SUMediaLibraryAdamIDCache sharedCache](SUMediaLibraryAdamIDCache "sharedCache")];
  v3.receiver = self;
  v3.super_class = SUScriptMediaLibraryNativeObject;
  [(SUScriptNativeObject *)&v3 setupNativeObject];
}

- (void)_libraryChangedNotification:(id)a3
{
  v3 = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)v3 dispatchEvent:0 forName:@"contentschange"];
}

@end