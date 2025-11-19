@interface PSUIRemoveSIMWarningTableCell
- (void)_setupView:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUIRemoveSIMWarningTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = PSUIRemoveSIMWarningTableCell;
  v4 = a3;
  [(PSTableCell *)&v6 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"RemoveSIMWarningKey", v6.receiver, v6.super_class}];

  [(PSUIRemoveSIMWarningTableCell *)self _setupView:v5];
  [(PSUIRemoveSIMWarningTableCell *)self layoutIfNeeded];
}

- (void)_setupView:(id)a3
{
  if (!self->_title)
  {
    v4 = MEMORY[0x277D756B8];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    title = self->_title;
    self->_title = v6;

    [(UILabel *)self->_title setNumberOfLines:0];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CELLULAR_PLAN_TRANSFERRED" value:&stru_287733598 table:@"Cellular"];
    [(UILabel *)self->_title setText:v9];

    v10 = MEMORY[0x277D74300];
    v11 = [(UILabel *)self->_title font];
    v12 = [v11 fontDescriptor];
    v13 = [v12 fontDescriptorWithSymbolicTraits:2];
    v14 = [(UILabel *)self->_title font];
    [v14 pointSize];
    v58 = [v10 fontWithDescriptor:v13 size:?];

    [(UILabel *)self->_title setFont:v58];
    [(UILabel *)self->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    [v15 addSubview:self->_title];

    v16 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = self->_label;
    self->_label = v16;

    [(UILabel *)self->_label setNumberOfLines:0];
    [(UILabel *)self->_label setText:v5];

    [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    [v18 addSubview:self->_label];

    v19 = [(UILabel *)self->_title topAnchor];
    v20 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    v21 = [v20 topAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:8.0];
    [v22 setActive:1];

    v23 = [(UILabel *)self->_title centerXAnchor];
    v24 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    v25 = [v24 centerXAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v27 = [(UILabel *)self->_title trailingAnchor];
    v28 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    v29 = [v28 layoutMarginsGuide];
    v30 = [v29 trailingAnchor];
    v31 = [v27 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [(UILabel *)self->_title leadingAnchor];
    v33 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    v34 = [v33 layoutMarginsGuide];
    v35 = [v34 leadingAnchor];
    v36 = [v32 constraintEqualToAnchor:v35];
    [v36 setActive:1];

    v37 = [(UILabel *)self->_label topAnchor];
    v38 = [(UILabel *)self->_title bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:8.0];
    [v39 setActive:1];

    v40 = [(UILabel *)self->_label centerXAnchor];
    v41 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    v42 = [v41 centerXAnchor];
    v43 = [v40 constraintEqualToAnchor:v42];
    [v43 setActive:1];

    v44 = [(UILabel *)self->_label bottomAnchor];
    v45 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    v46 = [v45 bottomAnchor];
    v47 = [v44 constraintEqualToAnchor:v46 constant:-8.0];
    [v47 setActive:1];

    v48 = [(UILabel *)self->_label trailingAnchor];
    v49 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    v50 = [v49 layoutMarginsGuide];
    v51 = [v50 trailingAnchor];
    v52 = [v48 constraintEqualToAnchor:v51];
    [v52 setActive:1];

    v53 = [(UILabel *)self->_label leadingAnchor];
    v54 = [(PSUIRemoveSIMWarningTableCell *)self contentView];
    v55 = [v54 layoutMarginsGuide];
    v56 = [v55 leadingAnchor];
    v57 = [v53 constraintEqualToAnchor:v56];
    [v57 setActive:1];
  }
}

@end