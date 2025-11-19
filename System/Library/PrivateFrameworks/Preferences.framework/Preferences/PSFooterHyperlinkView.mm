@interface PSFooterHyperlinkView
- (BOOL)isValidLinkRange;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
- (PSFooterHyperlinkView)initWithSpecifier:(id)a3;
- (SEL)action;
- (_NSRange)linkRange;
- (id)target;
- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)a3;
- (void)_linkify;
- (void)refreshContentsWithSpecifier:(id)a3;
- (void)setAction:(SEL)a3;
- (void)setLinkRange:(_NSRange)a3;
- (void)setText:(id)a3;
- (void)setURL:(id)a3;
- (void)setupSubviewsAndContstraints;
@end

@implementation PSFooterHyperlinkView

- (PSFooterHyperlinkView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PSFooterHyperlinkView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PSFooterHyperlinkView *)v5 setupSubviewsAndContstraints];
    [(PSFooterHyperlinkView *)v6 refreshContentsWithSpecifier:v4];
  }

  return v6;
}

- (void)refreshContentsWithSpecifier:(id)a3
{
  v14 = a3;
  [(PSFooterHyperlinkView *)self setText:0];
  [(PSFooterHyperlinkView *)self setURL:0];
  v4 = [v14 propertyForKey:@"headerFooterHyperlinkButtonTitle"];
  if (v4)
  {
    [(PSFooterHyperlinkView *)self setText:v4];
  }

  else
  {
    v5 = [v14 propertyForKey:@"footerText"];
    [(PSFooterHyperlinkView *)self setText:v5];
  }

  v6 = [v14 propertyForKey:@"headerFooterHyperlinkButtonURL"];
  [(PSFooterHyperlinkView *)self setURL:v6];

  v7 = [v14 propertyForKey:@"footerHyperlinkRange"];
  v8 = v7;
  if (v7)
  {
    v9 = NSRangeFromString(v7);
    [(PSFooterHyperlinkView *)self setLinkRange:v9.location, v9.length];
  }

  v10 = [v14 propertyForKey:@"footerHyperlinkAction"];
  v11 = v10;
  if (v10)
  {
    [(PSFooterHyperlinkView *)self setAction:NSSelectorFromString(v10)];
    v12 = [v14 propertyForKey:@"footerHyperlinkTarget"];
    v13 = [v12 nonretainedObjectValue];
    [(PSFooterHyperlinkView *)self setTarget:v13];
  }

  [(PSFooterHyperlinkView *)self _linkify];
}

- (void)setupSubviewsAndContstraints
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(PSFooterHyperlinkView *)self setTextView:v3];

  v4 = [(PSFooterHyperlinkView *)self textView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [MEMORY[0x1E69DC888] clearColor];
  v6 = [(PSFooterHyperlinkView *)self textView];
  [v6 setBackgroundColor:v5];

  v7 = [(PSFooterHyperlinkView *)self textView];
  [v7 setShowsVerticalScrollIndicator:0];

  v8 = [(PSFooterHyperlinkView *)self textView];
  [v8 setEditable:0];

  v9 = [(PSFooterHyperlinkView *)self textView];
  [v9 setSelectable:1];

  v10 = [(PSFooterHyperlinkView *)self textView];
  [v10 setScrollEnabled:0];

  v11 = [(PSFooterHyperlinkView *)self textView];
  v12 = [v11 textContainer];
  [v12 setLineFragmentPadding:0.0];

  v13 = *MEMORY[0x1E69DDCE0];
  v14 = *(MEMORY[0x1E69DDCE0] + 8);
  v15 = *(MEMORY[0x1E69DDCE0] + 16);
  v16 = *(MEMORY[0x1E69DDCE0] + 24);
  v17 = [(PSFooterHyperlinkView *)self textView];
  [v17 setTextContainerInset:{v13, v14, v15, v16}];

  v18 = [(PSFooterHyperlinkView *)self textView];
  [v18 _setInteractiveTextSelectionDisabled:1];

  v19 = [(PSFooterHyperlinkView *)self textView];
  [v19 setDelegate:self];

  v20 = [(PSFooterHyperlinkView *)self contentView];
  v21 = [(PSFooterHyperlinkView *)self textView];
  [v20 addSubview:v21];

  v46 = [MEMORY[0x1E695DF70] array];
  v22 = [(PSFooterHyperlinkView *)self textView];
  v23 = [v22 leadingAnchor];
  v24 = [(PSFooterHyperlinkView *)self contentView];
  v25 = [v24 layoutMarginsGuide];
  v26 = [v25 leadingAnchor];
  v27 = [v23 constraintEqualToAnchor:v26];
  [v46 addObject:v27];

  v28 = [(PSFooterHyperlinkView *)self textView];
  v29 = [v28 trailingAnchor];
  v30 = [(PSFooterHyperlinkView *)self contentView];
  v31 = [v30 layoutMarginsGuide];
  v32 = [v31 trailingAnchor];
  v33 = [v29 constraintEqualToAnchor:v32];
  [v46 addObject:v33];

  v34 = [(PSFooterHyperlinkView *)self textView];
  v35 = [v34 topAnchor];
  v36 = [(PSFooterHyperlinkView *)self contentView];
  v37 = [v36 layoutMarginsGuide];
  v38 = [v37 topAnchor];
  v39 = [v35 constraintEqualToAnchor:v38];
  [v46 addObject:v39];

  v40 = [(PSFooterHyperlinkView *)self textView];
  v41 = [v40 bottomAnchor];
  v42 = [(PSFooterHyperlinkView *)self contentView];
  v43 = [v42 layoutMarginsGuide];
  v44 = [v43 bottomAnchor];
  v45 = [v41 constraintEqualToAnchor:v44];
  [v46 addObject:v45];

  [MEMORY[0x1E696ACD8] activateConstraints:v46];
}

- (void)setText:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, a3);
    text = self->_text;
    v6 = [(PSFooterHyperlinkView *)self textView];
    [v6 setText:text];

    [(PSFooterHyperlinkView *)self linkRange];
    if (v7)
    {
      [(PSFooterHyperlinkView *)self _linkify];
    }

    [(PSFooterHyperlinkView *)self setNeedsUpdateConstraints];
  }
}

- (void)setURL:(id)a3
{
  v5 = a3;
  if (([(NSURL *)self->_URL isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_URL, a3);
    [(PSFooterHyperlinkView *)self setNeedsUpdateConstraints];
    [(PSFooterHyperlinkView *)self _linkify];
  }
}

- (void)setLinkRange:(_NSRange)a3
{
  if (self->_linkRange.location != a3.location || self->_linkRange.length != a3.length)
  {
    self->_linkRange = a3;
    v5 = [(PSFooterHyperlinkView *)self text];

    if (v5)
    {

      [(PSFooterHyperlinkView *)self _linkify];
    }
  }
}

- (void)_linkify
{
  v45[1] = *MEMORY[0x1E69E9840];
  v3 = [(PSFooterHyperlinkView *)self text];
  if (v3)
  {
    v4 = v3;
    [(PSFooterHyperlinkView *)self linkRange];
    v6 = v5;

    if (v6)
    {
      v7 = +[PSListController appearance];
      v8 = [v7 altTextColor];
      if (v8)
      {
        v9 = +[PSListController appearance];
        v10 = [v9 altTextColor];
      }

      else
      {
        v10 = PreferencesTableViewFooterColor();
      }

      v11 = +[PSListController appearance];
      v12 = [v11 footerHyperlinkColor];
      if (v12)
      {
        v13 = +[PSListController appearance];
        v14 = [v13 footerHyperlinkColor];
      }

      else
      {
        v14 = [MEMORY[0x1E69DC888] systemBlueColor];
      }

      v15 = [(PSFooterHyperlinkView *)self text];
      v16 = [v15 length];

      v17 = objc_alloc(MEMORY[0x1E696AD40]);
      v18 = [(PSFooterHyperlinkView *)self text];
      v19 = [v17 initWithString:v18];

      v20 = [MEMORY[0x1E69DC668] sharedApplication];
      v21 = [v20 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v21);

      if (IsAccessibilityCategory)
      {
        v23 = objc_opt_new();
        LODWORD(v24) = 1055286886;
        [v23 setHyphenationFactor:v24];
        [v19 addAttribute:*MEMORY[0x1E69DB688] value:v23 range:{0, v16}];
      }

      v25 = *MEMORY[0x1E69DB648];
      v26 = PreferencesTableViewFooterFont();
      [v19 addAttribute:v25 value:v26 range:{0, v16}];

      v27 = *MEMORY[0x1E69DB650];
      v28 = [(PSFooterHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:v10];
      [v19 addAttribute:v27 value:v28 range:{0, v16}];

      if ([(PSFooterHyperlinkView *)self isValidLinkRange])
      {
        v29 = [(PSFooterHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:v14];
        v30 = [(PSFooterHyperlinkView *)self linkRange];
        [v19 addAttribute:v27 value:v29 range:{v30, v31}];

        v32 = *MEMORY[0x1E69DB670];
        v33 = [(PSFooterHyperlinkView *)self URL];
        if (v33)
        {
          [(PSFooterHyperlinkView *)self URL];
        }

        else
        {
          [MEMORY[0x1E695DFF8] URLWithString:&stru_1EFE45030];
        }
        v34 = ;
        v35 = [(PSFooterHyperlinkView *)self linkRange];
        [v19 addAttribute:v32 value:v34 range:{v35, v36}];

        v37 = *MEMORY[0x1E69DB758];
        v38 = [(PSFooterHyperlinkView *)self linkRange];
        [v19 addAttribute:v37 value:MEMORY[0x1E695E110] range:{v38, v39}];
      }

      v40 = [(PSFooterHyperlinkView *)self textView];
      [v40 setAttributedText:v19];

      if (v14)
      {
        v44 = v27;
        v41 = [(PSFooterHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:v14];
        v45[0] = v41;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
        v43 = [(PSFooterHyperlinkView *)self textView];
        [v43 setLinkTextAttributes:v42];
      }
    }
  }
}

- (BOOL)isValidLinkRange
{
  if ([(PSFooterHyperlinkView *)self linkRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = [(PSFooterHyperlinkView *)self linkRange];
  [(PSFooterHyperlinkView *)self linkRange];
  v6 = v5 + v4;
  v7 = [(PSFooterHyperlinkView *)self text];
  v3 = v6 <= [v7 length];

  return v3;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5
{
  v6 = [(PSFooterHyperlinkView *)self target:a3];

  if (v6)
  {
    [(PSFooterHyperlinkView *)self action];
    v7 = [(PSFooterHyperlinkView *)self target];
    v8 = SFPerformSelector();
  }

  return v6 == 0;
}

- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = PSFooterHyperlinkView;
  [(PSFooterHyperlinkView *)&v4 _accessibilitySetInterfaceStyleIntent:a3];
  [(PSFooterHyperlinkView *)self _linkify];
}

- (_NSRange)linkRange
{
  p_linkRange = &self->_linkRange;
  location = self->_linkRange.location;
  length = p_linkRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

@end