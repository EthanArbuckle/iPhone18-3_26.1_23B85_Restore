@interface SUScriptViewControllerNativeObject
- (void)_loadPassbookPassWithURL:(id)l;
- (void)_reloadVisibility;
- (void)dealloc;
- (void)destroyNativeObject;
- (void)passbookLoaderDidFinish:(id)finish;
- (void)setScriptObject:(id)object;
- (void)setupNativeObject;
@end

@implementation SUScriptViewControllerNativeObject

- (void)dealloc
{
  [(SUUIPassbookLoader *)self->_passbookLoader setDelegate:0];

  v3.receiver = self;
  v3.super_class = SUScriptViewControllerNativeObject;
  [(SUScriptViewControllerNativeObject *)&v3 dealloc];
}

- (void)destroyNativeObject
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] setVisible:0];
  v3.receiver = self;
  v3.super_class = SUScriptViewControllerNativeObject;
  [(SUScriptNativeObject *)&v3 destroyNativeObject];
}

- (void)setScriptObject:(id)object
{
  v5.receiver = self;
  v5.super_class = SUScriptViewControllerNativeObject;
  [(SUScriptNativeObject *)&v5 setScriptObject:?];
  if (object)
  {
    [-[SUScriptViewControllerNativeObject mainThreadProxy](self "mainThreadProxy")];
  }
}

- (void)setupNativeObject
{
  object = [(SUScriptNativeObject *)self object];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(SUScriptViewControllerNativeObject *)self _reloadVisibility];
  v4.receiver = self;
  v4.super_class = SUScriptViewControllerNativeObject;
  [(SUScriptNativeObject *)&v4 setupNativeObject];
}

- (void)passbookLoaderDidFinish:(id)finish
{
  for (i = [(SUScriptNativeObject *)self scriptObject]; ; i = [(SUScriptObject *)v6 parentScriptObject])
  {
    v6 = i;
    if (![(SUScriptObject *)i parentScriptObject])
    {
      break;
    }
  }

  if (v6)
  {
    [(SUScriptObject *)v6 dispatchEvent:0 forName:@"didreappear"];
  }

  passbookLoader = self->_passbookLoader;
  if (passbookLoader == finish)
  {
    [(SUUIPassbookLoader *)passbookLoader setDelegate:0];

    self->_passbookLoader = 0;
  }
}

- (void)_loadPassbookPassWithURL:(id)l
{
  passbookLoader = self->_passbookLoader;
  if (!passbookLoader)
  {
    v6 = ISUIMobileStoreUIFramework();
    v7 = ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v6);
    v8 = ISUIMobileStoreUIFramework();
    v9 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuipassbooklo.isa v8))];
    self->_passbookLoader = v9;
    [(SUUIPassbookLoader *)v9 setDelegate:self];
    passbookLoader = self->_passbookLoader;
  }

  [(SUUIPassbookLoader *)passbookLoader loadPassWithURL:l];
}

- (void)_reloadVisibility
{
  object = [(SUScriptNativeObject *)self object];
  if ([object parentViewController])
  {
    v4 = 1;
  }

  else if ([object isViewLoaded])
  {
    v4 = [objc_msgSend(object "view")] != 0;
  }

  else
  {
    v4 = 0;
  }

  scriptObject = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)scriptObject setVisible:v4];
}

@end