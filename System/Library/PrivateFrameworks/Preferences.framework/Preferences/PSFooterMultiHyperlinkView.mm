@interface PSFooterMultiHyperlinkView
- (BOOL)isValidLinkRange:(_NSRange)a3;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (PSFooterMultiHyperlinkView)initWithSpecifier:(id)a3;
- (SEL)action;
- (_NSRange)linkRange;
- (id)target;
- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)a3;
- (void)_addLinkSpec:(id)a3 toAttrStr:(id)a4;
- (void)_linkify;
- (void)refreshContentsWithSpecifier:(id)a3;
- (void)setAction:(SEL)a3;
- (void)setLinkRange:(_NSRange)a3;
- (void)setLinkSpecs:(id)a3;
- (void)setText:(id)a3;
- (void)setURL:(id)a3;
- (void)setupSubviewsAndContstraints;
@end

@implementation PSFooterMultiHyperlinkView

- (PSFooterMultiHyperlinkView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PSFooterMultiHyperlinkView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PSFooterMultiHyperlinkView *)v5 refreshContentsWithSpecifier:v4];
  }

  return v6;
}

- (void)refreshContentsWithSpecifier:(id)a3
{
  v15 = a3;
  [(PSFooterMultiHyperlinkView *)self setupSubviewsAndContstraints];
  v4 = [v15 propertyForKey:@"headerFooterHyperlinkButtonTitle"];
  if (v4)
  {
    [(PSFooterMultiHyperlinkView *)self setText:v4];
  }

  else
  {
    v5 = [v15 propertyForKey:@"footerText"];
    [(PSFooterMultiHyperlinkView *)self setText:v5];
  }

  v6 = [v15 propertyForKey:@"headerFooterHyperlinkButtonURL"];
  [(PSFooterMultiHyperlinkView *)self setURL:v6];

  v7 = [v15 propertyForKey:@"footerHyperlinkRange"];
  v8 = v7;
  if (v7)
  {
    v9 = NSRangeFromString(v7);
    [(PSFooterMultiHyperlinkView *)self setLinkRange:v9.location, v9.length];
  }

  v10 = [v15 propertyForKey:@"footerHyperlinkAction"];
  v11 = v10;
  if (v10)
  {
    [(PSFooterMultiHyperlinkView *)self setAction:NSSelectorFromString(v10)];
    v12 = [v15 propertyForKey:@"footerHyperlinkTarget"];
    v13 = [v12 nonretainedObjectValue];
    [(PSFooterMultiHyperlinkView *)self setTarget:v13];
  }

  v14 = [v15 propertyForKey:@"footerHyperlinkLinkSpecs"];
  if (v14)
  {
    [(PSFooterMultiHyperlinkView *)self setLinkSpecs:v14];
  }

  [(PSFooterMultiHyperlinkView *)self _linkify];
}

- (void)setupSubviewsAndContstraints
{
  v3 = [(PSFooterMultiHyperlinkView *)self textView];
  [v3 removeFromSuperview];

  v4 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(PSFooterMultiHyperlinkView *)self setTextView:v4];

  v5 = [(PSFooterMultiHyperlinkView *)self textView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [MEMORY[0x1E69DC888] clearColor];
  v7 = [(PSFooterMultiHyperlinkView *)self textView];
  [v7 setBackgroundColor:v6];

  v8 = [(PSFooterMultiHyperlinkView *)self textView];
  [v8 setShowsVerticalScrollIndicator:0];

  v9 = [(PSFooterMultiHyperlinkView *)self textView];
  [v9 setEditable:0];

  v10 = [(PSFooterMultiHyperlinkView *)self textView];
  [v10 setSelectable:1];

  v11 = [(PSFooterMultiHyperlinkView *)self textView];
  [v11 setScrollEnabled:0];

  v12 = [(PSFooterMultiHyperlinkView *)self textView];
  v13 = [v12 textContainer];
  [v13 setLineFragmentPadding:0.0];

  v14 = *MEMORY[0x1E69DDCE0];
  v15 = *(MEMORY[0x1E69DDCE0] + 8);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v17 = *(MEMORY[0x1E69DDCE0] + 24);
  v18 = [(PSFooterMultiHyperlinkView *)self textView];
  [v18 setTextContainerInset:{v14, v15, v16, v17}];

  v19 = [(PSFooterMultiHyperlinkView *)self textView];
  [v19 _setInteractiveTextSelectionDisabled:1];

  v20 = [(PSFooterMultiHyperlinkView *)self textView];
  [v20 setDelegate:self];

  v21 = [(PSFooterMultiHyperlinkView *)self contentView];
  v22 = [(PSFooterMultiHyperlinkView *)self textView];
  [v21 addSubview:v22];

  v47 = [MEMORY[0x1E695DF70] array];
  v23 = [(PSFooterMultiHyperlinkView *)self textView];
  v24 = [v23 leadingAnchor];
  v25 = [(PSFooterMultiHyperlinkView *)self contentView];
  v26 = [v25 layoutMarginsGuide];
  v27 = [v26 leadingAnchor];
  v28 = [v24 constraintEqualToAnchor:v27];
  [v47 addObject:v28];

  v29 = [(PSFooterMultiHyperlinkView *)self textView];
  v30 = [v29 trailingAnchor];
  v31 = [(PSFooterMultiHyperlinkView *)self contentView];
  v32 = [v31 layoutMarginsGuide];
  v33 = [v32 trailingAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];
  [v47 addObject:v34];

  v35 = [(PSFooterMultiHyperlinkView *)self textView];
  v36 = [v35 topAnchor];
  v37 = [(PSFooterMultiHyperlinkView *)self contentView];
  v38 = [v37 layoutMarginsGuide];
  v39 = [v38 topAnchor];
  v40 = [v36 constraintEqualToAnchor:v39];
  [v47 addObject:v40];

  v41 = [(PSFooterMultiHyperlinkView *)self textView];
  v42 = [v41 bottomAnchor];
  v43 = [(PSFooterMultiHyperlinkView *)self contentView];
  v44 = [v43 layoutMarginsGuide];
  v45 = [v44 bottomAnchor];
  v46 = [v42 constraintEqualToAnchor:v45];
  [v47 addObject:v46];

  [MEMORY[0x1E696ACD8] activateConstraints:v47];
}

- (void)setText:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, a3);
    text = self->_text;
    v6 = [(PSFooterMultiHyperlinkView *)self textView];
    [v6 setText:text];

    [(PSFooterMultiHyperlinkView *)self linkRange];
    if (v7)
    {
      [(PSFooterMultiHyperlinkView *)self _linkify];
    }

    [(PSFooterMultiHyperlinkView *)self setNeedsUpdateConstraints];
  }
}

- (void)setURL:(id)a3
{
  v5 = a3;
  if (([(NSURL *)self->_URL isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_URL, a3);
    [(PSFooterMultiHyperlinkView *)self setNeedsUpdateConstraints];
    [(PSFooterMultiHyperlinkView *)self _linkify];
  }
}

- (void)setLinkSpecs:(id)a3
{
  v7 = a3;
  v5 = [(PSFooterMultiHyperlinkView *)self linkSpecs];
  v6 = [v5 isEqual:v7];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_linkSpecs, a3);
    [(PSFooterMultiHyperlinkView *)self setNeedsUpdateConstraints];
    [(PSFooterMultiHyperlinkView *)self _linkify];
  }
}

- (void)setLinkRange:(_NSRange)a3
{
  if (self->_linkRange.location != a3.location || self->_linkRange.length != a3.length)
  {
    self->_linkRange = a3;
    v5 = [(PSFooterMultiHyperlinkView *)self text];

    if (v5)
    {

      [(PSFooterMultiHyperlinkView *)self _linkify];
    }
  }
}

- (void)_linkify
{
  v43[1] = *MEMORY[0x1E69E9840];
  v3 = [(PSFooterMultiHyperlinkView *)self text];

  if (!v3)
  {
    return;
  }

  [(PSFooterMultiHyperlinkView *)self linkRange];
  if (v4 && ([(PSFooterMultiHyperlinkView *)self URL], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(PSFooterMultiHyperlinkView *)self linkRange];
    v8 = v7;
    v9 = [(PSFooterMultiHyperlinkView *)self URL];
    v10 = [PSFooterMultiHyperlinkViewLinkSpec specWithRange:v6 url:v8, v9];

    linkSpecs = self->_linkSpecs;
    if (!linkSpecs)
    {
      v43[0] = v10;
      v12 = MEMORY[0x1E695DEC8];
      v13 = v43;
LABEL_12:
      v22 = [v12 arrayWithObjects:v13 count:1];
      goto LABEL_13;
    }
  }

  else
  {
    [(PSFooterMultiHyperlinkView *)self linkRange];
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = [(PSFooterMultiHyperlinkView *)self target];
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = v15;
    v17 = [(PSFooterMultiHyperlinkView *)self action];

    if (!v17)
    {
      goto LABEL_14;
    }

    v18 = [(PSFooterMultiHyperlinkView *)self linkRange];
    v20 = v19;
    v21 = [(PSFooterMultiHyperlinkView *)self target];
    v10 = [PSFooterMultiHyperlinkViewLinkSpec specWithRange:v18 target:v20 action:v21, [(PSFooterMultiHyperlinkView *)self action]];

    linkSpecs = self->_linkSpecs;
    if (!linkSpecs)
    {
      v42 = v10;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v42;
      goto LABEL_12;
    }
  }

  v22 = [(NSArray *)linkSpecs arrayByAddingObject:v10];
LABEL_13:
  v23 = self->_linkSpecs;
  self->_linkSpecs = v22;

LABEL_14:
  v24 = [MEMORY[0x1E695DF90] dictionary];
  rangeLinkSpecMap = self->_rangeLinkSpecMap;
  self->_rangeLinkSpecMap = v24;

  v26 = objc_alloc(MEMORY[0x1E696AD40]);
  v27 = [(PSFooterMultiHyperlinkView *)self text];
  v28 = [v26 initWithString:v27];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v29 = [(PSFooterMultiHyperlinkView *)self linkSpecs];
  v30 = [v29 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v38;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v37 + 1) + 8 * i);
        v35 = self->_rangeLinkSpecMap;
        v44.location = [v34 linkRange];
        v36 = NSStringFromRange(v44);
        [(NSMutableDictionary *)v35 setValue:v34 forKey:v36];

        [(PSFooterMultiHyperlinkView *)self _addLinkSpec:v34 toAttrStr:v28];
      }

      v31 = [v29 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v31);
  }
}

- (void)_addLinkSpec:(id)a3 toAttrStr:(id)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[PSListController appearance];
  v9 = [v8 altTextColor];
  if (v9)
  {
    v10 = +[PSListController appearance];
    v11 = [v10 altTextColor];
  }

  else
  {
    v11 = PreferencesTableViewFooterColor();
  }

  v12 = +[PSListController appearance];
  v13 = [v12 footerHyperlinkColor];
  if (v13)
  {
    v14 = +[PSListController appearance];
    v15 = [v14 footerHyperlinkColor];
  }

  else
  {
    v15 = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  v16 = [(PSFooterMultiHyperlinkView *)self text];
  v17 = [v16 length];

  v18 = [MEMORY[0x1E69DC668] sharedApplication];
  v19 = [v18 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v19);

  if (IsAccessibilityCategory)
  {
    v21 = objc_opt_new();
    LODWORD(v22) = 1055286886;
    [v21 setHyphenationFactor:v22];
    [v7 addAttribute:*MEMORY[0x1E69DB688] value:v21 range:{0, v17}];
  }

  v23 = *MEMORY[0x1E69DB648];
  v24 = PreferencesTableViewFooterFont();
  [v7 addAttribute:v23 value:v24 range:{0, v17}];

  v25 = *MEMORY[0x1E69DB650];
  v26 = [(PSFooterMultiHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:v11];
  [v7 addAttribute:v25 value:v26 range:{0, v17}];

  v27 = [v6 linkRange];
  if ([(PSFooterMultiHyperlinkView *)self isValidLinkRange:v27, v28])
  {
    v29 = [(PSFooterMultiHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:v15];
    v30 = [v6 linkRange];
    [v7 addAttribute:v25 value:v29 range:{v30, v31}];

    v32 = *MEMORY[0x1E69DB670];
    v33 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1EFE45030];
    v34 = [v6 linkRange];
    [v7 addAttribute:v32 value:v33 range:{v34, v35}];

    v36 = *MEMORY[0x1E69DB758];
    v37 = [v6 linkRange];
    [v7 addAttribute:v36 value:MEMORY[0x1E695E110] range:{v37, v38}];
  }

  v39 = [(PSFooterMultiHyperlinkView *)self textView];
  [v39 setAttributedText:v7];

  if (v15)
  {
    v43 = v25;
    v40 = [(PSFooterMultiHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:v15];
    v44[0] = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v42 = [(PSFooterMultiHyperlinkView *)self textView];
    [v42 setLinkTextAttributes:v41];
  }
}

- (BOOL)isValidLinkRange:(_NSRange)a3
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = a3.location + a3.length;
  v5 = [(PSFooterMultiHyperlinkView *)self text];
  v3 = v4 <= [v5 length];

  return v3;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  rangeLinkSpecMap = self->_rangeLinkSpecMap;
  v7 = NSStringFromRange(a5);
  v8 = [(NSMutableDictionary *)rangeLinkSpecMap valueForKey:v7];

  v9 = [v8 target];

  if (v9)
  {
    [v8 action];
    v10 = [v8 target];
    v11 = SFPerformSelector();
  }

  return v9 == 0;
}

- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = PSFooterMultiHyperlinkView;
  [(PSFooterMultiHyperlinkView *)&v4 _accessibilitySetInterfaceStyleIntent:a3];
  [(PSFooterMultiHyperlinkView *)self _linkify];
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