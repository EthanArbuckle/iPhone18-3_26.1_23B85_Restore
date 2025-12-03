@interface _TVSearchBar
+ (id)_listItemSelectedOverlayFillColor;
+ (id)_listItemTextColor;
- (BOOL)hasText;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)text;
- (_TVSearchBar)initWithFrame:(CGRect)frame;
- (_TVSearchBarDelegate)delegate;
- (id)keyCommands;
- (void)_submit:(id)_submit;
- (void)deleteBackward;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)insertText:(id)text;
- (void)layoutSubviews;
- (void)setText:(id)text;
@end

@implementation _TVSearchBar

+ (id)_listItemTextColor
{
  if (_listItemTextColor___once != -1)
  {
    +[_TVSearchBar _listItemTextColor];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v5 = &_listItemTextColor___darkThemeColor;
  if (userInterfaceStyle != 2)
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

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v5 = &_listItemSelectedOverlayFillColor___darkThemeColor;
  if (userInterfaceStyle != 2)
  {
    v5 = &_listItemSelectedOverlayFillColor___lightThemeColor;
  }

  v6 = *v5;

  return v6;
}

- (_TVSearchBar)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = _TVSearchBar;
  v3 = [(_TVSearchBar *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75BB8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textField = v3->_textField;
    v3->_textField = v5;

    [(UITextField *)v3->_textField setAdjustsFontForContentSizeCategory:1];
    [(UITextField *)v3->_textField setBorderStyle:3];
    v7 = v3->_textField;
    _listItemSelectedOverlayFillColor = [objc_opt_class() _listItemSelectedOverlayFillColor];
    [(UITextField *)v7 setBackgroundColor:_listItemSelectedOverlayFillColor];

    [(_TVSearchBar *)v3 addSubview:v3->_textField];
    v9 = objc_alloc_init(MEMORY[0x277D750E8]);
    activityIndicatorView = v3->_activityIndicatorView;
    v3->_activityIndicatorView = v9;

    v11 = v3->_activityIndicatorView;
    _listItemTextColor = [objc_opt_class() _listItemTextColor];
    [(UIActivityIndicatorView *)v11 setColor:_listItemTextColor];

    [(UIActivityIndicatorView *)v3->_activityIndicatorView setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v3->_activityIndicatorView stopAnimating];
    [(_TVSearchBar *)v3 addSubview:v3->_activityIndicatorView];
  }

  return v3;
}

- (void)setText:(id)text
{
  textCopy = text;
  textField = [(_TVSearchBar *)self textField];
  [textField setText:textCopy];
}

- (NSString)text
{
  textField = [(_TVSearchBar *)self textField];
  text = [textField text];

  return text;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v12.receiver = self;
  v12.super_class = _TVSearchBar;
  contextCopy = context;
  [(_TVSearchBar *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedView = [contextCopy nextFocusedView];

  v8 = [nextFocusedView isDescendantOfView:self];
  textField = [(_TVSearchBar *)self textField];
  v10 = textField;
  if (v8)
  {
    [textField setBackgroundColor:0];

    [(_TVSearchBar *)self becomeFirstResponder];
  }

  else
  {
    _listItemSelectedOverlayFillColor = [objc_opt_class() _listItemSelectedOverlayFillColor];
    [v10 setBackgroundColor:_listItemSelectedOverlayFillColor];

    [(_TVSearchBar *)self resignFirstResponder];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIView *)self tv_padding:fits.width];
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

  textField = [(_TVSearchBar *)self textField];
  [textField sizeThatFits:{v15, 0.0}];
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

  textField = [(_TVSearchBar *)self textField];
  [textField sizeThatFits:{v13, 0.0}];
  v16 = v15;

  v17 = v13 + 8.0;
  v18 = v16 + 24.0;
  v19 = (v4 - v17) * 0.5;
  v20 = floorf(v19);
  v21 = (v6 - v18) * 0.5;
  v22 = floorf(v21);
  textField2 = [(_TVSearchBar *)self textField];
  [textField2 setFrame:{v20, v22, v17, v18}];

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
  activityIndicatorView = [(_TVSearchBar *)self activityIndicatorView];
  [activityIndicatorView setFrame:{MaxX, 0.0, Height, v26}];
}

- (id)keyCommands
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v9.receiver = self;
  v9.super_class = _TVSearchBar;
  keyCommands = [(_TVSearchBar *)&v9 keyCommands];
  v5 = [v3 initWithArray:keyCommands];

  v6 = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0 action:sel__submit_];
  [v5 addObject:v6];

  v7 = [MEMORY[0x277D75650] keyCommandWithInput:@" " modifierFlags:0 action:sel__insertSpace_];
  [v5 addObject:v7];

  return v5;
}

- (BOOL)hasText
{
  text = [(_TVSearchBar *)self text];
  v3 = [text length];

  return v3 != 0;
}

- (void)insertText:(id)text
{
  textCopy = text;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  text = [(_TVSearchBar *)self text];
  if ([text length])
  {
    [v4 appendString:text];
  }

  [v4 appendString:textCopy];
  [(_TVSearchBar *)self setText:v4];
  delegate = [(_TVSearchBar *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(_TVSearchBar *)self delegate];
    [delegate2 searchBarDidChangeText:self];
  }
}

- (void)deleteBackward
{
  if ([(_TVSearchBar *)self hasText])
  {
    text = [(_TVSearchBar *)self text];
    v7 = [text substringToIndex:{objc_msgSend(text, "length") - 1}];

    [(_TVSearchBar *)self setText:v7];
    delegate = [(_TVSearchBar *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(_TVSearchBar *)self delegate];
      [delegate2 searchBarDidChangeText:self];
    }
  }
}

- (void)_submit:(id)_submit
{
  delegate = [(_TVSearchBar *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_TVSearchBar *)self delegate];
    [delegate2 searchBarDidSubmit:self];
  }
}

- (_TVSearchBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end