@interface SUScriptButtonNativeObject
- (BOOL)isEnabled;
- (NSString)styleString;
- (NSString)subtitle;
- (SUScriptButtonNativeObject)initWithSystemItemString:(id)string;
- (UIEdgeInsets)imageInsets;
- (void)buttonAction:(id)action;
- (void)configureFromScriptButtonNativeObject:(id)object;
- (void)dealloc;
- (void)setEnabled:(BOOL)enabled;
- (void)setStyleFromString:(id)string;
- (void)setSubtitle:(id)subtitle;
@end

@implementation SUScriptButtonNativeObject

- (SUScriptButtonNativeObject)initWithSystemItemString:(id)string
{
  v6.receiver = self;
  v6.super_class = SUScriptButtonNativeObject;
  v4 = [(SUScriptNativeObject *)&v6 init];
  if (v4)
  {
    v4->_systemItemString = [string copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptButtonNativeObject;
  [(SUScriptButtonNativeObject *)&v3 dealloc];
}

- (void)buttonAction:(id)action
{
  scriptObject = [(SUScriptNativeObject *)self scriptObject];
  if ([(SUScriptObject *)scriptObject shouldPerformDefaultAction])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{scriptObject, 0}];
    [(SUScriptObject *)scriptObject performActionWithArguments:v4];
  }
}

- (void)configureFromScriptButtonNativeObject:(id)object
{
  -[SUScriptButtonNativeObject setEnabled:](self, "setEnabled:", [object isEnabled]);
  -[SUScriptButtonNativeObject setImage:](self, "setImage:", [object image]);
  [object imageInsets];
  [(SUScriptButtonNativeObject *)self setImageInsets:?];
  -[SUScriptButtonNativeObject setLoading:](self, "setLoading:", [object isLoading]);
  -[SUScriptButtonNativeObject setStyleFromString:](self, "setStyleFromString:", [object styleString]);
  -[SUScriptButtonNativeObject setSubtitle:](self, "setSubtitle:", [object subtitle]);
  -[SUScriptButtonNativeObject setTag:](self, "setTag:", [object tag]);
  title = [object title];

  [(SUScriptButtonNativeObject *)self setTitle:title];
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
  object = [(SUScriptNativeObject *)self object];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [object isEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  object = [(SUScriptNativeObject *)self object];
  if (objc_opt_respondsToSelector())
  {

    [object setEnabled:enabledCopy];
  }
}

- (void)setStyleFromString:(id)string
{
  styleString = self->_styleString;
  if (styleString != string)
  {

    self->_styleString = string;
  }
}

- (void)setSubtitle:(id)subtitle
{
  object = [(SUScriptNativeObject *)self object];
  if (objc_opt_respondsToSelector())
  {
    [object setSubtitle:subtitle];
  }

  subtitle = self->_subtitle;
  if (subtitle != subtitle)
  {

    self->_subtitle = subtitle;
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
  object = [(SUScriptNativeObject *)self object];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return subtitle;
  }

  return [object subtitle];
}

@end