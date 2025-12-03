@interface PSFooterMultiHyperlinkView
- (BOOL)isValidLinkRange:(_NSRange)range;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (PSFooterMultiHyperlinkView)initWithSpecifier:(id)specifier;
- (SEL)action;
- (_NSRange)linkRange;
- (id)target;
- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)intent;
- (void)_addLinkSpec:(id)spec toAttrStr:(id)str;
- (void)_linkify;
- (void)refreshContentsWithSpecifier:(id)specifier;
- (void)setAction:(SEL)action;
- (void)setLinkRange:(_NSRange)range;
- (void)setLinkSpecs:(id)specs;
- (void)setText:(id)text;
- (void)setURL:(id)l;
- (void)setupSubviewsAndContstraints;
@end

@implementation PSFooterMultiHyperlinkView

- (PSFooterMultiHyperlinkView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [(PSFooterMultiHyperlinkView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PSFooterMultiHyperlinkView *)v5 refreshContentsWithSpecifier:specifierCopy];
  }

  return v6;
}

- (void)refreshContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [(PSFooterMultiHyperlinkView *)self setupSubviewsAndContstraints];
  v4 = [specifierCopy propertyForKey:@"headerFooterHyperlinkButtonTitle"];
  if (v4)
  {
    [(PSFooterMultiHyperlinkView *)self setText:v4];
  }

  else
  {
    v5 = [specifierCopy propertyForKey:@"footerText"];
    [(PSFooterMultiHyperlinkView *)self setText:v5];
  }

  v6 = [specifierCopy propertyForKey:@"headerFooterHyperlinkButtonURL"];
  [(PSFooterMultiHyperlinkView *)self setURL:v6];

  v7 = [specifierCopy propertyForKey:@"footerHyperlinkRange"];
  v8 = v7;
  if (v7)
  {
    v9 = NSRangeFromString(v7);
    [(PSFooterMultiHyperlinkView *)self setLinkRange:v9.location, v9.length];
  }

  v10 = [specifierCopy propertyForKey:@"footerHyperlinkAction"];
  v11 = v10;
  if (v10)
  {
    [(PSFooterMultiHyperlinkView *)self setAction:NSSelectorFromString(v10)];
    v12 = [specifierCopy propertyForKey:@"footerHyperlinkTarget"];
    nonretainedObjectValue = [v12 nonretainedObjectValue];
    [(PSFooterMultiHyperlinkView *)self setTarget:nonretainedObjectValue];
  }

  v14 = [specifierCopy propertyForKey:@"footerHyperlinkLinkSpecs"];
  if (v14)
  {
    [(PSFooterMultiHyperlinkView *)self setLinkSpecs:v14];
  }

  [(PSFooterMultiHyperlinkView *)self _linkify];
}

- (void)setupSubviewsAndContstraints
{
  textView = [(PSFooterMultiHyperlinkView *)self textView];
  [textView removeFromSuperview];

  v4 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(PSFooterMultiHyperlinkView *)self setTextView:v4];

  textView2 = [(PSFooterMultiHyperlinkView *)self textView];
  [textView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  textView3 = [(PSFooterMultiHyperlinkView *)self textView];
  [textView3 setBackgroundColor:clearColor];

  textView4 = [(PSFooterMultiHyperlinkView *)self textView];
  [textView4 setShowsVerticalScrollIndicator:0];

  textView5 = [(PSFooterMultiHyperlinkView *)self textView];
  [textView5 setEditable:0];

  textView6 = [(PSFooterMultiHyperlinkView *)self textView];
  [textView6 setSelectable:1];

  textView7 = [(PSFooterMultiHyperlinkView *)self textView];
  [textView7 setScrollEnabled:0];

  textView8 = [(PSFooterMultiHyperlinkView *)self textView];
  textContainer = [textView8 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  v14 = *MEMORY[0x1E69DDCE0];
  v15 = *(MEMORY[0x1E69DDCE0] + 8);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v17 = *(MEMORY[0x1E69DDCE0] + 24);
  textView9 = [(PSFooterMultiHyperlinkView *)self textView];
  [textView9 setTextContainerInset:{v14, v15, v16, v17}];

  textView10 = [(PSFooterMultiHyperlinkView *)self textView];
  [textView10 _setInteractiveTextSelectionDisabled:1];

  textView11 = [(PSFooterMultiHyperlinkView *)self textView];
  [textView11 setDelegate:self];

  contentView = [(PSFooterMultiHyperlinkView *)self contentView];
  textView12 = [(PSFooterMultiHyperlinkView *)self textView];
  [contentView addSubview:textView12];

  array = [MEMORY[0x1E695DF70] array];
  textView13 = [(PSFooterMultiHyperlinkView *)self textView];
  leadingAnchor = [textView13 leadingAnchor];
  contentView2 = [(PSFooterMultiHyperlinkView *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v28];

  textView14 = [(PSFooterMultiHyperlinkView *)self textView];
  trailingAnchor = [textView14 trailingAnchor];
  contentView3 = [(PSFooterMultiHyperlinkView *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v34];

  textView15 = [(PSFooterMultiHyperlinkView *)self textView];
  topAnchor = [textView15 topAnchor];
  contentView4 = [(PSFooterMultiHyperlinkView *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v40];

  textView16 = [(PSFooterMultiHyperlinkView *)self textView];
  bottomAnchor = [textView16 bottomAnchor];
  contentView5 = [(PSFooterMultiHyperlinkView *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v46];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, text);
    text = self->_text;
    textView = [(PSFooterMultiHyperlinkView *)self textView];
    [textView setText:text];

    [(PSFooterMultiHyperlinkView *)self linkRange];
    if (v7)
    {
      [(PSFooterMultiHyperlinkView *)self _linkify];
    }

    [(PSFooterMultiHyperlinkView *)self setNeedsUpdateConstraints];
  }
}

- (void)setURL:(id)l
{
  lCopy = l;
  if (([(NSURL *)self->_URL isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_URL, l);
    [(PSFooterMultiHyperlinkView *)self setNeedsUpdateConstraints];
    [(PSFooterMultiHyperlinkView *)self _linkify];
  }
}

- (void)setLinkSpecs:(id)specs
{
  specsCopy = specs;
  linkSpecs = [(PSFooterMultiHyperlinkView *)self linkSpecs];
  v6 = [linkSpecs isEqual:specsCopy];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_linkSpecs, specs);
    [(PSFooterMultiHyperlinkView *)self setNeedsUpdateConstraints];
    [(PSFooterMultiHyperlinkView *)self _linkify];
  }
}

- (void)setLinkRange:(_NSRange)range
{
  if (self->_linkRange.location != range.location || self->_linkRange.length != range.length)
  {
    self->_linkRange = range;
    text = [(PSFooterMultiHyperlinkView *)self text];

    if (text)
    {

      [(PSFooterMultiHyperlinkView *)self _linkify];
    }
  }
}

- (void)_linkify
{
  v43[1] = *MEMORY[0x1E69E9840];
  text = [(PSFooterMultiHyperlinkView *)self text];

  if (!text)
  {
    return;
  }

  [(PSFooterMultiHyperlinkView *)self linkRange];
  if (v4 && ([(PSFooterMultiHyperlinkView *)self URL], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    linkRange = [(PSFooterMultiHyperlinkView *)self linkRange];
    v8 = v7;
    v9 = [(PSFooterMultiHyperlinkView *)self URL];
    v10 = [PSFooterMultiHyperlinkViewLinkSpec specWithRange:linkRange url:v8, v9];

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

    target = [(PSFooterMultiHyperlinkView *)self target];
    if (!target)
    {
      goto LABEL_14;
    }

    v16 = target;
    action = [(PSFooterMultiHyperlinkView *)self action];

    if (!action)
    {
      goto LABEL_14;
    }

    linkRange2 = [(PSFooterMultiHyperlinkView *)self linkRange];
    v20 = v19;
    target2 = [(PSFooterMultiHyperlinkView *)self target];
    v10 = [PSFooterMultiHyperlinkViewLinkSpec specWithRange:linkRange2 target:v20 action:target2, [(PSFooterMultiHyperlinkView *)self action]];

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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  rangeLinkSpecMap = self->_rangeLinkSpecMap;
  self->_rangeLinkSpecMap = dictionary;

  v26 = objc_alloc(MEMORY[0x1E696AD40]);
  text2 = [(PSFooterMultiHyperlinkView *)self text];
  v28 = [v26 initWithString:text2];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  linkSpecs = [(PSFooterMultiHyperlinkView *)self linkSpecs];
  v30 = [linkSpecs countByEnumeratingWithState:&v37 objects:v41 count:16];
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
          objc_enumerationMutation(linkSpecs);
        }

        v34 = *(*(&v37 + 1) + 8 * i);
        v35 = self->_rangeLinkSpecMap;
        v44.location = [v34 linkRange];
        v36 = NSStringFromRange(v44);
        [(NSMutableDictionary *)v35 setValue:v34 forKey:v36];

        [(PSFooterMultiHyperlinkView *)self _addLinkSpec:v34 toAttrStr:v28];
      }

      v31 = [linkSpecs countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v31);
  }
}

- (void)_addLinkSpec:(id)spec toAttrStr:(id)str
{
  v44[1] = *MEMORY[0x1E69E9840];
  specCopy = spec;
  strCopy = str;
  v8 = +[PSListController appearance];
  altTextColor = [v8 altTextColor];
  if (altTextColor)
  {
    v10 = +[PSListController appearance];
    altTextColor2 = [v10 altTextColor];
  }

  else
  {
    altTextColor2 = PreferencesTableViewFooterColor();
  }

  v12 = +[PSListController appearance];
  footerHyperlinkColor = [v12 footerHyperlinkColor];
  if (footerHyperlinkColor)
  {
    v14 = +[PSListController appearance];
    footerHyperlinkColor2 = [v14 footerHyperlinkColor];
  }

  else
  {
    footerHyperlinkColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  text = [(PSFooterMultiHyperlinkView *)self text];
  v17 = [text length];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v21 = objc_opt_new();
    LODWORD(v22) = 1055286886;
    [v21 setHyphenationFactor:v22];
    [strCopy addAttribute:*MEMORY[0x1E69DB688] value:v21 range:{0, v17}];
  }

  v23 = *MEMORY[0x1E69DB648];
  v24 = PreferencesTableViewFooterFont();
  [strCopy addAttribute:v23 value:v24 range:{0, v17}];

  v25 = *MEMORY[0x1E69DB650];
  v26 = [(PSFooterMultiHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:altTextColor2];
  [strCopy addAttribute:v25 value:v26 range:{0, v17}];

  linkRange = [specCopy linkRange];
  if ([(PSFooterMultiHyperlinkView *)self isValidLinkRange:linkRange, v28])
  {
    v29 = [(PSFooterMultiHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:footerHyperlinkColor2];
    linkRange2 = [specCopy linkRange];
    [strCopy addAttribute:v25 value:v29 range:{linkRange2, v31}];

    v32 = *MEMORY[0x1E69DB670];
    v33 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1EFE45030];
    linkRange3 = [specCopy linkRange];
    [strCopy addAttribute:v32 value:v33 range:{linkRange3, v35}];

    v36 = *MEMORY[0x1E69DB758];
    linkRange4 = [specCopy linkRange];
    [strCopy addAttribute:v36 value:MEMORY[0x1E695E110] range:{linkRange4, v38}];
  }

  textView = [(PSFooterMultiHyperlinkView *)self textView];
  [textView setAttributedText:strCopy];

  if (footerHyperlinkColor2)
  {
    v43 = v25;
    v40 = [(PSFooterMultiHyperlinkView *)self _accessibilityHigherContrastTintColorForColor:footerHyperlinkColor2];
    v44[0] = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    textView2 = [(PSFooterMultiHyperlinkView *)self textView];
    [textView2 setLinkTextAttributes:v41];
  }
}

- (BOOL)isValidLinkRange:(_NSRange)range
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = range.location + range.length;
  text = [(PSFooterMultiHyperlinkView *)self text];
  v3 = v4 <= [text length];

  return v3;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  rangeLinkSpecMap = self->_rangeLinkSpecMap;
  v7 = NSStringFromRange(range);
  v8 = [(NSMutableDictionary *)rangeLinkSpecMap valueForKey:v7];

  target = [v8 target];

  if (target)
  {
    [v8 action];
    target2 = [v8 target];
    v11 = SFPerformSelector();
  }

  return target == 0;
}

- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)intent
{
  v4.receiver = self;
  v4.super_class = PSFooterMultiHyperlinkView;
  [(PSFooterMultiHyperlinkView *)&v4 _accessibilitySetInterfaceStyleIntent:intent];
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