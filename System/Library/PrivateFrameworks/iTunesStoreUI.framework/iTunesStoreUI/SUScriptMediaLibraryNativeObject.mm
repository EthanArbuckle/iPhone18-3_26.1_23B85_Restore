@interface SUScriptMediaLibraryNativeObject
- (void)_libraryChangedNotification:(id)notification;
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

- (void)_libraryChangedNotification:(id)notification
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject dispatchEvent:0 forName:@"contentschange"];
}

@end