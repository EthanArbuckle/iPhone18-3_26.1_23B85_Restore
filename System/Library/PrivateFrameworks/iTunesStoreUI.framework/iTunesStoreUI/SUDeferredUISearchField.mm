@interface SUDeferredUISearchField
- (CGRect)frame;
- (float)paddingLeft;
- (float)paddingTop;
- (id)font;
- (id)placeholder;
- (id)text;
- (int64_t)clearButtonMode;
- (void)_commitDeferredInterfaceUpdates;
- (void)_saveCurrentStateAsDeferred;
- (void)dealloc;
- (void)setClearButtonMode:(int64_t)mode;
- (void)setDeferringInterfaceUpdates:(BOOL)updates;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setPaddingTop:(float)top paddingLeft:(float)left;
- (void)setPlaceholder:(id)placeholder;
- (void)setText:(id)text;
@end

@implementation SUDeferredUISearchField

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUDeferredUISearchField;
  [(SUDeferredUISearchField *)&v3 dealloc];
}

- (void)setDeferringInterfaceUpdates:(BOOL)updates
{
  isDeferringInterfaceUpdates = self->_isDeferringInterfaceUpdates;
  if (isDeferringInterfaceUpdates != updates)
  {
    if (!isDeferringInterfaceUpdates)
    {
      [(SUDeferredUISearchField *)self _saveCurrentStateAsDeferred];
    }

    self->_isDeferringInterfaceUpdates = updates;
    if (!updates)
    {

      [(SUDeferredUISearchField *)self _commitDeferredInterfaceUpdates];
    }
  }
}

- (int64_t)clearButtonMode
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    return self->_deferredClearButtonMode;
  }

  v4.receiver = self;
  v4.super_class = SUDeferredUISearchField;
  return [(SUDeferredUISearchField *)&v4 clearButtonMode];
}

- (id)font
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    return self->_deferredFont;
  }

  v4.receiver = self;
  v4.super_class = SUDeferredUISearchField;
  return [(SUDeferredUISearchField *)&v4 font];
}

- (CGRect)frame
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    x = self->_deferredFrame.origin.x;
    y = self->_deferredFrame.origin.y;
    width = self->_deferredFrame.size.width;
    height = self->_deferredFrame.size.height;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUDeferredUISearchField;
    [(SUDeferredUISearchField *)&v7 frame];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (float)paddingLeft
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    return self->_deferredPaddingLeft;
  }

  v4.receiver = self;
  v4.super_class = SUDeferredUISearchField;
  [(SUDeferredUISearchField *)&v4 paddingLeft];
  return result;
}

- (float)paddingTop
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    return self->_deferredPaddingTop;
  }

  v4.receiver = self;
  v4.super_class = SUDeferredUISearchField;
  [(SUDeferredUISearchField *)&v4 paddingTop];
  return result;
}

- (id)placeholder
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    return self->_deferredPlaceholder;
  }

  v4.receiver = self;
  v4.super_class = SUDeferredUISearchField;
  return [(SUDeferredUISearchField *)&v4 placeholder];
}

- (void)setClearButtonMode:(int64_t)mode
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    self->_deferredClearButtonMode = mode;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUDeferredUISearchField;
    [(SUDeferredUISearchField *)&v5 setClearButtonMode:mode];
  }
}

- (void)setFont:(id)font
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    deferredFont = self->_deferredFont;
    if (deferredFont != font)
    {

      if (font)
      {
        fontCopy = font;
      }

      else
      {
        fontCopy = [MEMORY[0x1E695DFB0] null];
      }

      self->_deferredFont = fontCopy;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUDeferredUISearchField;
    [(SUDeferredUISearchField *)&v7 setFont:font];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    self->_deferredFrame.origin.x = x;
    self->_deferredFrame.origin.y = y;
    self->_deferredFrame.size.width = width;
    self->_deferredFrame.size.height = height;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUDeferredUISearchField;
    [(SUDeferredUISearchField *)&v8 setFrame:x, y, width, height];
  }
}

- (void)setPaddingTop:(float)top paddingLeft:(float)left
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    self->_deferredPaddingLeft = left;
    self->_deferredPaddingTop = top;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SUDeferredUISearchField;
    *&v7 = top;
    *&v8 = left;
    [(UISearchField *)&v9 setPaddingTop:v7 paddingLeft:v8];
  }
}

- (void)setPlaceholder:(id)placeholder
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    deferredPlaceholder = self->_deferredPlaceholder;
    if (deferredPlaceholder != placeholder)
    {

      if (placeholder)
      {
        null = [placeholder copy];
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      self->_deferredPlaceholder = null;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUDeferredUISearchField;
    [(SUDeferredUISearchField *)&v7 setPlaceholder:placeholder];
  }
}

- (void)setText:(id)text
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    deferredText = self->_deferredText;
    if (deferredText != text)
    {

      if (text)
      {
        null = [text copy];
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      self->_deferredText = null;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUDeferredUISearchField;
    [(SUDeferredUISearchField *)&v7 setText:text];
  }
}

- (id)text
{
  if ([(SUDeferredUISearchField *)self isDeferringInterfaceUpdates])
  {
    return self->_deferredText;
  }

  v4.receiver = self;
  v4.super_class = SUDeferredUISearchField;
  return [(SUDeferredUISearchField *)&v4 text];
}

- (void)_commitDeferredInterfaceUpdates
{
  [(SUDeferredUISearchField *)self setClearButtonMode:self->_deferredClearButtonMode];
  deferredFont = self->_deferredFont;
  if (deferredFont == [MEMORY[0x1E695DFB0] null])
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_deferredFont;
  }

  [(SUDeferredUISearchField *)self setFont:v4];
  [(SUDeferredUISearchField *)self setFrame:self->_deferredFrame.origin.x, self->_deferredFrame.origin.y, self->_deferredFrame.size.width, self->_deferredFrame.size.height];
  *&v5 = self->_deferredPaddingTop;
  *&v6 = self->_deferredPaddingLeft;
  [(SUDeferredUISearchField *)self setPaddingTop:v5 paddingLeft:v6];
  deferredPlaceholder = self->_deferredPlaceholder;
  if (deferredPlaceholder == [MEMORY[0x1E695DFB0] null])
  {
    v8 = 0;
  }

  else
  {
    v8 = self->_deferredPlaceholder;
  }

  [(SUDeferredUISearchField *)self setPlaceholder:v8];
  deferredText = self->_deferredText;
  if (deferredText == [MEMORY[0x1E695DFB0] null])
  {
    v10 = 0;
  }

  else
  {
    v10 = self->_deferredText;
  }

  [(SUDeferredUISearchField *)self setText:v10];
}

- (void)_saveCurrentStateAsDeferred
{
  self->_deferredClearButtonMode = [(SUDeferredUISearchField *)self clearButtonMode];
  [(SUDeferredUISearchField *)self frame];
  self->_deferredFrame.origin.x = v3;
  self->_deferredFrame.origin.y = v4;
  self->_deferredFrame.size.width = v5;
  self->_deferredFrame.size.height = v6;
  [(SUDeferredUISearchField *)self paddingLeft];
  self->_deferredPaddingLeft = v7;
  [(SUDeferredUISearchField *)self paddingTop];
  self->_deferredPaddingTop = v8;

  self->_deferredFont = [(SUDeferredUISearchField *)self font];
  self->_deferredPlaceholder = [(SUDeferredUISearchField *)self placeholder];

  self->_deferredText = [(SUDeferredUISearchField *)self text];
}

@end