@interface SUScriptViewControllerNativeObject
- (void)_loadPassbookPassWithURL:(id)a3;
- (void)_reloadVisibility;
- (void)dealloc;
- (void)destroyNativeObject;
- (void)passbookLoaderDidFinish:(id)a3;
- (void)setScriptObject:(id)a3;
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

- (void)setScriptObject:(id)a3
{
  v5.receiver = self;
  v5.super_class = SUScriptViewControllerNativeObject;
  [(SUScriptNativeObject *)&v5 setScriptObject:?];
  if (a3)
  {
    [-[SUScriptViewControllerNativeObject mainThreadProxy](self "mainThreadProxy")];
  }
}

- (void)setupNativeObject
{
  v3 = [(SUScriptNativeObject *)self object];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(SUScriptViewControllerNativeObject *)self _reloadVisibility];
  v4.receiver = self;
  v4.super_class = SUScriptViewControllerNativeObject;
  [(SUScriptNativeObject *)&v4 setupNativeObject];
}

- (void)passbookLoaderDidFinish:(id)a3
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
  if (passbookLoader == a3)
  {
    [(SUUIPassbookLoader *)passbookLoader setDelegate:0];

    self->_passbookLoader = 0;
  }
}

- (void)_loadPassbookPassWithURL:(id)a3
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

  [(SUUIPassbookLoader *)passbookLoader loadPassWithURL:a3];
}

- (void)_reloadVisibility
{
  v3 = [(SUScriptNativeObject *)self object];
  if ([v3 parentViewController])
  {
    v4 = 1;
  }

  else if ([v3 isViewLoaded])
  {
    v4 = [objc_msgSend(v3 "view")] != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SUScriptNativeObject *)self scriptObject];

  [(SUScriptObject *)v5 setVisible:v4];
}

@end