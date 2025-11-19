@interface _TVSearchBar
+ (id)_listItemSelectedOverlayFillColor;
+ (id)_listItemTextColor;
- (BOOL)hasText;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)text;
- (_TVSearchBar)initWithFrame:(CGRect)a3;
- (_TVSearchBarDelegate)delegate;
- (id)keyCommands;
- (void)_submit:(id)a3;
- (void)deleteBackward;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)insertText:(id)a3;
- (void)layoutSubviews;
- (void)setText:(id)a3;
@end

@implementation _TVSearchBar

+ (id)_listItemTextColor
{
  if (_listItemTextColor___once != -1)
  {
    +[_TVSearchBar _listItemTextColor];
  }

  v2 = [MEMORY[0x277D759A0] mainScreen];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = &_listItemTextColor___darkThemeColor;
  if (v4 != 2)
  {
    v5 = &_listItemTextColor___lightThemeColor;
  }

  v6 = *v5;

  return v6;
}

+ (id)_listItemSelectedOverlayFillColor
{
  if (_listItemSelectedOverlayFillColor___once != -1)
  {
    +[_TVSearchBar _listItemSelectedOverlayFillColor];
  }

  v2 = [MEMORY[0x277D759A0] mainScreen];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = &_listItemSelectedOverlayFillColor___darkThemeColor;
  if (v4 != 2)
  {
    v5 = &_listItemSelectedOverlayFillColor___lightThemeColor;
  }

  v6 = *v5;

  return v6;
}

- (_TVSearchBar)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = _TVSearchBar;
  v3 = [(_TVSearchBar *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75BB8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textField = v3->_textField;
    v3->_textField = v5;

    [(UITextField *)v3->_textField setAdjustsFontForContentSizeCategory:1];
    [(UITextField *)v3->_textField setBorderStyle:3];
    v7 = v3->_textField;
    v8 = [objc_opt_class() _listItemSelectedOverlayFillColor];
    [(UITextField *)v7 setBackgroundColor:v8];

    [(_TVSearchBar *)v3 addSubview:v3->_textField];
    v9 = objc_alloc_init(MEMORY[0x277D750E8]);
    activityIndicatorView = v3->_activityIndicatorView;
    v3->_activityIndicatorView = v9;

    v11 = v3->_activityIndicatorView;
    v12 = [objc_opt_class() _listItemTextColor];
    [(UIActivityIndicatorView *)v11 setColor:v12];

    [(UIActivityIndicatorView *)v3->_activityIndicatorView setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v3->_activityIndicatorView stopAnimating];
    [(_TVSearchBar *)v3 addSubview:v3->_activityIndicatorView];
  }

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(_TVSearchBar *)self textField];
  [v5 setText:v4];
}

- (NSString)text
{
  v2 = [(_TVSearchBar *)self textField];
  v3 = [v2 text];

  return v3;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v12.receiver = self;
  v12.super_class = _TVSearchBar;
  v6 = a3;
  [(_TVSearchBar *)&v12 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];

  v8 = [v7 isDescendantOfView:self];
  v9 = [(_TVSearchBar *)self textField];
  v10 = v9;
  if (v8)
  {
    [v9 setBackgroundColor:0];

    [(_TVSearchBar *)self becomeFirstResponder];
  }

  else
  {
    v11 = [objc_opt_class() _listItemSelectedOverlayFillColor];
    [v10 setBackgroundColor:v11];

    [(_TVSearchBar *)self resignFirstResponder];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UIView *)self tv_padding:a3.width];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self tv_itemWidth];
  v14 = fmax(v13, width - (v8 + v12));
  if (v13 == 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v16 = [(_TVSearchBar *)self textField];
  [v16 sizeThatFits:{v15, 0.0}];
  v18 = v17;

  v19 = v12 + v8 + v15 + 8.0;
  v20 = v10 + v6 + v18 + 24.0;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)layoutSubviews
{
  [(_TVSearchBar *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIView *)self tv_padding];
  v8 = v7;
  v10 = v9;
  [(UIView *)self tv_itemWidth];
  v12 = fmax(v11, v4 - (v8 + v10));
  if (v11 == 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = [(_TVSearchBar *)self textField];
  [v14 sizeThatFits:{v13, 0.0}];
  v16 = v15;

  v17 = v13 + 8.0;
  v18 = v16 + 24.0;
  v19 = (v4 - v17) * 0.5;
  v20 = floorf(v19);
  v21 = (v6 - v18) * 0.5;
  v22 = floorf(v21);
  v23 = [(_TVSearchBar *)self textField];
  [v23 setFrame:{v20, v22, v17, v18}];

  v29.origin.x = v20;
  v29.origin.y = v22;
  v29.size.width = v17;
  v29.size.height = v18;
  MaxX = CGRectGetMaxX(v29);
  v30.origin.x = v20;
  v30.origin.y = v22;
  v30.size.width = v17;
  v30.size.height = v18;
  Height = CGRectGetHeight(v30);
  v31.origin.x = v20;
  v31.origin.y = v22;
  v31.size.width = v17;
  v31.size.height = v18;
  v26 = CGRectGetHeight(v31);
  v27 = [(_TVSearchBar *)self activityIndicatorView];
  [v27 setFrame:{MaxX, 0.0, Height, v26}];
}

- (id)keyCommands
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v9.receiver = self;
  v9.super_class = _TVSearchBar;
  v4 = [(_TVSearchBar *)&v9 keyCommands];
  v5 = [v3 initWithArray:v4];

  v6 = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0 action:sel__submit_];
  [v5 addObject:v6];

  v7 = [MEMORY[0x277D75650] keyCommandWithInput:@" " modifierFlags:0 action:sel__insertSpace_];
  [v5 addObject:v7];

  return v5;
}

- (BOOL)hasText
{
  v2 = [(_TVSearchBar *)self text];
  v3 = [v2 length];

  return v3 != 0;
}

- (void)insertText:(id)a3
{
  v9 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = [(_TVSearchBar *)self text];
  if ([v5 length])
  {
    [v4 appendString:v5];
  }

  [v4 appendString:v9];
  [(_TVSearchBar *)self setText:v4];
  v6 = [(_TVSearchBar *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_TVSearchBar *)self delegate];
    [v8 searchBarDidChangeText:self];
  }
}

- (void)deleteBackward
{
  if ([(_TVSearchBar *)self hasText])
  {
    v3 = [(_TVSearchBar *)self text];
    v7 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];

    [(_TVSearchBar *)self setText:v7];
    v4 = [(_TVSearchBar *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(_TVSearchBar *)self delegate];
      [v6 searchBarDidChangeText:self];
    }
  }
}

- (void)_submit:(id)a3
{
  v4 = [(_TVSearchBar *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_TVSearchBar *)self delegate];
    [v6 searchBarDidSubmit:self];
  }
}

- (_TVSearchBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end