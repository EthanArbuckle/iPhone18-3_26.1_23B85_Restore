@interface PUIAttributedStringFooter
+ (id)string:(id)a3 replacingSubstring:(id)a4 withImage:(id)a5;
- (PUIAttributedStringFooter)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4;
- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)a3;
- (void)refreshContentsWithSpecifier:(id)a3;
- (void)setTableView:(id)a3;
- (void)setupSubviewsAndContstraints;
- (void)updateConstraints;
@end

@implementation PUIAttributedStringFooter

+ (id)string:(id)a3 replacingSubstring:(id)a4 withImage:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 string];
  v11 = [v10 rangeOfString:v9];
  v13 = v12;

  v14 = objc_opt_new();
  [v14 setImage:v8];

  v15 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v14];
  [v7 replaceCharactersInRange:v11 withAttributedString:{v13, v15}];

  return v7;
}

- (PUIAttributedStringFooter)initWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PUIAttributedStringFooter *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PUIAttributedStringFooter *)v5 setupSubviewsAndContstraints];
    [(PUIAttributedStringFooter *)v6 refreshContentsWithSpecifier:v4];
  }

  return v6;
}

- (void)refreshContentsWithSpecifier:(id)a3
{
  v35[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PUIAttributedStringFooter *)self setSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:@"PUIAttributedStringTextViewDelegateKey"];
  v6 = [v5 nonretainedObjectValue];
  v7 = [(PUIAttributedStringFooter *)self textView];
  [v7 setDelegate:v6];

  v8 = [v4 objectForKeyedSubscript:@"PUIAttributedStringFooterStringKey"];

  v9 = [v8 mutableCopy];
  v10 = [v9 length];
  v11 = [MEMORY[0x277D75128] sharedApplication];
  v12 = [v11 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

  if (IsAccessibilityCategory)
  {
    v14 = objc_opt_new();
    LODWORD(v15) = 1055286886;
    [v14 setHyphenationFactor:v15];
    [v9 addAttribute:*MEMORY[0x277D74118] value:v14 range:{0, v10}];
  }

  v16 = [MEMORY[0x277D3FA48] appearance];
  v17 = [v16 altTextColor];
  if (v17)
  {
    v18 = [MEMORY[0x277D3FA48] appearance];
    v19 = [v18 altTextColor];
  }

  else
  {
    v19 = PreferencesTableViewFooterColor();
  }

  v20 = [MEMORY[0x277D3FA48] appearance];
  v21 = [v20 footerHyperlinkColor];
  if (v21)
  {
    v22 = [MEMORY[0x277D3FA48] appearance];
    v23 = [v22 footerHyperlinkColor];
  }

  else
  {
    v23 = [MEMORY[0x277D75348] systemBlueColor];
  }

  v24 = *MEMORY[0x277D740A8];
  v25 = PreferencesTableViewFooterFont();
  [v9 addAttribute:v24 value:v25 range:{0, v10}];

  v26 = *MEMORY[0x277D740C0];
  v27 = [(PUIAttributedStringFooter *)self _accessibilityHigherContrastTintColorForColor:v19];
  [v9 addAttribute:v26 value:v27 range:{0, v10}];

  v34[0] = v26;
  v28 = [(PUIAttributedStringFooter *)self _accessibilityHigherContrastTintColorForColor:v23];
  v34[1] = *MEMORY[0x277D741F0];
  v35[0] = v28;
  v35[1] = MEMORY[0x277CBEC28];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v30 = [(PUIAttributedStringFooter *)self textView];
  [v30 setLinkTextAttributes:v29];

  v31 = [v9 copy];
  v32 = [(PUIAttributedStringFooter *)self textView];
  [v32 setAttributedText:v31];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)setupSubviewsAndContstraints
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  [(PUIAttributedStringFooter *)self setTextView:v3];

  v4 = [(PUIAttributedStringFooter *)self textView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [(PUIAttributedStringFooter *)self textView];
  [v6 setBackgroundColor:v5];

  v7 = [(PUIAttributedStringFooter *)self textView];
  [v7 setShowsVerticalScrollIndicator:0];

  v8 = [(PUIAttributedStringFooter *)self textView];
  [v8 setEditable:0];

  v9 = [(PUIAttributedStringFooter *)self textView];
  [v9 setSelectable:1];

  v10 = [(PUIAttributedStringFooter *)self textView];
  [v10 setScrollEnabled:0];

  v11 = [(PUIAttributedStringFooter *)self textView];
  v12 = [v11 textContainer];
  [v12 setLineFragmentPadding:0.0];

  v13 = [(PUIAttributedStringFooter *)self textView];
  [v13 _setInteractiveTextSelectionDisabled:1];

  v14 = [(PUIAttributedStringFooter *)self contentView];
  v15 = [(PUIAttributedStringFooter *)self textView];
  [v14 addSubview:v15];

  v42 = [MEMORY[0x277CBEB18] array];
  v16 = [(PUIAttributedStringFooter *)self textView];
  v17 = [v16 leadingAnchor];
  v18 = [(PUIAttributedStringFooter *)self contentView];
  v19 = [v18 safeAreaLayoutGuide];
  v20 = [v19 leadingAnchor];
  v21 = [(PUIAttributedStringFooter *)self tableView];
  [v21 _marginWidth];
  v22 = [v17 constraintEqualToAnchor:v20 constant:?];
  [(PUIAttributedStringFooter *)self setTextViewLeadingConstraint:v22];

  v23 = [(PUIAttributedStringFooter *)self textViewLeadingConstraint];
  [v42 addObject:v23];

  v24 = [(PUIAttributedStringFooter *)self contentView];
  v25 = [v24 safeAreaLayoutGuide];
  v26 = [v25 trailingAnchor];
  v27 = [(PUIAttributedStringFooter *)self textView];
  v28 = [v27 trailingAnchor];
  v29 = [(PUIAttributedStringFooter *)self tableView];
  [v29 _marginWidth];
  v30 = [v26 constraintEqualToAnchor:v28 constant:?];
  [(PUIAttributedStringFooter *)self setTextViewTrailingConstraint:v30];

  v31 = [(PUIAttributedStringFooter *)self textViewTrailingConstraint];
  [v42 addObject:v31];

  v32 = [(PUIAttributedStringFooter *)self textView];
  v33 = [v32 topAnchor];
  v34 = [(PUIAttributedStringFooter *)self contentView];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  [v42 addObject:v36];

  v37 = [(PUIAttributedStringFooter *)self textView];
  v38 = [v37 bottomAnchor];
  v39 = [(PUIAttributedStringFooter *)self contentView];
  v40 = [v39 bottomAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  [v42 addObject:v41];

  [MEMORY[0x277CCAAD0] activateConstraints:v42];
}

- (void)setTableView:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUIAttributedStringFooter;
  [(PUIAttributedStringFooter *)&v4 setTableView:a3];
  [(PUIAttributedStringFooter *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v3 = [(PUIAttributedStringFooter *)self textViewTrailingConstraint];
  [v3 constant];
  v5 = v4;
  v6 = [(PUIAttributedStringFooter *)self tableView];
  [v6 _marginWidth];
  v8 = v7;

  if (v5 != v8)
  {
    v9 = [(PUIAttributedStringFooter *)self tableView];
    [v9 _marginWidth];
    v11 = v10;
    v12 = [(PUIAttributedStringFooter *)self textViewTrailingConstraint];
    [v12 setConstant:v11];
  }

  v13 = [(PUIAttributedStringFooter *)self textViewLeadingConstraint];
  [v13 constant];
  v15 = v14;
  v16 = [(PUIAttributedStringFooter *)self tableView];
  [v16 _marginWidth];
  v18 = v17;

  if (v15 != v18)
  {
    v19 = [(PUIAttributedStringFooter *)self tableView];
    [v19 _marginWidth];
    v21 = v20;
    v22 = [(PUIAttributedStringFooter *)self textViewLeadingConstraint];
    [v22 setConstant:v21];
  }

  v23.receiver = self;
  v23.super_class = PUIAttributedStringFooter;
  [(PUIAttributedStringFooter *)&v23 updateConstraints];
}

- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4
{
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [(PUIAttributedStringFooter *)self systemLayoutSizeFittingSize:a4 withHorizontalFittingPriority:a3 verticalFittingPriority:*(MEMORY[0x277D76C78] + 8), v4, v5];
  return v6;
}

- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PUIAttributedStringFooter;
  [(PUIAttributedStringFooter *)&v5 _accessibilitySetInterfaceStyleIntent:a3];
  v4 = [(PUIAttributedStringFooter *)self specifier];
  [(PUIAttributedStringFooter *)self refreshContentsWithSpecifier:v4];
}

@end