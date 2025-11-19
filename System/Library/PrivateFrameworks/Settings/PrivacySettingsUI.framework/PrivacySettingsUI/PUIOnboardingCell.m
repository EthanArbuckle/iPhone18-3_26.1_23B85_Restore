@interface PUIOnboardingCell
- (PUIOnboardingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 title:(id)a5;
- (PUIOnboardingCellDelegate)delegate;
- (void)didTapOnboardingCellLink:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setDetailText:(id)a3 linkText:(id)a4;
- (void)setSymbolImage:(id)a3 tintColor:(id)a4;
@end

@implementation PUIOnboardingCell

- (PUIOnboardingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 title:(id)a5
{
  v8 = a5;
  v45.receiver = self;
  v45.super_class = PUIOnboardingCell;
  v9 = [(PSTableCell *)&v45 initWithStyle:a3 reuseIdentifier:a4];
  v10 = v9;
  if (v9)
  {
    [(PUIOnboardingCell *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(PSTableCell *)v10 titleLabel];
    [v11 setHidden:1];

    v12 = [(PUIOnboardingCell *)v10 detailTextLabel];
    [v12 setHidden:1];

    v13 = objc_opt_new();
    stackView = v10->_stackView;
    v10->_stackView = v13;

    [(UIStackView *)v10->_stackView setSpacing:0.0];
    [(UIStackView *)v10->_stackView setAxis:1];
    [(UIStackView *)v10->_stackView setAlignment:3];
    [(UIStackView *)v10->_stackView setDistribution:0];
    [(UIStackView *)v10->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(PUIOnboardingCell *)v10 contentView];
    [v15 addSubview:v10->_stackView];

    v16 = [(UIStackView *)v10->_stackView topAnchor];
    v17 = [(PUIOnboardingCell *)v10 contentView];
    v18 = [v17 topAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
    [v19 setActive:1];

    v20 = [(UIStackView *)v10->_stackView bottomAnchor];
    v21 = [(PUIOnboardingCell *)v10 contentView];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintEqualToAnchor:v22 constant:-16.0];
    [v23 setActive:1];

    v24 = [(UIStackView *)v10->_stackView leadingAnchor];
    v25 = [(PUIOnboardingCell *)v10 contentView];
    v26 = [v25 leadingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26 constant:16.0];
    [v27 setActive:1];

    v28 = [(UIStackView *)v10->_stackView trailingAnchor];
    v29 = [(PUIOnboardingCell *)v10 contentView];
    v30 = [v29 trailingAnchor];
    v31 = [v28 constraintEqualToAnchor:v30 constant:-16.0];
    [v31 setActive:1];

    v32 = objc_opt_new();
    symbolImageView = v10->_symbolImageView;
    v10->_symbolImageView = v32;

    [(UIImageView *)v10->_symbolImageView setContentMode:4];
    [(UIImageView *)v10->_symbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [(UIImageView *)v10->_symbolImageView widthAnchor];
    v35 = [v34 constraintEqualToConstant:60.0];
    [v35 setActive:1];

    v36 = [(UIImageView *)v10->_symbolImageView heightAnchor];
    v37 = [v36 constraintEqualToConstant:60.0];
    [v37 setActive:1];

    [(UIStackView *)v10->_stackView addArrangedSubview:v10->_symbolImageView];
    [(UIStackView *)v10->_stackView setCustomSpacing:v10->_symbolImageView afterView:12.0];
    v38 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
    v39 = [v38 fontDescriptor];
    v40 = [v39 fontDescriptorWithSymbolicTraits:2];

    v41 = objc_opt_new();
    [v41 setText:v8];
    [v41 setNumberOfLines:0];
    v42 = [MEMORY[0x277D75348] labelColor];
    [v41 setTextColor:v42];

    [v41 setTextAlignment:1];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = [MEMORY[0x277D74300] fontWithDescriptor:v40 size:0.0];
    [v41 setFont:v43];

    [(UIStackView *)v10->_stackView addArrangedSubview:v41];
  }

  return v10;
}

- (void)setDetailText:(id)a3 linkText:(id)a4
{
  v22 = a4;
  v6 = MEMORY[0x277CCAB48];
  v7 = a3;
  v8 = [[v6 alloc] initWithString:v7];

  v9 = objc_alloc_init(MEMORY[0x277D75C40]);
  v10 = objc_opt_new();
  [v10 setAlignment:1];
  v11 = [v8 length];
  [v8 addAttribute:*MEMORY[0x277D74118] value:v10 range:{0, v11}];
  v12 = *MEMORY[0x277D740C0];
  v13 = [MEMORY[0x277D75348] labelColor];
  [v8 addAttribute:v12 value:v13 range:{0, v11}];

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
  v17 = [v9 textContainer];
  [v17 setLineFragmentPadding:0.0];

  [v9 _setInteractiveTextSelectionDisabled:1];
  v18 = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:v18];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView addArrangedSubview:v9];
  if (v22)
  {
    v19 = [MEMORY[0x277D75220] buttonWithType:1];
    [v19 setTitle:v22 forState:0];
    v20 = [v19 titleLabel];
    v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:v15];
    [v20 setFont:v21];

    [v19 addTarget:self action:sel_didTapOnboardingCellLink_ forControlEvents:64];
    [(UIStackView *)self->_stackView setCustomSpacing:v9 afterView:0.0];
    [(UIStackView *)self->_stackView addArrangedSubview:v19];
  }
}

- (void)setSymbolImage:(id)a3 tintColor:(id)a4
{
  symbolImageView = self->_symbolImageView;
  v7 = a4;
  [(UIImageView *)symbolImageView setImage:a3];
  [(UIImageView *)self->_symbolImageView setTintColor:v7];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUIOnboardingCell;
  v4 = a3;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  [(PUIOnboardingCell *)self setUserInteractionEnabled:1, v7.receiver, v7.super_class];
  v5 = [v4 objectForKeyedSubscript:@"PUIOnboardingCellDelegateKey"];

  v6 = [v5 nonretainedObjectValue];
  [(PUIOnboardingCell *)self setDelegate:v6];
}

- (void)didTapOnboardingCellLink:(id)a3
{
  v4 = [(PUIOnboardingCell *)self delegate];
  [v4 didTapOnboardingCellLink:self];
}

- (PUIOnboardingCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end