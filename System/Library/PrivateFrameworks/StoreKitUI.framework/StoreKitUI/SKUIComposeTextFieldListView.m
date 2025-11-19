@interface SKUIComposeTextFieldListView
- (SKUIComposeTextFieldListView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (SKUIComposeTextFieldListViewDelegate)delegate;
- (UIResponder)initialFirstResponder;
- (double)height;
- (id)textForFieldAtIndex:(unint64_t)a3;
- (void)_updateValidity;
- (void)composeTextFieldValidityChanged:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadData;
@end

@implementation SKUIComposeTextFieldListView

- (SKUIComposeTextFieldListView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = SKUIComposeTextFieldListView;
  result = [(SKUIComposeTextFieldListView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_style = a4;
  }

  return result;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_fields makeObjectsPerformSelector:sel_setDelegate_ withObject:0];
  v3.receiver = self;
  v3.super_class = SKUIComposeTextFieldListView;
  [(SKUIComposeTextFieldListView *)&v3 dealloc];
}

- (double)height
{
  if (![(NSMutableArray *)self->_fields count])
  {
    return 0.0;
  }

  v3 = [(NSMutableArray *)self->_fields lastObject];
  [v3 frame];
  MaxY = CGRectGetMaxY(v6);

  return MaxY;
}

- (UIResponder)initialFirstResponder
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_fields;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 text];
        v8 = [v7 length];

        if (!v8)
        {
          v3 = [v6 textField];
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)layoutSubviews
{
  [(SKUIComposeTextFieldListView *)self bounds];
  [(SKUIComposeTextFieldListView *)self safeAreaInsets];
  v3 = [(NSMutableArray *)self->_fields count];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained numberOfColumnsInTextFieldList:self];

  if (v3 >= 1)
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = [(NSMutableArray *)self->_fields objectAtIndex:v6];
      [v8 frame];
      if (v6 % v5 >= v5 - 1)
      {
        v10 = v9 + v7;
        v7 = v10;
      }

      [v8 setFrame:?];

      ++v6;
    }

    while (v3 != v6);
  }
}

- (void)reloadData
{
  fields = self->_fields;
  if (fields)
  {
    [(NSMutableArray *)fields makeObjectsPerformSelector:sel_setDelegate_ withObject:0];
    [(NSMutableArray *)self->_fields makeObjectsPerformSelector:sel_removeFromSuperview withObject:0];
    [(NSMutableArray *)self->_fields removeAllObjects];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_fields;
    self->_fields = v4;
  }

  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v7;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained numberOfFieldsInTextFieldList:self];

  v11 = objc_loadWeakRetained(&self->_delegate);
  v12 = [v11 numberOfColumnsInTextFieldList:self];

  if (v10 >= 1)
  {
    v13 = 0;
    v14 = 1.0 / v8;
    do
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      v16 = [v15 textFieldList:self configurationForFieldAtIndex:v13];

      if (v13 % v12 >= v12 - 1)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v14;
      }

      if (v13 / v12 == v10 / v12 - 1)
      {
        v18 = v14;
      }

      else
      {
        v18 = 0.0;
      }

      [v16 setBorderInsets:{v14, 0.0, v18, v17}];
      v19 = [[SKUIComposeTextField alloc] initWithConfiguration:v16 style:self->_style];
      [(SKUIComposeTextField *)v19 setHoverStyle:0];
      [(SKUIComposeTextField *)v19 setDelegate:self];
      [(NSMutableArray *)self->_fields addObject:v19];
      [(SKUIComposeTextFieldListView *)self addSubview:v19];

      ++v13;
    }

    while (v10 != v13);
  }

  [(SKUIComposeTextFieldListView *)self _updateValidity];
  [(SKUIComposeTextFieldListView *)self layoutSubviews];
  [(SKUIComposeTextFieldListView *)self frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(SKUIComposeTextFieldListView *)self height];
  [(SKUIComposeTextFieldListView *)self setFrame:v21, v23, v25, v26];

  [(SKUIComposeTextFieldListView *)self setNeedsLayout];
}

- (id)textForFieldAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_fields count]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_fields objectAtIndex:a3];
    v6 = [v5 text];
  }

  return v6;
}

- (void)composeTextFieldValidityChanged:(id)a3
{
  isValid = self->_isValid;
  [(SKUIComposeTextFieldListView *)self _updateValidity];
  if (self->_isValid != isValid)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 textFieldListValidityDidChange:self];
    }
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 textFieldListValuesDidChange:self];
  }
}

- (void)_updateValidity
{
  v3 = [(NSMutableArray *)self->_fields count];
  if (v3)
  {
    v4 = v3;
    v5 = 1;
    do
    {
      v6 = [(NSMutableArray *)self->_fields objectAtIndex:v5 - 1];
      v7 = [v6 configuration];
      if ([v7 isRequired])
      {
        v8 = [v6 isValid];
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        break;
      }
    }

    while (v5++ < v4);
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  self->_isValid = v8;
}

- (SKUIComposeTextFieldListViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end