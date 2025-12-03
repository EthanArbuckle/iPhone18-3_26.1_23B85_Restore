@interface PUIAttributedStringFooter
+ (id)string:(id)string replacingSubstring:(id)substring withImage:(id)image;
- (PUIAttributedStringFooter)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width inTableView:(id)view;
- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)intent;
- (void)refreshContentsWithSpecifier:(id)specifier;
- (void)setTableView:(id)view;
- (void)setupSubviewsAndContstraints;
- (void)updateConstraints;
@end

@implementation PUIAttributedStringFooter

+ (id)string:(id)string replacingSubstring:(id)substring withImage:(id)image
{
  stringCopy = string;
  imageCopy = image;
  substringCopy = substring;
  string = [stringCopy string];
  v11 = [string rangeOfString:substringCopy];
  v13 = v12;

  v14 = objc_opt_new();
  [v14 setImage:imageCopy];

  v15 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v14];
  [stringCopy replaceCharactersInRange:v11 withAttributedString:{v13, v15}];

  return stringCopy;
}

- (PUIAttributedStringFooter)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [(PUIAttributedStringFooter *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PUIAttributedStringFooter *)v5 setupSubviewsAndContstraints];
    [(PUIAttributedStringFooter *)v6 refreshContentsWithSpecifier:specifierCopy];
  }

  return v6;
}

- (void)refreshContentsWithSpecifier:(id)specifier
{
  v35[2] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  [(PUIAttributedStringFooter *)self setSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:@"PUIAttributedStringTextViewDelegateKey"];
  nonretainedObjectValue = [v5 nonretainedObjectValue];
  textView = [(PUIAttributedStringFooter *)self textView];
  [textView setDelegate:nonretainedObjectValue];

  v8 = [specifierCopy objectForKeyedSubscript:@"PUIAttributedStringFooterStringKey"];

  v9 = [v8 mutableCopy];
  v10 = [v9 length];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v14 = objc_opt_new();
    LODWORD(v15) = 1055286886;
    [v14 setHyphenationFactor:v15];
    [v9 addAttribute:*MEMORY[0x277D74118] value:v14 range:{0, v10}];
  }

  appearance = [MEMORY[0x277D3FA48] appearance];
  altTextColor = [appearance altTextColor];
  if (altTextColor)
  {
    appearance2 = [MEMORY[0x277D3FA48] appearance];
    altTextColor2 = [appearance2 altTextColor];
  }

  else
  {
    altTextColor2 = PreferencesTableViewFooterColor();
  }

  appearance3 = [MEMORY[0x277D3FA48] appearance];
  footerHyperlinkColor = [appearance3 footerHyperlinkColor];
  if (footerHyperlinkColor)
  {
    appearance4 = [MEMORY[0x277D3FA48] appearance];
    footerHyperlinkColor2 = [appearance4 footerHyperlinkColor];
  }

  else
  {
    footerHyperlinkColor2 = [MEMORY[0x277D75348] systemBlueColor];
  }

  v24 = *MEMORY[0x277D740A8];
  v25 = PreferencesTableViewFooterFont();
  [v9 addAttribute:v24 value:v25 range:{0, v10}];

  v26 = *MEMORY[0x277D740C0];
  v27 = [(PUIAttributedStringFooter *)self _accessibilityHigherContrastTintColorForColor:altTextColor2];
  [v9 addAttribute:v26 value:v27 range:{0, v10}];

  v34[0] = v26;
  v28 = [(PUIAttributedStringFooter *)self _accessibilityHigherContrastTintColorForColor:footerHyperlinkColor2];
  v34[1] = *MEMORY[0x277D741F0];
  v35[0] = v28;
  v35[1] = MEMORY[0x277CBEC28];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  textView2 = [(PUIAttributedStringFooter *)self textView];
  [textView2 setLinkTextAttributes:v29];

  v31 = [v9 copy];
  textView3 = [(PUIAttributedStringFooter *)self textView];
  [textView3 setAttributedText:v31];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)setupSubviewsAndContstraints
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  [(PUIAttributedStringFooter *)self setTextView:v3];

  textView = [(PUIAttributedStringFooter *)self textView];
  [textView setTranslatesAutoresizingMaskIntoConstraints:0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  textView2 = [(PUIAttributedStringFooter *)self textView];
  [textView2 setBackgroundColor:clearColor];

  textView3 = [(PUIAttributedStringFooter *)self textView];
  [textView3 setShowsVerticalScrollIndicator:0];

  textView4 = [(PUIAttributedStringFooter *)self textView];
  [textView4 setEditable:0];

  textView5 = [(PUIAttributedStringFooter *)self textView];
  [textView5 setSelectable:1];

  textView6 = [(PUIAttributedStringFooter *)self textView];
  [textView6 setScrollEnabled:0];

  textView7 = [(PUIAttributedStringFooter *)self textView];
  textContainer = [textView7 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  textView8 = [(PUIAttributedStringFooter *)self textView];
  [textView8 _setInteractiveTextSelectionDisabled:1];

  contentView = [(PUIAttributedStringFooter *)self contentView];
  textView9 = [(PUIAttributedStringFooter *)self textView];
  [contentView addSubview:textView9];

  array = [MEMORY[0x277CBEB18] array];
  textView10 = [(PUIAttributedStringFooter *)self textView];
  leadingAnchor = [textView10 leadingAnchor];
  contentView2 = [(PUIAttributedStringFooter *)self contentView];
  safeAreaLayoutGuide = [contentView2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  tableView = [(PUIAttributedStringFooter *)self tableView];
  [tableView _marginWidth];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  [(PUIAttributedStringFooter *)self setTextViewLeadingConstraint:v22];

  textViewLeadingConstraint = [(PUIAttributedStringFooter *)self textViewLeadingConstraint];
  [array addObject:textViewLeadingConstraint];

  contentView3 = [(PUIAttributedStringFooter *)self contentView];
  safeAreaLayoutGuide2 = [contentView3 safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
  textView11 = [(PUIAttributedStringFooter *)self textView];
  trailingAnchor2 = [textView11 trailingAnchor];
  tableView2 = [(PUIAttributedStringFooter *)self tableView];
  [tableView2 _marginWidth];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
  [(PUIAttributedStringFooter *)self setTextViewTrailingConstraint:v30];

  textViewTrailingConstraint = [(PUIAttributedStringFooter *)self textViewTrailingConstraint];
  [array addObject:textViewTrailingConstraint];

  textView12 = [(PUIAttributedStringFooter *)self textView];
  topAnchor = [textView12 topAnchor];
  contentView4 = [(PUIAttributedStringFooter *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v36];

  textView13 = [(PUIAttributedStringFooter *)self textView];
  bottomAnchor = [textView13 bottomAnchor];
  contentView5 = [(PUIAttributedStringFooter *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v41];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)setTableView:(id)view
{
  v4.receiver = self;
  v4.super_class = PUIAttributedStringFooter;
  [(PUIAttributedStringFooter *)&v4 setTableView:view];
  [(PUIAttributedStringFooter *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  textViewTrailingConstraint = [(PUIAttributedStringFooter *)self textViewTrailingConstraint];
  [textViewTrailingConstraint constant];
  v5 = v4;
  tableView = [(PUIAttributedStringFooter *)self tableView];
  [tableView _marginWidth];
  v8 = v7;

  if (v5 != v8)
  {
    tableView2 = [(PUIAttributedStringFooter *)self tableView];
    [tableView2 _marginWidth];
    v11 = v10;
    textViewTrailingConstraint2 = [(PUIAttributedStringFooter *)self textViewTrailingConstraint];
    [textViewTrailingConstraint2 setConstant:v11];
  }

  textViewLeadingConstraint = [(PUIAttributedStringFooter *)self textViewLeadingConstraint];
  [textViewLeadingConstraint constant];
  v15 = v14;
  tableView3 = [(PUIAttributedStringFooter *)self tableView];
  [tableView3 _marginWidth];
  v18 = v17;

  if (v15 != v18)
  {
    tableView4 = [(PUIAttributedStringFooter *)self tableView];
    [tableView4 _marginWidth];
    v21 = v20;
    textViewLeadingConstraint2 = [(PUIAttributedStringFooter *)self textViewLeadingConstraint];
    [textViewLeadingConstraint2 setConstant:v21];
  }

  v23.receiver = self;
  v23.super_class = PUIAttributedStringFooter;
  [(PUIAttributedStringFooter *)&v23 updateConstraints];
}

- (double)preferredHeightForWidth:(double)width inTableView:(id)view
{
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [(PUIAttributedStringFooter *)self systemLayoutSizeFittingSize:view withHorizontalFittingPriority:width verticalFittingPriority:*(MEMORY[0x277D76C78] + 8), v4, v5];
  return v6;
}

- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)intent
{
  v5.receiver = self;
  v5.super_class = PUIAttributedStringFooter;
  [(PUIAttributedStringFooter *)&v5 _accessibilitySetInterfaceStyleIntent:intent];
  specifier = [(PUIAttributedStringFooter *)self specifier];
  [(PUIAttributedStringFooter *)self refreshContentsWithSpecifier:specifier];
}

@end