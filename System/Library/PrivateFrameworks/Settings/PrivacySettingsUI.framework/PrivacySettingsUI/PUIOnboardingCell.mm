@interface PUIOnboardingCell
- (PUIOnboardingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier title:(id)title;
- (PUIOnboardingCellDelegate)delegate;
- (void)didTapOnboardingCellLink:(id)link;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setDetailText:(id)text linkText:(id)linkText;
- (void)setSymbolImage:(id)image tintColor:(id)color;
@end

@implementation PUIOnboardingCell

- (PUIOnboardingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier title:(id)title
{
  titleCopy = title;
  v45.receiver = self;
  v45.super_class = PUIOnboardingCell;
  v9 = [(PSTableCell *)&v45 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(PUIOnboardingCell *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(PSTableCell *)v10 titleLabel];
    [titleLabel setHidden:1];

    detailTextLabel = [(PUIOnboardingCell *)v10 detailTextLabel];
    [detailTextLabel setHidden:1];

    v13 = objc_opt_new();
    stackView = v10->_stackView;
    v10->_stackView = v13;

    [(UIStackView *)v10->_stackView setSpacing:0.0];
    [(UIStackView *)v10->_stackView setAxis:1];
    [(UIStackView *)v10->_stackView setAlignment:3];
    [(UIStackView *)v10->_stackView setDistribution:0];
    [(UIStackView *)v10->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PUIOnboardingCell *)v10 contentView];
    [contentView addSubview:v10->_stackView];

    topAnchor = [(UIStackView *)v10->_stackView topAnchor];
    contentView2 = [(PUIOnboardingCell *)v10 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    [v19 setActive:1];

    bottomAnchor = [(UIStackView *)v10->_stackView bottomAnchor];
    contentView3 = [(PUIOnboardingCell *)v10 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    [v23 setActive:1];

    leadingAnchor = [(UIStackView *)v10->_stackView leadingAnchor];
    contentView4 = [(PUIOnboardingCell *)v10 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    [v27 setActive:1];

    trailingAnchor = [(UIStackView *)v10->_stackView trailingAnchor];
    contentView5 = [(PUIOnboardingCell *)v10 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    [v31 setActive:1];

    v32 = objc_opt_new();
    symbolImageView = v10->_symbolImageView;
    v10->_symbolImageView = v32;

    [(UIImageView *)v10->_symbolImageView setContentMode:4];
    [(UIImageView *)v10->_symbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [(UIImageView *)v10->_symbolImageView widthAnchor];
    v35 = [widthAnchor constraintEqualToConstant:60.0];
    [v35 setActive:1];

    heightAnchor = [(UIImageView *)v10->_symbolImageView heightAnchor];
    v37 = [heightAnchor constraintEqualToConstant:60.0];
    [v37 setActive:1];

    [(UIStackView *)v10->_stackView addArrangedSubview:v10->_symbolImageView];
    [(UIStackView *)v10->_stackView setCustomSpacing:v10->_symbolImageView afterView:12.0];
    v38 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
    fontDescriptor = [v38 fontDescriptor];
    v40 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    v41 = objc_opt_new();
    [v41 setText:titleCopy];
    [v41 setNumberOfLines:0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v41 setTextColor:labelColor];

    [v41 setTextAlignment:1];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = [MEMORY[0x277D74300] fontWithDescriptor:v40 size:0.0];
    [v41 setFont:v43];

    [(UIStackView *)v10->_stackView addArrangedSubview:v41];
  }

  return v10;
}

- (void)setDetailText:(id)text linkText:(id)linkText
{
  linkTextCopy = linkText;
  v6 = MEMORY[0x277CCAB48];
  textCopy = text;
  v8 = [[v6 alloc] initWithString:textCopy];

  v9 = objc_alloc_init(MEMORY[0x277D75C40]);
  v10 = objc_opt_new();
  [v10 setAlignment:1];
  v11 = [v8 length];
  [v8 addAttribute:*MEMORY[0x277D74118] value:v10 range:{0, v11}];
  v12 = *MEMORY[0x277D740C0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v8 addAttribute:v12 value:labelColor range:{0, v11}];

  v14 = *MEMORY[0x277D740A8];
  v15 = *MEMORY[0x277D769D0];
  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v8 addAttribute:v14 value:v16 range:{0, v11}];

  [v9 setEditable:0];
  [v9 setDelegate:self];
  [v9 setSelectable:1];
  [v9 setScrollEnabled:0];
  [v9 setAttributedText:v8];
  [v9 setShowsVerticalScrollIndicator:0];
  [v9 setShowsHorizontalScrollIndicator:0];
  textContainer = [v9 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [v9 _setInteractiveTextSelectionDisabled:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:clearColor];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView addArrangedSubview:v9];
  if (linkTextCopy)
  {
    v19 = [MEMORY[0x277D75220] buttonWithType:1];
    [v19 setTitle:linkTextCopy forState:0];
    titleLabel = [v19 titleLabel];
    v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:v15];
    [titleLabel setFont:v21];

    [v19 addTarget:self action:sel_didTapOnboardingCellLink_ forControlEvents:64];
    [(UIStackView *)self->_stackView setCustomSpacing:v9 afterView:0.0];
    [(UIStackView *)self->_stackView addArrangedSubview:v19];
  }
}

- (void)setSymbolImage:(id)image tintColor:(id)color
{
  symbolImageView = self->_symbolImageView;
  colorCopy = color;
  [(UIImageView *)symbolImageView setImage:image];
  [(UIImageView *)self->_symbolImageView setTintColor:colorCopy];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PUIOnboardingCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  [(PUIOnboardingCell *)self setUserInteractionEnabled:1, v7.receiver, v7.super_class];
  v5 = [specifierCopy objectForKeyedSubscript:@"PUIOnboardingCellDelegateKey"];

  nonretainedObjectValue = [v5 nonretainedObjectValue];
  [(PUIOnboardingCell *)self setDelegate:nonretainedObjectValue];
}

- (void)didTapOnboardingCellLink:(id)link
{
  delegate = [(PUIOnboardingCell *)self delegate];
  [delegate didTapOnboardingCellLink:self];
}

- (PUIOnboardingCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end