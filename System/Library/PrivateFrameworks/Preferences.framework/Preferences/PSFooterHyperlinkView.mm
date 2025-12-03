@interface PSFooterHyperlinkView
- (BOOL)isValidLinkRange;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (PSFooterHyperlinkView)initWithSpecifier:(id)specifier;
- (SEL)action;
- (_NSRange)linkRange;
- (id)target;
- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)intent;
- (void)_linkify;
- (void)refreshContentsWithSpecifier:(id)specifier;
- (void)setAction:(SEL)action;
- (void)setLinkRange:(_NSRange)range;
- (void)setText:(id)text;
- (void)setURL:(id)l;
- (void)setupSubviewsAndContstraints;
@end

@implementation PSFooterHyperlinkView

- (PSFooterHyperlinkView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [(PSFooterHyperlinkView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PSFooterHyperlinkView *)v5 setupSubviewsAndContstraints];
    [(PSFooterHyperlinkView *)v6 refreshContentsWithSpecifier:specifierCopy];
  }

  return v6;
}

- (void)refreshContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [(PSFooterHyperlinkView *)self setText:0];
  [(PSFooterHyperlinkView *)self setURL:0];
  v4 = [specifierCopy propertyForKey:@"headerFooterHyperlinkButtonTitle"];
  if (v4)
  {
    [(PSFooterHyperlinkView *)self setText:v4];
  }

  else
  {
    v5 = [specifierCopy propertyForKey:@"footerText"];
    [(PSFooterHyperlinkView *)self setText:v5];
  }

  v6 = [specifierCopy propertyForKey:@"headerFooterHyperlinkButtonURL"];
  [(PSFooterHyperlinkView *)self setURL:v6];

  v7 = [specifierCopy propertyForKey:@"footerHyperlinkRange"];
  v8 = v7;
  if (v7)
  {
    v9 = NSRangeFromString(v7);
    [(PSFooterHyperlinkView *)self setLinkRange:v9.location, v9.length];
  }

  v10 = [specifierCopy propertyForKey:@"footerHyperlinkAction"];
  v11 = v10;
  if (v10)
  {
    [(PSFooterHyperlinkView *)self setAction:NSSelectorFromString(v10)];
    v12 = [specifierCopy propertyForKey:@"footerHyperlinkTarget"];
    nonretainedObjectValue = [v12 nonretainedObjectValue];
    [(PSFooterHyperlinkView *)self setTarget:nonretainedObjectValue];
  }

  [(PSFooterHyperlinkView *)self _linkify];
}

- (void)setupSubviewsAndContstraints
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(PSFooterHyperlinkView *)self setTextView:v3];

  textView = [(PSFooterHyperlinkView *)self textView];
  [textView setTranslatesAutoresizingMaskIntoConstraints:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  textView2 = [(PSFooterHyperlinkView *)self textView];
  [textView2 setBackgroundColor:clearColor];

  textView3 = [(PSFooterHyperlinkView *)self textView];
  [textView3 setShowsVerticalScrollIndicator:0];

  textView4 = [(PSFooterHyperlinkView *)self textView];
  [textView4 setEditable:0];

  textView5 = [(PSFooterHyperlinkView *)self textView];
  [textView5 setSelectable:1];

  textView6 = [(PSFooterHyperlinkView *)self textView];
  [textView6 setScrollEnabled:0];

  textView7 = [(PSFooterHyperlinkView *)self textView];
  textContainer = [textView7 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  v13 = *MEMORY[0x1E69DDCE0];
  v14 = *(MEMORY[0x1E69DDCE0] + 8);
  v15 = *(MEMORY[0x1E69DDCE0] + 16);
  v16 = *(MEMORY[0x1E69DDCE0] + 24);
  textView8 = [(PSFooterHyperlinkView *)self textView];
  [textView8 setTextContainerInset:{v13, v14, v15, v16}];

  textView9 = [(PSFooterHyperlinkView *)self textView];
  [textView9 _setInteractiveTextSelectionDisabled:1];

  textView10 = [(PSFooterHyperlinkView *)self textView];
  [textView10 setDelegate:self];

  contentView = [(PSFooterHyperlinkView *)self contentView];
  textView11 = [(PSFooterHyperlinkView *)self textView];
  [contentView addSubview:textView11];

  array = [MEMORY[0x1E695DF70] array];
  textView12 = [(PSFooterHyperlinkView *)self textView];
  leadingAnchor = [textView12 leadingAnchor];
  contentView2 = [(PSFooterHyperlinkView *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v27];

  textView13 = [(PSFooterHyperlinkView *)self textView];
  trailingAnchor = [textView13 trailingAnchor];
  contentView3 = [(PSFooterHyperlinkView *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v33];

  textView14 = [(PSFooterHyperlinkView *)self textView];
  topAnchor = [textView14 topAnchor];
  contentView4 = [(PSFooterHyperlinkView *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v39];

  textView15 = [(PSFooterHyperlinkView *)self textView];
  bottomAnchor = [textView15 bottomAnchor];
  contentView5 = [(PSFooterHyperlinkView *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v45];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, text);
    text = self->_text;
    textView = [(PSFooterHyperlinkView *)self textView];
    [textView setText:text];

    [(PSFooterHyperlinkView *)self linkRange];
    if (v7)
    {
      [(PSFooterHyperlinkView *)self _linkify];
    }

    [(PSFooterHyperlinkView *)self setNeedsUpdateConstraints];
  }
}

- (void)setURL:(id)l
{
  lCopy = l;
  if (([(NSURL *)self->_URL isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_URL, l);
    [(PSFooterHyperlinkView *)self setNeedsUpdateConstraints];
    [(PSFooterHyperlinkView *)self _linkify];
  }
}

- (void)setLinkRange:(_NSRange)range
{
  if (self->_linkRange.location != range.location || self->_linkRange.length != range.length)
  {
    self->_linkRange = range;
    text = [(PSFooterHyperlinkView *)self text];

    if (text)
    {

      [(PSFooterHyperlinkView *)self _linkify];
    }
  }
}

- (void)_linkify
{
  v45[1] = *MEMORY[0x1E69E9840];
  text = [(PSFooterHyperlinkView *)self text];
  if (text)
  {
    v4 = text;
    [(PSFooterHyperlinkView *)self linkRange];
    v6 = v5;

    if (v6)
    {
      v7 = +[PSListController appearance];
      altTextColor = [v7 altTextColor];
      if (altTextColor)
      {
        v9 = +[PSListController appearance];
        altTextColor2 = [v9 altTextColor];
      }

      else
      {
        altTextColor2 = PreferencesTableViewFooterColor();
      }

      v11 = +[PSListController appearance];
      footerHyperlinkColor = [v11 footerHyperlinkColor];
      if (footerHyperlinkColor)
      {
        v13 = +[PSListController appearance];
        footerHyperlinkColor2 = [v13 footerHyperlinkColor];
      }

      else
      {
        footerHyperlinkColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
      }

      text2 = [(PSFooterHyperlinkView *)self text];
      v16 = [text2 length];

      v17 = objc_alloc(MEMORY[0x1E696AD40]);
      text3 = [(PSFooterHyperlinkView *)self text];
      v19 = [v17 initWithString:text3];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
      v28 = [(PSFooterHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:altTextColor2];
      [v19 addAttribute:v27 value:v28 range:{0, v16}];

      if ([(PSFooterHyperlinkView *)self isValidLinkRange])
      {
        v29 = [(PSFooterHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:footerHyperlinkColor2];
        linkRange = [(PSFooterHyperlinkView *)self linkRange];
        [v19 addAttribute:v27 value:v29 range:{linkRange, v31}];

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
        linkRange2 = [(PSFooterHyperlinkView *)self linkRange];
        [v19 addAttribute:v32 value:v34 range:{linkRange2, v36}];

        v37 = *MEMORY[0x1E69DB758];
        linkRange3 = [(PSFooterHyperlinkView *)self linkRange];
        [v19 addAttribute:v37 value:MEMORY[0x1E695E110] range:{linkRange3, v39}];
      }

      textView = [(PSFooterHyperlinkView *)self textView];
      [textView setAttributedText:v19];

      if (footerHyperlinkColor2)
      {
        v44 = v27;
        v41 = [(PSFooterHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:footerHyperlinkColor2];
        v45[0] = v41;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
        textView2 = [(PSFooterHyperlinkView *)self textView];
        [textView2 setLinkTextAttributes:v42];
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

  linkRange = [(PSFooterHyperlinkView *)self linkRange];
  [(PSFooterHyperlinkView *)self linkRange];
  v6 = v5 + linkRange;
  text = [(PSFooterHyperlinkView *)self text];
  v3 = v6 <= [text length];

  return v3;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  v6 = [(PSFooterHyperlinkView *)self target:view];

  if (v6)
  {
    [(PSFooterHyperlinkView *)self action];
    target = [(PSFooterHyperlinkView *)self target];
    v8 = SFPerformSelector();
  }

  return v6 == 0;
}

- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)intent
{
  v4.receiver = self;
  v4.super_class = PSFooterHyperlinkView;
  [(PSFooterHyperlinkView *)&v4 _accessibilitySetInterfaceStyleIntent:intent];
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

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end