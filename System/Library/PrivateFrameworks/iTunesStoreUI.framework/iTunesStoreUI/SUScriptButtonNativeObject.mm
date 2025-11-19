@interface SUScriptButtonNativeObject
- (BOOL)isEnabled;
- (NSString)styleString;
- (NSString)subtitle;
- (SUScriptButtonNativeObject)initWithSystemItemString:(id)a3;
- (UIEdgeInsets)imageInsets;
- (void)buttonAction:(id)a3;
- (void)configureFromScriptButtonNativeObject:(id)a3;
- (void)dealloc;
- (void)setEnabled:(BOOL)a3;
- (void)setStyleFromString:(id)a3;
- (void)setSubtitle:(id)a3;
@end

@implementation SUScriptButtonNativeObject

- (SUScriptButtonNativeObject)initWithSystemItemString:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptButtonNativeObject;
  v4 = [(SUScriptNativeObject *)&v6 init];
  if (v4)
  {
    v4->_systemItemString = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptButtonNativeObject;
  [(SUScriptButtonNativeObject *)&v3 dealloc];
}

- (void)buttonAction:(id)a3
{
  v3 = [(SUScriptNativeObject *)self scriptObject];
  if ([(SUScriptObject *)v3 shouldPerformDefaultAction])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v3, 0}];
    [(SUScriptObject *)v3 performActionWithArguments:v4];
  }
}

- (void)configureFromScriptButtonNativeObject:(id)a3
{
  -[SUScriptButtonNativeObject setEnabled:](self, "setEnabled:", [a3 isEnabled]);
  -[SUScriptButtonNativeObject setImage:](self, "setImage:", [a3 image]);
  [a3 imageInsets];
  [(SUScriptButtonNativeObject *)self setImageInsets:?];
  -[SUScriptButtonNativeObject setLoading:](self, "setLoading:", [a3 isLoading]);
  -[SUScriptButtonNativeObject setStyleFromString:](self, "setStyleFromString:", [a3 styleString]);
  -[SUScriptButtonNativeObject setSubtitle:](self, "setSubtitle:", [a3 subtitle]);
  -[SUScriptButtonNativeObject setTag:](self, "setTag:", [a3 tag]);
  v5 = [a3 title];

  [(SUScriptButtonNativeObject *)self setTitle:v5];
}

- (UIEdgeInsets)imageInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)isEnabled
{
  v2 = [(SUScriptNativeObject *)self object];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v2 isEnabled];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SUScriptNativeObject *)self object];
  if (objc_opt_respondsToSelector())
  {

    [v4 setEnabled:v3];
  }
}

- (void)setStyleFromString:(id)a3
{
  styleString = self->_styleString;
  if (styleString != a3)
  {

    self->_styleString = a3;
  }
}

- (void)setSubtitle:(id)a3
{
  v5 = [(SUScriptNativeObject *)self object];
  if (objc_opt_respondsToSelector())
  {
    [v5 setSubtitle:a3];
  }

  subtitle = self->_subtitle;
  if (subtitle != a3)
  {

    self->_subtitle = a3;
  }
}

- (NSString)styleString
{
  if (self->_styleString)
  {
    return self->_styleString;
  }

  else
  {
    return @"plain";
  }
}

- (NSString)subtitle
{
  subtitle = self->_subtitle;
  v3 = [(SUScriptNativeObject *)self object];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return subtitle;
  }

  return [v3 subtitle];
}

@end